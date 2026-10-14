LOG_STEP_IN "- Setting casefold props"
SET_PROP "vendor" "external_storage.projid.enabled" "1"
SET_PROP "vendor" "external_storage.casefold.enabled" "1"
SET_PROP "vendor" "external_storage.sdcardfs.enabled" "0"
SET_PROP "vendor" "persist.sys.fuse.passthrough.enable" "true"
LOG_STEP_OUT

LOG_STEP_IN "- Enabling IncrementalFS"
SET_PROP "vendor" "ro.incremental.enable" "yes"
LOG_STEP_OUT

LOG_STEP_IN "- Enabling FS Verity"
SET_PROP "vendor" "ro.apk_verity.mode" "2"
LOG_STEP_OUT

if [[ "$SOURCE_PLATFORM_SDK_VERSION" -ge 36 ]]; then
    LOG_STEP_IN "- Updating Codec2 seccomp policy"
    CODEC2_POLICY="$WORK_DIR/vendor/etc/seccomp_policy/samsung.software.media.c2-base-policy"
    CODEC2_OLD_RULE="mremap: arg3 == 3"
    CODEC2_NEW_RULE="mremap: arg3 == 3 || arg3 == MREMAP_MAYMOVE"

    if [ ! -f "$CODEC2_POLICY" ]; then
        LOG "  - Codec2 seccomp policy is not present; skipping"
    else
        if grep -q -F -x "$CODEC2_NEW_RULE" "$CODEC2_POLICY"; then
            LOG "  - MREMAP_MAYMOVE is already allowed"
        elif grep -q -F -x "$CODEC2_OLD_RULE" "$CODEC2_POLICY"; then
            LOG "  - Allowing MREMAP_MAYMOVE in ${CODEC2_POLICY//$WORK_DIR\//}"
            EVAL "sed -i 's/^mremap: arg3 == 3$/mremap: arg3 == 3 || arg3 == MREMAP_MAYMOVE/' \"$CODEC2_POLICY\""
        elif grep -q '^mremap:' "$CODEC2_POLICY"; then
            ABORT "Unsupported mremap rule in ${CODEC2_POLICY//$WORK_DIR\//}"
        else
            LOG "  - Adding the missing mremap rule to ${CODEC2_POLICY//$WORK_DIR\//}"
            EVAL "printf '%s\\n' '$CODEC2_NEW_RULE' >> \"$CODEC2_POLICY\""
        fi

        grep -q -F -x "$CODEC2_NEW_RULE" "$CODEC2_POLICY" || \
            ABORT "Failed to update ${CODEC2_POLICY//$WORK_DIR\//}"

        for CODEC2_SYSCALL_RULE in "setsockopt: 1" "listen: 1" "bind: 1"; do
            if ! grep -q -F -x "$CODEC2_SYSCALL_RULE" "$CODEC2_POLICY"; then
                grep -q -F -x "prctl: 1" "$CODEC2_POLICY" || \
                    ABORT "Unable to locate the Codec2 syscall insertion point"
                LOG "  - Allowing ${CODEC2_SYSCALL_RULE%%:*}"
                EVAL "sed -i '/^prctl: 1$/i$CODEC2_SYSCALL_RULE' \"$CODEC2_POLICY\""
            fi
        done

        for CODEC2_SYSCALL_RULE in "setsockopt: 1" "listen: 1" "bind: 1"; do
            grep -q -F -x "$CODEC2_SYSCALL_RULE" "$CODEC2_POLICY" || \
                ABORT "Failed to add $CODEC2_SYSCALL_RULE to ${CODEC2_POLICY//$WORK_DIR\//}"
        done
    fi
    unset CODEC2_POLICY CODEC2_OLD_RULE CODEC2_NEW_RULE CODEC2_SYSCALL_RULE
    LOG_STEP_OUT
fi

if ${SOURCE_USE_NATIVE_DISPLAY_STACK:-false}; then
    LOG "- Preserving native SurfaceFlinger timing and HFR properties"
else
    LOG_STEP_IN "- Setting SF flags"
    SET_PROP "vendor" "debug.sf.latch_unsignaled" "1"
    SET_PROP "vendor" "debug.sf.high_fps_late_app_phase_offset_ns" "0"
    SET_PROP "vendor" "debug.sf.high_fps_late_sf_phase_offset_ns" "0"
    LOG_STEP_OUT

    LOG_STEP_IN "- Setting Adaptive HFR flags"
    if [[ "$TARGET_CODENAME" != "c1s" && "$TARGET_CODENAME" != "c2s" ]]; then
        SET_PROP "vendor" "debug.sf.show_refresh_rate_overlay_render_rate" "true"
        SET_PROP "vendor" "ro.surface_flinger.game_default_frame_rate_override" "60"
        SET_PROP "vendor" "ro.surface_flinger.use_content_detection_for_refresh_rate" "true"
        SET_PROP "vendor" "ro.surface_flinger.set_idle_timer_ms" "250"
        SET_PROP "vendor" "ro.surface_flinger.set_touch_timer_ms" "300"
        SET_PROP "vendor" "ro.surface_flinger.set_display_power_timer_ms" "200"
        SET_PROP "vendor" "ro.surface_flinger.enable_frame_rate_override" "true"
    elif [[ "$TARGET_CODENAME" == "c1s" ]]; then
        SET_PROP "vendor" "debug.sf.show_refresh_rate_overlay_render_rate" "true"
        SET_PROP "vendor" "ro.surface_flinger.game_default_frame_rate_override" "60"
        SET_PROP "vendor" "ro.surface_flinger.use_content_detection_for_refresh_rate" "false"
        SET_PROP "vendor" "ro.surface_flinger.enable_frame_rate_override" "false"
    elif [[ "$TARGET_CODENAME" == "c2s" ]]; then
        SET_PROP "vendor" "debug.sf.show_refresh_rate_overlay_render_rate" "true"
        SET_PROP "vendor" "ro.surface_flinger.game_default_frame_rate_override" "60"
        SET_PROP "vendor" "ro.surface_flinger.enable_frame_rate_override" "true"
    fi
    LOG_STEP_OUT
fi

# FBE (branch fbe-test): hardware file-based encryption via the Exynos FMP inline crypto engine.
# - Stock "fileencryption=ice" requests Samsung FMP mode 127, which this kernel's fscrypt rejects.
# - Policy v2 is required: /data has casefolded dirs and v1 on casefold fails with EINVAL
#   (init_user0_failed -> recovery). y2s has first_api_level 29, so v2 must be stated explicitly.
# - Standard (non-wrapped) keys: the TEE keymaster cannot create hardware-wrapped storage keys
#   (generateKey -100 -> enablefilecrypto_failed), and the FMP keyslot manager only advertises
#   BLK_CRYPTO_FEATURE_STANDARD_KEYS with AES-256-XTS / 4096-byte data units anyway.
# - "inlinecrypt" is added as an f2fs mount option in column 4 (this libfstab ignores it as an
#   fs_mgr flag). With it, file contents go through blk-crypto, which hands the bio to FMP because
#   FMP supports the mode; the crypto-API fallback is only used if the hardware refuses.
LOG "- Enabling hardware FBE via FMP inline crypto (AES-256-XTS/CTS, policy v2) (fbe-test)"
LINE=$(sed -n "/^\/dev\/block\/by-name\/userdata/=" "$WORK_DIR/vendor/etc/fstab.exynos990")
if sed -n "${LINE}p" "$WORK_DIR/vendor/etc/fstab.exynos990" | grep -q 'fileencryption=ice'; then
    sed -i "${LINE}s/fileencryption=ice/fileencryption=aes-256-xts:aes-256-cts:v2/" "$WORK_DIR/vendor/etc/fstab.exynos990"
    sed -i "${LINE}s/resgid=5678/resgid=5678,inlinecrypt/" "$WORK_DIR/vendor/etc/fstab.exynos990"
    sed -n "${LINE}p" "$WORK_DIR/vendor/etc/fstab.exynos990" | grep -q 'resgid=5678,inlinecrypt' || \
        ABORT "Failed to add the inlinecrypt mount option to the userdata entry"
else
    LOG "\033[0;33m! userdata line has no fileencryption=ice in the stock fstab\033[0m"
fi

# Adoptable volumes: policy v2 (v1 fails on casefolded dirs like media/0 with EINVAL)
SET_PROP "vendor" "ro.crypto.volume.options" "aes-256-xts:aes-256-cts:v2"

# ODE / keydata / keyrefuge (Samsung key storage, needs hermesd which this ROM removes)
sed -i -e "/ODE/d" -e "/keydata/d" -e "/keyrefuge/d" "$WORK_DIR/vendor/etc/fstab.exynos990"

# Adoptable storage: mark the microSD slot as adoptable ("Format as internal", encrypted with FBE)
if ! grep -q "voldmanaged=sdcard:auto,encryptable=userdata" "$WORK_DIR/vendor/etc/fstab.exynos990"; then
    sed -i "s/voldmanaged=sdcard:auto$/voldmanaged=sdcard:auto,encryptable=userdata/" "$WORK_DIR/vendor/etc/fstab.exynos990"
    grep -q "voldmanaged=sdcard:auto,encryptable=userdata" "$WORK_DIR/vendor/etc/fstab.exynos990" || \
        ABORT "Failed to mark the sdcard entry as adoptable"
fi

# Adoptable storage: vold sec_backup EEXIST ignorieren
LOG "- Patching vold for adoptable storage (sec_backup)"
VOLD="$WORK_DIR/system/system/bin/vold"
V_DE_FROM="43c48252d1120094001c0036"
V_DE_TO="43c48252d11200941f2003d5"
V_CE_FROM="43c4825262100094c8021a321f000072d612881a"
V_CE_TO="43c4825262100094c8021a321f0000721f2003d5"
for P in "sec_backup_de:$V_DE_FROM:$V_DE_TO" "sec_backup_ce:$V_CE_FROM:$V_CE_TO"; do
    NAME="${P%%:*}"; REST="${P#*:}"; FROM="${REST%%:*}"; TO="${REST##*:}"
    if xxd -p -c0 "$VOLD" | grep -q "$TO"; then
        LOG "  - vold $NAME patch already applied"
    elif xxd -p -c0 "$VOLD" | grep -q "$FROM"; then
        HEX_PATCH "$VOLD" "$FROM" "$TO" || ABORT "vold $NAME patch failed"
    else
        ABORT "vold $NAME pattern not found"
    fi
done
unset VOLD V_DE_FROM V_DE_TO V_CE_FROM V_CE_TO P NAME REST FROM TO

# FBE TEST: LockSettingsService.unlockCeStorage() passes a Gatekeeper auth token to vold when
# ro.product.first_api_level <= 30 (y2s = 29). The Android 16 vold from the source firmware
# rejects any token ("Vold doesn't use auth tokens" -> EINVAL), so CE storage never unlocks
# once a PIN is set. Lower the threshold to 0 so the token-less path is always used.
# shellcheck disable=SC2016
SMALI_PATCH "system" "system/framework/services.jar" \
    "smali/com/android/server/locksettings/LockSettingsService.smali" "replace" \
    'unlockCeStorage(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V' \
    'const/16 v6, 0x1e' \
    'const/16 v6, 0x0'

# For some reason we are missing 2 permissions here: android.hardware.security.model.compatible and android.software.controls
# First one is related to encryption and second one to SmartThings Device Control
LOG "- Patching vendor permissions"
sed -i '$d' "$WORK_DIR/vendor/etc/permissions/handheld_core_hardware.xml"
{
    echo ""
    echo "    <!-- Indicate support for the Android security model per the CDD. -->"
    echo "    <feature name=\"android.hardware.security.model.compatible\"/>"
    echo ""
    echo "    <!--  Feature to specify if the device supports controls.  -->"
    echo "    <feature name=\"android.software.controls\"/>"
    echo "</permissions>"
} >> "$WORK_DIR/vendor/etc/permissions/handheld_core_hardware.xml"

LOG_STEP_IN "- Setting stock Bluetooth profiles"
SET_PROP "product" "bluetooth.profile.asha.central.enabled" "true"
SET_PROP "product" "bluetooth.profile.a2dp.source.enabled" "true"
SET_PROP "product" "bluetooth.profile.avrcp.target.enabled" "true"
SET_PROP "product" "bluetooth.profile.bap.broadcast.assist.enabled" "false"
SET_PROP "product" "bluetooth.profile.bap.broadcast.source.enabled" "false"
SET_PROP "product" "bluetooth.profile.bap.unicast.client.enabled" "false"
SET_PROP "product" "bluetooth.profile.bas.client.enabled" "false"
SET_PROP "product" "bluetooth.profile.csip.set_coordinator.enabled" "false"
SET_PROP "product" "bluetooth.profile.gatt.enabled" "true"
SET_PROP "product" "bluetooth.profile.hap.client.enabled" "false"
SET_PROP "product" "bluetooth.profile.hfp.ag.enabled" "true"
SET_PROP "product" "bluetooth.profile.hid.device.enabled" "true"
SET_PROP "product" "bluetooth.profile.hid.host.enabled" "true"
SET_PROP "product" "bluetooth.profile.map.server.enabled" "true"
SET_PROP "product" "bluetooth.profile.mcp.server.enabled" "false"
SET_PROP "product" "bluetooth.profile.opp.enabled" "false"
SET_PROP "product" "bluetooth.profile.pan.nap.enabled" "true"
SET_PROP "product" "bluetooth.profile.pan.panu.enabled" "true"
SET_PROP "product" "bluetooth.profile.pbap.server.enabled" "true"
SET_PROP "product" "bluetooth.profile.sap.server.enabled" "true"
SET_PROP "product" "bluetooth.profile.ccp.server.enabled" "false"
SET_PROP "product" "bluetooth.profile.vcp.controller.enabled" "false"

if [[ "$SOURCE_PLATFORM_SDK_VERSION" -ge 36 ]]; then
    # Android 16 services.jar uses Bluetooth framework APIs that are not
    # present in the older b0s/r11s prebuilts (for example
    # ScanSettings.Builder#setRssiThreshold).  Keep the source firmware APEX
    # so framework-bluetooth.jar and services.jar remain on the same ABI.
    LOG "  - Keeping source Bluetooth APEX for framework ABI compatibility"
elif [[ "$TARGET_CODENAME" == "r8s" ]]; then
    ADD_TO_WORK_DIR "r11sxxx" "system" "system/apex/com.android.btservices.apex" 0 0 644 "u:object_r:system_file:s0"
else
    ADD_TO_WORK_DIR "b0sxxx" "system" "system/apex/com.android.bt.apex" 0 0 644 "u:object_r:system_file:s0"
fi
LOG_STEP_OUT

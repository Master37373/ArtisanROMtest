SKIPUNZIP=1

SET_PROP "system" "ro.masterrom.version" "$ROM_VERSION"
SET_PROP "system" "ro.masterrom.target" "$TARGET_CODENAME"
SET_PROP "system" "ro.masterrom.official" "$ROM_IS_OFFICIAL"

if ! $ROM_IS_OFFICIAL; then
    LOG "\033[0;33m! Build is not official. Skipping\033[0m"
    return 0
fi

# MasterROM Updater (github.com/Master37373/MasterROM-Updater) as privileged system app.
# It installs updates without root: download to /data/ota_package -> uncrypt (block map)
# -> OpenRecoveryScript in /cache/recovery -> reboot to recovery.
if [ ! -f "$MODPATH/system/priv-app/MasterROMUpdater/MasterROMUpdater.apk" ]; then
    LOGE "MasterROM Updater APK missing: unica/mods/updater/system/priv-app/MasterROMUpdater/MasterROMUpdater.apk"
    return 1
fi
ADD_TO_WORK_DIR "$MODPATH" "system" "."

# Settings > Software update opens the updater (smali patch in this mod)
DECODE_APK "system" "system/priv-app/SecSettings/SecSettings.apk"

LOG "- Patching /system/system/etc/security/otacerts.zip"
EVAL "rm \"$WORK_DIR/system/system/etc/security/otacerts.zip\""
EVAL "cd \"$SRC_DIR\"; zip -q \"$WORK_DIR/system/system/etc/security/otacerts.zip\" \"./security/masterrom_ota.x509.pem\""

# On Android 16/One UI 8.5+ bases the PackageManager only registers preloaded apps
# that are listed in /system/system/etc/sysconfig/allowed-system-preload-apps.xml.
ALLOWLIST="$WORK_DIR/system/system/etc/sysconfig/allowed-system-preload-apps.xml"
if [ -f "$ALLOWLIST" ] && ! grep -q 'com.masterrom.updater' "$ALLOWLIST"; then
    LOG "- Adding com.masterrom.updater to the system preload allowlist"
    EVAL "sed -i 's#</config>#\\t<allowed-system-preload package=\"com.masterrom.updater\"/>\\n</config>#' \"$ALLOWLIST\""
fi
unset ALLOWLIST

# SELinux: let the updater (priv_app) store the OTA ZIP in /data/ota_package, the folder
# uncrypt reads from. DAC is already fine (system:cache 0770, app has the cache group).
SEPOLICY="$WORK_DIR/system/system/etc/selinux/plat_sepolicy.cil"
if ! grep -q "(allow priv_app ota_package_file (file" "$SEPOLICY"; then
    LOG "- Allowing the updater to write /data/ota_package (SELinux)"
    {
        echo "(allow priv_app ota_package_file (dir (search read open getattr write add_name remove_name)))"
        echo "(allow priv_app ota_package_file (file (create read write open getattr setattr unlink)))"
        # uncrypt resolves /dev/block/by-name/userdata; on Samsung that link carries the
        # userdata_block_device label (AOSP: block_device), which uncrypt may not read
        echo "(allow uncrypt userdata_block_device (lnk_file (read getattr open)))"
        echo "(allow uncrypt userdata_block_device (blk_file (read write open getattr ioctl)))"
        echo "(allow uncrypt block_device (lnk_file (read getattr)))"
    } >> "$SEPOLICY"
fi
unset SEPOLICY

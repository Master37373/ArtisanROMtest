if [[ "$SOURCE_PLATFORM_SDK_VERSION" -ge 36 ]]; then
    LOG_STEP_IN "- Preparing unencrypted user storage"
    STORAGE_INIT_RC="$WORK_DIR/system/system/etc/init/hw/init.rc"
    STORAGE_FSTAB="$WORK_DIR/vendor/etc/fstab.exynos990"
    STORAGE_DATA_RULE="mkdir /data/data 0771 system system encryption=None"

    [ -f "$STORAGE_INIT_RC" ] || \
        ABORT "File not found: ${STORAGE_INIT_RC//$WORK_DIR\//}"
    [ -f "$STORAGE_FSTAB" ] || \
        ABORT "File not found: ${STORAGE_FSTAB//$WORK_DIR\//}"

    if grep '^/dev/block/by-name/userdata' "$STORAGE_FSTAB" | grep -q 'fileencryption='; then
        LOG "  - File-based encryption is enabled; no compatibility rule is needed"
    elif grep -q -F -x "    $STORAGE_DATA_RULE" "$STORAGE_INIT_RC"; then
        LOG "  - Legacy /data/data initialization is already present"
    elif grep -q -F -x "    init_user0" "$STORAGE_INIT_RC"; then
        LOG "  - Creating /data/data before init_user0"
        EVAL "sed -i '0,/^    init_user0$/{s|^    init_user0$|    $STORAGE_DATA_RULE\\n\\n    init_user0|}' \"$STORAGE_INIT_RC\""
    else
        ABORT "Unable to locate init_user0 in ${STORAGE_INIT_RC//$WORK_DIR\//}"
    fi

    if ! grep '^/dev/block/by-name/userdata' "$STORAGE_FSTAB" | grep -q 'fileencryption='; then
        grep -q -F -x "    $STORAGE_DATA_RULE" "$STORAGE_INIT_RC" || \
            ABORT "Failed to add the legacy /data/data initialization rule"
    fi

    unset STORAGE_INIT_RC STORAGE_FSTAB STORAGE_DATA_RULE
    LOG_STEP_OUT

    # Samsung's exFAT format tool (mkfs.exfat_sec) calls ioctl BLKBSZSET (0x1271) on the SD card.
    # The vold domain of this SELinux policy is not allowed to do that, so formatting a card
    # fails with "Device I/O error" and the card stays unmountable. Skip this call; the
    # sector size is already given by the tool's own options.
    LOG_STEP_IN "- Patching exFAT format library"
    EXFAT_LIB="$WORK_DIR/system/system/lib64/libexfat_utils.so"
    EXFAT_FROM="214e825282120091e003132a0101a87275130094"
    EXFAT_TO="214e825282120091e003132a0101a872e0031f2a"

    if [ ! -f "$EXFAT_LIB" ]; then
        LOG "\033[0;33m! libexfat_utils.so not found, skipping\033[0m"
    elif xxd -p -c 0 "$EXFAT_LIB" | grep -q "$EXFAT_TO"; then
        LOG "  - Already patched"
    elif xxd -p -c 0 "$EXFAT_LIB" | grep -q "$EXFAT_FROM"; then
        HEX_PATCH "$EXFAT_LIB" "$EXFAT_FROM" "$EXFAT_TO" || \
            LOG "\033[0;33m! Failed to patch libexfat_utils.so\033[0m"
    else
        LOG "\033[0;33m! BLKBSZSET call not found in libexfat_utils.so (firmware changed?), skipping\033[0m"
    fi

    unset EXFAT_LIB EXFAT_FROM EXFAT_TO
    LOG_STEP_OUT
fi

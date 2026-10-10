SKIPUNZIP=1

SET_PROP "system" "ro.artisanrom.version" "$ROM_VERSION"
SET_PROP "system" "ro.artisanrom.target" "$TARGET_CODENAME"
SET_PROP "system" "ro.artisanrom.official" "$ROM_IS_OFFICIAL"

if ! $ROM_IS_OFFICIAL; then
    LOG "\033[0;33m! Build is not official. Skipping\033[0m"
    return 0
fi

ADD_TO_WORK_DIR "$MODPATH" "system" "."

DECODE_APK "system" "system/priv-app/SecSettings/SecSettings.apk"

LOG "- Patching /system/system/etc/security/otacerts.zip"
EVAL "rm \"$WORK_DIR/system/system/etc/security/otacerts.zip\""
EVAL "cd \"$SRC_DIR\"; zip -q \"$WORK_DIR/system/system/etc/security/otacerts.zip\" \"./security/artisanrom_ota.x509.pem\""

# On Android 16/One UI 8.5+ bases the PackageManager only registers preloaded apps
# that are listed in /system/system/etc/sysconfig/allowed-system-preload-apps.xml.
if [ -f "$WORK_DIR/system/system/etc/sysconfig/allowed-system-preload-apps.xml" ] && \
        ! grep -q 'com.artisan.updater' "$WORK_DIR/system/system/etc/sysconfig/allowed-system-preload-apps.xml"; then
    LOG "- Adding com.artisan.updater to the system preload allowlist"
    EVAL "sed -i 's#</config>#\\t<allowed-system-preload package=\"com.artisan.updater\"/>\\n</config>#' \"$WORK_DIR/system/system/etc/sysconfig/allowed-system-preload-apps.xml\""
fi

# Point the Updater app to this fork's update server (instead of ArtisanROM's)
# - URLs are patched at build time, so a newer upstream ArtisanUpdater.apk keeps working
# - The OTA XMLs (updater/v2/<device>.xml) are read from the "main" branch of UPDATER_REPO
UPDATER_REPO="Master37373/ArtisanROMtest"
UPDATER_APK="system/priv-app/ArtisanUpdater/ArtisanUpdater.apk"
UPDATER_DIR="$APKTOOL_DIR/system/priv-app/ArtisanUpdater/ArtisanUpdater.apk"

DECODE_APK "system" "$UPDATER_APK"

UPDATER_SMALI_COUNT="$(grep -rl --include="*.smali" "raw.githubusercontent.com/ArtisanROM/ArtisanROM/" "$UPDATER_DIR" | wc -l)"
if [ "$UPDATER_SMALI_COUNT" -lt 1 ]; then
    LOGE "ArtisanUpdater: update server URL not found. Upstream changed the app, please check unica/mods/updater/customize.sh"
    return 1
fi

LOG "- Pointing ArtisanUpdater to github.com/$UPDATER_REPO"
while IFS= read -r f; do
    sed -i \
        -e "s|raw.githubusercontent.com/ArtisanROM/ArtisanROM/|raw.githubusercontent.com/$UPDATER_REPO/|g" \
        -e "s|/refs/heads/sixteen/CHANGELOG.md|/refs/heads/sixteen-qpr2/CHANGELOG.md|g" \
        "$f"
done < <(grep -rl --include="*.smali" "raw.githubusercontent.com/ArtisanROM/ArtisanROM/" "$UPDATER_DIR")

# Own OTA certificate for the app
if [ -f "$UPDATER_DIR/assets/otacert.pem" ]; then
    LOG "- Replacing ArtisanUpdater otacert.pem"
    cp -f "$SRC_DIR/security/artisanrom_ota.x509.pem" "$UPDATER_DIR/assets/otacert.pem"
fi

# Dynamically patch SecSettings
# - Add missing/non-xml files in place
# - Patch existing files
#   - Use the first line of the file to tell sed how to apply the rest of the content
#   - Exception made for files under *res/values* where the "resources" tag gets nuked
while IFS= read -r f; do
    f="${f//$MODPATH\/SecSettings.apk\//}"

    if [ ! -f "$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/$f" ] || \
            [[ "$f" != *".xml" ]]; then
        LOG "- Adding \"$f\" to /system/system/priv-app/SecSettings.apk"
        EVAL "mkdir -p \"$(dirname "$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/$f")\""
        EVAL "cp -a \"$MODPATH/SecSettings.apk/${f//\$/\\$}\" \"$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/${f//\$/\\$}\""
    else
        LOG "- Patching \"$f\" in /system/system/priv-app/SecSettings.apk"
        if [[ "$f" == *"res/values"* ]]; then
            PATCH_INST="/<\/resources>/i"
            CONTENT="$(sed -e "/?xml/d" -e "/resources>/d" "$MODPATH/SecSettings.apk/$f")"
        else
            PATCH_INST="$(head -n 1 "$MODPATH/SecSettings.apk/$f")"
            CONTENT="$(tail -n +2 "$MODPATH/SecSettings.apk/$f")"
        fi
        CONTENT="$(sed -e "s/\"/\\\\\"/g" -e "s/\\$/\\\\$/g" -e "s/ /\\\ /g" -e "s/\\\\n/\\\\\\\\\n/g" <<< "$CONTENT")"
        CONTENT="$(sed -E ':a;N;$!ba;s/\r{0,1}\n/\\n/g' <<< "$CONTENT")"
        EVAL "sed -i \"$PATCH_INST $CONTENT\" \"$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/$f\""
    fi
done < <(find "$MODPATH/SecSettings.apk" -type f)

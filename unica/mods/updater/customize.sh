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

# The app sends a fake desktop Chrome User-Agent for its downloads. SourceForge (behind
# Cloudflare) answers that with 403 because the TLS handshake is not Chrome's.
# Use a plain, honest User-Agent instead.
UPDATER_UA_OLD="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
UPDATER_UA_NEW="ArtisanUpdater/1.0"
UPDATER_UA_COUNT="$(grep -rlF --include="*.smali" "$UPDATER_UA_OLD" "$UPDATER_DIR" | wc -l)"
if [ "$UPDATER_UA_COUNT" -lt 1 ]; then
    LOG "\033[0;33m! ArtisanUpdater: download User-Agent not found, leaving it unchanged\033[0m"
else
    LOG "- Replacing ArtisanUpdater download User-Agent"
    while IFS= read -r f; do
        sed -i "s|Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36|$UPDATER_UA_NEW|g" "$f"
    done < <(grep -rlF --include="*.smali" "$UPDATER_UA_OLD" "$UPDATER_DIR")
fi

# Own OTA certificate for the app
if [ -f "$UPDATER_DIR/assets/otacert.pem" ]; then
    LOG "- Replacing ArtisanUpdater otacert.pem"
    cp -f "$SRC_DIR/security/artisanrom_ota.x509.pem" "$UPDATER_DIR/assets/otacert.pem"
fi

# FBE: TWRP cannot read /sdcard (= /data/media/0, CE-encrypted) or /data/ota_package (DE-encrypted).
# /data/media itself is unencrypted, so copy the OTA ZIP to /data/media/TWRP right before the
# OpenRecoveryScript is written and let TWRP install it from there.
LOG "- Making ArtisanUpdater install OTA ZIPs from /data/media/TWRP (FBE)"
UPDATER_ORS_SMALI="$(grep -rlF --include="*.smali" '"Installing ZIP via ORS: "' "$UPDATER_DIR" | head -n 1)"
if [ -z "$UPDATER_ORS_SMALI" ]; then
    LOGE "ArtisanUpdater: ORS install method not found. Upstream changed the app, please check unica/mods/updater/customize.sh"
    return 1
fi
if ! python3 - "$UPDATER_ORS_SMALI" <<'PYEOF'
import re, sys
path = sys.argv[1]
lines = open(path, encoding="utf-8").read().split("\n")
TARGET = "/data/media/TWRP/ota_update.zip"

anchor = next(i for i, l in enumerate(lines) if '"Installing ZIP via ORS: "' in l)
start = max(i for i in range(anchor) if lines[i].startswith(".method"))
end = next(i for i in range(anchor, len(lines)) if lines[i].startswith(".end method"))
method = lines[start:end]
if any(TARGET in l for l in method):
    print("already patched"); sys.exit(0)

locals_n = int(next(l for l in method if ".locals" in l).split()[1])
if locals_n < 3:
    sys.exit("unexpected .locals %d" % locals_n)

ins = next(i for i in range(anchor, end) if lines[i].strip() == 'const-string v0, "install "')
mk = next(i for i in range(ins, end) if 'mkdir -p /cache/recovery' in lines[i])
exe = None
for i in range(mk, end):
    m = re.match(r'\s*invoke-static \{p1\}, (L[^;]+;->[\w$]+)\(Ljava/lang/String;\)Z', lines[i])
    if m:
        exe = m.group(1); exe_line = i; break
if exe is None:
    sys.exit("root exec call not found")
label = None
for i in range(exe_line, end):
    m = re.match(r'\s*if-eqz p1, (:\w+)', lines[i])
    if m:
        label = m.group(1); break
if label is None:
    sys.exit("failure label not found")

cmd_head = 'F=\\"'
cmd_tail = ('\\"; [ -f \\"$F\\" ] || F=\\"/data/media/0/${F#*/0/}\\"; '
            'mkdir -p /data/media/TWRP && cp -f \\"$F\\" ' + TARGET +
            ' && chmod 644 ' + TARGET + ' && sync')
block = [
    "    new-instance v0, Ljava/lang/StringBuilder;",
    '    const-string v2, "%s"' % cmd_head,
    "    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V",
    "    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;",
    '    const-string v2, "%s"' % cmd_tail,
    "    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;",
    "    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;",
    "    move-result-object p1",
    "    invoke-static {p1}, %s(Ljava/lang/String;)Z" % exe,
    "    move-result p1",
    "    if-eqz p1, %s" % label,
    '    const-string p1, "%s"' % TARGET,
    "",
]
lines[ins:ins] = block
open(path, "w", encoding="utf-8").write("\n".join(lines))
print("patched", path, "exec", exe, "label", label)
PYEOF
then
    LOGE "ArtisanUpdater: failed to patch the ORS install method"
    return 1
fi

# Also remove the TWRP copy when the app cleans up after an install
while IFS= read -r f; do
    sed -i 's|rm -f /sdcard/openrecoveryscript /cache/recovery/openrecoveryscript /cache/recovery/command"|rm -f /sdcard/openrecoveryscript /cache/recovery/openrecoveryscript /cache/recovery/command /data/media/TWRP/ota_update.zip"|' "$f"
done < <(grep -rlF --include="*.smali" "rm -f /sdcard/openrecoveryscript /cache/recovery/openrecoveryscript /cache/recovery/command\"" "$UPDATER_DIR")
unset UPDATER_ORS_SMALI

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

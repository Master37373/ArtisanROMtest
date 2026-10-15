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

# Self-update cache check: the app offered a cached self-update APK for install as soon as its
# size matched app.xml, so an old or wrongly signed download of the same size ended in
# "App not installed" forever. Only accept the cached file if it is this package, has the
# expected versionName and the installed app's signing certificate; otherwise delete it and
# download again (com.artisan.updater.ArtisanCacheCheck).
LOG "- Making ArtisanUpdater verify cached self-update APKs"
UPDATER_CACHE_SMALI="$(grep -rlF --include="*.smali" 'Lcom/artisan/updater/AppUpdate;->getSize()J' "$UPDATER_DIR" | xargs grep -lF 'UpdateUiState$AppReadyToInstall;' | head -n 1)"
if [ -z "$UPDATER_CACHE_SMALI" ]; then
    LOGE "ArtisanUpdater: cached APK check not found. Upstream changed the app, please check unica/mods/updater/customize.sh"
    return 1
fi
mkdir -p "$UPDATER_DIR/smali/com/artisan/updater"
cat > "$UPDATER_DIR/smali/com/artisan/updater/ArtisanCacheCheck.smali" <<'SMALIEOF'
.class public final Lcom/artisan/updater/ArtisanCacheCheck;
.super Ljava/lang/Object;
.source "ArtisanCacheCheck.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ArtisanCacheCheck"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static sameSigners(Landroid/content/pm/SigningInfo;Landroid/content/pm/SigningInfo;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 51
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v2

    .line 54
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    array-length v3, v1

    if-eqz v3, :cond_0

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static valid(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 29
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    const-string v0, "not a valid APK"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    const-string v1, "ArtisanCacheCheck"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding cached update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 33
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 36
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 39
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-static {v1, v0}, Lcom/artisan/updater/ArtisanCacheCheck;->sameSigners(Landroid/content/pm/SigningInfo;Landroid/content/pm/SigningInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    .line 40
    :cond_4
    const-string v0, "signature mismatch"
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 46
    :catch_1
    move-exception v0

    goto :goto_1
.end method
SMALIEOF
if ! python3 - "$UPDATER_CACHE_SMALI" <<'PYEOF'
import re, sys
path = sys.argv[1]
lines = open(path, encoding="utf-8").read().split("\n")
if any("ArtisanCacheCheck;->valid" in l for l in lines):
    print("already patched"); sys.exit(0)

def reg_ok(r, locals_n):
    n = int(r[1:])
    return (n if r[0] == "v" else locals_n + n) <= 15

for ni, l in enumerate(lines):
    m = re.match(r"\s*new-instance (v\d+), Lcom/artisan/updater/UpdateUiState\$AppReadyToInstall;", l)
    if not m:
        continue
    code = [i for i in range(max(0, ni - 60), ni) if lines[i].strip() and not lines[i].strip().startswith(".line")]
    if not any("AppUpdate;->getSize()J" in lines[i] for i in code[-6:]):
        continue
    tmp = m.group(1)
    jump = re.match(r"\s*if-nez [vp]\d+, (:\w+)", lines[code[-1]])
    if not jump:
        sys.exit("size check jump not found")
    label = jump.group(1)
    def find(pat):
        for i in reversed(code):
            mm = re.match(pat, lines[i])
            if mm:
                return mm.group(1)
        sys.exit("pattern not found: " + pat)
    ctx = find(r"\s*invoke-virtual \{([vp]\d+)\}, Landroid/content/Context;->getCacheDir\(\)")
    upd = find(r"\s*invoke-virtual \{([vp]\d+)\}, Lcom/artisan/updater/AppUpdate;->getFilename\(\)")
    fil = find(r"\s*invoke-virtual \{([vp]\d+)\}, Ljava/io/File;->exists\(\)Z")
    start = max(i for i in range(ni) if lines[i].startswith(".method"))
    locals_n = int(next(lines[i] for i in range(start, ni) if ".locals" in lines[i]).split()[1])
    for r in (ctx, upd, fil, tmp):
        if not reg_ok(r, locals_n):
            sys.exit("register %s out of range" % r)
    block = [
        "    invoke-virtual {%s}, Lcom/artisan/updater/AppUpdate;->getVersion()Ljava/lang/String;" % upd,
        "    move-result-object %s" % tmp,
        "    invoke-static {%s, %s, %s}, Lcom/artisan/updater/ArtisanCacheCheck;->valid(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z" % (ctx, fil, tmp),
        "    move-result %s" % tmp,
        "    if-eqz %s, %s" % (tmp, label),
        "",
    ]
    lines[ni:ni] = block
    open(path, "w", encoding="utf-8").write("\n".join(lines))
    print("patched %s (ctx=%s file=%s update=%s -> %s)" % (path, ctx, fil, upd, label))
    sys.exit(0)
sys.exit("cached APK size check not found")
PYEOF
then
    LOGE "ArtisanUpdater: failed to patch the cached APK check"
    return 1
fi
grep -rqF 'ArtisanCacheCheck;->valid' "$UPDATER_DIR"/smali* || { LOGE "ArtisanUpdater: cached APK check not applied"; return 1; }
unset UPDATER_CACHE_SMALI

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

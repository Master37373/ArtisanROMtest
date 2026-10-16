APPLY_PATCH "system" "system/framework/framework.jar" \
    "$MODPATH/framework.jar/0001-Introduce-PlayIntegrityHooks.patch"
SMALI_PATCH "system" "system/framework/framework.jar" \
    "smali/android/app/Instrumentation.smali" "replace" \
    'newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;' \
    'return-object p0' \
    '    invoke-static {p1}, Lio/mesalabs/unica/PlayIntegrityHooks;->setProps(Landroid/content/Context;)V\n\n    return-object p0' \
    > /dev/null
SMALI_PATCH "system" "system/framework/framework.jar" \
    "smali/android/app/Instrumentation.smali" "replace" \
    'newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;' \
    'return-object p0' \
    '    invoke-static {p3}, Lio/mesalabs/unica/PlayIntegrityHooks;->setProps(Landroid/content/Context;)V\n\n    return-object p0' \
    > /dev/null
APPLY_PATCH "system" "system/framework/services.jar" \
    "$MODPATH/services.jar/0001-Introduce-PlayIntegrityHooks.patch"

if [ ! -f "$APKTOOL_DIR/system/framework/framework.jar/smali_classes6/io/mesalabs/unica/KeyboxImitationHooks.smali" ]; then
    SMALI_PATCH "system" "system/framework/framework.jar" \
        "smali_classes6/io/mesalabs/unica/PlayIntegrityHooks.smali" "return" \
        'shouldBlockKeyAttestation()Z' 'true'
fi

# MasterROM: bake the current Play Integrity Fix props (UN1CA's pif.json) into the image, so a
# freshly set up phone is Play Protect certified right away and Google's "additional apps" step
# can show up. The settings page (MasterROM > Play Integrity Fix > Update) can refresh them later;
# values the user loads there are stored as persist props in /data and win over these defaults.
PIF_JSON="$(curl -sfL --retry 3 -m 30 "https://raw.githubusercontent.com/UN1CA/static_resources/refs/heads/sixteen/pif/pif.json" || true)"
if [ -n "$PIF_JSON" ] && PIF_PROPS="$(python3 -c '
import json, sys
d = json.loads(sys.stdin.read())
m = {"FINGERPRINT": "fingerprint", "PRODUCT": "product", "DEVICE": "device", "MANUFACTURER": "manufacturer",
     "BRAND": "brand", "MODEL": "model", "RELEASE": "release", "INCREMENTAL": "incremental", "ID": "id",
     "SECURITY_PATCH": "security_patch", "DEVICE_INITIAL_SDK_INT": "first_api_level", "VERSION": "version"}
if not d.get("FINGERPRINT"):
    sys.exit(1)
for k, p in m.items():
    v = d.get(k)
    if v not in (None, "", "null"):
        print("persist.sys.pif.%s=%s" % (p, v))
' <<< "$PIF_JSON")"; then
    LOG "- Using current PIF props: $(grep -m1 fingerprint <<< "$PIF_PROPS" | cut -d= -f2)"
    while IFS='=' read -r KEY VALUE; do
        [ -n "$KEY" ] && SET_PROP "system" "$KEY" "$VALUE"
    done <<< "$PIF_PROPS"
else
    LOGW "Could not load pif.json, keeping the built-in PIF fingerprint"
fi
unset PIF_JSON PIF_PROPS KEY VALUE

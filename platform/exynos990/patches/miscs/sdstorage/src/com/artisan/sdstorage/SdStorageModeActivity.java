package com.artisan.sdstorage;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Insets;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.storage.DiskInfo;
import android.os.storage.StorageEventListener;
import android.os.storage.StorageManager;
import android.os.storage.VolumeInfo;
import android.text.format.Formatter;
import android.util.Log;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.animation.PathInterpolator;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/**
 * ArtisanROM: switch the microSD card between portable storage and adoptable
 * (internal, encrypted) storage. Full screen One UI style page inside SecSettings
 * (system uid). Built in code so no extra resources are needed.
 */
public class SdStorageModeActivity extends Activity {
    private static final String TAG = "ArtisanSdStorage";
    private static final int MOVE_SUCCEEDED = -100;
    private static final int MATCH_ANY_USER = 0x00400000; // PackageManager.MATCH_ANY_USER (hidden)

    private StorageManager mSm;
    private PackageManager mPm;
    private Handler mUi;
    private boolean mDe;
    private boolean mNight;

    // colors
    private int mPageBg, mCardBg, mText, mSubText, mAccent, mOnAccent, mDivider;

    // views
    private LinearLayout mContent;
    private LinearLayout mBottom;
    private ImageButton mBack;
    private ScrollView mScroll;
    private TextView mWorkText;

    private boolean mBusy;
    private boolean mOnMain;
    private OnBackInvokedCallback mBlockBack;
    private volatile VolumeInfo mNewPrivate;
    private final PathInterpolator mEase = new PathInterpolator(0.22f, 0.25f, 0f, 1f);

    private final StorageEventListener mListener = new StorageEventListener() {
        @Override public void onVolumeStateChanged(VolumeInfo vol, int oldState, int newState) { refreshMain(); }
        @Override public void onDiskScanned(DiskInfo disk, int volumeCount) { refreshMain(); }
        @Override public void onDiskDestroyed(DiskInfo disk) { refreshMain(); }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mSm = getSystemService(StorageManager.class);
        mPm = getPackageManager();
        mUi = new Handler(Looper.getMainLooper());
        mDe = "de".equals(Locale.getDefault().getLanguage());
        mNight = (getResources().getConfiguration().uiMode & Configuration.UI_MODE_NIGHT_MASK)
                == Configuration.UI_MODE_NIGHT_YES;
        loadColors();
        buildFrame();
        showMain();
        try { mSm.registerListener(mListener); } catch (Throwable e) { Log.w(TAG, "registerListener", e); }
    }

    @Override
    protected void onDestroy() {
        try { mSm.unregisterListener(mListener); } catch (Throwable ignored) { }
        super.onDestroy();
    }

    @Override
    public void onBackPressed() {
        if (mBusy) return;
        super.onBackPressed();
    }

    private String t(String de, String en) {
        return mDe ? de : en;
    }

    // ---- look & feel -----------------------------------------------------------

    private int dp(float v) {
        return Math.round(TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v, getResources().getDisplayMetrics()));
    }

    private int resColor(String name, int fallback) {
        int id = getResources().getIdentifier(name, "color", getPackageName());
        if (id == 0) return fallback;
        try { return getColor(id); } catch (Exception e) { return fallback; }
    }

    private int attrColor(int attr, int fallback) {
        TypedArray a = obtainStyledAttributes(new int[] { attr });
        try {
            return a.getColor(0, fallback);
        } catch (Exception e) {
            return fallback;
        } finally {
            a.recycle();
        }
    }

    private void loadColors() {
        mPageBg = resColor("sec_widget_round_and_bgcolor", mNight ? 0xFF000000 : 0xFFF2F2F2);
        mCardBg = resColor(mNight ? "sesl_background_color_dark" : "sesl_background_color_light",
                mNight ? 0xFF171717 : 0xFFFCFCFC);
        if (mCardBg == mPageBg) mCardBg = mNight ? 0xFF171717 : 0xFFFCFCFC;
        mText = attrColor(android.R.attr.textColorPrimary, mNight ? 0xFFFAFAFA : 0xFF000000);
        mSubText = resColor("sec_widget_body_text_color", mNight ? 0xFFB5B5B5 : 0xFF646464);
        mAccent = resColor(mNight ? "sesl_primary_color_dark" : "sesl_primary_color_light",
                attrColor(android.R.attr.colorAccent, mNight ? 0xFF3E91FF : 0xFF0381FE));
        mOnAccent = 0xFFFFFFFF;
        mDivider = (mText & 0x00FFFFFF) | 0x1F000000;
    }

    private GradientDrawable rounded(int color, float radiusDp) {
        GradientDrawable g = new GradientDrawable();
        g.setColor(color);
        g.setCornerRadius(dp(radiusDp));
        return g;
    }

    private void buildFrame() {
        getWindow().getDecorView().setBackgroundColor(mPageBg);
        try {
            getWindow().setStatusBarColor(mPageBg);
            getWindow().setNavigationBarColor(mPageBg);
        } catch (Throwable ignored) { }

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(mPageBg);
        root.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() {
            @Override public WindowInsets onApplyWindowInsets(View v, WindowInsets in) {
                Insets s = in.getInsets(WindowInsets.Type.systemBars() | WindowInsets.Type.displayCutout());
                v.setPadding(s.left, s.top, s.right, s.bottom);
                return WindowInsets.CONSUMED;
            }
        });

        // toolbar (navigate up)
        LinearLayout bar = new LinearLayout(this);
        bar.setOrientation(LinearLayout.HORIZONTAL);
        bar.setGravity(Gravity.CENTER_VERTICAL);
        bar.setPadding(dp(4), 0, dp(4), 0);
        mBack = new ImageButton(this);
        int backId = getResources().getIdentifier("ic_arrow_back", "drawable", getPackageName());
        Drawable back = null;
        if (backId != 0) {
            try { back = getDrawable(backId).mutate(); } catch (Exception ignored) { }
        }
        if (back != null) {
            back.setTint(mText);
            mBack.setImageDrawable(back);
        }
        TypedValue tv = new TypedValue();
        if (getTheme().resolveAttribute(android.R.attr.selectableItemBackgroundBorderless, tv, true) && tv.resourceId != 0) {
            mBack.setBackgroundResource(tv.resourceId);
        } else {
            mBack.setBackgroundColor(Color.TRANSPARENT);
        }
        mBack.setContentDescription(t("Zurück", "Navigate up"));
        mBack.setOnClickListener(new View.OnClickListener() { @Override public void onClick(View v) { if (!mBusy) finish(); } });
        bar.addView(mBack, new LinearLayout.LayoutParams(dp(48), dp(48)));
        root.addView(bar, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(56)));

        mScroll = new ScrollView(this);
        mScroll.setFillViewport(true);
        mScroll.setVerticalScrollBarEnabled(false);
        mContent = new LinearLayout(this);
        mContent.setOrientation(LinearLayout.VERTICAL);
        mContent.setPadding(dp(10), 0, dp(10), dp(16));
        mScroll.addView(mContent, new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        root.addView(mScroll, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        mBottom = new LinearLayout(this);
        mBottom.setOrientation(LinearLayout.HORIZONTAL);
        mBottom.setGravity(Gravity.CENTER);
        mBottom.setPadding(dp(24), dp(10), dp(24), dp(14));
        root.addView(mBottom, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        setContentView(root);
    }

    /** Starts a new page: clears content and buttons, adds the big One UI title. */
    private void newPage(String title) {
        mContent.removeAllViews();
        mBottom.removeAllViews();
        mBottom.setVisibility(View.GONE);
        TextView big = new TextView(this);
        big.setText(title);
        big.setTextColor(mText);
        big.setTextSize(TypedValue.COMPLEX_UNIT_SP, 30);
        big.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.NORMAL));
        big.setLineSpacing(0, 1.05f);
        big.setPadding(dp(18), dp(36), dp(18), dp(34));
        mContent.addView(big, matchWrap());
        mScroll.scrollTo(0, 0);
    }

    /** One UI enter animation for a freshly built page. */
    private void animatePage() {
        for (int i = 0; i < mContent.getChildCount(); i++) {
            View v = mContent.getChildAt(i);
            v.setAlpha(0f);
            v.setTranslationY(dp(28));
            v.animate().alpha(1f).translationY(0f).setStartDelay(40L * i).setDuration(450).setInterpolator(mEase).start();
        }
        if (mBottom.getVisibility() == View.VISIBLE) {
            mBottom.setAlpha(0f);
            mBottom.animate().alpha(1f).setStartDelay(150).setDuration(350).setInterpolator(mEase).start();
        }
    }

    private LinearLayout.LayoutParams matchWrap() {
        return new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
    }

    private LinearLayout card() {
        LinearLayout c = new LinearLayout(this);
        c.setOrientation(LinearLayout.VERTICAL);
        c.setBackground(rounded(mCardBg, 26));
        c.setPadding(dp(24), dp(20), dp(24), dp(22));
        LinearLayout.LayoutParams lp = matchWrap();
        lp.bottomMargin = dp(12);
        mContent.addView(c, lp);
        return c;
    }

    private SdAnimView anim(LinearLayout parent, int mode, int heightDp) {
        SdAnimView v = new SdAnimView(this, mText, mAccent, mOnAccent);
        v.setMode(mode);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(heightDp));
        lp.bottomMargin = dp(12);
        parent.addView(v, lp);
        return v;
    }

    private TextView headline(LinearLayout parent, String s) {
        TextView v = new TextView(this);
        v.setText(s);
        v.setTextColor(mText);
        v.setTextSize(TypedValue.COMPLEX_UNIT_SP, 18);
        v.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        LinearLayout.LayoutParams lp = matchWrap();
        lp.bottomMargin = dp(8);
        parent.addView(v, lp);
        return v;
    }

    private TextView body(LinearLayout parent, String s) {
        TextView v = new TextView(this);
        v.setText(s);
        v.setTextColor(mSubText);
        v.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
        v.setLineSpacing(dp(2), 1f);
        parent.addView(v, matchWrap());
        return v;
    }

    private void sectionLabel(String s) {
        TextView v = new TextView(this);
        v.setText(s);
        v.setTextColor(mAccent);
        v.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
        v.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        v.setPadding(dp(24), dp(10), dp(24), dp(8));
        mContent.addView(v, matchWrap());
    }

    private void row(LinearLayout parent, String label, String value, boolean divider) {
        if (divider) {
            View d = new View(this);
            d.setBackgroundColor(mDivider);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, Math.max(1, dp(0.6f)));
            lp.topMargin = dp(12);
            lp.bottomMargin = dp(12);
            parent.addView(d, lp);
        }
        TextView l = new TextView(this);
        l.setText(label);
        l.setTextColor(mText);
        l.setTextSize(TypedValue.COMPLEX_UNIT_SP, 17);
        parent.addView(l, matchWrap());
        TextView v = new TextView(this);
        v.setText(value);
        v.setTextColor(mAccent);
        v.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
        parent.addView(v, matchWrap());
    }

    private Button roundButton(String text, boolean primary, View.OnClickListener l) {
        Button b = new Button(this);
        b.setText(text);
        b.setAllCaps(false);
        b.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16);
        b.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        b.setStateListAnimator(null);
        b.setElevation(0);
        b.setMinHeight(dp(48));
        b.setPadding(dp(20), 0, dp(20), 0);
        int bg = primary ? mAccent : Color.TRANSPARENT;
        b.setTextColor(primary ? mOnAccent : mAccent);
        GradientDrawable shape = rounded(bg, 24);
        GradientDrawable mask = rounded(0xFFFFFFFF, 24);
        b.setBackground(new RippleDrawable(ColorStateList.valueOf(primary ? 0x33FFFFFF : (mAccent & 0x00FFFFFF) | 0x33000000), shape, mask));
        b.setOnClickListener(l);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, dp(48), 1f);
        if (mBottom.getChildCount() > 0) lp.leftMargin = dp(12);
        mBottom.addView(b, lp);
        mBottom.setVisibility(View.VISIBLE);
        return b;
    }

    private int dialogTheme() {
        return mNight ? android.R.style.Theme_DeviceDefault_Dialog_Alert
                      : android.R.style.Theme_DeviceDefault_Light_Dialog_Alert;
    }

    private AlertDialog.Builder builder() {
        AlertDialog.Builder b = new AlertDialog.Builder(this, dialogTheme());
        b.setCancelable(true);
        return b;
    }

    // ---- state -------------------------------------------------------------

    private DiskInfo findSdDisk() {
        List<DiskInfo> disks = mSm.getDisks();
        if (disks == null) return null;
        for (DiskInfo d : disks) {
            if (d != null && d.isSd()) return d;
        }
        return null;
    }

    private VolumeInfo findVolume(DiskInfo disk, int type) {
        List<VolumeInfo> vols = mSm.getVolumes();
        if (vols == null || disk == null) return null;
        for (VolumeInfo v : vols) {
            if (v != null && v.getType() == type && disk.getId().equals(v.getDiskId())) return v;
        }
        return null;
    }

    private void refreshMain() {
        mUi.post(new Runnable() { @Override public void run() {
            if (mOnMain && !mBusy && !isFinishing() && !isDestroyed()) showMain();
        } });
    }

    // ---- main page -----------------------------------------------------------

    private void showMain() {
        mOnMain = true;
        final DiskInfo disk = findSdDisk();
        if (disk == null) {
            newPage(t("SD-Karte", "SD card"));
            LinearLayout c = card();
            anim(c, SdAnimView.MODE_NO_CARD, 170);
            headline(c, t("Keine SD-Karte eingelegt", "No SD card inserted"));
            body(c, t("Lege eine microSD-Karte ein. Danach kannst du hier wählen, ob sie als tragbarer Speicher "
                    + "oder als interner, verschlüsselter Speicher genutzt wird.",
                    "Insert a microSD card. You can then choose here whether it is used as portable storage "
                    + "or as encrypted internal storage."));
            animatePage();
            return;
        }
        final VolumeInfo priv = findVolume(disk, VolumeInfo.TYPE_PRIVATE);
        final String size = disk.size > 0 ? Formatter.formatFileSize(this, disk.size) : "–";

        if (priv != null) {
            newPage(t("SD-Karte wieder tragbar machen", "Make SD card portable again"));
            LinearLayout c = card();
            anim(c, SdAnimView.MODE_TO_PORTABLE, 170);
            headline(c, t("Tragbarer Speicher", "Portable storage"));
            body(c, t("Die Karte wird wieder ein normaler, austauschbarer Speicher – ohne Verschlüsselung und auch in "
                    + "anderen Geräten, Kameras oder am PC lesbar.\n\n"
                    + "Apps und Dateien auf der Karte werden vorher automatisch auf den internen Speicher verschoben. "
                    + "Anschließend wird die Karte formatiert.",
                    "The card becomes normal removable storage again – without encryption and readable in other "
                    + "devices, cameras or on a PC.\n\n"
                    + "Apps and files on the card are moved back to internal storage automatically first. "
                    + "The card is formatted afterwards."));

            sectionLabel(t("Aktueller Zustand", "Current state"));
            LinearLayout s = card();
            row(s, t("Nutzung", "Usage"), t("Interner Speicher", "Internal storage"), false);
            row(s, t("Verschlüsselung", "Encryption"), t("Verschlüsselt, nur in diesem Gerät lesbar", "Encrypted, readable only on this device"), true);
            row(s, t("Dateien gespeichert auf", "Files stored on"), currentFileLocation(priv), true);
            row(s, t("Kapazität", "Capacity"), size, true);

            sectionLabel(t("Speicherort für Dateien", "Location for files"));
            LinearLayout f = card();
            anim(f, SdAnimView.MODE_FILES, 130);
            body(f, t("Wähle, wo Fotos, Videos, Downloads, Musik und andere Dateien standardmäßig gespeichert werden. "
                    + "Vorhandene Dateien werden mit verschoben. System und Apps bleiben im internen Speicher.",
                    "Choose where photos, videos, downloads, music and other files are stored by default. "
                    + "Existing files are moved along. System and apps stay on internal storage."));
            final boolean onSd = filesOnSd(priv);
            RadioGroup rg = new RadioGroup(this);
            rg.setOrientation(RadioGroup.VERTICAL);
            rg.setPadding(0, dp(10), 0, 0);
            final RadioButton rInt = radio(rg, t("Interner Speicher", "Internal storage"));
            final RadioButton rSd = radio(rg, t("SD-Karte (verschlüsselt)", "SD card (encrypted)"));
            (onSd ? rSd : rInt).setChecked(true);
            CompoundButton.OnCheckedChangeListener l = new CompoundButton.OnCheckedChangeListener() {
                @Override public void onCheckedChanged(CompoundButton b, boolean checked) {
                    if (!checked) return;
                    boolean wantSd = b == rSd;
                    if (wantSd != onSd) confirmFileLocation(priv, wantSd);
                }
            };
            rInt.setOnCheckedChangeListener(l);
            rSd.setOnCheckedChangeListener(l);
            f.addView(rg, matchWrap());

            roundButton(t("Tragbar machen", "Make portable"), true, new View.OnClickListener() {
                @Override public void onClick(View v) { toPortable(disk, priv); }
            });
        } else {
            newPage(t("SD-Karte als internen Speicher nutzen", "Use SD card as internal storage"));
            LinearLayout c = card();
            anim(c, SdAnimView.MODE_TO_INTERNAL, 170);
            headline(c, t("Interner, verschlüsselter Speicher", "Encrypted internal storage"));
            body(c, t("Die Karte wird formatiert, verschlüsselt und als Erweiterung des internen Speichers genutzt. "
                    + "Danach kannst du Fotos, Downloads und andere Dateien – und unterstützte Apps – auf der Karte speichern.\n\n"
                    + "Die Karte ist anschließend nur noch in diesem Gerät lesbar. Alle Daten, die jetzt auf der Karte sind, werden gelöscht.",
                    "The card is formatted, encrypted and used as an extension of internal storage. "
                    + "You can then store photos, downloads and other files – and supported apps – on the card.\n\n"
                    + "Afterwards the card can only be read on this device. All data currently on the card is erased."));

            sectionLabel(t("Aktueller Zustand", "Current state"));
            LinearLayout s = card();
            row(s, t("Nutzung", "Usage"), t("Tragbarer Speicher", "Portable storage"), false);
            row(s, t("Verschlüsselung", "Encryption"), t("Nicht verschlüsselt", "Not encrypted"), true);
            row(s, t("Kapazität", "Capacity"), size, true);

            roundButton(t("Als intern einrichten", "Set up as internal"), true, new View.OnClickListener() {
                @Override public void onClick(View v) { confirmToInternal(disk); }
            });
        }
        animatePage();
    }

    private RadioButton radio(RadioGroup rg, String text) {
        RadioButton r = new RadioButton(this);
        r.setId(View.generateViewId());
        r.setText(text);
        r.setTextColor(mText);
        r.setTextSize(TypedValue.COMPLEX_UNIT_SP, 17);
        r.setButtonTintList(ColorStateList.valueOf(mAccent));
        r.setPadding(dp(8), dp(10), 0, dp(10));
        rg.addView(r, new RadioGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        return r;
    }

    // ---- portable -> internal ----------------------------------------------

    private void confirmToInternal(final DiskInfo disk) {
        final String diskId = disk.getId();
        builder().setTitle(t("Alle Daten auf der SD-Karte löschen?", "Erase all data on the SD card?"))
                .setMessage(t("Alle Daten auf der SD-Karte werden unwiderruflich gelöscht. Sichere wichtige Dateien vorher.",
                        "All data on the SD card will be permanently erased. Back up important files first."))
                .setNegativeButton(android.R.string.cancel, null)
                .setPositiveButton(t("Löschen und einrichten", "Erase and set up"), new DialogInterface.OnClickListener() { @Override public void onClick(DialogInterface d, int w) {
                        runWork(t("SD-Karte wird formatiert und verschlüsselt…", "Formatting and encrypting SD card…"), new Work() {
                            @Override public String run() throws Exception {
                                mSm.partitionPrivate(diskId);
                                setProgressText(t("SD-Karte wird eingebunden…", "Mounting SD card…"));
                                mNewPrivate = waitPrivateMounted(diskId);
                                return null;
                            }
                        }, t("Die SD-Karte wird jetzt als interner, verschlüsselter Speicher genutzt.",
                                "The SD card is now used as encrypted internal storage."),
                        new Runnable() { @Override public void run() { offerMigrate(); } });
                    } })
                .show();
    }

    /** Polls until the new private volume of the disk is mounted (max 60 s). */
    private VolumeInfo waitPrivateMounted(String diskId) throws InterruptedException {
        for (int i = 0; i < 120; i++) {
            List<VolumeInfo> vols = mSm.getVolumes();
            if (vols != null) {
                for (VolumeInfo v : vols) {
                    if (v != null && v.getType() == VolumeInfo.TYPE_PRIVATE && diskId.equals(v.getDiskId())
                            && v.getState() == VolumeInfo.STATE_MOUNTED) {
                        return v;
                    }
                }
            }
            Thread.sleep(500);
        }
        return null;
    }

    /** After adopting: offer to move photos, downloads etc. (primary shared storage) to the card. */
    private void offerMigrate() {
        mOnMain = false;
        final VolumeInfo target = mNewPrivate;
        final String done = t("Die SD-Karte wird jetzt als interner, verschlüsselter Speicher genutzt.",
                "The SD card is now used as encrypted internal storage.");
        if (target == null || (target.getFsUuid() != null && target.getFsUuid().equals(mSm.getPrimaryStorageUuid()))) {
            showResult(true, done + (target == null ? t("\n\nDateien kannst du später auf dieser Seite verschieben.",
                    "\n\nYou can move files later on this page.") : ""));
            return;
        }
        newPage(t("Dateien auf die SD-Karte verschieben?", "Move files to the SD card?"));
        LinearLayout c = card();
        anim(c, SdAnimView.MODE_FILES, 170);
        headline(c, t("SD-Karte ist eingerichtet", "SD card is set up"));
        body(c, t(done + "\n\nFotos, Videos, Downloads, Musik und andere Dateien jetzt auf die SD-Karte verschieben? "
                + "Neue Fotos und Downloads landen danach automatisch auf der Karte. System und Apps bleiben im internen Speicher.\n\n"
                + "Das kann je nach Datenmenge einige Minuten dauern. Du kannst das später auf dieser Seite jederzeit ändern.",
                done + "\n\nMove photos, videos, downloads, music and other files to the SD card now? "
                + "New photos and downloads will then be stored on the card automatically. System and apps stay on internal storage.\n\n"
                + "This can take a few minutes depending on the amount of data. You can change this later on this page at any time."));
        roundButton(t("Intern lassen", "Keep internal"), false, new View.OnClickListener() {
            @Override public void onClick(View v) { showMain(); }
        });
        roundButton(t("Auf SD-Karte", "To SD card"), true, new View.OnClickListener() {
            @Override public void onClick(View v) {
                runWork(t("Dateien werden auf die SD-Karte verschoben…", "Moving files to the SD card…"), new Work() {
                    @Override public String run() throws Exception {
                        return waitMove(mPm.movePrimaryStorage(target));
                    }
                }, t("Fotos, Downloads und andere Dateien liegen jetzt auf der SD-Karte.",
                        "Photos, downloads and other files are now on the SD card."), null);
            }
        });
        animatePage();
    }

    // ---- default location for files (primary shared storage) ---------------

    private boolean filesOnSd(VolumeInfo priv) {
        String u = priv.getFsUuid();
        return u != null && u.equals(mSm.getPrimaryStorageUuid());
    }

    private String currentFileLocation(VolumeInfo priv) {
        return filesOnSd(priv) ? t("SD-Karte", "SD card") : t("Interner Speicher", "Internal storage");
    }

    private void confirmFileLocation(final VolumeInfo priv, final boolean wantSd) {
        final boolean[] started = { false };
        AlertDialog d = builder().setTitle(wantSd ? t("Dateien auf die SD-Karte verschieben?", "Move files to the SD card?")
                                                  : t("Dateien in den internen Speicher verschieben?", "Move files to internal storage?"))
                .setMessage(t("Fotos, Videos, Downloads und andere Dateien werden verschoben und künftig dort gespeichert. "
                        + "Das kann je nach Datenmenge einige Minuten dauern.",
                        "Photos, videos, downloads and other files are moved and stored there from now on. "
                        + "This can take a few minutes depending on the amount of data."))
                .setNegativeButton(android.R.string.cancel, null)
                .setPositiveButton(t("Verschieben", "Move"), new DialogInterface.OnClickListener() { @Override public void onClick(DialogInterface dlg, int w) {
                        started[0] = true;
                        runWork(wantSd ? t("Dateien werden auf die SD-Karte verschoben…", "Moving files to the SD card…")
                                       : t("Dateien werden in den internen Speicher verschoben…", "Moving files to internal storage…"), new Work() {
                            @Override public String run() throws Exception {
                                VolumeInfo target = wantSd ? priv : mSm.findVolumeById(VolumeInfo.ID_PRIVATE_INTERNAL);
                                if (target == null) return t("Speicher nicht gefunden.", "Storage not found.");
                                return waitMove(mPm.movePrimaryStorage(target));
                            }
                        }, wantSd ? t("Fotos, Downloads und andere Dateien werden jetzt auf der SD-Karte gespeichert.",
                                      "Photos, downloads and other files are now stored on the SD card.")
                                  : t("Fotos, Downloads und andere Dateien werden jetzt im internen Speicher gespeichert.",
                                      "Photos, downloads and other files are now stored on internal storage."), null);
                    } })
                .create();
        d.setOnDismissListener(new DialogInterface.OnDismissListener() { @Override public void onDismiss(DialogInterface x) {
            if (!started[0] && !mBusy) showMain(); // reset the radio buttons
        } });
        d.show();
    }

    // ---- internal -> portable ----------------------------------------------

    private void toPortable(final DiskInfo disk, final VolumeInfo priv) {
        final String fsUuid = priv.getFsUuid();
        final List<String> pkgs = new ArrayList<>();
        final List<String> labels = new ArrayList<>();
        for (ApplicationInfo ai : mPm.getInstalledApplications(MATCH_ANY_USER)) {
            if (fsUuid != null && fsUuid.equals(ai.volumeUuid) && !pkgs.contains(ai.packageName)) {
                pkgs.add(ai.packageName);
                labels.add(String.valueOf(ai.loadLabel(mPm)));
            }
        }
        final boolean primaryOnSd = fsUuid != null && fsUuid.equals(mSm.getPrimaryStorageUuid());

        StringBuilder sb = new StringBuilder();
        if (primaryOnSd) {
            sb.append(t("• Fotos, Downloads und andere Dateien liegen auf der Karte und werden zurück in den internen Speicher verschoben.\n",
                    "• Photos, downloads and other files are on the card and will be moved back to internal storage.\n"));
        }
        if (!pkgs.isEmpty()) {
            sb.append(t("• Diese Apps werden zurück in den internen Speicher verschoben:\n",
                    "• These apps will be moved back to internal storage:\n"));
            for (String l : labels) sb.append("   – ").append(l).append('\n');
        }
        if (sb.length() > 0) sb.append('\n');
        sb.append(t("Danach wird die SD-Karte formatiert. Alle restlichen Daten darauf werden gelöscht. "
                + "Die Karte ist danach nicht mehr verschlüsselt und auch in anderen Geräten lesbar.",
                "The SD card is then formatted. All remaining data on it is erased. "
                + "It will no longer be encrypted and can be read on other devices."));

        builder().setTitle(t("SD-Karte wieder tragbar machen?", "Make SD card portable again?"))
                .setMessage(sb.toString())
                .setNegativeButton(android.R.string.cancel, null)
                .setPositiveButton(t("Fortfahren", "Continue"), new DialogInterface.OnClickListener() { @Override public void onClick(DialogInterface d, int w) {
                        runWork(t("Daten werden verschoben…", "Moving data…"), new Work() { @Override public String run() throws Exception {
                            VolumeInfo internal = mSm.findVolumeById(VolumeInfo.ID_PRIVATE_INTERNAL);
                            if (internal == null) return t("Interner Speicher nicht gefunden.", "Internal storage not found.");
                            if (primaryOnSd) {
                                setProgressText(t("Dateien werden verschoben…", "Moving files…"));
                                String err = waitMove(mPm.movePrimaryStorage(internal));
                                if (err != null) return err;
                            }
                            for (int i = 0; i < pkgs.size(); i++) {
                                setProgressText(t("App wird verschoben: ", "Moving app: ") + labels.get(i)
                                        + " (" + (i + 1) + "/" + pkgs.size() + ")");
                                String err = waitMove(mPm.movePackage(pkgs.get(i), internal));
                                if (err != null) return labels.get(i) + ": " + err;
                            }
                            setProgressText(t("SD-Karte wird formatiert…", "Formatting SD card…"));
                            mSm.partitionPublic(disk.getId());
                            if (fsUuid != null) {
                                try {
                                    mSm.forgetVolume(fsUuid);
                                } catch (Exception e) {
                                    Log.w(TAG, "forgetVolume failed", e);
                                }
                            }
                            return null;
                        } }, t("Die SD-Karte wird jetzt als tragbarer Speicher genutzt.",
                                "The SD card is now used as portable storage."), null);
                    } })
                .show();
    }

    /** Waits for a PackageManager move; returns null on success or an error text. */
    private String waitMove(int moveId) throws InterruptedException {
        long deadline = System.currentTimeMillis() + 60L * 60L * 1000L;
        while (System.currentTimeMillis() < deadline) {
            int s = mPm.getMoveStatus(moveId);
            if (s == MOVE_SUCCEEDED) return null;
            if (s < 0) return moveError(s);
            Thread.sleep(500);
        }
        return t("Zeitüberschreitung beim Verschieben.", "Move timed out.");
    }

    /** Human readable text for PackageManager.MOVE_FAILED_* codes. */
    private String moveError(int code) {
        String m;
        switch (code) {
            case -1: m = t("Nicht genug freier Speicher am Ziel.", "Not enough free space at the destination."); break;
            case -2: m = t("Die App existiert nicht mehr.", "The app no longer exists."); break;
            case -3: m = t("System-Apps können nicht verschoben werden.", "System apps cannot be moved."); break;
            case -5: m = t("Dieser Speicherort ist nicht möglich.", "This location is not possible."); break;
            case -7: m = t("Es läuft bereits ein anderer Verschiebevorgang. Bitte später erneut versuchen.",
                    "Another move is already in progress. Please try again later."); break;
            case -8: m = t("Diese App ist ein Geräteadministrator und kann nicht verschoben werden.",
                    "This app is a device administrator and cannot be moved."); break;
            case -10: m = t("Der Sichere Ordner oder ein anderer Benutzer ist gesperrt. "
                    + "Öffne und entsperre den Sicheren Ordner einmal und versuche es dann erneut.",
                    "Secure Folder or another user is locked. Open and unlock Secure Folder once, then try again."); break;
            default: m = t("Interner Fehler.", "Internal error."); break;
        }
        return m + t(" (Code ", " (code ") + code + ")";
    }

    // ---- background work -----------------------------------------------------

    private interface Work {
        /** @return null on success, otherwise an error message */
        String run() throws Exception;
    }

    private void setBusy(boolean busy) {
        mBusy = busy;
        mBack.setVisibility(busy ? View.INVISIBLE : View.VISIBLE);
        if (busy) {
            getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        } else {
            getWindow().clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        }
        try {
            OnBackInvokedDispatcher disp = getOnBackInvokedDispatcher();
            if (busy && mBlockBack == null) {
                mBlockBack = new OnBackInvokedCallback() { @Override public void onBackInvoked() { /* blocked while working */ } };
                disp.registerOnBackInvokedCallback(OnBackInvokedDispatcher.PRIORITY_OVERLAY, mBlockBack);
            } else if (!busy && mBlockBack != null) {
                disp.unregisterOnBackInvokedCallback(mBlockBack);
                mBlockBack = null;
            }
        } catch (Throwable e) {
            Log.w(TAG, "back dispatcher", e);
        }
    }

    private void runWork(String title, final Work work, final String okMessage, final Runnable next) {
        mOnMain = false;
        setBusy(true);
        newPage(title);
        LinearLayout c = card();
        anim(c, SdAnimView.MODE_WORKING, 170);
        ProgressBar pb = new ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal);
        pb.setIndeterminate(true);
        pb.setIndeterminateTintList(ColorStateList.valueOf(mAccent));
        LinearLayout.LayoutParams lp = matchWrap();
        lp.bottomMargin = dp(12);
        c.addView(pb, lp);
        mWorkText = body(c, t("Bitte warten. Entferne die SD-Karte nicht und schalte das Gerät nicht aus.",
                "Please wait. Do not remove the SD card or turn off the device."));
        animatePage();

        new Thread(new Runnable() { @Override public void run() {
            String err;
            try {
                err = work.run();
            } catch (Throwable e) {
                Log.e(TAG, "SD storage mode switch failed", e);
                err = String.valueOf(e.getMessage() != null ? e.getMessage() : e);
            }
            final String result = err;
            mUi.post(new Runnable() { @Override public void run() {
                if (isFinishing() || isDestroyed()) return;
                setBusy(false);
                if (result == null && next != null) {
                    next.run();
                    return;
                }
                showResult(result == null, result == null ? okMessage : result);
            } });
        } }, "ArtisanSdStorage").start();
    }

    private void showResult(boolean ok, String message) {
        mOnMain = false;
        newPage(ok ? t("Fertig", "Done") : t("Das hat nicht geklappt", "That didn't work"));
        LinearLayout c = card();
        if (ok) anim(c, SdAnimView.MODE_DONE, 150);
        body(c, message);
        if (ok) {
            roundButton(t("Fertig", "Done"), true, new View.OnClickListener() {
                @Override public void onClick(View v) { finish(); }
            });
        } else {
            roundButton(t("Zurück", "Back"), true, new View.OnClickListener() {
                @Override public void onClick(View v) { showMain(); }
            });
        }
        animatePage();
    }

    private void setProgressText(final String text) {
        mUi.post(new Runnable() { @Override public void run() {
            if (mWorkText != null && mBusy && !isDestroyed()) mWorkText.setText(text);
        } });
    }
}

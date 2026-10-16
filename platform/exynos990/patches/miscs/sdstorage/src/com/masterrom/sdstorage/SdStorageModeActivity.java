package com.masterrom.sdstorage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.UserInfo;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.Insets;
import android.graphics.RenderEffect;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.storage.DiskInfo;
import android.os.storage.StorageEventListener;
import android.os.storage.StorageManager;
import android.os.storage.VolumeInfo;
import android.text.format.Formatter;
import android.util.Log;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.animation.PathInterpolator;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/**
 * MasterROM: switch the microSD card between portable storage and adoptable (internal,
 * encrypted) storage. Full screen page inside SecSettings (system uid) in a One UI 8.5
 * "glass" look: drifting colour background, translucent cards, bottom sheets with a blurred
 * backdrop and illustrations (SdAnimView) that explain every step. Built in code, so no
 * extra resources are needed.
 */
public class SdStorageModeActivity extends Activity {
    private static final String TAG = "MasterROMSdStorage";
    private static final int MOVE_SUCCEEDED = -100;
    private static final int MOVE_FAILED_LOCKED_USER = -10;
    private static final int MATCH_ANY_USER = 0x00400000; // PackageManager.MATCH_ANY_USER (hidden)
    private static final String SECURE_FOLDER_PKG = "com.samsung.knox.securefolder";

    private StorageManager mSm;
    private PackageManager mPm;
    private UserManager mUm;
    private Handler mUi;
    private boolean mDe;
    private boolean mNight;

    // colours
    private int mBase, mText, mSubText, mAccent, mAccent2, mOnAccent;
    private int mGlass, mGlassStroke, mGlassHi, mSheetBg, mScrim, mDivider;

    // views
    private FrameLayout mRoot;
    private LinearLayout mFrame;
    private LinearLayout mContent;
    private LinearLayout mBottom;
    private ScrollView mScroll;
    private ImageButton mBack;
    private TextView mBarTitle;
    private TextView mBigTitle;
    private TextView mWorkText;
    private FrameLayout mSheetLayer;
    private LinearLayout mSheet;
    private View mScrim2;

    private boolean mBusy;
    private boolean mOnMain;
    private boolean mSheetShown;
    private Runnable mSheetCancel;
    private int mPageId;
    private OnBackInvokedCallback mBackCb;
    private volatile VolumeInfo mNewPrivate;

    // last background job, for "try again"
    private String mLastTitle;
    private Work mLastWork;
    private String mLastOk;
    private Runnable mLastNext;

    private final PathInterpolator mEase = new PathInterpolator(0.2f, 0f, 0f, 1f);
    private final PathInterpolator mEmph = new PathInterpolator(0.05f, 0.7f, 0.1f, 1f);

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
        mUm = getSystemService(UserManager.class);
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
        mPageId++;
        super.onDestroy();
    }

    @Override
    public void onBackPressed() {
        if (handleBack()) return;
        super.onBackPressed();
    }

    /** @return true if back was consumed */
    private boolean handleBack() {
        if (mBusy) return true;
        if (mSheetShown) {
            hideSheet(null);
            return true;
        }
        return false;
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

    private static int withAlpha(int color, int alpha) {
        return (color & 0x00FFFFFF) | (alpha << 24);
    }

    private void loadColors() {
        mAccent = resColor(mNight ? "sesl_primary_color_dark" : "sesl_primary_color_light",
                mNight ? 0xFF3E91FF : 0xFF0381FE);
        float[] hsv = new float[3];
        Color.colorToHSV(mAccent, hsv);
        hsv[0] = (hsv[0] + 38f) % 360f;
        mAccent2 = Color.HSVToColor(hsv);
        mOnAccent = 0xFFFFFFFF;
        if (mNight) {
            mBase = 0xFF050507;
            mText = 0xFFF5F5F7;
            mSubText = 0xFFA9ABB3;
            mGlass = 0x1FFFFFFF;
            mGlassStroke = 0x29FFFFFF;
            mGlassHi = 0x14FFFFFF;
            mSheetBg = 0xEB1C1C20;
            mScrim = 0x80000000;
            mDivider = 0x1FFFFFFF;
        } else {
            mBase = 0xFFF2F3F7;
            mText = 0xFF101114;
            mSubText = 0xFF5E6168;
            mGlass = 0xB3FFFFFF;
            mGlassStroke = 0xE6FFFFFF;
            mGlassHi = 0x80FFFFFF;
            mSheetBg = 0xF2FFFFFF;
            mScrim = 0x52000000;
            mDivider = 0x14000000;
        }
    }

    /** translucent glass surface with a hairline border and a soft top highlight */
    private Drawable glass(int fill, float radiusDp) {
        GradientDrawable body = new GradientDrawable();
        body.setColor(fill);
        body.setCornerRadius(dp(radiusDp));
        body.setStroke(Math.max(1, dp(0.8f)), mGlassStroke);
        GradientDrawable hi = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM,
                new int[] { mGlassHi, withAlpha(mGlassHi, 0) });
        hi.setCornerRadius(dp(radiusDp));
        LayerDrawable ld = new LayerDrawable(new Drawable[] { body, hi });
        ld.setLayerInsetBottom(1, dp(40));
        return ld;
    }

    private GradientDrawable pill(int color, float radiusDp) {
        GradientDrawable g = new GradientDrawable();
        g.setColor(color);
        g.setCornerRadius(dp(radiusDp));
        return g;
    }

    /** One UI press feedback: shrink a little while touched */
    private void addPress(final View v) {
        v.setOnTouchListener(new View.OnTouchListener() {
            @Override public boolean onTouch(View view, MotionEvent e) {
                switch (e.getActionMasked()) {
                    case MotionEvent.ACTION_DOWN:
                        view.animate().scaleX(0.96f).scaleY(0.96f).setDuration(120).setInterpolator(mEase).start();
                        break;
                    case MotionEvent.ACTION_UP:
                    case MotionEvent.ACTION_CANCEL:
                        view.animate().scaleX(1f).scaleY(1f).setDuration(260).setInterpolator(mEmph).start();
                        break;
                    default: break;
                }
                return false;
            }
        });
    }

    private void buildFrame() {
        getWindow().getDecorView().setBackgroundColor(mBase);
        try {
            getWindow().setStatusBarColor(Color.TRANSPARENT);
            getWindow().setNavigationBarColor(Color.TRANSPARENT);
            getWindow().setDecorFitsSystemWindows(false);
        } catch (Throwable ignored) { }

        mRoot = new FrameLayout(this);
        mRoot.addView(new SdGlassBackground(this, mBase,
                withAlpha(mAccent, mNight ? 0x66 : 0x47),
                withAlpha(mAccent2, mNight ? 0x4D : 0x3D),
                withAlpha(0xFFB27CF5, mNight ? 0x47 : 0x33)),
                new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        mFrame = new LinearLayout(this);
        mFrame.setOrientation(LinearLayout.VERTICAL);
        mRoot.addView(mFrame, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        // toolbar: navigate up + collapsed title
        LinearLayout bar = new LinearLayout(this);
        bar.setOrientation(LinearLayout.HORIZONTAL);
        bar.setGravity(Gravity.CENTER_VERTICAL);
        bar.setPadding(dp(4), 0, dp(16), 0);
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
        mBack.setBackground(new RippleDrawable(ColorStateList.valueOf(withAlpha(mText, 0x22)), null, pill(0xFFFFFFFF, 24)));
        mBack.setContentDescription(t("Zurück", "Navigate up"));
        mBack.setOnClickListener(new View.OnClickListener() { @Override public void onClick(View v) { if (!handleBack()) finish(); } });
        bar.addView(mBack, new LinearLayout.LayoutParams(dp(48), dp(48)));
        mBarTitle = new TextView(this);
        mBarTitle.setTextColor(mText);
        mBarTitle.setTextSize(TypedValue.COMPLEX_UNIT_SP, 19);
        mBarTitle.setTypeface(Typeface.create(Typeface.DEFAULT, 600, false));
        mBarTitle.setSingleLine(true);
        mBarTitle.setEllipsize(android.text.TextUtils.TruncateAt.END);
        mBarTitle.setAlpha(0f);
        mBarTitle.setPadding(dp(6), 0, 0, 0);
        bar.addView(mBarTitle, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        mFrame.addView(bar, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(56)));

        mScroll = new ScrollView(this);
        mScroll.setFillViewport(true);
        mScroll.setVerticalScrollBarEnabled(false);
        mScroll.setOverScrollMode(View.OVER_SCROLL_IF_CONTENT_SCROLLS);
        mScroll.setClipToPadding(false);
        mContent = new LinearLayout(this);
        mContent.setOrientation(LinearLayout.VERTICAL);
        mContent.setPadding(dp(12), 0, dp(12), dp(20));
        mScroll.addView(mContent, new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        mScroll.setOnScrollChangeListener(new View.OnScrollChangeListener() {
            @Override public void onScrollChange(View v, int x, int y, int ox, int oy) { onScrolled(y); }
        });
        mFrame.addView(mScroll, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        mBottom = new LinearLayout(this);
        mBottom.setOrientation(LinearLayout.HORIZONTAL);
        mBottom.setGravity(Gravity.CENTER);
        mBottom.setPadding(dp(20), dp(10), dp(20), dp(16));
        mFrame.addView(mBottom, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        // bottom sheet layer
        mSheetLayer = new FrameLayout(this);
        mSheetLayer.setVisibility(View.GONE);
        mScrim2 = new View(this);
        mScrim2.setBackgroundColor(mScrim);
        mScrim2.setOnClickListener(new View.OnClickListener() { @Override public void onClick(View v) { hideSheet(null); } });
        mSheetLayer.addView(mScrim2, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        mSheet = new LinearLayout(this);
        mSheet.setOrientation(LinearLayout.VERTICAL);
        mSheet.setClickable(true);
        mSheet.setBackground(glass(mSheetBg, 32));
        mSheet.setPadding(dp(24), dp(14), dp(24), dp(18));
        FrameLayout.LayoutParams slp = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.BOTTOM);
        slp.setMargins(dp(10), 0, dp(10), dp(10));
        mSheetLayer.addView(mSheet, slp);
        mRoot.addView(mSheetLayer, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        mRoot.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() {
            @Override public WindowInsets onApplyWindowInsets(View v, WindowInsets in) {
                Insets s = in.getInsets(WindowInsets.Type.systemBars() | WindowInsets.Type.displayCutout());
                mFrame.setPadding(s.left, s.top, s.right, s.bottom);
                mSheetLayer.setPadding(s.left, s.top, s.right, s.bottom);
                return WindowInsets.CONSUMED;
            }
        });
        setContentView(mRoot);
    }

    private void onScrolled(int y) {
        float p = Math.max(0f, Math.min(1f, (y - dp(24)) / (float) dp(48)));
        mBarTitle.setAlpha(p);
        if (mBigTitle != null) {
            mBigTitle.setAlpha(1f - p);
            mBigTitle.setTranslationY(y * 0.35f);
        }
    }

    /** Starts a new page: clears content and buttons, adds the big One UI title. */
    private void newPage(String title) {
        mPageId++;
        mContent.removeAllViews();
        mBottom.removeAllViews();
        mBottom.setVisibility(View.GONE);
        mBarTitle.setText(title);
        mBarTitle.setAlpha(0f);
        mBigTitle = new TextView(this);
        mBigTitle.setText(title);
        mBigTitle.setTextColor(mText);
        mBigTitle.setTextSize(TypedValue.COMPLEX_UNIT_SP, 32);
        mBigTitle.setTypeface(Typeface.create(Typeface.DEFAULT, 500, false));
        mBigTitle.setLineSpacing(0, 1.04f);
        mBigTitle.setPadding(dp(16), dp(30), dp(16), dp(30));
        mContent.addView(mBigTitle, matchWrap());
        mScroll.scrollTo(0, 0);
    }

    /** One UI enter animation for a freshly built page: cards rise and fade in one after another. */
    private void animatePage() {
        for (int i = 0; i < mContent.getChildCount(); i++) {
            View v = mContent.getChildAt(i);
            v.setAlpha(0f);
            v.setTranslationY(dp(36));
            v.setScaleX(0.97f);
            v.setScaleY(0.97f);
            v.animate().alpha(1f).translationY(0f).scaleX(1f).scaleY(1f)
                    .setStartDelay(55L * i).setDuration(520).setInterpolator(mEmph).start();
        }
        if (mBottom.getVisibility() == View.VISIBLE) {
            mBottom.setAlpha(0f);
            mBottom.setTranslationY(dp(24));
            mBottom.animate().alpha(1f).translationY(0f).setStartDelay(180).setDuration(420).setInterpolator(mEmph).start();
        }
    }

    private LinearLayout.LayoutParams matchWrap() {
        return new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
    }

    private LinearLayout card() {
        LinearLayout c = new LinearLayout(this);
        c.setOrientation(LinearLayout.VERTICAL);
        c.setBackground(glass(mGlass, 28));
        c.setPadding(dp(22), dp(20), dp(22), dp(22));
        LinearLayout.LayoutParams lp = matchWrap();
        lp.bottomMargin = dp(12);
        mContent.addView(c, lp);
        return c;
    }

    private SdAnimView anim(LinearLayout parent, int mode, int heightDp) {
        SdAnimView v = new SdAnimView(this, mText, mAccent, mOnAccent);
        v.setMode(mode);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(heightDp));
        lp.bottomMargin = dp(10);
        parent.addView(v, lp);
        return v;
    }

    private TextView headline(LinearLayout parent, String s) {
        TextView v = new TextView(this);
        v.setText(s);
        v.setTextColor(mText);
        v.setTextSize(TypedValue.COMPLEX_UNIT_SP, 20);
        v.setTypeface(Typeface.create(Typeface.DEFAULT, 600, false));
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
        v.setLineSpacing(dp(3), 1f);
        parent.addView(v, matchWrap());
        return v;
    }

    private void sectionLabel(String s) {
        TextView v = new TextView(this);
        v.setText(s);
        v.setTextColor(mSubText);
        v.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
        v.setTypeface(Typeface.create(Typeface.DEFAULT, 600, false));
        v.setPadding(dp(22), dp(10), dp(22), dp(8));
        mContent.addView(v, matchWrap());
    }

    /** row of small glass chips that sum up a mode */
    private void chips(LinearLayout parent, String... items) {
        HorizontalScrollView hs = new HorizontalScrollView(this);
        hs.setHorizontalScrollBarEnabled(false);
        hs.setOverScrollMode(View.OVER_SCROLL_NEVER);
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        for (int i = 0; i < items.length; i++) {
            TextView c = new TextView(this);
            c.setText(items[i]);
            c.setTextColor(mAccent);
            c.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
            c.setTypeface(Typeface.create(Typeface.DEFAULT, 600, false));
            c.setBackground(pill(withAlpha(mAccent, mNight ? 0x2E : 0x1F), 16));
            c.setPadding(dp(12), dp(6), dp(12), dp(6));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            if (i > 0) lp.leftMargin = dp(8);
            row.addView(c, lp);
        }
        hs.addView(row);
        LinearLayout.LayoutParams lp = matchWrap();
        lp.topMargin = dp(14);
        parent.addView(hs, lp);
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
        LinearLayout r = new LinearLayout(this);
        r.setOrientation(LinearLayout.HORIZONTAL);
        r.setGravity(Gravity.CENTER_VERTICAL);
        TextView l = new TextView(this);
        l.setText(label);
        l.setTextColor(mText);
        l.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16);
        r.addView(l, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView v = new TextView(this);
        v.setText(value);
        v.setTextColor(mSubText);
        v.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
        v.setGravity(Gravity.END);
        LinearLayout.LayoutParams vlp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.2f);
        vlp.leftMargin = dp(12);
        r.addView(v, vlp);
        parent.addView(r, matchWrap());
    }

    private Button button(LinearLayout parent, String text, boolean primary, boolean destructive, View.OnClickListener l) {
        Button b = new Button(this);
        b.setText(text);
        b.setAllCaps(false);
        b.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16);
        b.setTypeface(Typeface.create(Typeface.DEFAULT, 600, false));
        b.setStateListAnimator(null);
        b.setElevation(0);
        b.setMinHeight(dp(52));
        b.setPadding(dp(18), 0, dp(18), 0);
        int col = destructive ? SdAnimView.ERROR_COLOR : mAccent;
        Drawable bg;
        if (primary) {
            GradientDrawable g = new GradientDrawable(GradientDrawable.Orientation.TL_BR,
                    destructive ? new int[] { col, col } : new int[] { mAccent, mAccent2 });
            g.setCornerRadius(dp(26));
            bg = g;
            b.setTextColor(mOnAccent);
        } else {
            bg = glass(mGlass, 26);
            b.setTextColor(col);
        }
        b.setBackground(new RippleDrawable(ColorStateList.valueOf(primary ? 0x33FFFFFF : withAlpha(col, 0x2A)), bg, pill(0xFFFFFFFF, 26)));
        b.setOnClickListener(l);
        addPress(b);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, dp(52), 1f);
        if (parent.getChildCount() > 0) lp.leftMargin = dp(12);
        parent.addView(b, lp);
        if (parent == mBottom) mBottom.setVisibility(View.VISIBLE);
        return b;
    }

    // ---- bottom sheet ------------------------------------------------------------

    private void showSheet(String title, String message, int animMode, String negText, String posText,
                           boolean destructive, final Runnable onPos) {
        mSheet.removeAllViews();
        View handle = new View(this);
        handle.setBackground(pill(withAlpha(mText, 0x33), 3));
        LinearLayout.LayoutParams hlp = new LinearLayout.LayoutParams(dp(36), dp(5));
        hlp.gravity = Gravity.CENTER_HORIZONTAL;
        hlp.bottomMargin = dp(14);
        mSheet.addView(handle, hlp);
        if (animMode >= 0) anim(mSheet, animMode, 120);
        headline(mSheet, title);
        TextView m = body(mSheet, message);
        m.setPadding(0, 0, 0, dp(20));
        LinearLayout btns = new LinearLayout(this);
        btns.setOrientation(LinearLayout.HORIZONTAL);
        mSheet.addView(btns, matchWrap());
        button(btns, negText, false, false, new View.OnClickListener() {
            @Override public void onClick(View v) { hideSheet(null); }
        });
        button(btns, posText, true, destructive, new View.OnClickListener() {
            @Override public void onClick(View v) { hideSheet(onPos); }
        });

        mSheetShown = true;
        mSheetCancel = null;
        updateBackCallback();
        mSheetLayer.setVisibility(View.VISIBLE);
        mScrim2.setAlpha(0f);
        mScrim2.animate().alpha(1f).setDuration(280).setInterpolator(mEase).start();
        mSheet.setTranslationY(dp(420));
        mSheet.animate().translationY(0f).setDuration(460).setInterpolator(mEmph).start();
        animateBlur(0f, 22f);
    }

    private void hideSheet(Runnable onPos) {
        if (!mSheetShown) return;
        mSheetShown = false;
        final Runnable after = onPos != null ? onPos : mSheetCancel;
        mSheetCancel = null;
        updateBackCallback();
        mScrim2.animate().alpha(0f).setDuration(220).setInterpolator(mEase).start();
        mSheet.animate().translationY(mSheet.getHeight() + dp(40)).setDuration(260).setInterpolator(mEase)
                .setListener(new AnimatorListenerAdapter() {
                    @Override public void onAnimationEnd(Animator a) {
                        mSheet.animate().setListener(null);
                        mSheetLayer.setVisibility(View.GONE);
                        if (after != null && !isFinishing() && !isDestroyed()) after.run();
                    }
                }).start();
        animateBlur(22f, 0f);
    }

    /** blurs the page behind the sheet (frosted glass), Android 12+ */
    private void animateBlur(float from, float to) {
        if (Build.VERSION.SDK_INT < 31) return;
        ValueAnimator va = ValueAnimator.ofFloat(from, to);
        va.setDuration(300);
        va.setInterpolator(mEase);
        va.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override public void onAnimationUpdate(ValueAnimator a) {
                float r = (Float) a.getAnimatedValue();
                try {
                    mFrame.setRenderEffect(r < 0.5f ? null
                            : RenderEffect.createBlurEffect(dp(r), dp(r), Shader.TileMode.CLAMP));
                } catch (Throwable ignored) { }
            }
        });
        va.start();
    }

    private void updateBackCallback() {
        boolean want = mBusy || mSheetShown;
        try {
            OnBackInvokedDispatcher disp = getOnBackInvokedDispatcher();
            if (want && mBackCb == null) {
                mBackCb = new OnBackInvokedCallback() { @Override public void onBackInvoked() { handleBack(); } };
                disp.registerOnBackInvokedCallback(OnBackInvokedDispatcher.PRIORITY_OVERLAY, mBackCb);
            } else if (!want && mBackCb != null) {
                disp.unregisterOnBackInvokedCallback(mBackCb);
                mBackCb = null;
            }
        } catch (Throwable e) {
            Log.w(TAG, "back dispatcher", e);
        }
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
            if (mOnMain && !mBusy && !mSheetShown && !isFinishing() && !isDestroyed()) showMain();
        } });
    }

    private boolean filesOnSd(VolumeInfo priv) {
        String u = priv.getFsUuid();
        return u != null && u.equals(mSm.getPrimaryStorageUuid());
    }

    private String currentFileLocation(VolumeInfo priv) {
        return filesOnSd(priv) ? t("SD-Karte", "SD card") : t("Interner Speicher", "Internal storage");
    }

    // ---- main page -----------------------------------------------------------

    private void showMain() {
        mOnMain = true;
        final DiskInfo disk = findSdDisk();
        if (disk == null) {
            newPage(t("SD-Karte", "SD card"));
            LinearLayout c = card();
            anim(c, SdAnimView.MODE_NO_CARD, 180);
            headline(c, t("Keine SD-Karte eingelegt", "No SD card inserted"));
            body(c, t("Lege eine microSD-Karte ein. Danach kannst du hier wählen, ob sie als tragbarer Speicher "
                    + "oder als interner, verschlüsselter Speicher genutzt wird. Die Seite aktualisiert sich automatisch.",
                    "Insert a microSD card. You can then choose here whether it is used as portable storage "
                    + "or as encrypted internal storage. This page updates automatically."));
            animatePage();
            return;
        }
        final VolumeInfo priv = findVolume(disk, VolumeInfo.TYPE_PRIVATE);
        final String size = disk.size > 0 ? Formatter.formatFileSize(this, disk.size) : "–";

        if (priv != null) {
            newPage(t("SD-Karte wieder tragbar machen", "Make SD card portable again"));
            LinearLayout c = card();
            anim(c, SdAnimView.MODE_TO_PORTABLE, 180);
            headline(c, t("Tragbarer Speicher", "Portable storage"));
            body(c, t("Die Karte wird wieder ein normaler, austauschbarer Speicher – ohne Verschlüsselung und auch in "
                    + "anderen Geräten, Kameras oder am PC lesbar. Apps und Dateien auf der Karte werden vorher "
                    + "automatisch in den internen Speicher verschoben, danach wird die Karte formatiert.",
                    "The card becomes normal removable storage again – without encryption and readable in other "
                    + "devices, cameras or on a PC. Apps and files on the card are moved to internal storage "
                    + "automatically first, then the card is formatted."));
            chips(c, t("Austauschbar", "Removable"), t("Am PC lesbar", "Readable on PC"), t("Unverschlüsselt", "Not encrypted"));

            sectionLabel(t("Aktueller Zustand", "Current state"));
            LinearLayout s = card();
            row(s, t("Nutzung", "Usage"), t("Interner Speicher", "Internal storage"), false);
            row(s, t("Verschlüsselung", "Encryption"), t("Ja, nur dieses Gerät", "Yes, this device only"), true);
            row(s, t("Dateien gespeichert auf", "Files stored on"), currentFileLocation(priv), true);
            row(s, t("Kapazität", "Capacity"), size, true);

            sectionLabel(t("Speicherort für Dateien", "Location for files"));
            LinearLayout f = card();
            anim(f, SdAnimView.MODE_FILES, 130);
            body(f, t("Wähle, wo Fotos, Videos, Downloads, Musik und andere Dateien gespeichert werden. "
                    + "Vorhandene Dateien werden mit verschoben. System und Apps bleiben im internen Speicher.",
                    "Choose where photos, videos, downloads, music and other files are stored. "
                    + "Existing files are moved along. System and apps stay on internal storage."));
            final boolean onSd = filesOnSd(priv);
            LinearLayout tiles = new LinearLayout(this);
            tiles.setOrientation(LinearLayout.HORIZONTAL);
            LinearLayout.LayoutParams tlp = matchWrap();
            tlp.topMargin = dp(16);
            f.addView(tiles, tlp);
            tile(tiles, SdGlyphView.PHONE, t("Intern", "Internal"), t("Gerätespeicher", "Device storage"), !onSd,
                    new Runnable() { @Override public void run() { if (onSd) confirmFileLocation(priv, false); } });
            tile(tiles, SdGlyphView.SD, t("SD-Karte", "SD card"), t("Verschlüsselt", "Encrypted"), onSd,
                    new Runnable() { @Override public void run() { if (!onSd) confirmFileLocation(priv, true); } });

            button(mBottom, t("Tragbar machen", "Make portable"), true, false, new View.OnClickListener() {
                @Override public void onClick(View v) { toPortable(disk, priv); }
            });
        } else {
            newPage(t("SD-Karte als internen Speicher nutzen", "Use SD card as internal storage"));
            LinearLayout c = card();
            anim(c, SdAnimView.MODE_TO_INTERNAL, 180);
            headline(c, t("Interner, verschlüsselter Speicher", "Encrypted internal storage"));
            body(c, t("Die Karte wird formatiert, verschlüsselt und als Erweiterung des internen Speichers genutzt. "
                    + "Danach kannst du Fotos, Downloads und andere Dateien – und unterstützte Apps – auf der Karte speichern. "
                    + "Die Karte ist anschließend nur noch in diesem Gerät lesbar.",
                    "The card is formatted, encrypted and used as an extension of internal storage. "
                    + "You can then store photos, downloads and other files – and supported apps – on the card. "
                    + "Afterwards the card can only be read on this device."));
            chips(c, t("Verschlüsselt", "Encrypted"), t("Mehr Speicher", "More storage"), t("Nur dieses Gerät", "This device only"));

            sectionLabel(t("Aktueller Zustand", "Current state"));
            LinearLayout s = card();
            row(s, t("Nutzung", "Usage"), t("Tragbarer Speicher", "Portable storage"), false);
            row(s, t("Verschlüsselung", "Encryption"), t("Nein", "No"), true);
            row(s, t("Kapazität", "Capacity"), size, true);

            LinearLayout w = card();
            headline(w, t("Gut zu wissen", "Good to know"));
            body(w, t("• Alle Daten, die jetzt auf der Karte sind, werden gelöscht – sichere sie vorher.\n"
                    + "• Nimm die Karte danach nicht mehr einfach heraus, sie ist Teil des Speichers.\n"
                    + "• Du kannst die Karte hier jederzeit wieder tragbar machen.",
                    "• All data currently on the card is erased – back it up first.\n"
                    + "• Do not simply remove the card afterwards, it is part of the storage.\n"
                    + "• You can make the card portable again here at any time."));

            button(mBottom, t("Als intern einrichten", "Set up as internal"), true, false, new View.OnClickListener() {
                @Override public void onClick(View v) { confirmToInternal(disk); }
            });
        }
        animatePage();
    }

    /** selectable glass option tile */
    private void tile(LinearLayout parent, int glyph, String title, String sub, final boolean selected, final Runnable onPick) {
        final LinearLayout tl = new LinearLayout(this);
        tl.setOrientation(LinearLayout.VERTICAL);
        tl.setPadding(dp(16), dp(14), dp(16), dp(14));
        final GradientDrawable bg = new GradientDrawable();
        bg.setCornerRadius(dp(20));
        bg.setColor(selected ? withAlpha(mAccent, mNight ? 0x33 : 0x1F) : withAlpha(mText, mNight ? 0x0F : 0x08));
        bg.setStroke(dp(selected ? 2f : 1f), selected ? mAccent : mDivider);
        tl.setBackground(new RippleDrawable(ColorStateList.valueOf(withAlpha(mAccent, 0x2A)), bg, null));
        LinearLayout top = new LinearLayout(this);
        top.setOrientation(LinearLayout.HORIZONTAL);
        top.setGravity(Gravity.CENTER_VERTICAL);
        SdGlyphView g = new SdGlyphView(this, glyph, selected ? mAccent : mSubText);
        top.addView(g, new LinearLayout.LayoutParams(dp(28), dp(28)));
        View spacer = new View(this);
        top.addView(spacer, new LinearLayout.LayoutParams(0, 1, 1f));
        TextView check = new TextView(this);
        check.setText("✓");
        check.setGravity(Gravity.CENTER);
        check.setTextColor(mOnAccent);
        check.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
        check.setTypeface(Typeface.DEFAULT_BOLD);
        check.setBackground(pill(mAccent, 11));
        check.setVisibility(selected ? View.VISIBLE : View.INVISIBLE);
        top.addView(check, new LinearLayout.LayoutParams(dp(22), dp(22)));
        tl.addView(top, matchWrap());
        TextView tt = new TextView(this);
        tt.setText(title);
        tt.setTextColor(selected ? mAccent : mText);
        tt.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16);
        tt.setTypeface(Typeface.create(Typeface.DEFAULT, 600, false));
        tt.setPadding(0, dp(12), 0, dp(2));
        tl.addView(tt, matchWrap());
        TextView st = new TextView(this);
        st.setText(sub);
        st.setTextColor(mSubText);
        st.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
        tl.addView(st, matchWrap());
        tl.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) {
                if (selected) return;
                // preview the selection, then ask
                ValueAnimator va = ValueAnimator.ofObject(new ArgbEvaluator(), mDivider, mAccent);
                va.setDuration(220);
                va.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                    @Override public void onAnimationUpdate(ValueAnimator a) { bg.setStroke(dp(2f), (Integer) a.getAnimatedValue()); }
                });
                va.start();
                onPick.run();
            }
        });
        addPress(tl);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        if (parent.getChildCount() > 0) lp.leftMargin = dp(10);
        parent.addView(tl, lp);
    }

    // ---- Secure Folder / other users must be unlocked to move files ---------------------

    private List<UserInfo> lockedUsers() {
        List<UserInfo> out = new ArrayList<>();
        try {
            List<UserInfo> users = mUm.getUsers();
            if (users == null) return out;
            for (UserInfo u : users) {
                if (u != null && !mUm.isUserUnlocked(u.id)) out.add(u);
            }
        } catch (Throwable e) {
            Log.w(TAG, "lockedUsers", e);
        }
        return out;
    }

    private String userLabel(UserInfo u) {
        boolean sf = false;
        try { sf = u.isSecureFolder(); } catch (Throwable ignored) { }
        if (sf || (u.id >= 150 && u.id <= 160)) return t("Sicherer Ordner", "Secure Folder");
        return u.name != null ? u.name : t("Benutzer ", "User ") + u.id;
    }

    /** Runs action right away if every user is unlocked, otherwise asks to unlock (Secure Folder) first. */
    private void requireUnlocked(final Runnable action) {
        List<UserInfo> locked = lockedUsers();
        if (locked.isEmpty()) {
            action.run();
            return;
        }
        mOnMain = false;
        final UserInfo first = locked.get(0);
        newPage(t("Sicheren Ordner entsperren", "Unlock Secure Folder"));
        LinearLayout c = card();
        anim(c, SdAnimView.MODE_SECURE, 180);
        headline(c, t("Kurz entsperren, dann geht es weiter", "Unlock briefly, then we continue"));
        StringBuilder sb = new StringBuilder();
        sb.append(t("Damit Fotos, Downloads und andere Dateien verschoben werden können, müssen alle Bereiche "
                + "dieses Geräts entsperrt sein. Gesperrt ist zurzeit:\n",
                "To move photos, downloads and other files, every space on this device has to be unlocked. "
                + "Currently locked:\n"));
        for (UserInfo u : locked) sb.append("• ").append(userLabel(u)).append('\n');
        sb.append('\n').append(t("Tippe auf „Entsperren“ und gib die Sperre ein. Sobald alles entsperrt ist, "
                + "geht es hier automatisch weiter.",
                "Tap “Unlock” and enter the lock. As soon as everything is unlocked, this page continues automatically."));
        body(c, sb.toString());

        LinearLayout st = card();
        LinearLayout r = new LinearLayout(this);
        r.setOrientation(LinearLayout.HORIZONTAL);
        r.setGravity(Gravity.CENTER_VERTICAL);
        ProgressBar pb = new ProgressBar(this);
        pb.setIndeterminateTintList(ColorStateList.valueOf(mAccent));
        r.addView(pb, new LinearLayout.LayoutParams(dp(22), dp(22)));
        final TextView status = new TextView(this);
        status.setText(t("Warte auf Entsperrung …", "Waiting for unlock …"));
        status.setTextColor(mText);
        status.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
        status.setPadding(dp(14), 0, 0, 0);
        r.addView(status, matchWrap());
        st.addView(r, matchWrap());

        button(mBottom, t("Abbrechen", "Cancel"), false, false, new View.OnClickListener() {
            @Override public void onClick(View v) { showMain(); }
        });
        button(mBottom, t("Entsperren", "Unlock"), true, false, new View.OnClickListener() {
            @Override public void onClick(View v) { unlockUser(first.id); }
        });
        animatePage();

        final int page = mPageId;
        mUi.postDelayed(new Runnable() {
            @Override public void run() {
                if (page != mPageId || isFinishing() || isDestroyed()) return;
                if (lockedUsers().isEmpty()) {
                    status.setText(t("Entsperrt ✓", "Unlocked ✓"));
                    status.setTextColor(mAccent);
                    mUi.postDelayed(new Runnable() {
                        @Override public void run() {
                            if (page == mPageId && !isFinishing() && !isDestroyed()) action.run();
                        }
                    }, 600);
                    return;
                }
                mUi.postDelayed(this, 800);
            }
        }, 800);
    }

    private void unlockUser(int userId) {
        try {
            ActivityManager am = getSystemService(ActivityManager.class);
            if (!am.isUserRunning(userId)) am.startProfile(UserHandle.of(userId));
        } catch (Throwable e) {
            Log.w(TAG, "startProfile " + userId, e);
        }
        try {
            KeyguardManager km = getSystemService(KeyguardManager.class);
            Intent i = km.createConfirmDeviceCredentialIntent(
                    t("Sicheren Ordner entsperren", "Unlock Secure Folder"),
                    t("Zum Verschieben der Dateien", "To move your files"), userId);
            if (i != null) {
                startActivity(i);
                return;
            }
        } catch (Throwable e) {
            Log.w(TAG, "confirm credential " + userId, e);
        }
        try {
            Intent i = mPm.getLaunchIntentForPackage(SECURE_FOLDER_PKG);
            if (i != null) {
                i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                startActivity(i);
                return;
            }
        } catch (Throwable e) {
            Log.w(TAG, "open Secure Folder", e);
        }
        Toast.makeText(this, t("Bitte öffne den Sicheren Ordner und entsperre ihn.",
                "Please open Secure Folder and unlock it."), Toast.LENGTH_LONG).show();
    }

    // ---- portable -> internal ----------------------------------------------

    private void confirmToInternal(final DiskInfo disk) {
        final String diskId = disk.getId();
        showSheet(t("Alle Daten auf der SD-Karte löschen?", "Erase all data on the SD card?"),
                t("Die Karte wird formatiert und verschlüsselt. Alle Daten darauf werden unwiderruflich gelöscht.",
                        "The card is formatted and encrypted. All data on it will be permanently erased."),
                -1, t("Abbrechen", "Cancel"), t("Löschen und einrichten", "Erase and set up"), true,
                new Runnable() { @Override public void run() {
                    runWork(t("SD-Karte wird eingerichtet", "Setting up SD card"), new Work() {
                        @Override public String run() throws Exception {
                            setProgressText(t("Karte wird sicher ausgehängt …", "Safely unmounting the card …"));
                            DiskInfo d = mSm.findDiskById(diskId);
                            unmountQuietly(findVolume(d, VolumeInfo.TYPE_PUBLIC));
                            setProgressText(t("Karte wird formatiert und verschlüsselt …", "Formatting and encrypting the card …"));
                            mSm.partitionPrivate(diskId);
                            setProgressText(t("Karte wird eingebunden …", "Mounting the card …"));
                            mNewPrivate = waitPrivateMounted(diskId);
                            return null;
                        }
                    }, null, new Runnable() { @Override public void run() { showInternalReady(); } });
                } });
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

    /** Success page after adopting, with the offer to move photos, downloads etc. to the card. */
    private void showInternalReady() {
        mOnMain = false;
        final VolumeInfo target = mNewPrivate;
        DiskInfo disk = findSdDisk();
        newPage(t("SD-Karte ist bereit", "SD card is ready"));
        LinearLayout c = card();
        anim(c, SdAnimView.MODE_DONE, 170);
        headline(c, t("Interner Speicher eingerichtet", "Internal storage set up"));
        body(c, t("Die SD-Karte ist jetzt verschlüsselt und Teil des internen Speichers. Sie ist nur noch in diesem Gerät lesbar.",
                "The SD card is now encrypted and part of internal storage. It can only be read on this device."));
        chips(c, t("Verschlüsselt", "Encrypted"), t("Eingebunden", "Mounted"), t("Bereit", "Ready"));

        LinearLayout s = card();
        row(s, t("Nutzung", "Usage"), t("Interner Speicher", "Internal storage"), false);
        row(s, t("Verschlüsselung", "Encryption"), t("Ja, nur dieses Gerät", "Yes, this device only"), true);
        if (disk != null && disk.size > 0) row(s, t("Kapazität", "Capacity"), Formatter.formatFileSize(this, disk.size), true);

        boolean canMove = target != null && !(target.getFsUuid() != null && target.getFsUuid().equals(mSm.getPrimaryStorageUuid()));
        if (canMove) {
            sectionLabel(t("Nächster Schritt", "Next step"));
            LinearLayout n = card();
            anim(n, SdAnimView.MODE_FILES, 130);
            headline(n, t("Dateien auf die SD-Karte verschieben?", "Move files to the SD card?"));
            body(n, t("Fotos, Videos, Downloads, Musik und andere Dateien kommen auf die Karte, neue Fotos und Downloads "
                    + "landen danach automatisch dort. System und Apps bleiben im internen Speicher. "
                    + "Je nach Datenmenge dauert das einige Minuten – du kannst es auch später auf dieser Seite ändern.",
                    "Photos, videos, downloads, music and other files go to the card, and new photos and downloads are "
                    + "stored there automatically. System and apps stay on internal storage. Depending on the amount of "
                    + "data this takes a few minutes – you can also change it later on this page."));
            button(mBottom, t("Später", "Later"), false, false, new View.OnClickListener() {
                @Override public void onClick(View v) { showMain(); }
            });
            button(mBottom, t("Dateien verschieben", "Move files"), true, false, new View.OnClickListener() {
                @Override public void onClick(View v) {
                    requireUnlocked(new Runnable() { @Override public void run() { moveFiles(target, true); } });
                }
            });
        } else {
            if (target == null) {
                body(s, "\n" + t("Die Karte wird noch eingebunden. Dateien kannst du gleich auf dieser Seite verschieben.",
                        "The card is still being mounted. You can move files on this page in a moment."));
            }
            button(mBottom, t("Fertig", "Done"), true, false, new View.OnClickListener() {
                @Override public void onClick(View v) { showMain(); }
            });
        }
        animatePage();
    }

    // ---- default location for files (primary shared storage) ---------------

    private void confirmFileLocation(final VolumeInfo priv, final boolean wantSd) {
        showSheet(wantSd ? t("Dateien auf die SD-Karte verschieben?", "Move files to the SD card?")
                         : t("Dateien in den internen Speicher verschieben?", "Move files to internal storage?"),
                t("Fotos, Videos, Downloads und andere Dateien werden verschoben und künftig dort gespeichert. "
                        + "Je nach Datenmenge dauert das einige Minuten.",
                        "Photos, videos, downloads and other files are moved and stored there from now on. "
                        + "Depending on the amount of data this takes a few minutes."),
                SdAnimView.MODE_FILES, t("Abbrechen", "Cancel"), t("Verschieben", "Move"), false,
                new Runnable() { @Override public void run() {
                    requireUnlocked(new Runnable() { @Override public void run() {
                        VolumeInfo target = wantSd ? priv : mSm.findVolumeById(VolumeInfo.ID_PRIVATE_INTERNAL);
                        moveFiles(target, wantSd);
                    } });
                } });
        // dismissed -> rebuild main so the tile selection is reset
        mSheetCancel = new Runnable() { @Override public void run() { if (!mBusy) showMain(); } };
    }

    private void moveFiles(final VolumeInfo target, final boolean toSd) {
        runWork(toSd ? t("Dateien werden verschoben", "Moving files") : t("Dateien werden zurückgeholt", "Moving files back"),
                new Work() {
                    @Override public String run() throws Exception {
                        if (target == null) return t("Speicher nicht gefunden.", "Storage not found.");
                        setProgressText(toSd ? t("Fotos, Downloads und andere Dateien kommen auf die SD-Karte …",
                                                 "Photos, downloads and other files are moving to the SD card …")
                                             : t("Fotos, Downloads und andere Dateien kommen in den internen Speicher …",
                                                 "Photos, downloads and other files are moving to internal storage …"));
                        return waitMove(mPm.movePrimaryStorage(target));
                    }
                },
                toSd ? t("Fotos, Downloads und andere Dateien liegen jetzt auf der SD-Karte. Neue Dateien werden automatisch dort gespeichert.",
                         "Photos, downloads and other files are now on the SD card. New files are stored there automatically.")
                     : t("Fotos, Downloads und andere Dateien liegen jetzt im internen Speicher.",
                         "Photos, downloads and other files are now on internal storage."),
                null);
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
            sb.append(t("• Fotos, Downloads und andere Dateien werden zurück in den internen Speicher verschoben.\n",
                    "• Photos, downloads and other files are moved back to internal storage.\n"));
        }
        if (!pkgs.isEmpty()) {
            sb.append(t("• Diese Apps werden zurück in den internen Speicher verschoben: ",
                    "• These apps are moved back to internal storage: "));
            for (int i = 0; i < labels.size(); i++) sb.append(i > 0 ? ", " : "").append(labels.get(i));
            sb.append('\n');
        }
        if (sb.length() > 0) sb.append('\n');
        sb.append(t("Danach wird die SD-Karte formatiert und alle restlichen Daten darauf gelöscht. "
                + "Sie ist dann nicht mehr verschlüsselt und auch in anderen Geräten lesbar.",
                "The SD card is then formatted and all remaining data on it is erased. "
                + "It is no longer encrypted and can be read on other devices."));

        final Runnable doIt = new Runnable() { @Override public void run() {
            runWork(t("SD-Karte wird tragbar gemacht", "Making SD card portable"), new Work() { @Override public String run() throws Exception {
                VolumeInfo internal = mSm.findVolumeById(VolumeInfo.ID_PRIVATE_INTERNAL);
                if (internal == null) return t("Interner Speicher nicht gefunden.", "Internal storage not found.");
                if (primaryOnSd) {
                    setProgressText(t("Dateien werden in den internen Speicher verschoben …", "Moving files to internal storage …"));
                    String err = waitMove(mPm.movePrimaryStorage(internal));
                    if (err != null) return err;
                }
                for (int i = 0; i < pkgs.size(); i++) {
                    setProgressText(t("App wird verschoben: ", "Moving app: ") + labels.get(i)
                            + " (" + (i + 1) + "/" + pkgs.size() + ")");
                    String err = waitMove(mPm.movePackage(pkgs.get(i), internal));
                    if (err != null) return labels.get(i) + ": " + err;
                }
                setProgressText(t("Karte wird sicher ausgehängt …", "Safely unmounting the card …"));
                unmountQuietly(findVolume(disk, VolumeInfo.TYPE_PRIVATE));
                setProgressText(t("SD-Karte wird formatiert …", "Formatting SD card …"));
                mSm.partitionPublic(disk.getId());
                if (fsUuid != null) {
                    try {
                        mSm.forgetVolume(fsUuid);
                    } catch (Exception e) {
                        Log.w(TAG, "forgetVolume failed", e);
                    }
                }
                return null;
            } }, t("Die SD-Karte ist jetzt wieder ein tragbarer Speicher – ohne Verschlüsselung und auch in anderen Geräten lesbar.",
                    "The SD card is portable storage again – without encryption and readable on other devices."), null);
        } };

        showSheet(t("SD-Karte wieder tragbar machen?", "Make SD card portable again?"), sb.toString(),
                SdAnimView.MODE_TO_PORTABLE, t("Abbrechen", "Cancel"), t("Fortfahren", "Continue"), true,
                new Runnable() { @Override public void run() {
                    if (primaryOnSd) requireUnlocked(doIt); else doIt.run();
                } });
    }

    /**
     * Unmounts a volume the regular way before it is repartitioned, so the system does not
     * report the card as "unexpectedly removed" (vold would otherwise tear the mounted volume down).
     */
    private void unmountQuietly(VolumeInfo v) {
        if (v == null || v.getState() != VolumeInfo.STATE_MOUNTED) return;
        final String id = v.getId();
        try {
            mSm.unmount(id);
        } catch (Throwable e) {
            Log.w(TAG, "unmount " + id, e);
            return;
        }
        for (int i = 0; i < 40; i++) {
            VolumeInfo cur = mSm.findVolumeById(id);
            if (cur == null || cur.getState() == VolumeInfo.STATE_UNMOUNTED) return;
            try { Thread.sleep(250); } catch (InterruptedException e) { return; }
        }
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
            case MOVE_FAILED_LOCKED_USER: m = t("Der Sichere Ordner oder ein anderer Benutzer ist gesperrt. "
                    + "Entsperre ihn und versuche es dann erneut.",
                    "Secure Folder or another user is locked. Unlock it, then try again."); break;
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
        mBack.animate().alpha(busy ? 0f : 1f).setDuration(200).start();
        mBack.setEnabled(!busy);
        if (busy) {
            getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        } else {
            getWindow().clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        }
        updateBackCallback();
    }

    /**
     * Runs work in the background on a "working" page. On success: next.run() if given, otherwise
     * a success page with okMessage. On failure: error page with "try again".
     */
    private void runWork(String title, final Work work, final String okMessage, final Runnable next) {
        mLastTitle = title;
        mLastWork = work;
        mLastOk = okMessage;
        mLastNext = next;
        mOnMain = false;
        setBusy(true);
        newPage(title);
        LinearLayout c = card();
        anim(c, SdAnimView.MODE_WORKING, 190);
        mWorkText = headline(c, t("Bitte warten …", "Please wait …"));
        ProgressBar pb = new ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal);
        pb.setIndeterminate(true);
        pb.setIndeterminateTintList(ColorStateList.valueOf(mAccent));
        LinearLayout.LayoutParams lp = matchWrap();
        lp.topMargin = dp(6);
        lp.bottomMargin = dp(12);
        c.addView(pb, lp);
        body(c, t("Entferne die SD-Karte nicht und schalte das Gerät nicht aus. Das Display bleibt dabei an.",
                "Do not remove the SD card or turn off the device. The screen stays on meanwhile."));
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
        } }, "MasterROMSdStorage").start();
    }

    private void showResult(boolean ok, String message) {
        mOnMain = false;
        newPage(ok ? t("Fertig", "Done") : t("Das hat nicht geklappt", "That didn't work"));
        LinearLayout c = card();
        anim(c, ok ? SdAnimView.MODE_DONE : SdAnimView.MODE_ERROR, 170);
        headline(c, ok ? t("Alles erledigt", "All done") : t("Fehler", "Error"));
        body(c, message);
        if (ok) {
            button(mBottom, t("Zurück zur Übersicht", "Back to overview"), false, false, new View.OnClickListener() {
                @Override public void onClick(View v) { showMain(); }
            });
            button(mBottom, t("Fertig", "Done"), true, false, new View.OnClickListener() {
                @Override public void onClick(View v) { finish(); }
            });
        } else {
            button(mBottom, t("Zurück", "Back"), false, false, new View.OnClickListener() {
                @Override public void onClick(View v) { showMain(); }
            });
            if (mLastWork != null) {
                final String title = mLastTitle;
                final Work work = mLastWork;
                final String okMsg = mLastOk;
                final Runnable next = mLastNext;
                button(mBottom, t("Erneut versuchen", "Try again"), true, false, new View.OnClickListener() {
                    @Override public void onClick(View v) {
                        requireUnlocked(new Runnable() { @Override public void run() { runWork(title, work, okMsg, next); } });
                    }
                });
            }
        }
        animatePage();
    }

    private void setProgressText(final String text) {
        mUi.post(new Runnable() { @Override public void run() {
            if (mWorkText != null && mBusy && !isDestroyed()) {
                mWorkText.animate().alpha(0f).setDuration(120).withEndAction(new Runnable() {
                    @Override public void run() {
                        mWorkText.setText(text);
                        mWorkText.animate().alpha(1f).setDuration(180).start();
                    }
                }).start();
            }
        } });
    }
}

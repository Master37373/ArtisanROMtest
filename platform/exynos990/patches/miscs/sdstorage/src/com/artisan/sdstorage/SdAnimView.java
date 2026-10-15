package com.artisan.sdstorage;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;

/**
 * One UI style illustrations that explain what a step does. Everything is drawn in a
 * 240 x 160 design space; paints, paths and shaders are created once and only moved with
 * a matrix, so a frame does not allocate (smooth at 60/120 Hz).
 *
 *  MODE_TO_INTERNAL  card slides into the phone, storage bars grow, lock pops with a ring burst
 *  MODE_TO_PORTABLE  lock opens and dissolves, bars shrink, card slides out again
 *  MODE_FILES        photos/documents fly in arcs from the phone onto the locked card
 *  MODE_WORKING      data dots stream into the card, spinner around it
 *  MODE_NO_CARD      card hovers next to an empty slot
 *  MODE_DONE         check mark with ring burst and confetti (plays once)
 *  MODE_SECURE       Secure Folder: lock opens, check badge appears
 *  MODE_ERROR        exclamation mark with a short shake (plays once)
 */
public class SdAnimView extends View {
    public static final int MODE_TO_INTERNAL = 0;
    public static final int MODE_TO_PORTABLE = 1;
    public static final int MODE_FILES = 2;
    public static final int MODE_WORKING = 3;
    public static final int MODE_NO_CARD = 4;
    public static final int MODE_DONE = 5;
    public static final int MODE_SECURE = 6;
    public static final int MODE_ERROR = 7;

    static final int ERROR_COLOR = 0xFFE5484D;

    private final Paint mFill = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint mStroke = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint mDash = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint mShaderPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Path mPath = new Path();
    private final Path mCardPath = new Path();
    private final RectF mRect = new RectF();
    private final Matrix mMatrix = new Matrix();
    private final PathInterpolator mEase = new PathInterpolator(0.2f, 0f, 0f, 1f);
    private final PathInterpolator mEaseInOut = new PathInterpolator(0.42f, 0f, 0.58f, 1f);
    private final PathInterpolator mOver = new PathInterpolator(0.34f, 1.56f, 0.64f, 1f);
    private final RadialGradient mShadowShader, mAccentGlow, mErrorGlow;
    private final LinearGradient mCardShader, mBodyShader;
    private final float[] mPartCos = new float[14];
    private final float[] mPartSin = new float[14];
    private final float[] mPartDist = new float[14];
    private final int[] mPartColor = new int[14];

    private final int mFg, mAccent, mAccent2, mOnAccent;
    private ValueAnimator mAnimator;
    private int mMode = MODE_TO_INTERNAL;
    private float mT;
    private float mA = 1f; // master alpha of the current frame

    public SdAnimView(Context context, int fg, int accent, int onAccent) {
        super(context);
        mFg = fg;
        mAccent = accent;
        mOnAccent = onAccent;
        float[] hsv = new float[3];
        Color.colorToHSV(accent, hsv);
        hsv[0] = (hsv[0] + 38f) % 360f;
        hsv[1] = Math.min(1f, hsv[1] * 0.9f);
        mAccent2 = Color.HSVToColor(hsv);

        mStroke.setStyle(Paint.Style.STROKE);
        mStroke.setStrokeCap(Paint.Cap.ROUND);
        mStroke.setStrokeJoin(Paint.Join.ROUND);
        mFill.setStyle(Paint.Style.FILL);
        mDash.setStyle(Paint.Style.STROKE);
        mDash.setStrokeWidth(2f);
        mDash.setPathEffect(new DashPathEffect(new float[] { 4f, 4f }, 0f));
        mShadowShader = glow(0xFF000000);
        mAccentGlow = glow(accent);
        mErrorGlow = glow(ERROR_COLOR);
        mCardShader = new LinearGradient(0f, 0f, 1f, 1f, accent, mAccent2, Shader.TileMode.CLAMP);
        mBodyShader = new LinearGradient(0f, 0f, 0f, 1f,
                (fg & 0x00FFFFFF) | 0x26000000, (fg & 0x00FFFFFF) | 0x08000000, Shader.TileMode.CLAMP);
        int[] palette = { accent, mAccent2, 0xFFFFC53D, 0xFF3DD68C };
        for (int i = 0; i < mPartCos.length; i++) {
            double ang = i * (Math.PI * 2 / mPartCos.length) + (i % 3) * 0.21;
            mPartCos[i] = (float) Math.cos(ang);
            mPartSin[i] = (float) Math.sin(ang);
            mPartDist[i] = 0.75f + ((i * 37) % 10) / 20f;
            mPartColor[i] = palette[i % palette.length];
        }
    }

    private static RadialGradient glow(int color) {
        int c = color & 0x00FFFFFF;
        return new RadialGradient(0f, 0f, 1f, new int[] { c | 0xFF000000, c | 0x55000000, c },
                new float[] { 0f, 0.45f, 1f }, Shader.TileMode.CLAMP);
    }

    public void setMode(int mode) {
        mMode = mode;
        restart();
    }

    private boolean once() {
        return mMode == MODE_DONE || mMode == MODE_ERROR;
    }

    private void restart() {
        if (mAnimator != null) mAnimator.cancel();
        mAnimator = ValueAnimator.ofFloat(0f, 1f);
        long d;
        switch (mMode) {
            case MODE_WORKING: d = 1800; break;
            case MODE_NO_CARD: d = 2600; break;
            case MODE_DONE: d = 1300; break;
            case MODE_ERROR: d = 900; break;
            case MODE_SECURE: d = 3400; break;
            default: d = 4200; break;
        }
        mAnimator.setDuration(d);
        mAnimator.setInterpolator(new LinearInterpolator());
        mAnimator.setRepeatCount(once() ? 0 : ValueAnimator.INFINITE);
        mAnimator.setRepeatMode(mMode == MODE_NO_CARD ? ValueAnimator.REVERSE : ValueAnimator.RESTART);
        mAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override public void onAnimationUpdate(ValueAnimator a) {
                mT = (Float) a.getAnimatedValue();
                invalidate();
            }
        });
        mT = 0f;
        if (isAttachedToWindow()) mAnimator.start();
    }

    @Override protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (mAnimator == null) restart();
        else if (!mAnimator.isStarted() && !(once() && mT >= 1f)) mAnimator.start();
    }

    @Override protected void onDetachedFromWindow() {
        if (mAnimator != null) mAnimator.cancel();
        super.onDetachedFromWindow();
    }

    // ---- timing helpers -----------------------------------------------------------

    private float seg(float a, float b) {
        if (mT <= a) return 0f;
        if (mT >= b) return 1f;
        return mEase.getInterpolation((mT - a) / (b - a));
    }

    private float segIO(float a, float b) {
        if (mT <= a) return 0f;
        if (mT >= b) return 1f;
        return mEaseInOut.getInterpolation((mT - a) / (b - a));
    }

    private float segOver(float a, float b) {
        if (mT <= a) return 0f;
        if (mT >= b) return 1f;
        return mOver.getInterpolation((mT - a) / (b - a));
    }

    private static float lin(float t, float a, float b) {
        if (t <= a) return 0f;
        if (t >= b) return 1f;
        return (t - a) / (b - a);
    }

    private int al(float alpha) {
        return Math.max(0, Math.min(255, Math.round(alpha * mA)));
    }

    // ---- frame --------------------------------------------------------------------

    @Override protected void onDraw(Canvas c) {
        float w = getWidth(), h = getHeight();
        if (w <= 0 || h <= 0) return;
        float s = Math.min(w / 240f, h / 160f);
        c.save();
        c.translate((w - 240f * s) / 2f, (h - 160f * s) / 2f);
        c.scale(s, s);
        mA = 1f;
        switch (mMode) {
            case MODE_TO_PORTABLE: drawToPortable(c); break;
            case MODE_FILES: drawFiles(c); break;
            case MODE_WORKING: drawWorking(c); break;
            case MODE_NO_CARD: drawNoCard(c); break;
            case MODE_DONE: drawDone(c); break;
            case MODE_SECURE: drawSecure(c); break;
            case MODE_ERROR: drawError(c); break;
            default: drawToInternal(c); break;
        }
        c.restore();
    }

    /** fade in at the start of a loop and out at its end -> seamless restart */
    private void loopFade() {
        mA = Math.min(lin(mT, 0f, 0.06f), 1f - lin(mT, 0.92f, 1f));
    }

    private void drawToInternal(Canvas c) {
        loopFade();
        float move = segIO(0.06f, 0.40f);
        float bob = (float) Math.sin(mT * Math.PI * 6) * 2.5f * (1f - move);
        float cx = 172f + (75f - 172f) * move;
        float cy = 84f + bob;
        float glow = seg(0.38f, 0.60f);
        float bars = seg(0.42f, 0.74f);
        float lock = segOver(0.50f, 0.66f);
        float ring = lin(mT, 0.52f, 0.82f);

        drawShadow(c, cx, 146f, 24f, 0.14f * (1f - move));
        drawShadow(c, 75f, 147f, 40f, 0.16f);
        drawPhone(c, glow, 0.3f + 0.7f * bars);
        drawCard(c, cx, cy, -10f * (1f - move), 1f - 0.18f * move, 255, shine(0.12f, 0.36f));
        if (ring > 0f && ring < 1f) drawRing(c, cx, cy + 6f, 10f + 36f * ring, 1f - ring, mAccent);
        if (lock > 0.01f) drawLock(c, cx, cy + 7f, 0.62f * lock, 0f, mOnAccent, mAccent);
    }

    private void drawToPortable(Canvas c) {
        loopFade();
        float open = segOver(0.08f, 0.24f);
        float gone = seg(0.24f, 0.36f);
        float burst = lin(mT, 0.24f, 0.46f);
        float bars = 1f - seg(0.30f, 0.52f);
        float glow = 1f - seg(0.30f, 0.52f);
        float move = segIO(0.42f, 0.74f);
        float bob = (float) Math.sin(mT * Math.PI * 6) * 2.5f * move;
        float cx = 75f + (172f - 75f) * move;
        float cy = 84f + bob;

        drawShadow(c, 75f, 147f, 40f, 0.16f);
        drawShadow(c, cx, 146f, 24f, 0.14f * move);
        drawPhone(c, glow, 0.3f + 0.7f * bars);
        drawCard(c, cx, cy, 10f * move, 0.82f + 0.18f * move, 255, shine(0.74f, 0.92f));
        if (gone < 1f) drawLock(c, cx, cy + 7f, 0.62f * (1f - gone), open, mOnAccent, mAccent);
        if (burst > 0f && burst < 1f) drawParticles(c, cx, cy + 7f, 26f * mEase.getInterpolation(burst), 1f - burst, 1.6f);
    }

    private void drawFiles(Canvas c) {
        loopFade();
        drawShadow(c, 75f, 147f, 40f, 0.16f);
        drawShadow(c, 172f, 146f, 24f, 0.14f);
        drawPhone(c, 0.25f, 0.6f);
        float pulse = 0f;
        for (int i = 0; i < 3; i++) {
            float start = 0.08f + i * 0.2f;
            float land = lin(mT, start + 0.36f, start + 0.50f);
            if (land > 0f && land < 1f) pulse = Math.max(pulse, (float) Math.sin(land * Math.PI));
        }
        float sc = 1f + 0.06f * pulse;
        drawCard(c, 172f, 84f, 6f, sc, 255, 0f);
        drawLock(c, 172f, 91f, 0.55f * sc, 0f, mOnAccent, mAccent);
        if (pulse > 0f) drawRing(c, 172f, 84f, 32f + 8f * pulse, 0.35f * pulse, mAccent);
        for (int i = 0; i < 3; i++) {
            float start = 0.08f + i * 0.2f;
            float p = seg(start, start + 0.42f);
            if (p <= 0f || p >= 1f) continue;
            float x = 75f + (172f - 75f) * p;
            float y = 74f - (float) Math.sin(p * Math.PI) * 46f + 10f * p;
            float a = Math.min(lin(p, 0f, 0.12f), 1f - lin(p, 0.82f, 1f));
            drawDoc(c, x, y, -18f + 36f * p, 1f - 0.35f * p, a, i % 2);
        }
    }

    private void drawWorking(Canvas c) {
        drawShadow(c, 75f, 147f, 40f, 0.16f);
        drawShadow(c, 172f, 146f, 24f, 0.14f);
        float breathe = 0.5f + 0.5f * (float) Math.sin(mT * Math.PI * 2);
        drawPhone(c, 0.2f + 0.25f * breathe, 0.6f);
        mFill.setShader(null);
        for (int i = 0; i < 6; i++) {
            float p = (mT + i / 6f) % 1f;
            float x = 92f + (150f - 92f) * p;
            float y = 80f - (float) Math.sin(p * Math.PI) * 18f;
            float a = (float) Math.sin(p * Math.PI);
            mFill.setColor(i % 2 == 0 ? mAccent : mAccent2);
            mFill.setAlpha(al(230 * a));
            c.drawCircle(x, y, 2.2f + 1.4f * a, mFill);
        }
        drawCard(c, 172f, 84f, 6f, 1f + 0.03f * breathe, 255, 0f);
        mStroke.setColor(mAccent);
        mStroke.setAlpha(al(60));
        mStroke.setStrokeWidth(3f);
        c.drawCircle(172f, 84f, 40f, mStroke);
        mStroke.setAlpha(al(255));
        mRect.set(132f, 44f, 212f, 124f);
        float sweep = 50f + 70f * (float) Math.sin(mT * Math.PI);
        c.drawArc(mRect, mT * 360f - 90f, sweep, false, mStroke);
    }

    private void drawNoCard(Canvas c) {
        float f = mEaseInOut.getInterpolation(mT);
        drawShadow(c, 75f, 147f, 40f, 0.16f);
        drawShadow(c, 172f, 147f, 18f + 8f * (1f - f), 0.06f + 0.08f * (1f - f));
        drawPhone(c, 0f, 0.3f);
        mDash.setColor(mFg);
        mDash.setAlpha(al(110));
        mRect.set(154f, 57f - 8f * f, 190f, 111f - 8f * f);
        c.drawRoundRect(mRect, 6f, 6f, mDash);
        drawCard(c, 172f, 84f - 8f * f, 8f - 4f * f, 1f, 90 + (int) (60 * f), 0f);
        float b = 0.85f + 0.15f * f;
        float py = 48f - 8f * f;
        mFill.setShader(null);
        mFill.setColor(mAccent);
        mFill.setAlpha(al(255));
        c.drawCircle(194f, py, 9f * b, mFill);
        mStroke.setColor(mOnAccent);
        mStroke.setAlpha(al(255));
        mStroke.setStrokeWidth(2.4f);
        c.drawLine(194f - 4f * b, py, 194f + 4f * b, py, mStroke);
        c.drawLine(194f, py - 4f * b, 194f, py + 4f * b, mStroke);
    }

    private void drawDone(Canvas c) {
        float grow = segOver(0f, 0.42f);
        float check = seg(0.28f, 0.70f);
        float ring = lin(mT, 0.15f, 0.75f);
        float conf = lin(mT, 0.2f, 1f);
        drawShadow(c, 120f, 146f, 34f * grow, 0.14f);
        if (ring > 0f && ring < 1f) drawRing(c, 120f, 78f, 40f + 34f * mEase.getInterpolation(ring), 0.6f * (1f - ring), mAccent);
        drawGlow(c, mAccentGlow, 120f, 78f, 72f * grow, 0.35f);
        mFill.setShader(mCardShader);
        mMatrix.setScale(92f, 92f);
        mMatrix.postTranslate(74f, 32f);
        mCardShader.setLocalMatrix(mMatrix);
        mFill.setAlpha(al(255));
        c.drawCircle(120f, 78f, 44f * grow, mFill);
        mFill.setShader(null);
        if (check > 0f) drawCheck(c, 120f, 78f, 1.15f, check, mOnAccent, 8f);
        if (conf > 0f && conf < 1f) drawParticles(c, 120f, 78f, 50f + 34f * mEase.getInterpolation(conf), 1f - conf, 2.4f);
    }

    private void drawError(Canvas c) {
        float grow = segOver(0f, 0.4f);
        float k = lin(mT, 0.35f, 0.85f);
        float shake = (float) Math.sin(k * Math.PI * 6) * 6f * (1f - k);
        drawShadow(c, 120f, 146f, 30f * grow, 0.14f);
        drawGlow(c, mErrorGlow, 120f + shake, 78f, 64f * grow, 0.3f);
        mFill.setShader(null);
        mFill.setColor(ERROR_COLOR);
        mFill.setAlpha(al(255));
        c.drawCircle(120f + shake, 78f, 40f * grow, mFill);
        if (grow > 0.5f) {
            mStroke.setColor(0xFFFFFFFF);
            mStroke.setAlpha(al(255));
            mStroke.setStrokeWidth(8f);
            c.drawLine(120f + shake, 60f, 120f + shake, 82f, mStroke);
            mFill.setColor(0xFFFFFFFF);
            mFill.setAlpha(al(255));
            c.drawCircle(120f + shake, 96f, 4.6f, mFill);
        }
    }

    private void drawSecure(Canvas c) {
        loopFade();
        float open = segOver(0.18f, 0.34f);
        float lockGone = seg(0.36f, 0.48f);
        float badge = segOver(0.46f, 0.62f);
        float ring = lin(mT, 0.48f, 0.80f);
        drawShadow(c, 120f, 146f, 56f, 0.16f);
        drawGlow(c, mAccentGlow, 120f, 88f, 80f, 0.22f);
        mFill.setShader(mCardShader);
        mMatrix.setScale(120f, 96f);
        mMatrix.postTranslate(60f, 40f);
        mCardShader.setLocalMatrix(mMatrix);
        mFill.setAlpha(al(255));
        mPath.reset();
        mPath.moveTo(66f, 50f);
        mPath.quadTo(66f, 42f, 74f, 42f);
        mPath.lineTo(102f, 42f);
        mPath.lineTo(112f, 52f);
        mPath.lineTo(166f, 52f);
        mPath.quadTo(174f, 52f, 174f, 60f);
        mPath.lineTo(174f, 124f);
        mPath.quadTo(174f, 132f, 166f, 132f);
        mPath.lineTo(74f, 132f);
        mPath.quadTo(66f, 132f, 66f, 124f);
        mPath.close();
        c.drawPath(mPath, mFill);
        mFill.setShader(null);
        mFill.setColor(0xFFFFFFFF);
        mFill.setAlpha(al(46));
        mRect.set(66f, 60f, 174f, 72f);
        c.drawRect(mRect, mFill);
        if (lockGone < 1f) drawLock(c, 120f, 98f, 0.95f * (1f - lockGone), open, mOnAccent, mAccent);
        if (ring > 0f && ring < 1f) drawRing(c, 120f, 94f, 16f + 34f * mEase.getInterpolation(ring), 1f - ring, mOnAccent);
        if (badge > 0.01f) {
            mFill.setColor(mOnAccent);
            mFill.setAlpha(al(255));
            c.drawCircle(120f, 94f, 17f * badge, mFill);
            drawCheck(c, 120f, 94f, 0.42f * badge, 1f, mAccent, 7f);
        }
    }

    // ---- building blocks ----------------------------------------------------------

    private float shine(float a, float b) {
        float p = lin(mT, a, b);
        return p <= 0f || p >= 1f ? 0f : p;
    }

    private void drawShadow(Canvas c, float cx, float cy, float rx, float alpha) {
        if (alpha <= 0f || rx <= 0f) return;
        float ry = rx * 0.2f;
        mMatrix.setScale(rx, ry);
        mMatrix.postTranslate(cx, cy);
        mShadowShader.setLocalMatrix(mMatrix);
        mShaderPaint.setShader(mShadowShader);
        mShaderPaint.setAlpha(al(255 * alpha));
        mRect.set(cx - rx, cy - ry, cx + rx, cy + ry);
        c.drawOval(mRect, mShaderPaint);
    }

    private void drawGlow(Canvas c, RadialGradient shader, float cx, float cy, float r, float alpha) {
        if (r <= 0f || alpha <= 0f) return;
        mMatrix.setScale(r, r);
        mMatrix.postTranslate(cx, cy);
        shader.setLocalMatrix(mMatrix);
        mShaderPaint.setShader(shader);
        mShaderPaint.setAlpha(al(255 * alpha));
        c.drawCircle(cx, cy, r, mShaderPaint);
    }

    /** phone at x 44..106, y 20..140; glow 0..1 lights the screen, bars 0..1 = used storage */
    private void drawPhone(Canvas c, float glow, float bars) {
        mRect.set(44f, 20f, 106f, 140f);
        mFill.setShader(mBodyShader);
        mMatrix.setScale(1f, 120f);
        mMatrix.postTranslate(0f, 20f);
        mBodyShader.setLocalMatrix(mMatrix);
        mFill.setAlpha(al(255));
        c.drawRoundRect(mRect, 15f, 15f, mFill);
        mFill.setShader(null);
        if (glow > 0f) drawGlow(c, mAccentGlow, 75f, 76f, 46f, 0.3f * glow);
        mStroke.setColor(mFg);
        mStroke.setAlpha(al(200));
        mStroke.setStrokeWidth(3.2f);
        mRect.set(44f, 20f, 106f, 140f);
        c.drawRoundRect(mRect, 15f, 15f, mStroke);
        mFill.setColor(mFg);
        mFill.setAlpha(al(170));
        c.drawCircle(75f, 29f, 2.4f, mFill);
        for (int i = 0; i < 3; i++) {
            float y = 108f + i * 8f;
            mRect.set(54f, y, 96f, y + 4f);
            mFill.setColor(mFg);
            mFill.setAlpha(al(34));
            c.drawRoundRect(mRect, 2f, 2f, mFill);
            float fill = Math.max(0f, Math.min(1f, bars * (1.15f - i * 0.18f)));
            if (fill > 0f) {
                mRect.set(54f, y, 54f + 42f * fill, y + 4f);
                mFill.setColor(i == 0 ? mAccent : mAccent2);
                mFill.setAlpha(al(i == 0 ? 255 : 200));
                c.drawRoundRect(mRect, 2f, 2f, mFill);
            }
        }
    }

    /** SD card centred at cx,cy (36 x 54), rotation in degrees, alpha 0..255, shine 0..1 sweep */
    private void drawCard(Canvas c, float cx, float cy, float rot, float scale, int alpha, float shine) {
        int save = c.save();
        c.translate(cx, cy);
        c.rotate(rot);
        c.scale(scale, scale);
        mCardPath.reset();
        mCardPath.moveTo(-10f, -27f);
        mCardPath.lineTo(14f, -27f);
        mCardPath.quadTo(18f, -27f, 18f, -23f);
        mCardPath.lineTo(18f, 23f);
        mCardPath.quadTo(18f, 27f, 14f, 27f);
        mCardPath.lineTo(-14f, 27f);
        mCardPath.quadTo(-18f, 27f, -18f, 23f);
        mCardPath.lineTo(-18f, -19f);
        mCardPath.close();
        drawGlow(c, mAccentGlow, 0f, 4f, 42f, 0.24f * alpha / 255f);
        mFill.setShader(mCardShader);
        mMatrix.setScale(36f, 54f);
        mMatrix.postTranslate(-18f, -27f);
        mCardShader.setLocalMatrix(mMatrix);
        mFill.setAlpha(al(alpha));
        c.drawPath(mCardPath, mFill);
        mFill.setShader(null);
        mFill.setColor(mOnAccent);
        mFill.setAlpha(al(alpha * 200 / 255f));
        for (int i = 0; i < 4; i++) {
            float x = -9f + i * 6.5f;
            mRect.set(x - 1.6f, -22f, x + 1.6f, -12f);
            c.drawRoundRect(mRect, 1.2f, 1.2f, mFill);
        }
        if (shine > 0f) {
            int s2 = c.save();
            c.clipPath(mCardPath);
            float x = -40f + 80f * shine;
            c.rotate(20f);
            mFill.setColor(0xFFFFFFFF);
            mFill.setAlpha(al(90 * alpha / 255f));
            mRect.set(x - 6f, -50f, x + 6f, 50f);
            c.drawRect(mRect, mFill);
            c.restoreToCount(s2);
        }
        c.restoreToCount(save);
    }

    /** padlock centred at cx,cy; shackle 0 closed .. 1 open */
    private void drawLock(Canvas c, float cx, float cy, float scale, float shackle, int body, int hole) {
        if (scale <= 0f) return;
        int save = c.save();
        c.translate(cx, cy);
        c.scale(scale, scale);
        mFill.setShader(null);
        mFill.setColor(body);
        mFill.setAlpha(al(255));
        mRect.set(-13f, -4f, 13f, 17f);
        c.drawRoundRect(mRect, 5f, 5f, mFill);
        mStroke.setColor(body);
        mStroke.setAlpha(al(255));
        mStroke.setStrokeWidth(4.4f);
        int s2 = c.save();
        c.translate(0f, -7f * shackle);
        c.rotate(-28f * shackle, 8f, -4f);
        mPath.reset();
        mPath.moveTo(-8f, -4f);
        mPath.lineTo(-8f, -10f);
        mPath.cubicTo(-8f, -21f, 8f, -21f, 8f, -10f);
        mPath.lineTo(8f, -4f);
        c.drawPath(mPath, mStroke);
        c.restoreToCount(s2);
        mFill.setColor(hole);
        mFill.setAlpha(al(255));
        c.drawCircle(0f, 4.5f, 3f, mFill);
        mRect.set(-1.3f, 5f, 1.3f, 11f);
        c.drawRoundRect(mRect, 1.3f, 1.3f, mFill);
        c.restoreToCount(save);
    }

    private void drawRing(Canvas c, float cx, float cy, float r, float alpha, int color) {
        mStroke.setColor(color);
        mStroke.setAlpha(al(200 * alpha));
        mStroke.setStrokeWidth(2.5f + 2f * alpha);
        c.drawCircle(cx, cy, r, mStroke);
    }

    private void drawParticles(Canvas c, float cx, float cy, float dist, float alpha, float size) {
        mFill.setShader(null);
        for (int i = 0; i < mPartCos.length; i++) {
            float d = dist * mPartDist[i];
            float x = cx + mPartCos[i] * d;
            float y = cy + mPartSin[i] * d;
            mFill.setColor(mPartColor[i]);
            mFill.setAlpha(al(255 * alpha));
            if (i % 2 == 0) {
                c.drawCircle(x, y, size, mFill);
            } else {
                mRect.set(x - size, y - size * 0.5f, x + size, y + size * 0.5f);
                int save = c.save();
                c.rotate(i * 23f + dist * 3f, x, y);
                c.drawRoundRect(mRect, 1f, 1f, mFill);
                c.restoreToCount(save);
            }
        }
    }

    private void drawDoc(Canvas c, float cx, float cy, float rot, float scale, float alpha, int kind) {
        int save = c.save();
        c.translate(cx, cy);
        c.rotate(rot);
        c.scale(scale, scale);
        float a = 255f * Math.max(0f, Math.min(1f, alpha));
        mFill.setShader(null);
        mFill.setColor(0xFFFFFFFF);
        mFill.setAlpha(al(a));
        mRect.set(-10f, -13f, 10f, 13f);
        c.drawRoundRect(mRect, 4f, 4f, mFill);
        mStroke.setColor(mFg);
        mStroke.setAlpha(al(a * 0.25f));
        mStroke.setStrokeWidth(1f);
        c.drawRoundRect(mRect, 4f, 4f, mStroke);
        if (kind == 1) {
            mRect.set(-7f, -10f, 7f, 6f);
            mFill.setColor(mAccent2);
            mFill.setAlpha(al(a * 0.45f));
            c.drawRoundRect(mRect, 2.5f, 2.5f, mFill);
            mFill.setColor(0xFFFFC53D);
            mFill.setAlpha(al(a));
            c.drawCircle(-3f, -5f, 2.2f, mFill);
            mPath.reset();
            mPath.moveTo(-7f, 6f);
            mPath.lineTo(-1f, -1f);
            mPath.lineTo(3f, 3f);
            mPath.lineTo(5f, 1f);
            mPath.lineTo(7f, 6f);
            mPath.close();
            mFill.setColor(mAccent);
            mFill.setAlpha(al(a));
            c.drawPath(mPath, mFill);
        } else {
            mStroke.setColor(mAccent);
            mStroke.setAlpha(al(a));
            mStroke.setStrokeWidth(2f);
            c.drawLine(-6f, -6f, 6f, -6f, mStroke);
            c.drawLine(-6f, -1f, 6f, -1f, mStroke);
            c.drawLine(-6f, 4f, 2f, 4f, mStroke);
        }
        c.restoreToCount(save);
    }

    /** check mark centred at cx,cy, progress 0..1 */
    private void drawCheck(Canvas c, float cx, float cy, float scale, float p, int color, float width) {
        int save = c.save();
        c.translate(cx, cy);
        c.scale(scale, scale);
        mStroke.setColor(color);
        mStroke.setAlpha(al(255));
        mStroke.setStrokeWidth(width);
        float l1 = 22.6f, l2 = 43.1f, len = (l1 + l2) * p;
        mPath.reset();
        mPath.moveTo(-22f, 3f);
        if (len <= l1) {
            float f = len / l1;
            mPath.lineTo(-22f + 16f * f, 3f + 16f * f);
        } else {
            float f = (len - l1) / l2;
            mPath.lineTo(-6f, 19f);
            mPath.lineTo(-6f + 30f * f, 19f - 31f * f);
        }
        c.drawPath(mPath, mStroke);
        c.restoreToCount(save);
    }
}

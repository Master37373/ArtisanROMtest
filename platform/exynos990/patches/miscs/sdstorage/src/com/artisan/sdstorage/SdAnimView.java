package com.artisan.sdstorage;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.PathInterpolator;

/**
 * Small looping illustration in One UI style:
 *  MODE_TO_INTERNAL: SD card slides into the phone, a lock appears (encrypted internal storage)
 *  MODE_TO_PORTABLE: lock opens and disappears, the card slides out (portable, not encrypted)
 *  MODE_FILES:       files travel from the phone onto the (locked) card
 *  MODE_WORKING:     card pulses next to the phone while something is in progress
 *  MODE_NO_CARD:     faded card floats next to the phone (insert a card)
 *  MODE_DONE:        check mark pops in (played once)
 */
public class SdAnimView extends View {
    public static final int MODE_TO_INTERNAL = 0;
    public static final int MODE_TO_PORTABLE = 1;
    public static final int MODE_FILES = 2;
    public static final int MODE_WORKING = 3;
    public static final int MODE_NO_CARD = 4;
    public static final int MODE_DONE = 5;

    private final Paint mStroke = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint mFill = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint mLine = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Path mPath = new Path();
    private final RectF mRect = new RectF();
    private final PathInterpolator mEase = new PathInterpolator(0.22f, 0.25f, 0f, 1f);
    private final PathInterpolator mOvershoot = new PathInterpolator(0.34f, 1.56f, 0.64f, 1f);
    private ValueAnimator mAnimator;
    private int mMode = MODE_TO_INTERNAL;
    private float mT;
    private final int mFg;
    private final int mAccent;
    private final int mOnAccent;

    public SdAnimView(Context context, int fg, int accent, int onAccent) {
        super(context);
        mFg = fg;
        mAccent = accent;
        mOnAccent = onAccent;
        mStroke.setStyle(Paint.Style.STROKE);
        mStroke.setStrokeCap(Paint.Cap.ROUND);
        mStroke.setStrokeJoin(Paint.Join.ROUND);
        mFill.setStyle(Paint.Style.FILL);
        mLine.setStyle(Paint.Style.STROKE);
        mLine.setStrokeCap(Paint.Cap.ROUND);
    }

    public void setMode(int mode) {
        mMode = mode;
        restart();
    }

    private void restart() {
        if (mAnimator != null) mAnimator.cancel();
        mAnimator = ValueAnimator.ofFloat(0f, 1f);
        mAnimator.setDuration(mMode == MODE_WORKING ? 1400 : 3000);
        mAnimator.setRepeatCount(mMode == MODE_DONE ? 0 : ValueAnimator.INFINITE);
        if (mMode == MODE_DONE) mAnimator.setDuration(900);
        mAnimator.setRepeatMode(mMode == MODE_WORKING || mMode == MODE_NO_CARD ? ValueAnimator.REVERSE : ValueAnimator.RESTART);
        mAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override public void onAnimationUpdate(ValueAnimator a) {
                mT = (Float) a.getAnimatedValue();
                invalidate();
            }
        });
        if (isAttachedToWindow()) mAnimator.start();
    }

    @Override protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (mAnimator == null) restart(); else if (!mAnimator.isStarted() && mMode != MODE_DONE) mAnimator.start();
    }

    @Override protected void onDetachedFromWindow() {
        if (mAnimator != null) mAnimator.cancel();
        super.onDetachedFromWindow();
    }

    /** progress of a sub-range [a,b] of the loop, eased, clamped to 0..1 */
    private float seg(float a, float b) {
        if (mT <= a) return 0f;
        if (mT >= b) return 1f;
        return mEase.getInterpolation((mT - a) / (b - a));
    }

    private float segOver(float a, float b) {
        if (mT <= a) return 0f;
        if (mT >= b) return 1f;
        return mOvershoot.getInterpolation((mT - a) / (b - a));
    }

    @Override protected void onDraw(Canvas c) {
        float w = getWidth(), h = getHeight();
        if (w <= 0 || h <= 0) return;
        // design space 240 x 160, centered
        float s = Math.min(w / 240f, h / 160f);
        c.save();
        c.translate((w - 240f * s) / 2f, (h - 160f * s) / 2f);
        c.scale(s, s);

        if (mMode == MODE_DONE) {
            drawDone(c);
            c.restore();
            return;
        }
        float cardX;      // card offset (0 = outside, right of phone; -82 = inside)
        float lock;       // lock scale 0..1
        float shackle;    // 0 closed .. 1 open
        float pulse = 1f;
        float cardY = 0f;
        int cardAlpha = 255;
        switch (mMode) {
            case MODE_NO_CARD: {
                cardX = 0f;
                lock = 0f;
                shackle = 0f;
                cardY = -8f + 16f * mEase.getInterpolation(mT);
                cardAlpha = 90;
                break;
            }
            case MODE_TO_PORTABLE: {
                shackle = seg(0.05f, 0.25f);
                lock = 1f - seg(0.25f, 0.40f);
                cardX = -82f + 82f * seg(0.40f, 0.75f);
                break;
            }
            case MODE_FILES: {
                cardX = 0f;
                lock = 1f;
                shackle = 0f;
                break;
            }
            case MODE_WORKING: {
                cardX = 0f;
                lock = 0f;
                shackle = 0f;
                pulse = 0.92f + 0.08f * mEase.getInterpolation(mT);
                break;
            }
            default: { // MODE_TO_INTERNAL
                cardX = -82f * seg(0.05f, 0.42f);
                lock = segOver(0.45f, 0.62f);
                shackle = 0f;
                break;
            }
        }

        // phone
        mStroke.setColor(mFg);
        mStroke.setAlpha(200);
        mStroke.setStrokeWidth(5f);
        mRect.set(42f, 18f, 108f, 142f);
        c.drawRoundRect(mRect, 14f, 14f, mStroke);
        mFill.setColor(mFg);
        mFill.setAlpha(200);
        c.drawCircle(75f, 28f, 2.6f, mFill);

        // files flying from phone to card (MODE_FILES)
        if (mMode == MODE_FILES) {
            for (int i = 0; i < 3; i++) {
                float start = 0.08f + i * 0.22f;
                float p = seg(start, start + 0.45f);
                if (p <= 0f || p >= 1f) continue;
                float x = 75f + (168f - 75f) * p;
                float y = 80f - (float) Math.sin(p * Math.PI) * 38f;
                float a = p < 0.15f ? p / 0.15f : (p > 0.85f ? (1f - p) / 0.15f : 1f);
                drawDoc(c, x, y, a, i);
            }
        }

        // SD card
        c.save();
        c.translate(cardX, cardY);
        c.scale(pulse, pulse, 168f, 86f);
        mPath.reset();
        mPath.moveTo(160f, 58f);
        mPath.lineTo(182f, 58f);
        mPath.quadTo(186f, 58f, 186f, 62f);
        mPath.lineTo(186f, 110f);
        mPath.quadTo(186f, 114f, 182f, 114f);
        mPath.lineTo(154f, 114f);
        mPath.quadTo(150f, 114f, 150f, 110f);
        mPath.lineTo(150f, 70f);
        mPath.close();
        mFill.setColor(mAccent);
        mFill.setAlpha(cardAlpha);
        c.drawPath(mPath, mFill);
        mLine.setColor(mOnAccent);
        mLine.setAlpha(cardAlpha * 220 / 255);
        mLine.setStrokeWidth(3f);
        for (int i = 0; i < 4; i++) {
            float x = 159f + i * 7f;
            c.drawLine(x, 64f, x, 74f, mLine);
        }
        c.restore();

        // lock (encryption)
        if (lock > 0.01f) {
            c.save();
            float lx = 168f + cardX;
            float ly = 96f;
            float sc = 0.6f;
            c.scale(lock * sc, lock * sc, lx, ly);
            int lockColor = mOnAccent;
            mFill.setColor(lockColor);
            mFill.setAlpha(255);
            mRect.set(lx - 13f, ly - 6f, lx + 13f, ly + 16f);
            c.drawRoundRect(mRect, 4f, 4f, mFill);
            mStroke.setColor(lockColor);
            mStroke.setAlpha(255);
            mStroke.setStrokeWidth(4.5f);
            c.save();
            c.translate(0f, -6f * shackle);
            c.rotate(-25f * shackle, lx + 8f, ly - 6f);
            mPath.reset();
            mPath.moveTo(lx - 8f, ly - 6f);
            mPath.lineTo(lx - 8f, ly - 12f);
            mPath.cubicTo(lx - 8f, ly - 23f, lx + 8f, ly - 23f, lx + 8f, ly - 12f);
            mPath.lineTo(lx + 8f, ly - 6f);
            c.drawPath(mPath, mStroke);
            c.restore();
            mFill.setColor(mAccent);
            mFill.setAlpha(255);
            c.drawCircle(lx, ly + 4f, 3f, mFill);
            c.restore();
        }
        c.restore();
    }

    private void drawDoc(Canvas c, float cx, float cy, float alpha, int kind) {
        int a = (int) (255 * Math.max(0f, Math.min(1f, alpha)));
        mFill.setColor(mFg);
        mFill.setAlpha((int) (a * 0.85f));
        mRect.set(cx - 8f, cy - 10f, cx + 8f, cy + 10f);
        c.drawRoundRect(mRect, 3f, 3f, mFill);
        mLine.setColor(mAccent);
        mLine.setAlpha(a);
        mLine.setStrokeWidth(2f);
        if (kind == 1) {
            c.drawCircle(cx - 2f, cy - 3f, 2.2f, mLine);
            c.drawLine(cx - 5f, cy + 6f, cx + 5f, cy + 1f, mLine);
        } else {
            c.drawLine(cx - 4f, cy - 3f, cx + 4f, cy - 3f, mLine);
            c.drawLine(cx - 4f, cy + 1f, cx + 4f, cy + 1f, mLine);
            c.drawLine(cx - 4f, cy + 5f, cx + 1f, cy + 5f, mLine);
        }
    }

    private void drawDone(Canvas c) {
        float p = segOver(0f, 0.55f);
        float k = seg(0.35f, 1f);
        mFill.setColor(mAccent);
        mFill.setAlpha(255);
        c.drawCircle(120f, 80f, 46f * p, mFill);
        if (k > 0f) {
            mStroke.setColor(mOnAccent);
            mStroke.setAlpha(255);
            mStroke.setStrokeWidth(8f);
            mPath.reset();
            // check mark drawn progressively: (98,81) -> (114,97) -> (144,66)
            float l1 = 22.6f, l2 = 43.1f, len = (l1 + l2) * k;
            mPath.moveTo(98f, 81f);
            if (len <= l1) {
                float f = len / l1;
                mPath.lineTo(98f + 16f * f, 81f + 16f * f);
            } else {
                float f = (len - l1) / l2;
                mPath.lineTo(114f, 97f);
                mPath.lineTo(114f + 30f * f, 97f - 31f * f);
            }
            c.drawPath(mPath, mStroke);
        }
    }
}

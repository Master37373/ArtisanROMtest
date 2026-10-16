package com.masterrom.sdstorage;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.view.View;
import android.view.animation.LinearInterpolator;

/**
 * Slowly drifting soft colour blobs behind the translucent "glass" cards (One UI 8.5 style).
 * Shaders are built once at unit size and only moved with a matrix, so a frame allocates nothing.
 */
public class SdGlassBackground extends View {
    private final int mBase;
    private final Paint mPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Matrix mMatrix = new Matrix();
    private final RadialGradient[] mShaders = new RadialGradient[3];
    private final float[][] mPath = {
            // x0, y0, ampX, ampY, freqX, freqY, radius (relative to width)
            { 0.15f, 0.12f, 0.18f, 0.10f, 1f, 2f, 0.95f },
            { 0.90f, 0.35f, 0.14f, 0.16f, 2f, 1f, 0.85f },
            { 0.35f, 0.85f, 0.20f, 0.08f, 1f, 3f, 1.05f },
    };
    private ValueAnimator mAnimator;
    private float mT;

    public SdGlassBackground(Context context, int base, int c1, int c2, int c3) {
        super(context);
        mBase = base;
        int[] cs = { c1, c2, c3 };
        for (int i = 0; i < 3; i++) {
            mShaders[i] = new RadialGradient(0f, 0f, 1f,
                    new int[] { cs[i], cs[i] & 0x00FFFFFF | ((Color8.alpha(cs[i]) / 3) << 24), cs[i] & 0x00FFFFFF },
                    new float[] { 0f, 0.55f, 1f }, Shader.TileMode.CLAMP);
        }
    }

    @Override protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        mAnimator = ValueAnimator.ofFloat(0f, 1f);
        mAnimator.setDuration(28000);
        mAnimator.setRepeatCount(ValueAnimator.INFINITE);
        mAnimator.setInterpolator(new LinearInterpolator());
        mAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override public void onAnimationUpdate(ValueAnimator a) {
                mT = (Float) a.getAnimatedValue();
                invalidate();
            }
        });
        mAnimator.start();
    }

    @Override protected void onDetachedFromWindow() {
        if (mAnimator != null) mAnimator.cancel();
        super.onDetachedFromWindow();
    }

    @Override protected void onDraw(Canvas c) {
        float w = getWidth(), h = getHeight();
        c.drawColor(mBase);
        double a = mT * Math.PI * 2;
        for (int i = 0; i < 3; i++) {
            float[] p = mPath[i];
            float cx = w * (p[0] + p[2] * (float) Math.sin(a * p[4] + i));
            float cy = h * (p[1] + p[3] * (float) Math.cos(a * p[5] + i * 2));
            float r = w * p[6];
            mMatrix.setScale(r, r);
            mMatrix.postTranslate(cx, cy);
            mShaders[i].setLocalMatrix(mMatrix);
            mPaint.setShader(mShaders[i]);
            c.drawCircle(cx, cy, r, mPaint);
        }
    }

    /** tiny helper so we do not depend on android.graphics.Color in hot paths */
    static final class Color8 {
        static int alpha(int c) { return (c >>> 24) & 0xFF; }
    }
}

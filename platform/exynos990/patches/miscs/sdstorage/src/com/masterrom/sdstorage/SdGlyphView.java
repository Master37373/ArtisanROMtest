package com.masterrom.sdstorage;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;

/** Small icons for the selectable option tiles (24 x 24 design space). */
public class SdGlyphView extends View {
    public static final int PHONE = 0;
    public static final int SD = 1;

    private final Paint mStroke = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint mFill = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final RectF mRect = new RectF();
    private final Path mPath = new Path();
    private final int mType;
    private int mColor;

    public SdGlyphView(Context context, int type, int color) {
        super(context);
        mType = type;
        mColor = color;
        mStroke.setStyle(Paint.Style.STROKE);
        mStroke.setStrokeCap(Paint.Cap.ROUND);
        mStroke.setStrokeJoin(Paint.Join.ROUND);
        mStroke.setStrokeWidth(1.8f);
    }

    public void setColor(int color) {
        mColor = color;
        invalidate();
    }

    @Override protected void onDraw(Canvas c) {
        float s = Math.min(getWidth(), getHeight()) / 24f;
        c.save();
        c.translate((getWidth() - 24f * s) / 2f, (getHeight() - 24f * s) / 2f);
        c.scale(s, s);
        mStroke.setColor(mColor);
        mFill.setColor(mColor);
        if (mType == PHONE) {
            mRect.set(6.5f, 2.5f, 17.5f, 21.5f);
            c.drawRoundRect(mRect, 3f, 3f, mStroke);
            c.drawLine(10.5f, 18.5f, 13.5f, 18.5f, mStroke);
        } else {
            mPath.reset();
            mPath.moveTo(9.5f, 2.5f);
            mPath.lineTo(16.5f, 2.5f);
            mPath.quadTo(18.5f, 2.5f, 18.5f, 4.5f);
            mPath.lineTo(18.5f, 19.5f);
            mPath.quadTo(18.5f, 21.5f, 16.5f, 21.5f);
            mPath.lineTo(7.5f, 21.5f);
            mPath.quadTo(5.5f, 21.5f, 5.5f, 19.5f);
            mPath.lineTo(5.5f, 6.5f);
            mPath.close();
            c.drawPath(mPath, mStroke);
            for (int i = 0; i < 3; i++) {
                float x = 10f + i * 3f;
                c.drawLine(x, 5.5f, x, 8.5f, mStroke);
            }
            // tiny lock: the card is encrypted internal storage
            mRect.set(9.5f, 13f, 14.5f, 17.5f);
            c.drawRoundRect(mRect, 1f, 1f, mFill);
            mPath.reset();
            mPath.moveTo(10.6f, 13f);
            mPath.lineTo(10.6f, 11.8f);
            mPath.cubicTo(10.6f, 9.6f, 13.4f, 9.6f, 13.4f, 11.8f);
            mPath.lineTo(13.4f, 13f);
            mStroke.setStrokeWidth(1.2f);
            c.drawPath(mPath, mStroke);
            mStroke.setStrokeWidth(1.8f);
        }
        c.restore();
    }
}

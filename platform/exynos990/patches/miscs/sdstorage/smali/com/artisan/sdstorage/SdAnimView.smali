.class public Lcom/artisan/sdstorage/SdAnimView;
.super Landroid/view/View;
.source "SdAnimView.java"


# static fields
.field public static final MODE_DONE:I = 0x5

.field public static final MODE_FILES:I = 0x2

.field public static final MODE_NO_CARD:I = 0x4

.field public static final MODE_TO_INTERNAL:I = 0x0

.field public static final MODE_TO_PORTABLE:I = 0x1

.field public static final MODE_WORKING:I = 0x3


# instance fields
.field private final mAccent:I

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mEase:Landroid/view/animation/PathInterpolator;

.field private final mFg:I

.field private final mFill:Landroid/graphics/Paint;

.field private final mLine:Landroid/graphics/Paint;

.field private mMode:I

.field private final mOnAccent:I

.field private final mOvershoot:Landroid/view/animation/PathInterpolator;

.field private final mPath:Landroid/graphics/Path;

.field private final mRect:Landroid/graphics/RectF;

.field private final mStroke:Landroid/graphics/Paint;

.field private mT:F


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mLine:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    .line 34
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mEase:Landroid/view/animation/PathInterpolator;

    .line 35
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3eae147b    # 0.34f

    const v2, 0x3fc7ae14    # 1.56f

    const v3, 0x3f23d70a    # 0.64f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mOvershoot:Landroid/view/animation/PathInterpolator;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMode:I

    .line 45
    iput p2, p0, Lcom/artisan/sdstorage/SdAnimView;->mFg:I

    .line 46
    iput p3, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent:I

    .line 47
    iput p4, p0, Lcom/artisan/sdstorage/SdAnimView;->mOnAccent:I

    .line 48
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 50
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 51
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mLine:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mLine:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 54
    return-void
.end method

.method static synthetic access$002(Lcom/artisan/sdstorage/SdAnimView;F)F
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    return p1
.end method

.method private drawDoc(Landroid/graphics/Canvas;FFFI)V
    .locals 6

    .prologue
    .line 239
    const/high16 v0, 0x437f0000    # 255.0f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, p4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 240
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mFg:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    int-to-float v2, v0

    const v3, 0x3f59999a    # 0.85f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 242
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v2, 0x41000000    # 8.0f

    sub-float v2, p2, v2

    const/high16 v3, 0x41200000    # 10.0f

    sub-float v3, p3, v3

    const/high16 v4, 0x41000000    # 8.0f

    add-float/2addr v4, p2

    const/high16 v5, 0x41200000    # 10.0f

    add-float/2addr v5, p3

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 243
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x40400000    # 3.0f

    iget-object v4, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 244
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mLine:Landroid/graphics/Paint;

    iget v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mLine:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 246
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mLine:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 247
    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    .line 248
    const/high16 v0, 0x40000000    # 2.0f

    sub-float v0, p2, v0

    const/high16 v1, 0x40400000    # 3.0f

    sub-float v1, p3, v1

    const v2, 0x400ccccd    # 2.2f

    iget-object v3, p0, Lcom/artisan/sdstorage/SdAnimView;->mLine:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 249
    const/high16 v0, 0x40a00000    # 5.0f

    sub-float v1, p2, v0

    const/high16 v0, 0x40c00000    # 6.0f

    add-float v2, p3, v0

    const/high16 v0, 0x40a00000    # 5.0f

    add-float v3, p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float v4, p3, v0

    iget-object v5, p0, Lcom/artisan/sdstorage/SdAnimView;->mLine:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 255
    :goto_0
    return-void

    .line 251
    :cond_0
    const/high16 v0, 0x40800000    # 4.0f

    sub-float v1, p2, v0

    const/high16 v0, 0x40400000    # 3.0f

    sub-float v2, p3, v0

    const/high16 v0, 0x40800000    # 4.0f

    add-float v3, p2, v0

    const/high16 v0, 0x40400000    # 3.0f

    sub-float v4, p3, v0

    iget-object v5, p0, Lcom/artisan/sdstorage/SdAnimView;->mLine:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 252
    const/high16 v0, 0x40800000    # 4.0f

    sub-float v1, p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float v2, p3, v0

    const/high16 v0, 0x40800000    # 4.0f

    add-float v3, p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float v4, p3, v0

    iget-object v5, p0, Lcom/artisan/sdstorage/SdAnimView;->mLine:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 253
    const/high16 v0, 0x40800000    # 4.0f

    sub-float v1, p2, v0

    const/high16 v0, 0x40a00000    # 5.0f

    add-float v2, p3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float v3, p2, v0

    const/high16 v0, 0x40a00000    # 5.0f

    add-float v4, p3, v0

    iget-object v5, p0, Lcom/artisan/sdstorage/SdAnimView;->mLine:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawDone(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/high16 v9, 0x42c40000    # 98.0f

    const/high16 v8, 0x42c20000    # 97.0f

    const/high16 v7, 0x42a20000    # 81.0f

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v5, 0x0

    .line 258
    const v0, 0x3f0ccccd    # 0.55f

    invoke-direct {p0, v5, v0}, Lcom/artisan/sdstorage/SdAnimView;->segOver(FF)F

    move-result v0

    .line 259
    const v1, 0x3eb33333    # 0.35f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdAnimView;->seg(FF)F

    move-result v1

    .line 260
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget v3, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 262
    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x42a00000    # 80.0f

    const/high16 v4, 0x42380000    # 46.0f

    mul-float/2addr v0, v4

    iget-object v4, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 263
    cmpl-float v0, v1, v5

    if-lez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    iget v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mOnAccent:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 266
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 267
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 269
    const v0, 0x41b4cccd    # 22.6f

    const v2, 0x422c6666    # 43.1f

    add-float v3, v0, v2

    mul-float/2addr v1, v3

    .line 270
    iget-object v3, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v9, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 271
    cmpg-float v3, v1, v0

    if-gtz v3, :cond_1

    .line 272
    div-float v0, v1, v0

    .line 273
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    mul-float v2, v6, v0

    add-float/2addr v2, v9

    mul-float/2addr v0, v6

    add-float/2addr v0, v7

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 279
    :goto_0
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 281
    :cond_0
    return-void

    .line 275
    :cond_1
    sub-float v0, v1, v0

    div-float/2addr v0, v2

    .line 276
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v2, 0x42e40000    # 114.0f

    invoke-virtual {v1, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 277
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v2, 0x42e40000    # 114.0f

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    const/high16 v3, 0x41f80000    # 31.0f

    mul-float/2addr v0, v3

    sub-float v0, v8, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method private restart()V
    .locals 7

    .prologue
    const/4 v4, 0x5

    const/4 v6, 0x3

    const/4 v2, 0x2

    .line 62
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 63
    :cond_0
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 64
    iget-object v3, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMode:I

    if-ne v0, v6, :cond_4

    const-wide/16 v0, 0x578

    :goto_0
    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 65
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMode:I

    if-ne v0, v4, :cond_5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 66
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMode:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x384

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMode:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMode:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_6

    :cond_2
    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 68
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/artisan/sdstorage/SdAnimView$1;

    invoke-direct {v1, p0}, Lcom/artisan/sdstorage/SdAnimView$1;-><init>(Lcom/artisan/sdstorage/SdAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdAnimView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 75
    :cond_3
    return-void

    .line 64
    :cond_4
    const-wide/16 v0, 0xbb8

    goto :goto_0

    .line 65
    :cond_5
    const/4 v0, -0x1

    goto :goto_1

    .line 67
    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    .line 63
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private seg(FF)F
    .locals 3

    .prologue
    .line 89
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    .line 90
    :cond_0
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mEase:Landroid/view/animation/PathInterpolator;

    iget v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    sub-float/2addr v1, p1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_0
.end method

.method private segOver(FF)F
    .locals 3

    .prologue
    .line 95
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    .line 96
    :cond_0
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mOvershoot:Landroid/view/animation/PathInterpolator;

    iget v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    sub-float/2addr v1, p1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 79
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/artisan/sdstorage/SdAnimView;->restart()V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 84
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 85
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    .prologue
    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/artisan/sdstorage/SdAnimView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/artisan/sdstorage/SdAnimView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 102
    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const/high16 v4, 0x43700000    # 240.0f

    div-float v4, v2, v4

    const/high16 v5, 0x43200000    # 160.0f

    div-float v5, v3, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 106
    const/high16 v5, 0x43700000    # 240.0f

    mul-float/2addr v5, v4

    sub-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    const/high16 v5, 0x43200000    # 160.0f

    mul-float/2addr v5, v4

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 107
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 109
    move-object/from16 v0, p0

    iget v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 110
    invoke-direct/range {p0 .. p1}, Lcom/artisan/sdstorage/SdAnimView;->drawDone(Landroid/graphics/Canvas;)V

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 117
    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    .line 118
    const/4 v3, 0x0

    .line 119
    const/16 v2, 0xff

    .line 120
    move-object/from16 v0, p0

    iget v5, v0, Lcom/artisan/sdstorage/SdAnimView;->mMode:I

    packed-switch v5, :pswitch_data_0

    .line 149
    const/high16 v5, -0x3d5c0000    # -82.0f

    const v6, 0x3d4ccccd    # 0.05f

    const v7, 0x3ed70a3d    # 0.42f

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/artisan/sdstorage/SdAnimView;->seg(FF)F

    move-result v6

    mul-float v7, v5, v6

    .line 150
    const v5, 0x3ee66666    # 0.45f

    const v6, 0x3f1eb852    # 0.62f

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/artisan/sdstorage/SdAnimView;->segOver(FF)F

    move-result v6

    .line 151
    const/4 v5, 0x0

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    .line 157
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/artisan/sdstorage/SdAnimView;->mFg:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v3, 0x42280000    # 42.0f

    const/high16 v4, 0x41900000    # 18.0f

    const/high16 v5, 0x42d80000    # 108.0f

    const/high16 v6, 0x430e0000    # 142.0f

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v3, 0x41600000    # 14.0f

    const/high16 v4, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/artisan/sdstorage/SdAnimView;->mFg:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 164
    const/high16 v2, 0x42960000    # 75.0f

    const/high16 v3, 0x41e00000    # 28.0f

    const v4, 0x40266666    # 2.6f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 167
    move-object/from16 v0, p0

    iget v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 168
    const/4 v7, 0x0

    :goto_2
    const/4 v2, 0x3

    if-ge v7, v2, :cond_7

    .line 169
    const v2, 0x3da3d70a    # 0.08f

    int-to-float v3, v7

    const v4, 0x3e6147ae    # 0.22f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 170
    const v3, 0x3ee66666    # 0.45f

    add-float/2addr v3, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/artisan/sdstorage/SdAnimView;->seg(FF)F

    move-result v2

    .line 171
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-lez v3, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_4

    .line 168
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 122
    :pswitch_0
    const/4 v7, 0x0

    .line 123
    const/4 v6, 0x0

    .line 124
    const/4 v5, 0x0

    .line 125
    const/high16 v2, -0x3f000000    # -8.0f

    const/high16 v3, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/artisan/sdstorage/SdAnimView;->mEase:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    invoke-virtual {v8, v9}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v8

    mul-float/2addr v3, v8

    add-float/2addr v3, v2

    .line 126
    const/16 v2, 0x5a

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    .line 127
    goto/16 :goto_1

    .line 130
    :pswitch_1
    const v5, 0x3d4ccccd    # 0.05f

    const/high16 v6, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/artisan/sdstorage/SdAnimView;->seg(FF)F

    move-result v5

    .line 131
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3e800000    # 0.25f

    const v8, 0x3ecccccd    # 0.4f

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/artisan/sdstorage/SdAnimView;->seg(FF)F

    move-result v7

    sub-float/2addr v6, v7

    .line 132
    const/high16 v7, -0x3d5c0000    # -82.0f

    const/high16 v8, 0x42a40000    # 82.0f

    const v9, 0x3ecccccd    # 0.4f

    const/high16 v10, 0x3f400000    # 0.75f

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/artisan/sdstorage/SdAnimView;->seg(FF)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    .line 133
    goto/16 :goto_1

    .line 136
    :pswitch_2
    const/4 v7, 0x0

    .line 137
    const/high16 v6, 0x3f800000    # 1.0f

    .line 138
    const/4 v5, 0x0

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    .line 139
    goto/16 :goto_1

    .line 142
    :pswitch_3
    const/4 v7, 0x0

    .line 143
    const/4 v6, 0x0

    .line 144
    const/4 v5, 0x0

    .line 145
    const v4, 0x3f6b851f    # 0.92f

    const v8, 0x3da3d70a    # 0.08f

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/artisan/sdstorage/SdAnimView;->mEase:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    invoke-virtual {v9, v10}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v4, v8

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    .line 146
    goto/16 :goto_1

    .line 172
    :cond_4
    const/high16 v3, 0x42960000    # 75.0f

    const/high16 v4, 0x42ba0000    # 93.0f

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    .line 173
    const/high16 v3, 0x42a00000    # 80.0f

    float-to-double v14, v2

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v5, v14

    const/high16 v6, 0x42180000    # 38.0f

    mul-float/2addr v5, v6

    sub-float v5, v3, v5

    .line 174
    const v3, 0x3e19999a    # 0.15f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_5

    const v3, 0x3e19999a    # 0.15f

    div-float v6, v2, v3

    :goto_4
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 175
    invoke-direct/range {v2 .. v7}, Lcom/artisan/sdstorage/SdAnimView;->drawDoc(Landroid/graphics/Canvas;FFFI)V

    goto/16 :goto_3

    .line 174
    :cond_5
    const v3, 0x3f59999a    # 0.85f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    const v3, 0x3e19999a    # 0.15f

    div-float v6, v2, v3

    goto :goto_4

    :cond_6
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_4

    .line 180
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 181
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 182
    const/high16 v2, 0x43280000    # 168.0f

    const/high16 v3, 0x42ac0000    # 86.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v10, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v3, 0x43200000    # 160.0f

    const/high16 v4, 0x42680000    # 58.0f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v3, 0x43360000    # 182.0f

    const/high16 v4, 0x42680000    # 58.0f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v3, 0x433a0000    # 186.0f

    const/high16 v4, 0x42680000    # 58.0f

    const/high16 v5, 0x433a0000    # 186.0f

    const/high16 v6, 0x42780000    # 62.0f

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v3, 0x433a0000    # 186.0f

    const/high16 v4, 0x42dc0000    # 110.0f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v3, 0x433a0000    # 186.0f

    const/high16 v4, 0x42e40000    # 114.0f

    const/high16 v5, 0x43360000    # 182.0f

    const/high16 v6, 0x42e40000    # 114.0f

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v3, 0x431a0000    # 154.0f

    const/high16 v4, 0x42e40000    # 114.0f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v3, 0x43160000    # 150.0f

    const/high16 v4, 0x42e40000    # 114.0f

    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v6, 0x42dc0000    # 110.0f

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v3, 0x43160000    # 150.0f

    const/high16 v4, 0x428c0000    # 70.0f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/artisan/sdstorage/SdAnimView;->mAccent:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mLine:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/artisan/sdstorage/SdAnimView;->mOnAccent:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mLine:Landroid/graphics/Paint;

    mul-int/lit16 v3, v8, 0xdc

    div-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mLine:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 199
    const/4 v2, 0x0

    move v8, v2

    :goto_5
    const/4 v2, 0x4

    if-ge v8, v2, :cond_8

    .line 200
    const/high16 v2, 0x431f0000    # 159.0f

    int-to-float v3, v8

    const/high16 v4, 0x40e00000    # 7.0f

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 201
    const/high16 v4, 0x42800000    # 64.0f

    const/high16 v6, 0x42940000    # 74.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/artisan/sdstorage/SdAnimView;->mLine:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 199
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_5

    .line 203
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 206
    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v2, v12, v2

    if-lez v2, :cond_9

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 208
    const/high16 v2, 0x43280000    # 168.0f

    add-float v9, v2, v13

    .line 209
    const/high16 v10, 0x42c00000    # 96.0f

    .line 210
    const v2, 0x3f19999a    # 0.6f

    .line 211
    mul-float v3, v12, v2

    mul-float/2addr v2, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 212
    move-object/from16 v0, p0

    iget v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mOnAccent:I

    .line 213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v4, 0x41500000    # 13.0f

    sub-float v4, v9, v4

    const/high16 v5, 0x40c00000    # 6.0f

    sub-float v5, v10, v5

    const/high16 v6, 0x41500000    # 13.0f

    add-float/2addr v6, v9

    const/high16 v7, 0x41800000    # 16.0f

    add-float/2addr v7, v10

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v3, 0x40900000    # 4.5f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 221
    const/4 v2, 0x0

    const/high16 v3, -0x3f400000    # -6.0f

    mul-float/2addr v3, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 222
    const/high16 v2, -0x3e380000    # -25.0f

    mul-float/2addr v2, v11

    const/high16 v3, 0x41000000    # 8.0f

    add-float/2addr v3, v9

    const/high16 v4, 0x40c00000    # 6.0f

    sub-float v4, v10, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v3, 0x41000000    # 8.0f

    sub-float v3, v9, v3

    const/high16 v4, 0x40c00000    # 6.0f

    sub-float v4, v10, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v3, 0x41000000    # 8.0f

    sub-float v3, v9, v3

    const/high16 v4, 0x41400000    # 12.0f

    sub-float v4, v10, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v3, 0x41000000    # 8.0f

    sub-float v3, v9, v3

    const/high16 v4, 0x41b80000    # 23.0f

    sub-float v4, v10, v4

    const/high16 v5, 0x41000000    # 8.0f

    add-float/2addr v5, v9

    const/high16 v6, 0x41b80000    # 23.0f

    sub-float v6, v10, v6

    const/high16 v7, 0x41000000    # 8.0f

    add-float/2addr v7, v9

    const/high16 v8, 0x41400000    # 12.0f

    sub-float v8, v10, v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v3, 0x41000000    # 8.0f

    add-float/2addr v3, v9

    const/high16 v4, 0x40c00000    # 6.0f

    sub-float v4, v10, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 229
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/artisan/sdstorage/SdAnimView;->mAccent:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 232
    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v2, v10

    const/high16 v3, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 235
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public setMode(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/artisan/sdstorage/SdAnimView;->mMode:I

    .line 58
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdAnimView;->restart()V

    .line 59
    return-void
.end method

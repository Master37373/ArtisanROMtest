.class public Lcom/artisan/sdstorage/SdGlassBackground;
.super Landroid/view/View;
.source "SdGlassBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artisan/sdstorage/SdGlassBackground$Color8;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mBase:I

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:[[F

.field private final mShaders:[Landroid/graphics/RadialGradient;

.field private mT:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 11

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mPaint:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mMatrix:Landroid/graphics/Matrix;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/RadialGradient;

    iput-object v0, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mShaders:[Landroid/graphics/RadialGradient;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [[F

    const/4 v1, 0x0

    const/4 v2, 0x7

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x7

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x7

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mPath:[[F

    .line 33
    iput p2, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mBase:I

    .line 34
    const/4 v0, 0x3

    new-array v8, v0, [I

    const/4 v0, 0x0

    aput p3, v8, v0

    const/4 v0, 0x1

    aput p4, v8, v0

    const/4 v0, 0x2

    aput p5, v8, v0

    .line 35
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    const/4 v0, 0x3

    if-ge v7, v0, :cond_0

    .line 36
    iget-object v9, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mShaders:[Landroid/graphics/RadialGradient;

    new-instance v0, Landroid/graphics/RadialGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    aget v6, v8, v7

    aput v6, v4, v5

    const/4 v5, 0x1

    aget v6, v8, v7

    const v10, 0xffffff

    and-int/2addr v6, v10

    aget v10, v8, v7

    .line 37
    invoke-static {v10}, Lcom/artisan/sdstorage/SdGlassBackground$Color8;->alpha(I)I

    move-result v10

    div-int/lit8 v10, v10, 0x3

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v6, v10

    aput v6, v4, v5

    const/4 v5, 0x2

    aget v6, v8, v7

    const v10, 0xffffff

    and-int/2addr v6, v10

    aput v6, v4, v5

    const/4 v5, 0x3

    new-array v5, v5, [F

    fill-array-data v5, :array_3

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    aput-object v0, v9, v7

    .line 35
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 40
    :cond_0
    return-void

    .line 22
    nop

    :array_0
    .array-data 4
        0x3e19999a    # 0.15f
        0x3df5c28f    # 0.12f
        0x3e3851ec    # 0.18f
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f733333    # 0.95f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3eb33333    # 0.35f
        0x3e0f5c29    # 0.14f
        0x3e23d70a    # 0.16f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data

    :array_2
    .array-data 4
        0x3eb33333    # 0.35f
        0x3f59999a    # 0.85f
        0x3e4ccccd    # 0.2f
        0x3da3d70a    # 0.08f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f866666    # 1.05f
    .end array-data

    .line 37
    :array_3
    .array-data 4
        0x0
        0x3f0ccccd    # 0.55f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$002(Lcom/artisan/sdstorage/SdGlassBackground;F)F
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mT:F

    return p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 43
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mAnimator:Landroid/animation/ValueAnimator;

    .line 45
    iget-object v0, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x6d60

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 46
    iget-object v0, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 47
    iget-object v0, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 48
    iget-object v0, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/artisan/sdstorage/SdGlassBackground$1;

    invoke-direct {v1, p0}, Lcom/artisan/sdstorage/SdGlassBackground$1;-><init>(Lcom/artisan/sdstorage/SdGlassBackground;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 54
    iget-object v0, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 55
    return-void

    .line 44
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 59
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 60
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdGlassBackground;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdGlassBackground;->getHeight()I

    move-result v0

    int-to-float v2, v0

    .line 64
    iget v0, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mBase:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 65
    iget v0, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mT:F

    float-to-double v4, v0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    .line 66
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 67
    iget-object v3, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mPath:[[F

    aget-object v3, v3, v0

    .line 68
    const/4 v6, 0x0

    aget v6, v3, v6

    const/4 v7, 0x2

    aget v7, v3, v7

    const/4 v8, 0x4

    aget v8, v3, v8

    float-to-double v8, v8

    mul-double/2addr v8, v4

    int-to-double v10, v0

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float/2addr v6, v1

    .line 69
    const/4 v7, 0x1

    aget v7, v3, v7

    const/4 v8, 0x3

    aget v8, v3, v8

    const/4 v9, 0x5

    aget v9, v3, v9

    float-to-double v10, v9

    mul-double/2addr v10, v4

    mul-int/lit8 v9, v0, 0x2

    int-to-double v12, v9

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    mul-float/2addr v7, v2

    .line 70
    const/4 v8, 0x6

    aget v3, v3, v8

    mul-float/2addr v3, v1

    .line 71
    iget-object v8, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 72
    iget-object v8, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 73
    iget-object v8, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mShaders:[Landroid/graphics/RadialGradient;

    aget-object v8, v8, v0

    iget-object v9, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 74
    iget-object v8, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mShaders:[Landroid/graphics/RadialGradient;

    aget-object v9, v9, v0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 75
    iget-object v8, p0, Lcom/artisan/sdstorage/SdGlassBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

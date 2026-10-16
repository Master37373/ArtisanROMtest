.class public Lcom/masterrom/sdstorage/SdGlassBackground;
.super Landroid/view/View;
.source "SdGlassBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/masterrom/sdstorage/SdGlassBackground$Color8;
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
    .locals 7

    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mPaint:Landroid/graphics/Paint;

    .line 20
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x3

    .line 21
    new-array v0, p1, [Landroid/graphics/RadialGradient;

    iput-object v0, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mShaders:[Landroid/graphics/RadialGradient;

    const/4 v0, 0x7

    .line 22
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    filled-new-array {v1, v2, v0}, [[F

    move-result-object v0

    iput-object v0, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mPath:[[F

    .line 33
    iput p2, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mBase:I

    .line 34
    filled-new-array {p3, p4, p5}, [I

    move-result-object p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    .line 36
    iget-object p4, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mShaders:[Landroid/graphics/RadialGradient;

    new-instance p5, Landroid/graphics/RadialGradient;

    aget v0, p2, p3

    const v1, 0xffffff

    and-int v2, v0, v1

    .line 37
    invoke-static {v0}, Lcom/masterrom/sdstorage/SdGlassBackground$Color8;->alpha(I)I

    move-result v3

    div-int/2addr v3, p1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    aget v3, p2, p3

    and-int/2addr v1, v3

    filled-new-array {v0, v2, v1}, [I

    move-result-object v4

    new-array v5, p1, [F

    fill-array-data v5, :array_3

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    aput-object p5, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void

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

    :array_3
    .array-data 4
        0x0
        0x3f0ccccd    # 0.55f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$002(Lcom/masterrom/sdstorage/SdGlassBackground;F)F
    .locals 0

    .line 17
    iput p1, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mT:F

    return p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .line 43
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x6d60

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 46
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 47
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 48
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/masterrom/sdstorage/SdGlassBackground$1;

    invoke-direct {v1, p0}, Lcom/masterrom/sdstorage/SdGlassBackground$1;-><init>(Lcom/masterrom/sdstorage/SdGlassBackground;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 54
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 59
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 63
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdGlassBackground;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdGlassBackground;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 64
    iget v2, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mBase:I

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 65
    iget v2, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mT:F

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x3

    if-ge v5, v6, :cond_0

    .line 67
    iget-object v7, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mPath:[[F

    aget-object v7, v7, v5

    .line 68
    aget v8, v7, v4

    const/4 v9, 0x2

    aget v9, v7, v9

    const/4 v10, 0x4

    aget v10, v7, v10

    float-to-double v10, v10

    mul-double/2addr v10, v2

    int-to-double v12, v5

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    mul-float/2addr v8, v0

    const/4 v9, 0x1

    .line 69
    aget v9, v7, v9

    aget v6, v7, v6

    const/4 v10, 0x5

    aget v10, v7, v10

    float-to-double v10, v10

    mul-double/2addr v10, v2

    mul-int/lit8 v12, v5, 0x2

    int-to-double v12, v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v6, v10

    add-float/2addr v9, v6

    mul-float/2addr v9, v1

    const/4 v6, 0x6

    .line 70
    aget v6, v7, v6

    mul-float/2addr v6, v0

    .line 71
    iget-object v7, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 72
    iget-object v7, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 73
    iget-object v7, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mShaders:[Landroid/graphics/RadialGradient;

    aget-object v7, v7, v5

    iget-object v10, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v10}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 74
    iget-object v7, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mShaders:[Landroid/graphics/RadialGradient;

    aget-object v10, v10, v5

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 75
    iget-object v7, p0, Lcom/masterrom/sdstorage/SdGlassBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

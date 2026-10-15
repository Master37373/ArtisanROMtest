.class public Lcom/artisan/sdstorage/SdAnimView;
.super Landroid/view/View;
.source "SdAnimView.java"


# static fields
.field static final ERROR_COLOR:I = -0x1ab7b3

.field public static final MODE_DONE:I = 0x5

.field public static final MODE_ERROR:I = 0x7

.field public static final MODE_FILES:I = 0x2

.field public static final MODE_NO_CARD:I = 0x4

.field public static final MODE_SECURE:I = 0x6

.field public static final MODE_TO_INTERNAL:I = 0x0

.field public static final MODE_TO_PORTABLE:I = 0x1

.field public static final MODE_WORKING:I = 0x3


# instance fields
.field private mA:F

.field private final mAccent:I

.field private final mAccent2:I

.field private final mAccentGlow:Landroid/graphics/RadialGradient;

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mBodyShader:Landroid/graphics/LinearGradient;

.field private final mCardPath:Landroid/graphics/Path;

.field private final mCardShader:Landroid/graphics/LinearGradient;

.field private final mDash:Landroid/graphics/Paint;

.field private final mEase:Landroid/view/animation/PathInterpolator;

.field private final mEaseInOut:Landroid/view/animation/PathInterpolator;

.field private final mErrorGlow:Landroid/graphics/RadialGradient;

.field private final mFg:I

.field private final mFill:Landroid/graphics/Paint;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mMode:I

.field private final mOnAccent:I

.field private final mOver:Landroid/view/animation/PathInterpolator;

.field private final mPartColor:[I

.field private final mPartCos:[F

.field private final mPartDist:[F

.field private final mPartSin:[F

.field private final mPath:Landroid/graphics/Path;

.field private final mRect:Landroid/graphics/RectF;

.field private final mShaderPaint:Landroid/graphics/Paint;

.field private final mShadowShader:Landroid/graphics/RadialGradient;

.field private final mStroke:Landroid/graphics/Paint;

.field private mT:F


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 8

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mDash:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mShaderPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    .line 50
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mEase:Landroid/view/animation/PathInterpolator;

    .line 54
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ed70a3d    # 0.42f

    const/4 v2, 0x0

    const v3, 0x3f147ae1    # 0.58f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mEaseInOut:Landroid/view/animation/PathInterpolator;

    .line 55
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3eae147b    # 0.34f

    const v2, 0x3fc7ae14    # 1.56f

    const v3, 0x3f23d70a    # 0.64f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mOver:Landroid/view/animation/PathInterpolator;

    .line 58
    const/16 v0, 0xe

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPartCos:[F

    .line 59
    const/16 v0, 0xe

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPartSin:[F

    .line 60
    const/16 v0, 0xe

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPartDist:[F

    .line 61
    const/16 v0, 0xe

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPartColor:[I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMode:I

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mA:F

    .line 71
    iput p2, p0, Lcom/artisan/sdstorage/SdAnimView;->mFg:I

    .line 72
    iput p3, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent:I

    .line 73
    iput p4, p0, Lcom/artisan/sdstorage/SdAnimView;->mOnAccent:I

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 75
    invoke-static {p3, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 76
    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v0, v2

    const/high16 v3, 0x42180000    # 38.0f

    add-float/2addr v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    rem-float/2addr v2, v3

    aput v2, v0, v1

    .line 77
    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aget v3, v0, v3

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, v1

    .line 78
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent2:I

    .line 80
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 82
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 83
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mDash:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mDash:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mDash:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 87
    const/high16 v0, -0x1000000

    invoke-static {v0}, Lcom/artisan/sdstorage/SdAnimView;->glow(I)Landroid/graphics/RadialGradient;

    move-result-object v0

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mShadowShader:Landroid/graphics/RadialGradient;

    .line 88
    invoke-static {p3}, Lcom/artisan/sdstorage/SdAnimView;->glow(I)Landroid/graphics/RadialGradient;

    move-result-object v0

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccentGlow:Landroid/graphics/RadialGradient;

    .line 89
    const v0, -0x1ab7b3

    invoke-static {v0}, Lcom/artisan/sdstorage/SdAnimView;->glow(I)Landroid/graphics/RadialGradient;

    move-result-object v0

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mErrorGlow:Landroid/graphics/RadialGradient;

    .line 90
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent2:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v5, p3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mCardShader:Landroid/graphics/LinearGradient;

    .line 91
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0xffffff

    and-int/2addr v5, p2

    const/high16 v6, 0x26000000

    or-int/2addr v5, v6

    const v6, 0xffffff

    and-int/2addr v6, p2

    const/high16 v7, 0x8000000

    or-int/2addr v6, v7

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mBodyShader:Landroid/graphics/LinearGradient;

    .line 93
    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v0, 0x0

    aput p3, v1, v0

    const/4 v0, 0x1

    iget v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent2:I

    aput v2, v1, v0

    const/4 v0, 0x2

    const/16 v2, -0x3ac3

    aput v2, v1, v0

    const/4 v0, 0x3

    const v2, -0xc22974

    aput v2, v1, v0

    .line 94
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mPartCos:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 95
    int-to-double v2, v0

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    iget-object v6, p0, Lcom/artisan/sdstorage/SdAnimView;->mPartCos:[F

    array-length v6, v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    rem-int/lit8 v4, v0, 0x3

    int-to-double v4, v4

    const-wide v6, 0x3fcae147ae147ae1L    # 0.21

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 96
    iget-object v4, p0, Lcom/artisan/sdstorage/SdAnimView;->mPartCos:[F

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v5, v6

    aput v5, v4, v0

    .line 97
    iget-object v4, p0, Lcom/artisan/sdstorage/SdAnimView;->mPartSin:[F

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v4, v0

    .line 98
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mPartDist:[F

    const/high16 v3, 0x3f400000    # 0.75f

    mul-int/lit8 v4, v0, 0x25

    rem-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v0

    .line 99
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mPartColor:[I

    array-length v3, v1

    rem-int v3, v0, v3

    aget v3, v1, v3

    aput v3, v2, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void

    .line 86
    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0x40800000    # 4.0f
    .end array-data
.end method

.method static synthetic access$002(Lcom/artisan/sdstorage/SdAnimView;F)F
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    return p1
.end method

.method private al(F)I
    .locals 3

    .prologue
    .line 182
    const/4 v0, 0x0

    const/16 v1, 0xff

    iget v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mA:F

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private drawCard(Landroid/graphics/Canvas;FFFFIF)V
    .locals 8

    .prologue
    .line 474
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 475
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 476
    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 477
    invoke-virtual {p1, p5, p5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 478
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 479
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    const/high16 v1, -0x3ee00000    # -10.0f

    const/high16 v2, -0x3e280000    # -27.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 480
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    const/high16 v1, 0x41600000    # 14.0f

    const/high16 v2, -0x3e280000    # -27.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 481
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    const/high16 v1, 0x41900000    # 18.0f

    const/high16 v2, -0x3e280000    # -27.0f

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v4, -0x3e480000    # -23.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 482
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    const/high16 v1, 0x41900000    # 18.0f

    const/high16 v2, 0x41b80000    # 23.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 483
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    const/high16 v1, 0x41900000    # 18.0f

    const/high16 v2, 0x41d80000    # 27.0f

    const/high16 v3, 0x41600000    # 14.0f

    const/high16 v4, 0x41d80000    # 27.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 484
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    const/high16 v1, -0x3ea00000    # -14.0f

    const/high16 v2, 0x41d80000    # 27.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 485
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    const/high16 v1, -0x3e700000    # -18.0f

    const/high16 v2, 0x41d80000    # 27.0f

    const/high16 v3, -0x3e700000    # -18.0f

    const/high16 v4, 0x41b80000    # 23.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 486
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    const/high16 v1, -0x3e700000    # -18.0f

    const/high16 v2, -0x3e680000    # -19.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 487
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 488
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccentGlow:Landroid/graphics/RadialGradient;

    const/4 v3, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, 0x42280000    # 42.0f

    const v0, 0x3e75c28f    # 0.24f

    int-to-float v1, p6

    mul-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v6, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/artisan/sdstorage/SdAnimView;->drawGlow(Landroid/graphics/Canvas;Landroid/graphics/RadialGradient;FFFF)V

    .line 489
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mCardShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 490
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x42100000    # 36.0f

    const/high16 v2, 0x42580000    # 54.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 491
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v1, -0x3e700000    # -18.0f

    const/high16 v2, -0x3e280000    # -27.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 492
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mCardShader:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 493
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    int-to-float v1, p6

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 494
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 495
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 496
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mOnAccent:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 497
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    mul-int/lit16 v1, p6, 0xc8

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 498
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 499
    const/high16 v1, -0x3ef00000    # -9.0f

    int-to-float v2, v0

    const/high16 v3, 0x40d00000    # 6.5f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 500
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const v3, 0x3fcccccd    # 1.6f

    sub-float v3, v1, v3

    const/high16 v4, -0x3e500000    # -22.0f

    const v5, 0x3fcccccd    # 1.6f

    add-float/2addr v1, v5

    const/high16 v5, -0x3ec00000    # -12.0f

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 501
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const v2, 0x3f99999a    # 1.2f

    const v3, 0x3f99999a    # 1.2f

    iget-object v4, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p7, v0

    if-lez v0, :cond_1

    .line 504
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 505
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 506
    const/high16 v1, -0x3de00000    # -40.0f

    const/high16 v2, 0x42a00000    # 80.0f

    mul-float/2addr v2, p7

    add-float/2addr v1, v2

    .line 507
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 508
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 509
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    mul-int/lit8 v3, p6, 0x5a

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 510
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v3, 0x40c00000    # 6.0f

    sub-float v3, v1, v3

    const/high16 v4, -0x3db80000    # -50.0f

    const/high16 v5, 0x40c00000    # 6.0f

    add-float/2addr v1, v5

    const/high16 v5, 0x42480000    # 50.0f

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 511
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 512
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 514
    :cond_1
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 515
    return-void
.end method

.method private drawCheck(Landroid/graphics/Canvas;FFFFIF)V
    .locals 7

    .prologue
    .line 622
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 623
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 624
    invoke-virtual {p1, p4, p4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 625
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {v1, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 626
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 627
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {v1, p7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 628
    const v1, 0x41b4cccd    # 22.6f

    const v2, 0x422c6666    # 43.1f

    add-float v3, v1, v2

    mul-float/2addr v3, p5

    .line 629
    iget-object v4, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 630
    iget-object v4, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v5, -0x3e500000    # -22.0f

    const/high16 v6, 0x40400000    # 3.0f

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 631
    cmpg-float v4, v3, v1

    if-gtz v4, :cond_0

    .line 632
    div-float v1, v3, v1

    .line 633
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v3, -0x3e500000    # -22.0f

    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x41800000    # 16.0f

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 639
    :goto_0
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 640
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 641
    return-void

    .line 635
    :cond_0
    sub-float v1, v3, v1

    div-float/2addr v1, v2

    .line 636
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v3, -0x3f400000    # -6.0f

    const/high16 v4, 0x41980000    # 19.0f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 637
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v3, -0x3f400000    # -6.0f

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    const/high16 v4, 0x41980000    # 19.0f

    const/high16 v5, 0x41f80000    # 31.0f

    mul-float/2addr v1, v5

    sub-float v1, v4, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method private drawDoc(Landroid/graphics/Canvas;FFFFFI)V
    .locals 7

    .prologue
    .line 577
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 578
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 579
    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 580
    invoke-virtual {p1, p5, p5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 581
    const/high16 v0, 0x437f0000    # 255.0f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, p6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    .line 582
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 583
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 584
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 585
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v2, -0x3ee00000    # -10.0f

    const/high16 v3, -0x3eb00000    # -13.0f

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 586
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v3, 0x40800000    # 4.0f

    iget-object v4, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 587
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    iget v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mFg:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 588
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 589
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 590
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v3, 0x40800000    # 4.0f

    iget-object v4, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 591
    const/4 v1, 0x1

    if-ne p7, v1, :cond_0

    .line 592
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v2, -0x3f200000    # -7.0f

    const/high16 v3, -0x3ee00000    # -10.0f

    const/high16 v4, 0x40e00000    # 7.0f

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 593
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent2:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 594
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const v2, 0x3ee66666    # 0.45f

    mul-float/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 595
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v2, 0x40200000    # 2.5f

    const/high16 v3, 0x40200000    # 2.5f

    iget-object v4, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 596
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/16 v2, -0x3ac3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 597
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 598
    const/high16 v1, -0x3fc00000    # -3.0f

    const/high16 v2, -0x3f600000    # -5.0f

    const v3, 0x400ccccd    # 2.2f

    iget-object v4, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 599
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 600
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v2, -0x3f200000    # -7.0f

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 601
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 602
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 603
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 604
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v2, 0x40e00000    # 7.0f

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 605
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 606
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 607
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 608
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 617
    :goto_0
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 618
    return-void

    .line 610
    :cond_0
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    iget v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 611
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 612
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 613
    const/high16 v1, -0x3f400000    # -6.0f

    const/high16 v2, -0x3f400000    # -6.0f

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, -0x3f400000    # -6.0f

    iget-object v5, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 614
    const/high16 v1, -0x3f400000    # -6.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, -0x40800000    # -1.0f

    iget-object v5, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 615
    const/high16 v1, -0x3f400000    # -6.0f

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x40800000    # 4.0f

    iget-object v5, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawDone(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 328
    const/4 v0, 0x0

    const v1, 0x3ed70a3d    # 0.42f

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdAnimView;->segOver(FF)F

    move-result v7

    .line 329
    const v0, 0x3e8f5c29    # 0.28f

    const v1, 0x3f333333    # 0.7f

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdAnimView;->seg(FF)F

    move-result v8

    .line 330
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    const v1, 0x3e19999a    # 0.15f

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-static {v0, v1, v2}, Lcom/artisan/sdstorage/SdAnimView;->lin(FFF)F

    move-result v6

    .line 331
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/artisan/sdstorage/SdAnimView;->lin(FFF)F

    move-result v9

    .line 332
    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x43120000    # 146.0f

    const/high16 v0, 0x42080000    # 34.0f

    mul-float v4, v0, v7

    const v5, 0x3e0f5c29    # 0.14f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/artisan/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 333
    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v6, v0

    if-gez v0, :cond_0

    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x429c0000    # 78.0f

    const/high16 v0, 0x42200000    # 40.0f

    const/high16 v1, 0x42080000    # 34.0f

    iget-object v4, p0, Lcom/artisan/sdstorage/SdAnimView;->mEase:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v1, v4

    add-float v4, v0, v1

    const v0, 0x3f19999a    # 0.6f

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v6

    mul-float v5, v0, v1

    iget v6, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/artisan/sdstorage/SdAnimView;->drawRing(Landroid/graphics/Canvas;FFFFI)V

    .line 334
    :cond_0
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccentGlow:Landroid/graphics/RadialGradient;

    const/high16 v3, 0x42f00000    # 120.0f

    const/high16 v4, 0x429c0000    # 78.0f

    const/high16 v0, 0x42900000    # 72.0f

    mul-float v5, v0, v7

    const v6, 0x3eb33333    # 0.35f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/artisan/sdstorage/SdAnimView;->drawGlow(Landroid/graphics/Canvas;Landroid/graphics/RadialGradient;FFFF)V

    .line 335
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mCardShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 336
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x42b80000    # 92.0f

    const/high16 v2, 0x42b80000    # 92.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 337
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x42940000    # 74.0f

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 338
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mCardShader:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 339
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 340
    const/high16 v0, 0x42f00000    # 120.0f

    const/high16 v1, 0x429c0000    # 78.0f

    const/high16 v2, 0x42300000    # 44.0f

    mul-float/2addr v2, v7

    iget-object v3, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 341
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 342
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_1

    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x429c0000    # 78.0f

    const v4, 0x3f933333    # 1.15f

    iget v6, p0, Lcom/artisan/sdstorage/SdAnimView;->mOnAccent:I

    const/high16 v7, 0x41000000    # 8.0f

    move-object v0, p0

    move-object v1, p1

    move v5, v8

    invoke-direct/range {v0 .. v7}, Lcom/artisan/sdstorage/SdAnimView;->drawCheck(Landroid/graphics/Canvas;FFFFIF)V

    .line 343
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v9, v0

    if-gez v0, :cond_2

    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x429c0000    # 78.0f

    const/high16 v0, 0x42480000    # 50.0f

    const/high16 v1, 0x42080000    # 34.0f

    iget-object v4, p0, Lcom/artisan/sdstorage/SdAnimView;->mEase:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v9}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v1, v4

    add-float v4, v0, v1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v5, v0, v9

    const v6, 0x4019999a    # 2.4f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/artisan/sdstorage/SdAnimView;->drawParticles(Landroid/graphics/Canvas;FFFFF)V

    .line 344
    :cond_2
    return-void
.end method

.method private drawError(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/high16 v7, 0x429c0000    # 78.0f

    const/high16 v12, 0x437f0000    # 255.0f

    const/high16 v2, 0x42f00000    # 120.0f

    .line 347
    const/4 v0, 0x0

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdAnimView;->segOver(FF)F

    move-result v10

    .line 348
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    const v1, 0x3eb33333    # 0.35f

    const v3, 0x3f59999a    # 0.85f

    invoke-static {v0, v1, v3}, Lcom/artisan/sdstorage/SdAnimView;->lin(FFF)F

    move-result v0

    .line 349
    float-to-double v4, v0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v1, v4

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v3, v0

    mul-float v11, v1, v0

    .line 350
    const/high16 v3, 0x43120000    # 146.0f

    const/high16 v0, 0x41f00000    # 30.0f

    mul-float v4, v0, v10

    const v5, 0x3e0f5c29    # 0.14f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/artisan/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 351
    iget-object v5, p0, Lcom/artisan/sdstorage/SdAnimView;->mErrorGlow:Landroid/graphics/RadialGradient;

    add-float v6, v2, v11

    const/high16 v0, 0x42800000    # 64.0f

    mul-float v8, v0, v10

    const v9, 0x3e99999a    # 0.3f

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/artisan/sdstorage/SdAnimView;->drawGlow(Landroid/graphics/Canvas;Landroid/graphics/RadialGradient;FFFF)V

    .line 352
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 353
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const v1, -0x1ab7b3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 354
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-direct {p0, v12}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 355
    add-float v0, v2, v11

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v1, v10

    iget-object v3, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 356
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, v10, v0

    if-lez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-direct {p0, v12}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 359
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 360
    add-float v4, v2, v11

    const/high16 v5, 0x42700000    # 60.0f

    add-float v6, v2, v11

    const/high16 v7, 0x42a40000    # 82.0f

    iget-object v8, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 361
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 362
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-direct {p0, v12}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 363
    add-float v0, v2, v11

    const/high16 v1, 0x42c00000    # 96.0f

    const v2, 0x40933333    # 4.6f

    iget-object v3, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 365
    :cond_0
    return-void
.end method

.method private drawFiles(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdAnimView;->loopFade()V

    .line 254
    const/high16 v2, 0x42960000    # 75.0f

    const/high16 v3, 0x43130000    # 147.0f

    const/high16 v4, 0x42200000    # 40.0f

    const v5, 0x3e23d70a    # 0.16f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/artisan/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 255
    const/high16 v2, 0x432c0000    # 172.0f

    const/high16 v3, 0x43120000    # 146.0f

    const/high16 v4, 0x41c00000    # 24.0f

    const v5, 0x3e0f5c29    # 0.14f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/artisan/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 256
    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {p0, p1, v0, v1}, Lcom/artisan/sdstorage/SdAnimView;->drawPhone(Landroid/graphics/Canvas;FF)V

    .line 257
    const/4 v8, 0x0

    .line 258
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x3

    if-ge v1, v0, :cond_0

    .line 259
    const v0, 0x3da3d70a    # 0.08f

    int-to-float v2, v1

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 260
    iget v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    const v3, 0x3eb851ec    # 0.36f

    add-float/2addr v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v0, v4

    invoke-static {v2, v3, v0}, Lcom/artisan/sdstorage/SdAnimView;->lin(FFF)F

    move-result v0

    .line 261
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_5

    float-to-double v2, v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 258
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v8, v0

    goto :goto_0

    .line 263
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3d75c28f    # 0.06f

    mul-float/2addr v1, v8

    add-float v5, v0, v1

    .line 264
    const/high16 v2, 0x432c0000    # 172.0f

    const/high16 v3, 0x42a80000    # 84.0f

    const/high16 v4, 0x40c00000    # 6.0f

    const/16 v6, 0xff

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/artisan/sdstorage/SdAnimView;->drawCard(Landroid/graphics/Canvas;FFFFIF)V

    .line 265
    const/high16 v2, 0x432c0000    # 172.0f

    const/high16 v3, 0x42b60000    # 91.0f

    const v0, 0x3f0ccccd    # 0.55f

    mul-float v4, v0, v5

    const/4 v5, 0x0

    iget v6, p0, Lcom/artisan/sdstorage/SdAnimView;->mOnAccent:I

    iget v7, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/artisan/sdstorage/SdAnimView;->drawLock(Landroid/graphics/Canvas;FFFFII)V

    .line 266
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_1

    const/high16 v2, 0x432c0000    # 172.0f

    const/high16 v3, 0x42a80000    # 84.0f

    const/high16 v0, 0x42000000    # 32.0f

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v1, v8

    add-float v4, v0, v1

    const v0, 0x3eb33333    # 0.35f

    mul-float v5, v0, v8

    iget v6, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/artisan/sdstorage/SdAnimView;->drawRing(Landroid/graphics/Canvas;FFFFI)V

    .line 267
    :cond_1
    const/4 v0, 0x0

    move v8, v0

    :goto_2
    const/4 v0, 0x3

    if-ge v8, v0, :cond_4

    .line 268
    const v0, 0x3da3d70a    # 0.08f

    int-to-float v1, v8

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 269
    const v1, 0x3ed70a3d    # 0.42f

    add-float/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdAnimView;->seg(FF)F

    move-result v0

    .line 270
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-lez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    .line 267
    :cond_2
    :goto_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 271
    :cond_3
    const/high16 v1, 0x42960000    # 75.0f

    const/high16 v2, 0x42c20000    # 97.0f

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    .line 272
    const/high16 v1, 0x42940000    # 74.0f

    float-to-double v4, v0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    const/high16 v4, 0x42380000    # 46.0f

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v0

    add-float/2addr v3, v1

    .line 273
    const/4 v1, 0x0

    const v4, 0x3df5c28f    # 0.12f

    invoke-static {v0, v1, v4}, Lcom/artisan/sdstorage/SdAnimView;->lin(FFF)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f51eb85    # 0.82f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v0, v5, v6}, Lcom/artisan/sdstorage/SdAnimView;->lin(FFF)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 274
    const/high16 v1, -0x3e700000    # -18.0f

    const/high16 v4, 0x42100000    # 36.0f

    mul-float/2addr v4, v0

    add-float/2addr v4, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const v5, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v5

    sub-float v5, v1, v0

    rem-int/lit8 v7, v8, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/artisan/sdstorage/SdAnimView;->drawDoc(Landroid/graphics/Canvas;FFFFFI)V

    goto :goto_3

    .line 276
    :cond_4
    return-void

    :cond_5
    move v0, v8

    goto/16 :goto_1
.end method

.method private drawGlow(Landroid/graphics/Canvas;Landroid/graphics/RadialGradient;FFFF)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 428
    cmpg-float v0, p5, v1

    if-lez v0, :cond_0

    cmpg-float v0, p6, v1

    if-gtz v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p5, p5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 430
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 431
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 432
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 433
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mShaderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p6

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 434
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, p5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawLock(Landroid/graphics/Canvas;FFFFII)V
    .locals 10

    .prologue
    .line 519
    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-gtz v1, :cond_0

    .line 547
    :goto_0
    return-void

    .line 520
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 521
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 522
    invoke-virtual {p1, p4, p4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 523
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 524
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 525
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 526
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v2, -0x3eb00000    # -13.0f

    const/high16 v3, -0x3f800000    # -4.0f

    const/high16 v4, 0x41500000    # 13.0f

    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 527
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x40a00000    # 5.0f

    iget-object v4, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 528
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 529
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 530
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const v2, 0x408ccccd    # 4.4f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 531
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 532
    const/4 v1, 0x0

    const/high16 v2, -0x3f200000    # -7.0f

    mul-float/2addr v2, p5

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 533
    const/high16 v1, -0x3e200000    # -28.0f

    mul-float/2addr v1, p5

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, -0x3f800000    # -4.0f

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 534
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 535
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v2, -0x3f000000    # -8.0f

    const/high16 v3, -0x3f800000    # -4.0f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 536
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v2, -0x3f000000    # -8.0f

    const/high16 v3, -0x3ee00000    # -10.0f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 537
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v2, -0x3f000000    # -8.0f

    const/high16 v3, -0x3e580000    # -21.0f

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v5, -0x3e580000    # -21.0f

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v7, -0x3ee00000    # -10.0f

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 538
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, -0x3f800000    # -4.0f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 539
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 540
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 541
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    move/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 542
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 543
    const/4 v1, 0x0

    const/high16 v2, 0x40900000    # 4.5f

    const/high16 v3, 0x40400000    # 3.0f

    iget-object v4, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 544
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const v2, -0x4059999a    # -1.3f

    const/high16 v3, 0x40a00000    # 5.0f

    const v4, 0x3fa66666    # 1.3f

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 545
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const v2, 0x3fa66666    # 1.3f

    const v3, 0x3fa66666    # 1.3f

    iget-object v4, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 546
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method

.method private drawNoCard(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v11, 0x43420000    # 194.0f

    const/high16 v10, 0x40800000    # 4.0f

    const/high16 v9, 0x41000000    # 8.0f

    .line 305
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mEaseInOut:Landroid/view/animation/PathInterpolator;

    iget v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    invoke-virtual {v0, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v8

    .line 306
    const/high16 v2, 0x42960000    # 75.0f

    const/high16 v3, 0x43130000    # 147.0f

    const/high16 v4, 0x42200000    # 40.0f

    const v5, 0x3e23d70a    # 0.16f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/artisan/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 307
    const/high16 v2, 0x432c0000    # 172.0f

    const/high16 v3, 0x43130000    # 147.0f

    const/high16 v0, 0x41900000    # 18.0f

    sub-float v1, v12, v8

    mul-float/2addr v1, v9

    add-float v4, v0, v1

    const v0, 0x3d75c28f    # 0.06f

    const v1, 0x3da3d70a    # 0.08f

    sub-float v5, v12, v8

    mul-float/2addr v1, v5

    add-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/artisan/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 308
    const v0, 0x3e99999a    # 0.3f

    invoke-direct {p0, p1, v7, v0}, Lcom/artisan/sdstorage/SdAnimView;->drawPhone(Landroid/graphics/Canvas;FF)V

    .line 309
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mDash:Landroid/graphics/Paint;

    iget v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFg:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mDash:Landroid/graphics/Paint;

    const/high16 v1, 0x42dc0000    # 110.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 311
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v1, 0x431a0000    # 154.0f

    const/high16 v2, 0x42640000    # 57.0f

    mul-float v3, v9, v8

    sub-float/2addr v2, v3

    const/high16 v3, 0x433e0000    # 190.0f

    const/high16 v4, 0x42de0000    # 111.0f

    mul-float v5, v9, v8

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 312
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x40c00000    # 6.0f

    iget-object v3, p0, Lcom/artisan/sdstorage/SdAnimView;->mDash:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 313
    const/high16 v2, 0x432c0000    # 172.0f

    const/high16 v0, 0x42a80000    # 84.0f

    mul-float v1, v9, v8

    sub-float v3, v0, v1

    mul-float v0, v10, v8

    sub-float v4, v9, v0

    const/high16 v0, 0x42700000    # 60.0f

    mul-float/2addr v0, v8

    float-to-int v0, v0

    add-int/lit8 v6, v0, 0x5a

    move-object v0, p0

    move-object v1, p1

    move v5, v12

    invoke-direct/range {v0 .. v7}, Lcom/artisan/sdstorage/SdAnimView;->drawCard(Landroid/graphics/Canvas;FFFFIF)V

    .line 314
    const v0, 0x3f59999a    # 0.85f

    const v1, 0x3e19999a    # 0.15f

    mul-float/2addr v1, v8

    add-float v6, v0, v1

    .line 315
    const/high16 v0, 0x42400000    # 48.0f

    mul-float v1, v9, v8

    sub-float v2, v0, v1

    .line 316
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 317
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 318
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 319
    const/high16 v0, 0x41100000    # 9.0f

    mul-float/2addr v0, v6

    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 320
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    iget v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mOnAccent:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 322
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const v1, 0x4019999a    # 2.4f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 323
    mul-float v0, v10, v6

    sub-float v1, v11, v0

    mul-float v0, v10, v6

    add-float v3, v11, v0

    iget-object v5, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 324
    mul-float v0, v10, v6

    sub-float v3, v2, v0

    mul-float v0, v10, v6

    add-float v4, v2, v0

    iget-object v5, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v11

    move v2, v3

    move v3, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 325
    return-void
.end method

.method private drawParticles(Landroid/graphics/Canvas;FFFFF)V
    .locals 8

    .prologue
    .line 557
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 558
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mPartCos:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 559
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mPartDist:[F

    aget v1, v1, v0

    mul-float/2addr v1, p4

    .line 560
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mPartCos:[F

    aget v2, v2, v0

    mul-float/2addr v2, v1

    add-float/2addr v2, p2

    .line 561
    iget-object v3, p0, Lcom/artisan/sdstorage/SdAnimView;->mPartSin:[F

    aget v3, v3, v0

    mul-float/2addr v1, v3

    add-float/2addr v1, p3

    .line 562
    iget-object v3, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/artisan/sdstorage/SdAnimView;->mPartColor:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 563
    iget-object v3, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, p5

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 564
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_0

    .line 565
    iget-object v3, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, p6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 558
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 567
    :cond_0
    iget-object v3, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    sub-float v4, v2, p6

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, p6

    sub-float v5, v1, v5

    add-float v6, v2, p6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, p6

    add-float/2addr v7, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 568
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 569
    int-to-float v4, v0

    const/high16 v5, 0x41b80000    # 23.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, p4

    add-float/2addr v4, v5

    invoke-virtual {p1, v4, v2, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 570
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 571
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 574
    :cond_1
    return-void
.end method

.method private drawPhone(Landroid/graphics/Canvas;FF)V
    .locals 12

    .prologue
    const/high16 v11, 0x42580000    # 54.0f

    const/high16 v10, 0x41a00000    # 20.0f

    const/high16 v9, 0x41700000    # 15.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 439
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v1, 0x42300000    # 44.0f

    const/high16 v2, 0x42d40000    # 106.0f

    const/high16 v3, 0x430c0000    # 140.0f

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 440
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mBodyShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 441
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 442
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v7, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 443
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mBodyShader:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 444
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 445
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v9, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 446
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 447
    cmpl-float v0, p2, v7

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccentGlow:Landroid/graphics/RadialGradient;

    const/high16 v3, 0x42960000    # 75.0f

    const/high16 v4, 0x42980000    # 76.0f

    const/high16 v5, 0x42380000    # 46.0f

    const v0, 0x3e99999a    # 0.3f

    mul-float v6, v0, p2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/artisan/sdstorage/SdAnimView;->drawGlow(Landroid/graphics/Canvas;Landroid/graphics/RadialGradient;FFFF)V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    iget v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFg:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 450
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const v1, 0x404ccccd    # 3.2f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 451
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v1, 0x42300000    # 44.0f

    const/high16 v2, 0x42d40000    # 106.0f

    const/high16 v3, 0x430c0000    # 140.0f

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 452
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v9, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 453
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFg:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 454
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v1, 0x432a0000    # 170.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 455
    const/high16 v0, 0x42960000    # 75.0f

    const/high16 v1, 0x41e80000    # 29.0f

    const v2, 0x4019999a    # 2.4f

    iget-object v3, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 456
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x3

    if-ge v1, v0, :cond_4

    .line 457
    const/high16 v0, 0x42d80000    # 108.0f

    int-to-float v2, v1

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 458
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v3, 0x42c00000    # 96.0f

    const/high16 v4, 0x40800000    # 4.0f

    add-float/2addr v4, v0

    invoke-virtual {v2, v11, v0, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 459
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget v3, p0, Lcom/artisan/sdstorage/SdAnimView;->mFg:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 460
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v3, 0x42080000    # 34.0f

    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 461
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v8, v8, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 462
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f933333    # 1.15f

    int-to-float v4, v1

    const v5, 0x3e3851ec    # 0.18f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 463
    cmpl-float v3, v2, v7

    if-lez v3, :cond_1

    .line 464
    iget-object v3, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v4, 0x42280000    # 42.0f

    mul-float/2addr v2, v4

    add-float/2addr v2, v11

    const/high16 v4, 0x40800000    # 4.0f

    add-float/2addr v4, v0

    invoke-virtual {v3, v11, v0, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 465
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    if-nez v1, :cond_2

    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent:I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 466
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    if-nez v1, :cond_3

    const/high16 v0, 0x437f0000    # 255.0f

    :goto_2
    invoke-direct {p0, v0}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 467
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 456
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 465
    :cond_2
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent2:I

    goto :goto_1

    .line 466
    :cond_3
    const/high16 v0, 0x43480000    # 200.0f

    goto :goto_2

    .line 470
    :cond_4
    return-void
.end method

.method private drawRing(Landroid/graphics/Canvas;FFFFI)V
    .locals 3

    .prologue
    .line 550
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 551
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v1, p5

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 552
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x40200000    # 2.5f

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p5

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 553
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 554
    return-void
.end method

.method private drawSecure(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdAnimView;->loopFade()V

    .line 369
    const v0, 0x3e3851ec    # 0.18f

    const v1, 0x3eae147b    # 0.34f

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdAnimView;->segOver(FF)F

    move-result v8

    .line 370
    const v0, 0x3eb851ec    # 0.36f

    const v1, 0x3ef5c28f    # 0.48f

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdAnimView;->seg(FF)F

    move-result v7

    .line 371
    const v0, 0x3eeb851f    # 0.46f

    const v1, 0x3f1eb852    # 0.62f

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdAnimView;->segOver(FF)F

    move-result v9

    .line 372
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    const v1, 0x3ef5c28f    # 0.48f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v1, v2}, Lcom/artisan/sdstorage/SdAnimView;->lin(FFF)F

    move-result v10

    .line 373
    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x43120000    # 146.0f

    const/high16 v4, 0x42600000    # 56.0f

    const v5, 0x3e23d70a    # 0.16f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/artisan/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 374
    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccentGlow:Landroid/graphics/RadialGradient;

    const/high16 v3, 0x42f00000    # 120.0f

    const/high16 v4, 0x42b00000    # 88.0f

    const/high16 v5, 0x42a00000    # 80.0f

    const v6, 0x3e6147ae    # 0.22f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/artisan/sdstorage/SdAnimView;->drawGlow(Landroid/graphics/Canvas;Landroid/graphics/RadialGradient;FFFF)V

    .line 375
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mCardShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 376
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x42f00000    # 120.0f

    const/high16 v2, 0x42c00000    # 96.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 377
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x42700000    # 60.0f

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 378
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mCardShader:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 379
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 380
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 381
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x42840000    # 66.0f

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 382
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x42840000    # 66.0f

    const/high16 v2, 0x42280000    # 42.0f

    const/high16 v3, 0x42940000    # 74.0f

    const/high16 v4, 0x42280000    # 42.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 383
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x42cc0000    # 102.0f

    const/high16 v2, 0x42280000    # 42.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 384
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x42e00000    # 112.0f

    const/high16 v2, 0x42500000    # 52.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 385
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x43260000    # 166.0f

    const/high16 v2, 0x42500000    # 52.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 386
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x432e0000    # 174.0f

    const/high16 v2, 0x42500000    # 52.0f

    const/high16 v3, 0x432e0000    # 174.0f

    const/high16 v4, 0x42700000    # 60.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 387
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x432e0000    # 174.0f

    const/high16 v2, 0x42f80000    # 124.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 388
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x432e0000    # 174.0f

    const/high16 v2, 0x43040000    # 132.0f

    const/high16 v3, 0x43260000    # 166.0f

    const/high16 v4, 0x43040000    # 132.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 389
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x42940000    # 74.0f

    const/high16 v2, 0x43040000    # 132.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 390
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x42840000    # 66.0f

    const/high16 v2, 0x43040000    # 132.0f

    const/high16 v3, 0x42840000    # 66.0f

    const/high16 v4, 0x42f80000    # 124.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 391
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 392
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 393
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 394
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v1, 0x42380000    # 46.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 396
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v1, 0x42840000    # 66.0f

    const/high16 v2, 0x42700000    # 60.0f

    const/high16 v3, 0x432e0000    # 174.0f

    const/high16 v4, 0x42900000    # 72.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 397
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 398
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v7, v0

    if-gez v0, :cond_0

    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x42c40000    # 98.0f

    const v0, 0x3f733333    # 0.95f

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v7

    mul-float v4, v0, v1

    iget v6, p0, Lcom/artisan/sdstorage/SdAnimView;->mOnAccent:I

    iget v7, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent:I

    move-object v0, p0

    move-object v1, p1

    move v5, v8

    invoke-direct/range {v0 .. v7}, Lcom/artisan/sdstorage/SdAnimView;->drawLock(Landroid/graphics/Canvas;FFFFII)V

    .line 399
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v10, v0

    if-gez v0, :cond_1

    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x42bc0000    # 94.0f

    const/high16 v0, 0x41800000    # 16.0f

    const/high16 v1, 0x42080000    # 34.0f

    iget-object v4, p0, Lcom/artisan/sdstorage/SdAnimView;->mEase:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v10}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v1, v4

    add-float v4, v0, v1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v5, v0, v10

    iget v6, p0, Lcom/artisan/sdstorage/SdAnimView;->mOnAccent:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/artisan/sdstorage/SdAnimView;->drawRing(Landroid/graphics/Canvas;FFFFI)V

    .line 400
    :cond_1
    const v0, 0x3c23d70a    # 0.01f

    cmpl-float v0, v9, v0

    if-lez v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mOnAccent:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 402
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 403
    const/high16 v0, 0x42f00000    # 120.0f

    const/high16 v1, 0x42bc0000    # 94.0f

    const/high16 v2, 0x41880000    # 17.0f

    mul-float/2addr v2, v9

    iget-object v3, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 404
    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x42bc0000    # 94.0f

    const v0, 0x3ed70a3d    # 0.42f

    mul-float v4, v0, v9

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent:I

    const/high16 v7, 0x40e00000    # 7.0f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/artisan/sdstorage/SdAnimView;->drawCheck(Landroid/graphics/Canvas;FFFFIF)V

    .line 406
    :cond_2
    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;FFFF)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 416
    cmpg-float v0, p5, v1

    if-lez v0, :cond_0

    cmpg-float v0, p4, v1

    if-gtz v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, p4

    .line 418
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p4, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 419
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 420
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mShadowShader:Landroid/graphics/RadialGradient;

    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 421
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mShaderPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mShadowShader:Landroid/graphics/RadialGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 422
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mShaderPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p5

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 423
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    sub-float v2, p2, p4

    sub-float v3, p3, v0

    add-float v4, p2, p4

    add-float/2addr v0, p3

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 424
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawToInternal(Landroid/graphics/Canvas;)V
    .locals 17

    .prologue
    .line 214
    invoke-direct/range {p0 .. p0}, Lcom/artisan/sdstorage/SdAnimView;->loopFade()V

    .line 215
    const v2, 0x3d75c28f    # 0.06f

    const v3, 0x3ecccccd    # 0.4f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/artisan/sdstorage/SdAnimView;->segIO(FF)F

    move-result v11

    .line 216
    move-object/from16 v0, p0

    iget v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v11

    mul-float/2addr v2, v3

    .line 217
    const/high16 v3, 0x432c0000    # 172.0f

    const/high16 v4, -0x3d3e0000    # -97.0f

    mul-float/2addr v4, v11

    add-float/2addr v4, v3

    .line 218
    const/high16 v3, 0x42a80000    # 84.0f

    add-float v12, v3, v2

    .line 219
    const v2, 0x3ec28f5c    # 0.38f

    const v3, 0x3f19999a    # 0.6f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/artisan/sdstorage/SdAnimView;->seg(FF)F

    move-result v13

    .line 220
    const v2, 0x3ed70a3d    # 0.42f

    const v3, 0x3f3d70a4    # 0.74f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/artisan/sdstorage/SdAnimView;->seg(FF)F

    move-result v14

    .line 221
    const/high16 v2, 0x3f000000    # 0.5f

    const v3, 0x3f28f5c3    # 0.66f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/artisan/sdstorage/SdAnimView;->segOver(FF)F

    move-result v15

    .line 222
    move-object/from16 v0, p0

    iget v2, v0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    const v3, 0x3f051eb8    # 0.52f

    const v5, 0x3f51eb85    # 0.82f

    invoke-static {v2, v3, v5}, Lcom/artisan/sdstorage/SdAnimView;->lin(FFF)F

    move-result v16

    .line 224
    const/high16 v5, 0x43120000    # 146.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const v2, 0x3e0f5c29    # 0.14f

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v11

    mul-float v7, v2, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/artisan/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 225
    const/high16 v7, 0x42960000    # 75.0f

    const/high16 v8, 0x43130000    # 147.0f

    const/high16 v9, 0x42200000    # 40.0f

    const v10, 0x3e23d70a    # 0.16f

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/artisan/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 226
    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v3, v14

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v2}, Lcom/artisan/sdstorage/SdAnimView;->drawPhone(Landroid/graphics/Canvas;FF)V

    .line 227
    const/high16 v2, -0x3ee00000    # -10.0f

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v11

    mul-float v6, v2, v3

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e3851ec    # 0.18f

    mul-float/2addr v3, v11

    sub-float v7, v2, v3

    const/16 v8, 0xff

    const v2, 0x3df5c28f    # 0.12f

    const v3, 0x3eb851ec    # 0.36f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/artisan/sdstorage/SdAnimView;->shine(FF)F

    move-result v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v5, v12

    invoke-direct/range {v2 .. v9}, Lcom/artisan/sdstorage/SdAnimView;->drawCard(Landroid/graphics/Canvas;FFFFIF)V

    .line 228
    const/4 v2, 0x0

    cmpl-float v2, v16, v2

    if-lez v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v16, v2

    if-gez v2, :cond_0

    const/high16 v2, 0x40c00000    # 6.0f

    add-float v5, v12, v2

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x42100000    # 36.0f

    mul-float v3, v3, v16

    add-float v6, v2, v3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v7, v2, v16

    move-object/from16 v0, p0

    iget v8, v0, Lcom/artisan/sdstorage/SdAnimView;->mAccent:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/artisan/sdstorage/SdAnimView;->drawRing(Landroid/graphics/Canvas;FFFFI)V

    .line 229
    :cond_0
    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v2, v15, v2

    if-lez v2, :cond_1

    const/high16 v2, 0x40e00000    # 7.0f

    add-float v5, v12, v2

    const v2, 0x3f1eb852    # 0.62f

    mul-float v6, v2, v15

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/artisan/sdstorage/SdAnimView;->mOnAccent:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/artisan/sdstorage/SdAnimView;->mAccent:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/artisan/sdstorage/SdAnimView;->drawLock(Landroid/graphics/Canvas;FFFFII)V

    .line 230
    :cond_1
    return-void
.end method

.method private drawToPortable(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdAnimView;->loopFade()V

    .line 234
    const v0, 0x3da3d70a    # 0.08f

    const v1, 0x3e75c28f    # 0.24f

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdAnimView;->segOver(FF)F

    move-result v8

    .line 235
    const v0, 0x3e75c28f    # 0.24f

    const v1, 0x3eb851ec    # 0.36f

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdAnimView;->seg(FF)F

    move-result v9

    .line 236
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    const v1, 0x3e75c28f    # 0.24f

    const v2, 0x3eeb851f    # 0.46f

    invoke-static {v0, v1, v2}, Lcom/artisan/sdstorage/SdAnimView;->lin(FFF)F

    move-result v10

    .line 237
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f051eb8    # 0.52f

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdAnimView;->seg(FF)F

    move-result v1

    sub-float v6, v0, v1

    .line 238
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f051eb8    # 0.52f

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdAnimView;->seg(FF)F

    move-result v1

    sub-float v7, v0, v1

    .line 239
    const v0, 0x3ed70a3d    # 0.42f

    const v1, 0x3f3d70a4    # 0.74f

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdAnimView;->segIO(FF)F

    move-result v11

    .line 240
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    mul-float/2addr v0, v11

    .line 241
    const/high16 v1, 0x42960000    # 75.0f

    const/high16 v2, 0x42c20000    # 97.0f

    mul-float/2addr v2, v11

    add-float v12, v1, v2

    .line 242
    const/high16 v1, 0x42a80000    # 84.0f

    add-float v13, v1, v0

    .line 244
    const/high16 v2, 0x42960000    # 75.0f

    const/high16 v3, 0x43130000    # 147.0f

    const/high16 v4, 0x42200000    # 40.0f

    const v5, 0x3e23d70a    # 0.16f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/artisan/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 245
    const/high16 v3, 0x43120000    # 146.0f

    const/high16 v4, 0x41c00000    # 24.0f

    const v0, 0x3e0f5c29    # 0.14f

    mul-float v5, v0, v11

    move-object v0, p0

    move-object v1, p1

    move v2, v12

    invoke-direct/range {v0 .. v5}, Lcom/artisan/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 246
    const v0, 0x3e99999a    # 0.3f

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    invoke-direct {p0, p1, v7, v0}, Lcom/artisan/sdstorage/SdAnimView;->drawPhone(Landroid/graphics/Canvas;FF)V

    .line 247
    const/high16 v0, 0x41200000    # 10.0f

    mul-float v4, v0, v11

    const v0, 0x3f51eb85    # 0.82f

    const v1, 0x3e3851ec    # 0.18f

    mul-float/2addr v1, v11

    add-float v5, v0, v1

    const/16 v6, 0xff

    const v0, 0x3f3d70a4    # 0.74f

    const v1, 0x3f6b851f    # 0.92f

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdAnimView;->shine(FF)F

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v2, v12

    move v3, v13

    invoke-direct/range {v0 .. v7}, Lcom/artisan/sdstorage/SdAnimView;->drawCard(Landroid/graphics/Canvas;FFFFIF)V

    .line 248
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v9, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x40e00000    # 7.0f

    add-float v3, v13, v0

    const v0, 0x3f1eb852    # 0.62f

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v9

    mul-float v4, v0, v1

    iget v6, p0, Lcom/artisan/sdstorage/SdAnimView;->mOnAccent:I

    iget v7, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent:I

    move-object v0, p0

    move-object v1, p1

    move v2, v12

    move v5, v8

    invoke-direct/range {v0 .. v7}, Lcom/artisan/sdstorage/SdAnimView;->drawLock(Landroid/graphics/Canvas;FFFFII)V

    .line 249
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v10, v0

    if-gez v0, :cond_1

    const/high16 v0, 0x40e00000    # 7.0f

    add-float v3, v13, v0

    const/high16 v0, 0x41d00000    # 26.0f

    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mEase:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v10}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float v4, v0, v1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v5, v0, v10

    const v6, 0x3fcccccd    # 1.6f

    move-object v0, p0

    move-object v1, p1

    move v2, v12

    invoke-direct/range {v0 .. v6}, Lcom/artisan/sdstorage/SdAnimView;->drawParticles(Landroid/graphics/Canvas;FFFFF)V

    .line 250
    :cond_1
    return-void
.end method

.method private drawWorking(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/high16 v12, 0x40c00000    # 6.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v10, 0x432c0000    # 172.0f

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    .line 279
    const/high16 v2, 0x42960000    # 75.0f

    const/high16 v3, 0x43130000    # 147.0f

    const/high16 v4, 0x42200000    # 40.0f

    const v5, 0x3e23d70a    # 0.16f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/artisan/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 280
    const/high16 v3, 0x43120000    # 146.0f

    const/high16 v4, 0x41c00000    # 24.0f

    const v5, 0x3e0f5c29    # 0.14f

    move-object v0, p0

    move-object v1, p1

    move v2, v10

    invoke-direct/range {v0 .. v5}, Lcom/artisan/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 281
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    float-to-double v0, v0

    mul-double/2addr v0, v8

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v6

    add-float v2, v6, v0

    .line 282
    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {p0, p1, v0, v1}, Lcom/artisan/sdstorage/SdAnimView;->drawPhone(Landroid/graphics/Canvas;FF)V

    .line 283
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 284
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x6

    if-ge v1, v0, :cond_1

    .line 285
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    int-to-float v3, v1

    div-float/2addr v3, v12

    add-float/2addr v0, v3

    rem-float/2addr v0, v11

    .line 286
    const/high16 v3, 0x42b80000    # 92.0f

    const/high16 v4, 0x42680000    # 58.0f

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    .line 287
    const/high16 v4, 0x42a00000    # 80.0f

    float-to-double v6, v0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    const/high16 v6, 0x41900000    # 18.0f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 288
    float-to-double v6, v0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 289
    iget-object v6, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent:I

    :goto_1
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v6, 0x43660000    # 230.0f

    mul-float/2addr v6, v5

    invoke-direct {p0, v6}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 291
    const v0, 0x400ccccd    # 2.2f

    const v6, 0x3fb33333    # 1.4f

    mul-float/2addr v5, v6

    add-float/2addr v0, v5

    iget-object v5, p0, Lcom/artisan/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 284
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 289
    :cond_0
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent2:I

    goto :goto_1

    .line 293
    :cond_1
    const/high16 v3, 0x42a80000    # 84.0f

    const v0, 0x3cf5c28f    # 0.03f

    mul-float/2addr v0, v2

    add-float v5, v11, v0

    const/16 v6, 0xff

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, v10

    move v4, v12

    invoke-direct/range {v0 .. v7}, Lcom/artisan/sdstorage/SdAnimView;->drawCard(Landroid/graphics/Canvas;FFFFIF)V

    .line 294
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    iget v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mAccent:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 295
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 296
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 297
    const/high16 v0, 0x42a80000    # 84.0f

    const/high16 v1, 0x42200000    # 40.0f

    iget-object v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 298
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 299
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v1, 0x43040000    # 132.0f

    const/high16 v2, 0x42300000    # 44.0f

    const/high16 v3, 0x43540000    # 212.0f

    const/high16 v4, 0x42f80000    # 124.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 300
    const/high16 v0, 0x42480000    # 50.0f

    const/high16 v1, 0x428c0000    # 70.0f

    iget v2, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    float-to-double v2, v2

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float v3, v0, v1

    .line 301
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v2, v0, v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/artisan/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 302
    return-void
.end method

.method private static glow(I)Landroid/graphics/RadialGradient;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x0

    .line 104
    const v0, 0xffffff

    and-int v2, p0, v0

    .line 105
    new-instance v0, Landroid/graphics/RadialGradient;

    const/high16 v3, 0x3f800000    # 1.0f

    new-array v4, v7, [I

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    or-int/2addr v6, v2

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x55000000

    or-int/2addr v6, v2

    aput v6, v4, v5

    const/4 v5, 0x2

    aput v2, v4, v5

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3ee66666    # 0.45f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static lin(FFF)F
    .locals 2

    .prologue
    .line 176
    cmpg-float v0, p0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 178
    :goto_0
    return v0

    .line 177
    :cond_0
    cmpl-float v0, p0, p2

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 178
    :cond_1
    sub-float v0, p0, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private loopFade()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 210
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    const/4 v1, 0x0

    const v2, 0x3d75c28f    # 0.06f

    invoke-static {v0, v1, v2}, Lcom/artisan/sdstorage/SdAnimView;->lin(FFF)F

    move-result v0

    iget v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    const v2, 0x3f6b851f    # 0.92f

    invoke-static {v1, v2, v3}, Lcom/artisan/sdstorage/SdAnimView;->lin(FFF)F

    move-result v1

    sub-float v1, v3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mA:F

    .line 211
    return-void
.end method

.method private once()Z
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restart()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 119
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 120
    :cond_0
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 122
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 128
    const-wide/16 v0, 0x1068

    .line 130
    :goto_0
    iget-object v3, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 131
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 132
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/artisan/sdstorage/SdAnimView;->once()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 133
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMode:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 134
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/artisan/sdstorage/SdAnimView$1;

    invoke-direct {v1, p0}, Lcom/artisan/sdstorage/SdAnimView$1;-><init>(Lcom/artisan/sdstorage/SdAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    .line 141
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdAnimView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 142
    :cond_1
    return-void

    .line 123
    :pswitch_0
    const-wide/16 v0, 0x708

    goto :goto_0

    .line 124
    :pswitch_1
    const-wide/16 v0, 0xa28

    goto :goto_0

    .line 125
    :pswitch_2
    const-wide/16 v0, 0x514

    goto :goto_0

    .line 126
    :pswitch_3
    const-wide/16 v0, 0x384

    goto :goto_0

    .line 127
    :pswitch_4
    const-wide/16 v0, 0xd48

    goto :goto_0

    .line 132
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 133
    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    .line 120
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 122
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private seg(FF)F
    .locals 3

    .prologue
    .line 158
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 160
    :goto_0
    return v0

    .line 159
    :cond_0
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 160
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

.method private segIO(FF)F
    .locals 3

    .prologue
    .line 164
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    .line 165
    :cond_0
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mEaseInOut:Landroid/view/animation/PathInterpolator;

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
    .line 170
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    .line 171
    :cond_0
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mOver:Landroid/view/animation/PathInterpolator;

    iget v1, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    sub-float/2addr v1, p1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_0
.end method

.method private shine(FF)F
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 411
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    invoke-static {v0, p1, p2}, Lcom/artisan/sdstorage/SdAnimView;->lin(FFF)F

    move-result v0

    .line 412
    cmpg-float v2, v0, v1

    if-lez v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 146
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/artisan/sdstorage/SdAnimView;->restart()V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/artisan/sdstorage/SdAnimView;->once()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mT:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 152
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 153
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/high16 v6, 0x43700000    # 240.0f

    const/high16 v5, 0x43200000    # 160.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdAnimView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdAnimView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 189
    cmpg-float v2, v0, v3

    if-lez v2, :cond_0

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    div-float v2, v0, v6

    div-float v3, v1, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 192
    mul-float v3, v6, v2

    sub-float/2addr v0, v3

    div-float/2addr v0, v4

    mul-float v3, v5, v2

    sub-float/2addr v1, v3

    div-float/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 193
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 194
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mA:F

    .line 195
    iget v0, p0, Lcom/artisan/sdstorage/SdAnimView;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 203
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdAnimView;->drawToInternal(Landroid/graphics/Canvas;)V

    .line 205
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 196
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdAnimView;->drawToPortable(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 197
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdAnimView;->drawFiles(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 198
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdAnimView;->drawWorking(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 199
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdAnimView;->drawNoCard(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 200
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdAnimView;->drawDone(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 201
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdAnimView;->drawSecure(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 202
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdAnimView;->drawError(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setMode(I)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lcom/artisan/sdstorage/SdAnimView;->mMode:I

    .line 111
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdAnimView;->restart()V

    .line 112
    return-void
.end method

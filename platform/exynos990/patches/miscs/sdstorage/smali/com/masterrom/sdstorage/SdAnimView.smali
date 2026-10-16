.class public Lcom/masterrom/sdstorage/SdAnimView;
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
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v10, p3

    .line 70
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    .line 46
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    .line 47
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Lcom/masterrom/sdstorage/SdAnimView;->mDash:Landroid/graphics/Paint;

    .line 48
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v0, Lcom/masterrom/sdstorage/SdAnimView;->mShaderPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, v0, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    .line 50
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, v0, Lcom/masterrom/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    .line 51
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v0, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    .line 52
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, v0, Lcom/masterrom/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    .line 53
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3e4ccccd    # 0.2f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v6, v0, Lcom/masterrom/sdstorage/SdAnimView;->mEase:Landroid/view/animation/PathInterpolator;

    .line 54
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3ed70a3d    # 0.42f

    const v11, 0x3f147ae1    # 0.58f

    invoke-direct {v6, v7, v8, v11, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v6, v0, Lcom/masterrom/sdstorage/SdAnimView;->mEaseInOut:Landroid/view/animation/PathInterpolator;

    .line 55
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3fc7ae14    # 1.56f

    const v11, 0x3f23d70a    # 0.64f

    const v12, 0x3eae147b    # 0.34f

    invoke-direct {v6, v12, v7, v11, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v6, v0, Lcom/masterrom/sdstorage/SdAnimView;->mOver:Landroid/view/animation/PathInterpolator;

    const/16 v6, 0xe

    .line 58
    new-array v7, v6, [F

    iput-object v7, v0, Lcom/masterrom/sdstorage/SdAnimView;->mPartCos:[F

    .line 59
    new-array v7, v6, [F

    iput-object v7, v0, Lcom/masterrom/sdstorage/SdAnimView;->mPartSin:[F

    .line 60
    new-array v7, v6, [F

    iput-object v7, v0, Lcom/masterrom/sdstorage/SdAnimView;->mPartDist:[F

    .line 61
    new-array v6, v6, [I

    iput-object v6, v0, Lcom/masterrom/sdstorage/SdAnimView;->mPartColor:[I

    const/4 v11, 0x0

    .line 65
    iput v11, v0, Lcom/masterrom/sdstorage/SdAnimView;->mMode:I

    .line 67
    iput v9, v0, Lcom/masterrom/sdstorage/SdAnimView;->mA:F

    .line 71
    iput v1, v0, Lcom/masterrom/sdstorage/SdAnimView;->mFg:I

    .line 72
    iput v10, v0, Lcom/masterrom/sdstorage/SdAnimView;->mAccent:I

    move/from16 v6, p4

    .line 73
    iput v6, v0, Lcom/masterrom/sdstorage/SdAnimView;->mOnAccent:I

    const/4 v6, 0x3

    .line 74
    new-array v6, v6, [F

    .line 75
    invoke-static {v10, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 76
    aget v7, v6, v11

    const/high16 v12, 0x42180000    # 38.0f

    add-float/2addr v7, v12

    const/high16 v12, 0x43b40000    # 360.0f

    rem-float/2addr v7, v12

    aput v7, v6, v11

    .line 77
    aget v7, v6, v3

    const v12, 0x3f666666    # 0.9f

    mul-float/2addr v7, v12

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    aput v7, v6, v3

    .line 78
    invoke-static {v6}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v12

    iput v12, v0, Lcom/masterrom/sdstorage/SdAnimView;->mAccent2:I

    .line 80
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 82
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 83
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 85
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-direct {v2, v3, v8}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const/high16 v2, -0x1000000

    .line 87
    invoke-static {v2}, Lcom/masterrom/sdstorage/SdAnimView;->glow(I)Landroid/graphics/RadialGradient;

    move-result-object v2

    iput-object v2, v0, Lcom/masterrom/sdstorage/SdAnimView;->mShadowShader:Landroid/graphics/RadialGradient;

    .line 88
    invoke-static/range {p3 .. p3}, Lcom/masterrom/sdstorage/SdAnimView;->glow(I)Landroid/graphics/RadialGradient;

    move-result-object v2

    iput-object v2, v0, Lcom/masterrom/sdstorage/SdAnimView;->mAccentGlow:Landroid/graphics/RadialGradient;

    const v2, -0x1ab7b3

    .line 89
    invoke-static {v2}, Lcom/masterrom/sdstorage/SdAnimView;->glow(I)Landroid/graphics/RadialGradient;

    move-result-object v2

    iput-object v2, v0, Lcom/masterrom/sdstorage/SdAnimView;->mErrorGlow:Landroid/graphics/RadialGradient;

    .line 90
    new-instance v13, Landroid/graphics/LinearGradient;

    const/high16 v6, 0x3f800000    # 1.0f

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v2, v13

    move/from16 v7, p3

    move v8, v12

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v13, v0, Lcom/masterrom/sdstorage/SdAnimView;->mCardShader:Landroid/graphics/LinearGradient;

    .line 91
    new-instance v2, Landroid/graphics/LinearGradient;

    const v3, 0xffffff

    and-int/2addr v1, v3

    const/high16 v3, 0x26000000

    or-int v19, v1, v3

    const/high16 v3, 0x8000000

    or-int v20, v1, v3

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lcom/masterrom/sdstorage/SdAnimView;->mBodyShader:Landroid/graphics/LinearGradient;

    const/16 v1, -0x3ac3

    const v2, -0xc22974

    .line 93
    filled-new-array {v10, v12, v1, v2}, [I

    move-result-object v1

    .line 94
    :goto_0
    iget-object v2, v0, Lcom/masterrom/sdstorage/SdAnimView;->mPartCos:[F

    array-length v3, v2

    if-ge v11, v3, :cond_0

    int-to-double v3, v11

    .line 95
    array-length v5, v2

    int-to-double v5, v5

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v7, v5

    mul-double/2addr v3, v7

    rem-int/lit8 v5, v11, 0x3

    int-to-double v5, v5

    const-wide v7, 0x3fcae147ae147ae1L    # 0.21

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    .line 96
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v2, v11

    .line 97
    iget-object v2, v0, Lcom/masterrom/sdstorage/SdAnimView;->mPartSin:[F

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v11

    .line 98
    iget-object v2, v0, Lcom/masterrom/sdstorage/SdAnimView;->mPartDist:[F

    mul-int/lit8 v3, v11, 0x25

    rem-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f400000    # 0.75f

    add-float/2addr v3, v4

    aput v3, v2, v11

    .line 99
    iget-object v2, v0, Lcom/masterrom/sdstorage/SdAnimView;->mPartColor:[I

    rem-int/lit8 v3, v11, 0x4

    aget v3, v1, v3

    aput v3, v2, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0x40800000    # 4.0f
    .end array-data
.end method

.method static synthetic access$002(Lcom/masterrom/sdstorage/SdAnimView;F)F
    .locals 0

    .line 33
    iput p1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

    return p1
.end method

.method private al(F)I
    .locals 0

    .line 182
    iget p0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mA:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/16 p1, 0xff

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private drawCard(Landroid/graphics/Canvas;FFFFIF)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p6

    .line 474
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 475
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->translate(FF)V

    move/from16 v0, p4

    .line 476
    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->rotate(F)V

    move/from16 v0, p5

    .line 477
    invoke-virtual {v8, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 478
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 479
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    const/high16 v1, -0x3ee00000    # -10.0f

    const/high16 v11, -0x3e280000    # -27.0f

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 480
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 481
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    const/high16 v2, -0x3e480000    # -23.0f

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v3, v11, v3, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 482
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    const/high16 v2, 0x41b80000    # 23.0f

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 483
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    const/high16 v4, 0x41d80000    # 27.0f

    invoke-virtual {v0, v3, v4, v1, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 484
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    const/high16 v1, -0x3ea00000    # -14.0f

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 485
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    const/high16 v12, -0x3e700000    # -18.0f

    invoke-virtual {v0, v12, v4, v12, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 486
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    const/high16 v1, -0x3e680000    # -19.0f

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 487
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 488
    iget-object v2, v7, Lcom/masterrom/sdstorage/SdAnimView;->mAccentGlow:Landroid/graphics/RadialGradient;

    int-to-float v13, v9

    const v0, 0x3e75c28f    # 0.24f

    mul-float/2addr v0, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float v6, v0, v14

    const/4 v3, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, 0x42280000    # 42.0f

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/masterrom/sdstorage/SdAnimView;->drawGlow(Landroid/graphics/Canvas;Landroid/graphics/RadialGradient;FFFF)V

    .line 489
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget-object v1, v7, Lcom/masterrom/sdstorage/SdAnimView;->mCardShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 490
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x42100000    # 36.0f

    const/high16 v2, 0x42580000    # 54.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 491
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v12, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 492
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mCardShader:Landroid/graphics/LinearGradient;

    iget-object v1, v7, Lcom/masterrom/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 493
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-direct {p0, v13}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 494
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    iget-object v1, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 495
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 496
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget v1, v7, Lcom/masterrom/sdstorage/SdAnimView;->mOnAccent:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 497
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    mul-int/lit16 v1, v9, 0xc8

    int-to-float v1, v1

    div-float/2addr v1, v14

    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    int-to-float v1, v0

    const/high16 v2, 0x40d00000    # 6.5f

    mul-float/2addr v1, v2

    const/high16 v2, -0x3ef00000    # -9.0f

    add-float/2addr v1, v2

    .line 500
    iget-object v2, v7, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const v3, 0x3fcccccd    # 1.6f

    sub-float v4, v1, v3

    add-float/2addr v1, v3

    const/high16 v3, -0x3ec00000    # -12.0f

    const/high16 v5, -0x3e500000    # -22.0f

    invoke-virtual {v2, v4, v5, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 501
    iget-object v1, v7, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget-object v2, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v8, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p7, v0

    if-lez v0, :cond_1

    .line 504
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 505
    iget-object v1, v7, Lcom/masterrom/sdstorage/SdAnimView;->mCardPath:Landroid/graphics/Path;

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/high16 v1, 0x42a00000    # 80.0f

    mul-float v1, v1, p7

    const/high16 v2, -0x3de00000    # -40.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    .line 507
    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 508
    iget-object v2, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 509
    iget-object v2, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    mul-int/lit8 v3, v9, 0x5a

    int-to-float v3, v3

    div-float/2addr v3, v14

    invoke-direct {p0, v3}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 510
    iget-object v2, v7, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v3, 0x40c00000    # 6.0f

    sub-float v4, v1, v3

    add-float/2addr v1, v3

    const/high16 v3, 0x42480000    # 50.0f

    const/high16 v5, -0x3db80000    # -50.0f

    invoke-virtual {v2, v4, v5, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 511
    iget-object v1, v7, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget-object v2, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 512
    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 514
    :cond_1
    invoke-virtual {v8, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawCheck(Landroid/graphics/Canvas;FFFFIF)V
    .locals 1

    .line 622
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 623
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 624
    invoke-virtual {p1, p4, p4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 625
    iget-object p2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 626
    iget-object p2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 p3, 0x437f0000    # 255.0f

    invoke-direct {p0, p3}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 627
    iget-object p2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {p2, p7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const p2, 0x42836666    # 65.7f

    mul-float/2addr p2, p5

    .line 629
    iget-object p3, p0, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 630
    iget-object p3, p0, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 p4, -0x3e500000    # -22.0f

    const/high16 p5, 0x40400000    # 3.0f

    invoke-virtual {p3, p4, p5}, Landroid/graphics/Path;->moveTo(FF)V

    const p3, 0x41b4cccd    # 22.6f

    cmpg-float p6, p2, p3

    if-gtz p6, :cond_0

    div-float/2addr p2, p3

    .line 633
    iget-object p3, p0, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 p6, 0x41800000    # 16.0f

    mul-float/2addr p2, p6

    add-float/2addr p4, p2

    add-float/2addr p2, p5

    invoke-virtual {p3, p4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_0
    sub-float/2addr p2, p3

    const p3, 0x422c6666    # 43.1f

    div-float/2addr p2, p3

    .line 636
    iget-object p3, p0, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 p4, -0x3f400000    # -6.0f

    const/high16 p5, 0x41980000    # 19.0f

    invoke-virtual {p3, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 637
    iget-object p3, p0, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 p6, 0x41f00000    # 30.0f

    mul-float/2addr p6, p2

    add-float/2addr p6, p4

    const/high16 p4, 0x41f80000    # 31.0f

    mul-float/2addr p2, p4

    sub-float/2addr p5, p2

    invoke-virtual {p3, p6, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 639
    :goto_0
    iget-object p2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 640
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawDoc(Landroid/graphics/Canvas;FFFFFI)V
    .locals 7

    .line 577
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 578
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 579
    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 580
    invoke-virtual {p1, p5, p5}, Landroid/graphics/Canvas;->scale(FF)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 581
    invoke-static {p2, p6}, Ljava/lang/Math;->min(FF)F

    move-result p3

    const/4 p4, 0x0

    invoke-static {p4, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    const/high16 p4, 0x437f0000    # 255.0f

    mul-float/2addr p3, p4

    .line 582
    iget-object p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 p5, 0x0

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 583
    iget-object p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 p5, -0x1

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 584
    iget-object p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-direct {p0, p3}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 585
    iget-object p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 p5, 0x41200000    # 10.0f

    const/high16 p6, 0x41500000    # 13.0f

    const/high16 v1, -0x3ee00000    # -10.0f

    const/high16 v2, -0x3eb00000    # -13.0f

    invoke-virtual {p4, v1, v2, p5, p6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 586
    iget-object p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget-object p5, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 p6, 0x40800000    # 4.0f

    invoke-virtual {p1, p4, p6, p6, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 587
    iget-object p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    iget p5, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFg:I

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 588
    iget-object p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 p5, 0x3e800000    # 0.25f

    mul-float/2addr p5, p3

    invoke-direct {p0, p5}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 589
    iget-object p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 590
    iget-object p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget-object p5, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p6, p6, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 p4, 0x1

    if-ne p7, p4, :cond_0

    .line 592
    iget-object p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 p5, -0x3f200000    # -7.0f

    const/high16 p6, 0x40e00000    # 7.0f

    const/high16 p7, 0x40c00000    # 6.0f

    invoke-virtual {p4, p5, v1, p6, p7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 593
    iget-object p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mAccent2:I

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 594
    iget-object p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const v1, 0x3ee66666    # 0.45f

    mul-float/2addr v1, p3

    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 595
    iget-object p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-virtual {p1, p4, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 596
    iget-object p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/16 v1, -0x3ac3

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 597
    iget-object p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-direct {p0, p3}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const p4, 0x400ccccd    # 2.2f

    .line 598
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v2, -0x3fc00000    # -3.0f

    const/high16 v3, -0x3f600000    # -5.0f

    invoke-virtual {p1, v2, v3, p4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 599
    iget-object p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    .line 600
    iget-object p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p4, p5, p7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 601
    iget-object p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 p5, -0x40800000    # -1.0f

    invoke-virtual {p4, p5, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 602
    iget-object p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 p5, 0x40400000    # 3.0f

    invoke-virtual {p4, p5, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 603
    iget-object p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 p5, 0x40a00000    # 5.0f

    invoke-virtual {p4, p5, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 604
    iget-object p2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, p6, p7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 605
    iget-object p2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 606
    iget-object p2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mAccent:I

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 607
    iget-object p2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-direct {p0, p3}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 608
    iget-object p2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 610
    :cond_0
    iget-object p2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    iget p4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mAccent:I

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 611
    iget-object p2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-direct {p0, p3}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 612
    iget-object p2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 p3, 0x40000000    # 2.0f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v5, -0x3f400000    # -6.0f

    .line 613
    iget-object v6, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v2, -0x3f400000    # -6.0f

    const/high16 v3, -0x3f400000    # -6.0f

    const/high16 v4, 0x40c00000    # 6.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 p6, -0x40800000    # -1.0f

    .line 614
    iget-object p7, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 p3, -0x3f400000    # -6.0f

    const/high16 p4, -0x40800000    # -1.0f

    const/high16 p5, 0x40c00000    # 6.0f

    move-object p2, p1

    invoke-virtual/range {p2 .. p7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v5, 0x40800000    # 4.0f

    .line 615
    iget-object v6, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 617
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawDone(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v8, p0

    const v0, 0x3ed70a3d    # 0.42f

    const/4 v9, 0x0

    .line 328
    invoke-direct {p0, v9, v0}, Lcom/masterrom/sdstorage/SdAnimView;->segOver(FF)F

    move-result v7

    const v0, 0x3e8f5c29    # 0.28f

    const v1, 0x3f333333    # 0.7f

    .line 329
    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdAnimView;->seg(FF)F

    move-result v10

    .line 330
    iget v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

    const v1, 0x3e19999a    # 0.15f

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-static {v0, v1, v2}, Lcom/masterrom/sdstorage/SdAnimView;->lin(FFF)F

    move-result v6

    .line 331
    iget v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v11}, Lcom/masterrom/sdstorage/SdAnimView;->lin(FFF)F

    move-result v12

    const/high16 v13, 0x42080000    # 34.0f

    mul-float v4, v7, v13

    const v5, 0x3e0f5c29    # 0.14f

    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x43120000    # 146.0f

    move-object v0, p0

    move-object/from16 v1, p1

    .line 332
    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    cmpl-float v0, v6, v9

    if-lez v0, :cond_0

    cmpg-float v0, v6, v11

    if-gez v0, :cond_0

    .line 333
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mEase:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v6}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v13

    const/high16 v1, 0x42200000    # 40.0f

    add-float v4, v0, v1

    const v0, 0x3f19999a    # 0.6f

    sub-float v1, v11, v6

    mul-float v5, v1, v0

    iget v6, v8, Lcom/masterrom/sdstorage/SdAnimView;->mAccent:I

    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x429c0000    # 78.0f

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/masterrom/sdstorage/SdAnimView;->drawRing(Landroid/graphics/Canvas;FFFFI)V

    .line 334
    :cond_0
    iget-object v2, v8, Lcom/masterrom/sdstorage/SdAnimView;->mAccentGlow:Landroid/graphics/RadialGradient;

    const/high16 v0, 0x42900000    # 72.0f

    mul-float v5, v7, v0

    const v6, 0x3eb33333    # 0.35f

    const/high16 v3, 0x42f00000    # 120.0f

    const/high16 v4, 0x429c0000    # 78.0f

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/masterrom/sdstorage/SdAnimView;->drawGlow(Landroid/graphics/Canvas;Landroid/graphics/RadialGradient;FFFF)V

    .line 335
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget-object v1, v8, Lcom/masterrom/sdstorage/SdAnimView;->mCardShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 336
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x42b80000    # 92.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 337
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x42940000    # 74.0f

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 338
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mCardShader:Landroid/graphics/LinearGradient;

    iget-object v1, v8, Lcom/masterrom/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 339
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v0, 0x42300000    # 44.0f

    mul-float/2addr v7, v0

    .line 340
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v1, 0x42f00000    # 120.0f

    const/high16 v2, 0x429c0000    # 78.0f

    move-object/from16 v14, p1

    invoke-virtual {v14, v1, v2, v7, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 341
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    cmpl-float v0, v10, v9

    if-lez v0, :cond_1

    .line 342
    iget v6, v8, Lcom/masterrom/sdstorage/SdAnimView;->mOnAccent:I

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x429c0000    # 78.0f

    const v4, 0x3f933333    # 1.15f

    move-object v0, p0

    move-object/from16 v1, p1

    move v5, v10

    invoke-direct/range {v0 .. v7}, Lcom/masterrom/sdstorage/SdAnimView;->drawCheck(Landroid/graphics/Canvas;FFFFIF)V

    :cond_1
    cmpl-float v0, v12, v9

    if-lez v0, :cond_2

    cmpg-float v0, v12, v11

    if-gez v0, :cond_2

    .line 343
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mEase:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v12}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v13

    const/high16 v1, 0x42480000    # 50.0f

    add-float v4, v0, v1

    sub-float v5, v11, v12

    const v6, 0x4019999a    # 2.4f

    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x429c0000    # 78.0f

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/masterrom/sdstorage/SdAnimView;->drawParticles(Landroid/graphics/Canvas;FFFFF)V

    :cond_2
    return-void
.end method

.method private drawError(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v0, 0x0

    const v1, 0x3ecccccd    # 0.4f

    .line 347
    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdAnimView;->segOver(FF)F

    move-result v7

    .line 348
    iget v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

    const v1, 0x3eb33333    # 0.35f

    const v2, 0x3f59999a    # 0.85f

    invoke-static {v0, v1, v2}, Lcom/masterrom/sdstorage/SdAnimView;->lin(FFF)F

    move-result v0

    float-to-double v1, v0

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    mul-double/2addr v1, v3

    .line 349
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float v6, v1, v2

    const/high16 v0, 0x41f00000    # 30.0f

    mul-float v4, v7, v0

    const v5, 0x3e0f5c29    # 0.14f

    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x43120000    # 146.0f

    move-object v0, p0

    move-object v1, p1

    .line 350
    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 351
    iget-object v2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mErrorGlow:Landroid/graphics/RadialGradient;

    const/high16 v0, 0x42f00000    # 120.0f

    add-float v8, v6, v0

    const/high16 v0, 0x42800000    # 64.0f

    mul-float v5, v7, v0

    const v6, 0x3e99999a    # 0.3f

    const/high16 v4, 0x429c0000    # 78.0f

    move-object v0, p0

    move v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/masterrom/sdstorage/SdAnimView;->drawGlow(Landroid/graphics/Canvas;Landroid/graphics/RadialGradient;FFFF)V

    .line 352
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 353
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const v1, -0x1ab7b3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 354
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v6, 0x437f0000    # 255.0f

    invoke-direct {p0, v6}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v0, 0x42200000    # 40.0f

    mul-float/2addr v0, v7

    .line 355
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v2, 0x429c0000    # 78.0f

    invoke-virtual {p1, v8, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, v7, v0

    if-lez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-direct {p0, v6}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 359
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v4, 0x42a40000    # 82.0f

    .line 360
    iget-object v5, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v2, 0x42700000    # 60.0f

    move-object v0, p1

    move v1, v8

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 361
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 362
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-direct {p0, v6}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const v0, 0x40933333    # 4.6f

    .line 363
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v2, 0x42c00000    # 96.0f

    invoke-virtual {p1, v8, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawFiles(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v8, p0

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdAnimView;->loopFade()V

    const/high16 v4, 0x42200000    # 40.0f

    const v5, 0x3e23d70a    # 0.16f

    const/high16 v2, 0x42960000    # 75.0f

    const/high16 v3, 0x43130000    # 147.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 254
    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    const/high16 v4, 0x41c00000    # 24.0f

    const v5, 0x3e0f5c29    # 0.14f

    const/high16 v2, 0x432c0000    # 172.0f

    const/high16 v3, 0x43120000    # 146.0f

    .line 255
    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3f19999a    # 0.6f

    move-object/from16 v9, p1

    .line 256
    invoke-direct {v8, v9, v0, v1}, Lcom/masterrom/sdstorage/SdAnimView;->drawPhone(Landroid/graphics/Canvas;FF)V

    const/4 v10, 0x0

    move v12, v10

    const/4 v0, 0x0

    :goto_0
    const-wide v13, 0x400921fb54442d18L    # Math.PI

    const v15, 0x3e4ccccd    # 0.2f

    const v16, 0x3da3d70a    # 0.08f

    const/4 v7, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    if-ge v0, v7, :cond_1

    int-to-float v1, v0

    mul-float/2addr v1, v15

    add-float v1, v1, v16

    .line 260
    iget v2, v8, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

    const v3, 0x3eb851ec    # 0.36f

    add-float/2addr v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v1, v4

    invoke-static {v2, v3, v1}, Lcom/masterrom/sdstorage/SdAnimView;->lin(FFF)F

    move-result v1

    cmpl-float v2, v1, v10

    if-lez v2, :cond_0

    cmpg-float v2, v1, v6

    if-gez v2, :cond_0

    float-to-double v1, v1

    mul-double/2addr v1, v13

    .line 261
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(FF)F

    move-result v12

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x3d75c28f    # 0.06f

    mul-float/2addr v0, v12

    add-float v17, v0, v6

    const/16 v18, 0xff

    const/16 v19, 0x0

    const/high16 v2, 0x432c0000    # 172.0f

    const/high16 v3, 0x42a80000    # 84.0f

    const/high16 v4, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, v17

    move v11, v6

    move/from16 v6, v18

    move v13, v7

    move/from16 v7, v19

    .line 264
    invoke-direct/range {v0 .. v7}, Lcom/masterrom/sdstorage/SdAnimView;->drawCard(Landroid/graphics/Canvas;FFFFIF)V

    const v0, 0x3f0ccccd    # 0.55f

    mul-float v4, v17, v0

    .line 265
    iget v6, v8, Lcom/masterrom/sdstorage/SdAnimView;->mOnAccent:I

    iget v7, v8, Lcom/masterrom/sdstorage/SdAnimView;->mAccent:I

    const/high16 v3, 0x42b60000    # 91.0f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/masterrom/sdstorage/SdAnimView;->drawLock(Landroid/graphics/Canvas;FFFFII)V

    cmpl-float v0, v12, v10

    const v14, 0x3eb33333    # 0.35f

    if-lez v0, :cond_2

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v0, v12

    const/high16 v1, 0x42000000    # 32.0f

    add-float v4, v0, v1

    mul-float v5, v12, v14

    .line 266
    iget v6, v8, Lcom/masterrom/sdstorage/SdAnimView;->mAccent:I

    const/high16 v2, 0x432c0000    # 172.0f

    const/high16 v3, 0x42a80000    # 84.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/masterrom/sdstorage/SdAnimView;->drawRing(Landroid/graphics/Canvas;FFFFI)V

    :cond_2
    const/4 v12, 0x0

    :goto_1
    if-ge v12, v13, :cond_5

    int-to-float v0, v12

    mul-float/2addr v0, v15

    add-float v0, v0, v16

    const v1, 0x3ed70a3d    # 0.42f

    add-float/2addr v1, v0

    .line 269
    invoke-direct {v8, v0, v1}, Lcom/masterrom/sdstorage/SdAnimView;->seg(FF)F

    move-result v0

    cmpg-float v1, v0, v10

    if-lez v1, :cond_4

    cmpl-float v1, v0, v11

    if-ltz v1, :cond_3

    goto :goto_2

    :cond_3
    const/high16 v1, 0x42c20000    # 97.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x42960000    # 75.0f

    add-float/2addr v2, v1

    float-to-double v3, v0

    const-wide v17, 0x400921fb54442d18L    # Math.PI

    mul-double v3, v3, v17

    .line 272
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v1, v3

    const/high16 v3, 0x42380000    # 46.0f

    mul-float/2addr v1, v3

    const/high16 v3, 0x42940000    # 74.0f

    sub-float/2addr v3, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    add-float/2addr v3, v1

    const v1, 0x3df5c28f    # 0.12f

    .line 273
    invoke-static {v0, v10, v1}, Lcom/masterrom/sdstorage/SdAnimView;->lin(FFF)F

    move-result v1

    const v4, 0x3f51eb85    # 0.82f

    invoke-static {v0, v4, v11}, Lcom/masterrom/sdstorage/SdAnimView;->lin(FFF)F

    move-result v4

    sub-float v6, v11, v4

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v1, 0x42100000    # 36.0f

    mul-float/2addr v1, v0

    const/high16 v4, -0x3e700000    # -18.0f

    add-float/2addr v4, v1

    mul-float/2addr v0, v14

    sub-float v5, v11, v0

    .line 274
    rem-int/lit8 v7, v12, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/masterrom/sdstorage/SdAnimView;->drawDoc(Landroid/graphics/Canvas;FFFFFI)V

    goto :goto_3

    :cond_4
    :goto_2
    const-wide v17, 0x400921fb54442d18L    # Math.PI

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private drawGlow(Landroid/graphics/Canvas;Landroid/graphics/RadialGradient;FFFF)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p5, v0

    if-lez v1, :cond_1

    cmpg-float v0, p6, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p5, p5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 430
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 431
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 432
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 433
    iget-object p2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mShaderPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p6, v0

    invoke-direct {p0, p6}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result p6

    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 434
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, p5, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawLock(Landroid/graphics/Canvas;FFFFII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p6

    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-gtz v5, :cond_0

    return-void

    .line 520
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 521
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 522
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 523
    iget-object v2, v0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 524
    iget-object v2, v0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 525
    iget-object v2, v0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v6, 0x437f0000    # 255.0f

    invoke-direct {v0, v6}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 526
    iget-object v2, v0, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v7, 0x41500000    # 13.0f

    const/high16 v8, 0x41880000    # 17.0f

    const/high16 v9, -0x3eb00000    # -13.0f

    const/high16 v10, -0x3f800000    # -4.0f

    invoke-virtual {v2, v9, v10, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 527
    iget-object v2, v0, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget-object v7, v0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2, v8, v8, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 528
    iget-object v2, v0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 529
    iget-object v2, v0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 530
    iget-object v2, v0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const v3, 0x408ccccd    # 4.4f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 531
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    const/high16 v3, -0x3f200000    # -7.0f

    mul-float v3, v3, p5

    .line 532
    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, -0x3e200000    # -28.0f

    mul-float v3, v3, p5

    const/high16 v7, 0x41000000    # 8.0f

    .line 533
    invoke-virtual {v1, v3, v7, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 534
    iget-object v3, v0, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 535
    iget-object v3, v0, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v9, -0x3f000000    # -8.0f

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 536
    iget-object v3, v0, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v11, -0x3ee00000    # -10.0f

    invoke-virtual {v3, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 537
    iget-object v12, v0, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v17, 0x41000000    # 8.0f

    const/high16 v18, -0x3ee00000    # -10.0f

    const/high16 v13, -0x3f000000    # -8.0f

    const/high16 v14, -0x3e580000    # -21.0f

    const/high16 v15, 0x41000000    # 8.0f

    const/high16 v16, -0x3e580000    # -21.0f

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 538
    iget-object v3, v0, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v7, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 539
    iget-object v3, v0, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 540
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 541
    iget-object v2, v0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    move/from16 v3, p7

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 542
    iget-object v2, v0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v2, 0x40400000    # 3.0f

    .line 543
    iget-object v3, v0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v6, 0x40900000    # 4.5f

    invoke-virtual {v1, v4, v6, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 544
    iget-object v2, v0, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const v3, -0x4059999a    # -1.3f

    const/high16 v4, 0x41300000    # 11.0f

    const v6, 0x3fa66666    # 1.3f

    invoke-virtual {v2, v3, v8, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 545
    iget-object v2, v0, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v6, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 546
    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawNoCard(Landroid/graphics/Canvas;)V
    .locals 11

    .line 305
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mEaseInOut:Landroid/view/animation/PathInterpolator;

    iget v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

    invoke-virtual {v0, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v8

    const/high16 v4, 0x42200000    # 40.0f

    const v5, 0x3e23d70a    # 0.16f

    const/high16 v2, 0x42960000    # 75.0f

    const/high16 v3, 0x43130000    # 147.0f

    move-object v0, p0

    move-object v1, p1

    .line 306
    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v8

    const/high16 v6, 0x41000000    # 8.0f

    mul-float v1, v0, v6

    const/high16 v2, 0x41900000    # 18.0f

    add-float v4, v1, v2

    const v1, 0x3da3d70a    # 0.08f

    mul-float/2addr v0, v1

    const v1, 0x3d75c28f    # 0.06f

    add-float v5, v0, v1

    const/high16 v2, 0x432c0000    # 172.0f

    move-object v0, p0

    move-object v1, p1

    .line 307
    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    const/4 v0, 0x0

    const v1, 0x3e99999a    # 0.3f

    .line 308
    invoke-direct {p0, p1, v0, v1}, Lcom/masterrom/sdstorage/SdAnimView;->drawPhone(Landroid/graphics/Canvas;FF)V

    .line 309
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mDash:Landroid/graphics/Paint;

    iget v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFg:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mDash:Landroid/graphics/Paint;

    const/high16 v1, 0x42dc0000    # 110.0f

    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 311
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    mul-float v9, v8, v6

    const/high16 v1, 0x42640000    # 57.0f

    sub-float/2addr v1, v9

    const/high16 v2, 0x42de0000    # 111.0f

    sub-float/2addr v2, v9

    const/high16 v3, 0x431a0000    # 154.0f

    const/high16 v4, 0x433e0000    # 190.0f

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 312
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v1, 0x40c00000    # 6.0f

    iget-object v2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mDash:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v0, 0x42a80000    # 84.0f

    sub-float v3, v0, v9

    const/high16 v10, 0x40800000    # 4.0f

    mul-float v0, v8, v10

    sub-float v4, v6, v0

    const/high16 v0, 0x42700000    # 60.0f

    mul-float/2addr v0, v8

    float-to-int v0, v0

    add-int/lit8 v6, v0, 0x5a

    const/4 v7, 0x0

    const/high16 v2, 0x432c0000    # 172.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    .line 313
    invoke-direct/range {v0 .. v7}, Lcom/masterrom/sdstorage/SdAnimView;->drawCard(Landroid/graphics/Canvas;FFFFIF)V

    const v0, 0x3e19999a    # 0.15f

    mul-float/2addr v8, v0

    const v0, 0x3f59999a    # 0.85f

    add-float/2addr v8, v0

    const/high16 v0, 0x42400000    # 48.0f

    sub-float v6, v0, v9

    .line 316
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 317
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mAccent:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 318
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v0, 0x41100000    # 9.0f

    mul-float/2addr v0, v8

    .line 319
    iget-object v2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v3, 0x43420000    # 194.0f

    invoke-virtual {p1, v3, v6, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 320
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    iget v2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mOnAccent:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 322
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const v1, 0x4019999a    # 2.4f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    mul-float/2addr v8, v10

    sub-float v1, v3, v8

    add-float/2addr v3, v8

    .line 323
    iget-object v5, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v6

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v2, v6, v8

    add-float v4, v6, v8

    .line 324
    iget-object v5, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x43420000    # 194.0f

    const/high16 v3, 0x43420000    # 194.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawParticles(Landroid/graphics/Canvas;FFFFF)V
    .locals 8

    .line 557
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, 0x0

    .line 558
    :goto_0
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mPartCos:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 559
    iget-object v2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mPartDist:[F

    aget v2, v2, v0

    mul-float/2addr v2, p4

    .line 560
    aget v1, v1, v0

    mul-float/2addr v1, v2

    add-float/2addr v1, p2

    .line 561
    iget-object v3, p0, Lcom/masterrom/sdstorage/SdAnimView;->mPartSin:[F

    aget v3, v3, v0

    mul-float/2addr v3, v2

    add-float/2addr v3, p3

    .line 562
    iget-object v2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mPartColor:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 563
    iget-object v2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, p5

    invoke-direct {p0, v4}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 564
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_0

    .line 565
    iget-object v2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, p6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 567
    :cond_0
    iget-object v2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    sub-float v4, v1, p6

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, p6

    sub-float v6, v3, v5

    add-float v7, v1, p6

    add-float/2addr v5, v3

    invoke-virtual {v2, v4, v6, v7, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 568
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    int-to-float v4, v0

    const/high16 v5, 0x41b80000    # 23.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, p4

    add-float/2addr v4, v5

    .line 569
    invoke-virtual {p1, v4, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 570
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v4, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 571
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawPhone(Landroid/graphics/Canvas;FF)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 439
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v9, 0x42300000    # 44.0f

    const/high16 v10, 0x41a00000    # 20.0f

    const/high16 v11, 0x42d40000    # 106.0f

    const/high16 v12, 0x430c0000    # 140.0f

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 440
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget-object v1, v7, Lcom/masterrom/sdstorage/SdAnimView;->mBodyShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 441
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x42f00000    # 120.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v0, v13, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 442
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 443
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mBodyShader:Landroid/graphics/LinearGradient;

    iget-object v1, v7, Lcom/masterrom/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 444
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v15, 0x437f0000    # 255.0f

    invoke-direct {v7, v15}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 445
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget-object v1, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v8, v0, v6, v6, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 446
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    cmpl-float v0, p2, v14

    if-lez v0, :cond_0

    .line 447
    iget-object v2, v7, Lcom/masterrom/sdstorage/SdAnimView;->mAccentGlow:Landroid/graphics/RadialGradient;

    const v0, 0x3e99999a    # 0.3f

    mul-float v16, p2, v0

    const/high16 v3, 0x42960000    # 75.0f

    const/high16 v4, 0x42980000    # 76.0f

    const/high16 v5, 0x42380000    # 46.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v15, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/masterrom/sdstorage/SdAnimView;->drawGlow(Landroid/graphics/Canvas;Landroid/graphics/RadialGradient;FFFF)V

    goto :goto_0

    :cond_0
    move v15, v6

    .line 448
    :goto_0
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    iget v1, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFg:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-direct {v7, v1}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 450
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const v2, 0x404ccccd    # 3.2f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 451
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 452
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget-object v2, v7, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v15, v15, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 453
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget v2, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFg:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 454
    iget-object v0, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v2, 0x432a0000    # 170.0f

    invoke-direct {v7, v2}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const v0, 0x4019999a    # 2.4f

    .line 455
    iget-object v2, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v3, 0x42960000    # 75.0f

    const/high16 v4, 0x41e80000    # 29.0f

    invoke-virtual {v8, v3, v4, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x3

    if-ge v0, v2, :cond_4

    int-to-float v2, v0

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x42d80000    # 108.0f

    add-float/2addr v3, v4

    .line 458
    iget-object v4, v7, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v5, 0x40800000    # 4.0f

    add-float/2addr v5, v3

    const/high16 v6, 0x42580000    # 54.0f

    const/high16 v9, 0x42c00000    # 96.0f

    invoke-virtual {v4, v6, v3, v9, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 459
    iget-object v4, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget v9, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFg:I

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 460
    iget-object v4, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v9, 0x42080000    # 34.0f

    invoke-direct {v7, v9}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 461
    iget-object v4, v7, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget-object v9, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {v8, v4, v10, v10, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const v4, 0x3e3851ec    # 0.18f

    mul-float/2addr v2, v4

    const v4, 0x3f933333    # 1.15f

    sub-float/2addr v4, v2

    mul-float v2, p3, v4

    .line 462
    invoke-static {v13, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v14, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    cmpl-float v4, v2, v14

    if-lez v4, :cond_3

    .line 464
    iget-object v4, v7, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v9, 0x42280000    # 42.0f

    mul-float/2addr v2, v9

    add-float/2addr v2, v6

    invoke-virtual {v4, v6, v3, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 465
    iget-object v2, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    iget v3, v7, Lcom/masterrom/sdstorage/SdAnimView;->mAccent:I

    goto :goto_2

    :cond_1
    iget v3, v7, Lcom/masterrom/sdstorage/SdAnimView;->mAccent2:I

    :goto_2
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 466
    iget-object v2, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    const/high16 v3, 0x437f0000    # 255.0f

    goto :goto_3

    :cond_2
    move v3, v1

    :goto_3
    invoke-direct {v7, v3}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 467
    iget-object v2, v7, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget-object v3, v7, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v10, v10, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private drawRing(Landroid/graphics/Canvas;FFFFI)V
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 551
    iget-object p6, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v0, 0x43480000    # 200.0f

    mul-float/2addr v0, p5

    invoke-direct {p0, v0}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v0

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 552
    iget-object p6, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p5, v0

    const/high16 v0, 0x40200000    # 2.5f

    add-float/2addr p5, v0

    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 553
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSecure(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 368
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdAnimView;->loopFade()V

    const v0, 0x3e3851ec    # 0.18f

    const v1, 0x3eae147b    # 0.34f

    .line 369
    invoke-direct {v8, v0, v1}, Lcom/masterrom/sdstorage/SdAnimView;->segOver(FF)F

    move-result v7

    const v0, 0x3eb851ec    # 0.36f

    const v1, 0x3ef5c28f    # 0.48f

    .line 370
    invoke-direct {v8, v0, v1}, Lcom/masterrom/sdstorage/SdAnimView;->seg(FF)F

    move-result v10

    const v0, 0x3eeb851f    # 0.46f

    const v2, 0x3f1eb852    # 0.62f

    .line 371
    invoke-direct {v8, v0, v2}, Lcom/masterrom/sdstorage/SdAnimView;->segOver(FF)F

    move-result v11

    .line 372
    iget v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v1, v2}, Lcom/masterrom/sdstorage/SdAnimView;->lin(FFF)F

    move-result v12

    const/high16 v4, 0x42600000    # 56.0f

    const v5, 0x3e23d70a    # 0.16f

    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x43120000    # 146.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 373
    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 374
    iget-object v2, v8, Lcom/masterrom/sdstorage/SdAnimView;->mAccentGlow:Landroid/graphics/RadialGradient;

    const/high16 v5, 0x42a00000    # 80.0f

    const v6, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x42f00000    # 120.0f

    const/high16 v4, 0x42b00000    # 88.0f

    invoke-direct/range {v0 .. v6}, Lcom/masterrom/sdstorage/SdAnimView;->drawGlow(Landroid/graphics/Canvas;Landroid/graphics/RadialGradient;FFFF)V

    .line 375
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget-object v1, v8, Lcom/masterrom/sdstorage/SdAnimView;->mCardShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 376
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x42c00000    # 96.0f

    const/high16 v13, 0x42f00000    # 120.0f

    invoke-virtual {v0, v13, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 377
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x42200000    # 40.0f

    const/high16 v2, 0x42700000    # 60.0f

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 378
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mCardShader:Landroid/graphics/LinearGradient;

    iget-object v1, v8, Lcom/masterrom/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 379
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v14, 0x437f0000    # 255.0f

    invoke-direct {v8, v14}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 380
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 381
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x42480000    # 50.0f

    const/high16 v3, 0x42840000    # 66.0f

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 382
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x42280000    # 42.0f

    const/high16 v4, 0x42940000    # 74.0f

    invoke-virtual {v0, v3, v1, v4, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 383
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v5, 0x42cc0000    # 102.0f

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 384
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x42e00000    # 112.0f

    const/high16 v5, 0x42500000    # 52.0f

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 385
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x43260000    # 166.0f

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 386
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v6, 0x432e0000    # 174.0f

    invoke-virtual {v0, v6, v5, v6, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 387
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v5, 0x42f80000    # 124.0f

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 388
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    const/high16 v15, 0x43040000    # 132.0f

    invoke-virtual {v0, v6, v15, v1, v15}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 389
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 390
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v15, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 391
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 392
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mPath:Landroid/graphics/Path;

    iget-object v1, v8, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 393
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 394
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v1, 0x42380000    # 46.0f

    invoke-direct {v8, v1}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 396
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v1, 0x42900000    # 72.0f

    invoke-virtual {v0, v3, v2, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 397
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget-object v1, v8, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v0, v10, v15

    if-gez v0, :cond_0

    const v0, 0x3f733333    # 0.95f

    sub-float v1, v15, v10

    mul-float v4, v1, v0

    .line 398
    iget v6, v8, Lcom/masterrom/sdstorage/SdAnimView;->mOnAccent:I

    iget v10, v8, Lcom/masterrom/sdstorage/SdAnimView;->mAccent:I

    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x42c40000    # 98.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v7

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/masterrom/sdstorage/SdAnimView;->drawLock(Landroid/graphics/Canvas;FFFFII)V

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, v12, v0

    if-lez v0, :cond_1

    cmpg-float v0, v12, v15

    if-gez v0, :cond_1

    .line 399
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mEase:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v12}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x42080000    # 34.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    add-float v4, v0, v1

    sub-float v5, v15, v12

    iget v6, v8, Lcom/masterrom/sdstorage/SdAnimView;->mOnAccent:I

    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x42bc0000    # 94.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/masterrom/sdstorage/SdAnimView;->drawRing(Landroid/graphics/Canvas;FFFFI)V

    :cond_1
    const v0, 0x3c23d70a    # 0.01f

    cmpl-float v0, v11, v0

    if-lez v0, :cond_2

    .line 401
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    iget v1, v8, Lcom/masterrom/sdstorage/SdAnimView;->mOnAccent:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 402
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-direct {v8, v14}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v0, 0x41880000    # 17.0f

    mul-float/2addr v0, v11

    .line 403
    iget-object v1, v8, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v2, 0x42bc0000    # 94.0f

    invoke-virtual {v9, v13, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const v0, 0x3ed70a3d    # 0.42f

    mul-float v4, v11, v0

    .line 404
    iget v6, v8, Lcom/masterrom/sdstorage/SdAnimView;->mAccent:I

    const/high16 v7, 0x40e00000    # 7.0f

    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x42bc0000    # 94.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/masterrom/sdstorage/SdAnimView;->drawCheck(Landroid/graphics/Canvas;FFFFIF)V

    :cond_2
    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;FFFF)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p5, v0

    if-lez v1, :cond_1

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, p4

    .line 418
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p4, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 419
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 420
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mShadowShader:Landroid/graphics/RadialGradient;

    iget-object v2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 421
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mShaderPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mShadowShader:Landroid/graphics/RadialGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 422
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mShaderPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr p5, v2

    invoke-direct {p0, p5}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result p5

    invoke-virtual {v1, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 423
    iget-object p5, p0, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    sub-float v1, p2, p4

    sub-float v2, p3, v0

    add-float/2addr p2, p4

    add-float/2addr p3, v0

    invoke-virtual {p5, v1, v2, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 424
    iget-object p2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawToInternal(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v8, p0

    .line 214
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdAnimView;->loopFade()V

    const v0, 0x3d75c28f    # 0.06f

    const v1, 0x3ecccccd    # 0.4f

    .line 215
    invoke-direct {v8, v0, v1}, Lcom/masterrom/sdstorage/SdAnimView;->segIO(FF)F

    move-result v6

    .line 216
    iget v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

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

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v7, v9, v6

    mul-float/2addr v0, v7

    const/high16 v1, -0x3d3e0000    # -97.0f

    mul-float/2addr v1, v6

    const/high16 v2, 0x432c0000    # 172.0f

    add-float v10, v1, v2

    const/high16 v1, 0x42a80000    # 84.0f

    add-float v11, v0, v1

    const v0, 0x3ec28f5c    # 0.38f

    const v1, 0x3f19999a    # 0.6f

    .line 219
    invoke-direct {v8, v0, v1}, Lcom/masterrom/sdstorage/SdAnimView;->seg(FF)F

    move-result v12

    const v0, 0x3ed70a3d    # 0.42f

    const v1, 0x3f3d70a4    # 0.74f

    .line 220
    invoke-direct {v8, v0, v1}, Lcom/masterrom/sdstorage/SdAnimView;->seg(FF)F

    move-result v13

    const/high16 v0, 0x3f000000    # 0.5f

    const v1, 0x3f28f5c3    # 0.66f

    .line 221
    invoke-direct {v8, v0, v1}, Lcom/masterrom/sdstorage/SdAnimView;->segOver(FF)F

    move-result v14

    .line 222
    iget v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

    const v1, 0x3f051eb8    # 0.52f

    const v2, 0x3f51eb85    # 0.82f

    invoke-static {v0, v1, v2}, Lcom/masterrom/sdstorage/SdAnimView;->lin(FFF)F

    move-result v15

    const v0, 0x3e0f5c29    # 0.14f

    mul-float v5, v7, v0

    const/high16 v3, 0x43120000    # 146.0f

    const/high16 v4, 0x41c00000    # 24.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    .line 224
    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    const/high16 v4, 0x42200000    # 40.0f

    const v5, 0x3e23d70a    # 0.16f

    const/high16 v2, 0x42960000    # 75.0f

    const/high16 v3, 0x43130000    # 147.0f

    .line 225
    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr v13, v0

    const v0, 0x3e99999a    # 0.3f

    add-float/2addr v13, v0

    move-object/from16 v5, p1

    .line 226
    invoke-direct {v8, v5, v12, v13}, Lcom/masterrom/sdstorage/SdAnimView;->drawPhone(Landroid/graphics/Canvas;FF)V

    const/high16 v0, -0x3ee00000    # -10.0f

    mul-float v4, v7, v0

    const v0, 0x3e3851ec    # 0.18f

    mul-float/2addr v6, v0

    sub-float v6, v9, v6

    const v0, 0x3df5c28f    # 0.12f

    const v1, 0x3eb851ec    # 0.36f

    .line 227
    invoke-direct {v8, v0, v1}, Lcom/masterrom/sdstorage/SdAnimView;->shine(FF)F

    move-result v7

    const/16 v12, 0xff

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move v3, v11

    move v5, v6

    move v6, v12

    invoke-direct/range {v0 .. v7}, Lcom/masterrom/sdstorage/SdAnimView;->drawCard(Landroid/graphics/Canvas;FFFFIF)V

    const/4 v0, 0x0

    cmpl-float v0, v15, v0

    if-lez v0, :cond_0

    cmpg-float v0, v15, v9

    if-gez v0, :cond_0

    const/high16 v0, 0x40c00000    # 6.0f

    add-float v3, v11, v0

    const/high16 v0, 0x42100000    # 36.0f

    mul-float/2addr v0, v15

    const/high16 v1, 0x41200000    # 10.0f

    add-float v4, v0, v1

    sub-float v5, v9, v15

    .line 228
    iget v6, v8, Lcom/masterrom/sdstorage/SdAnimView;->mAccent:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    invoke-direct/range {v0 .. v6}, Lcom/masterrom/sdstorage/SdAnimView;->drawRing(Landroid/graphics/Canvas;FFFFI)V

    :cond_0
    const v0, 0x3c23d70a    # 0.01f

    cmpl-float v0, v14, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x40e00000    # 7.0f

    add-float v3, v11, v0

    const v0, 0x3f1eb852    # 0.62f

    mul-float v4, v14, v0

    .line 229
    iget v6, v8, Lcom/masterrom/sdstorage/SdAnimView;->mOnAccent:I

    iget v7, v8, Lcom/masterrom/sdstorage/SdAnimView;->mAccent:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    invoke-direct/range {v0 .. v7}, Lcom/masterrom/sdstorage/SdAnimView;->drawLock(Landroid/graphics/Canvas;FFFFII)V

    :cond_1
    return-void
.end method

.method private drawToPortable(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v8, p0

    .line 233
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdAnimView;->loopFade()V

    const v0, 0x3da3d70a    # 0.08f

    const v1, 0x3e75c28f    # 0.24f

    .line 234
    invoke-direct {v8, v0, v1}, Lcom/masterrom/sdstorage/SdAnimView;->segOver(FF)F

    move-result v9

    const v0, 0x3eb851ec    # 0.36f

    .line 235
    invoke-direct {v8, v1, v0}, Lcom/masterrom/sdstorage/SdAnimView;->seg(FF)F

    move-result v10

    .line 236
    iget v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

    const v2, 0x3eeb851f    # 0.46f

    invoke-static {v0, v1, v2}, Lcom/masterrom/sdstorage/SdAnimView;->lin(FFF)F

    move-result v11

    const v6, 0x3e99999a    # 0.3f

    const v0, 0x3f051eb8    # 0.52f

    .line 237
    invoke-direct {v8, v6, v0}, Lcom/masterrom/sdstorage/SdAnimView;->seg(FF)F

    move-result v1

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v7, v12, v1

    .line 238
    invoke-direct {v8, v6, v0}, Lcom/masterrom/sdstorage/SdAnimView;->seg(FF)F

    move-result v0

    sub-float v13, v12, v0

    const v0, 0x3ed70a3d    # 0.42f

    const v14, 0x3f3d70a4    # 0.74f

    .line 239
    invoke-direct {v8, v0, v14}, Lcom/masterrom/sdstorage/SdAnimView;->segIO(FF)F

    move-result v15

    .line 240
    iget v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

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

    mul-float/2addr v0, v15

    const/high16 v1, 0x42c20000    # 97.0f

    mul-float/2addr v1, v15

    const/high16 v2, 0x42960000    # 75.0f

    add-float v16, v1, v2

    const/high16 v1, 0x42a80000    # 84.0f

    add-float v17, v0, v1

    const/high16 v4, 0x42200000    # 40.0f

    const v5, 0x3e23d70a    # 0.16f

    const/high16 v3, 0x43130000    # 147.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 244
    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    const v0, 0x3e0f5c29    # 0.14f

    mul-float v5, v15, v0

    const/high16 v3, 0x43120000    # 146.0f

    const/high16 v4, 0x41c00000    # 24.0f

    move-object/from16 v0, p0

    move/from16 v2, v16

    .line 245
    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr v7, v0

    add-float/2addr v7, v6

    move-object/from16 v6, p1

    .line 246
    invoke-direct {v8, v6, v13, v7}, Lcom/masterrom/sdstorage/SdAnimView;->drawPhone(Landroid/graphics/Canvas;FF)V

    const/high16 v0, 0x41200000    # 10.0f

    mul-float v4, v15, v0

    const v0, 0x3e3851ec    # 0.18f

    mul-float/2addr v15, v0

    const v0, 0x3f51eb85    # 0.82f

    add-float v5, v15, v0

    const v0, 0x3f6b851f    # 0.92f

    .line 247
    invoke-direct {v8, v14, v0}, Lcom/masterrom/sdstorage/SdAnimView;->shine(FF)F

    move-result v7

    const/16 v13, 0xff

    move-object/from16 v0, p0

    move/from16 v3, v17

    move v6, v13

    invoke-direct/range {v0 .. v7}, Lcom/masterrom/sdstorage/SdAnimView;->drawCard(Landroid/graphics/Canvas;FFFFIF)V

    cmpg-float v0, v10, v12

    const/high16 v13, 0x40e00000    # 7.0f

    if-gez v0, :cond_0

    add-float v3, v17, v13

    const v0, 0x3f1eb852    # 0.62f

    sub-float v1, v12, v10

    mul-float v4, v1, v0

    .line 248
    iget v6, v8, Lcom/masterrom/sdstorage/SdAnimView;->mOnAccent:I

    iget v7, v8, Lcom/masterrom/sdstorage/SdAnimView;->mAccent:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/masterrom/sdstorage/SdAnimView;->drawLock(Landroid/graphics/Canvas;FFFFII)V

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_1

    cmpg-float v0, v11, v12

    if-gez v0, :cond_1

    add-float v3, v17, v13

    .line 249
    iget-object v0, v8, Lcom/masterrom/sdstorage/SdAnimView;->mEase:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v11}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x41d00000    # 26.0f

    mul-float v4, v0, v1

    sub-float v5, v12, v11

    const v6, 0x3fcccccd    # 1.6f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct/range {v0 .. v6}, Lcom/masterrom/sdstorage/SdAnimView;->drawParticles(Landroid/graphics/Canvas;FFFFF)V

    :cond_1
    return-void
.end method

.method private drawWorking(Landroid/graphics/Canvas;)V
    .locals 14

    const/high16 v4, 0x42200000    # 40.0f

    const v5, 0x3e23d70a    # 0.16f

    const/high16 v2, 0x42960000    # 75.0f

    const/high16 v3, 0x43130000    # 147.0f

    move-object v0, p0

    move-object v1, p1

    .line 279
    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    const/high16 v10, 0x41c00000    # 24.0f

    const v11, 0x3e0f5c29    # 0.14f

    const/high16 v8, 0x432c0000    # 172.0f

    const/high16 v9, 0x43120000    # 146.0f

    move-object v6, p0

    move-object v7, p1

    .line 280
    invoke-direct/range {v6 .. v11}, Lcom/masterrom/sdstorage/SdAnimView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 281
    iget v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v1, v0

    const v4, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, v4

    const v4, 0x3f19999a    # 0.6f

    .line 282
    invoke-direct {p0, p1, v1, v4}, Lcom/masterrom/sdstorage/SdAnimView;->drawPhone(Landroid/graphics/Canvas;FF)V

    .line 283
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x6

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v1, v4, :cond_1

    .line 285
    iget v4, p0, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

    int-to-float v6, v1

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v6, v7

    add-float/2addr v4, v6

    rem-float/2addr v4, v5

    const/high16 v5, 0x42680000    # 58.0f

    mul-float/2addr v5, v4

    const/high16 v6, 0x42b80000    # 92.0f

    add-float/2addr v5, v6

    float-to-double v6, v4

    mul-double/2addr v6, v2

    .line 287
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v4, v8

    const/high16 v8, 0x41900000    # 18.0f

    mul-float/2addr v4, v8

    const/high16 v8, 0x42a00000    # 80.0f

    sub-float/2addr v8, v4

    .line 288
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v4, v6

    .line 289
    iget-object v6, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    rem-int/lit8 v7, v1, 0x2

    if-nez v7, :cond_0

    iget v7, p0, Lcom/masterrom/sdstorage/SdAnimView;->mAccent:I

    goto :goto_1

    :cond_0
    iget v7, p0, Lcom/masterrom/sdstorage/SdAnimView;->mAccent2:I

    :goto_1
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    iget-object v6, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    const/high16 v7, 0x43660000    # 230.0f

    mul-float/2addr v7, v4

    invoke-direct {p0, v7}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    const v6, 0x3fb33333    # 1.4f

    mul-float/2addr v4, v6

    const v6, 0x400ccccd    # 2.2f

    add-float/2addr v4, v6

    .line 291
    iget-object v6, p0, Lcom/masterrom/sdstorage/SdAnimView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const v1, 0x3cf5c28f    # 0.03f

    mul-float/2addr v0, v1

    add-float v11, v0, v5

    const/16 v12, 0xff

    const/4 v13, 0x0

    const/high16 v8, 0x432c0000    # 172.0f

    const/high16 v9, 0x42a80000    # 84.0f

    const/high16 v10, 0x40c00000    # 6.0f

    move-object v6, p0

    move-object v7, p1

    .line 293
    invoke-direct/range {v6 .. v13}, Lcom/masterrom/sdstorage/SdAnimView;->drawCard(Landroid/graphics/Canvas;FFFFIF)V

    .line 294
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    iget v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mAccent:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 295
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 296
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x42200000    # 40.0f

    .line 297
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v4, 0x432c0000    # 172.0f

    const/high16 v5, 0x42a80000    # 84.0f

    invoke-virtual {p1, v4, v5, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 298
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdAnimView;->al(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 299
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    const/high16 v1, 0x43540000    # 212.0f

    const/high16 v4, 0x42f80000    # 124.0f

    const/high16 v5, 0x43040000    # 132.0f

    const/high16 v6, 0x42300000    # 44.0f

    invoke-virtual {v0, v5, v6, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 300
    iget v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

    float-to-double v0, v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x428c0000    # 70.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42480000    # 50.0f

    add-float v5, v0, v1

    .line 301
    iget-object v3, p0, Lcom/masterrom/sdstorage/SdAnimView;->mRect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float v4, v0, v1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/masterrom/sdstorage/SdAnimView;->mStroke:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private static glow(I)Landroid/graphics/RadialGradient;
    .locals 8

    const v0, 0xffffff

    and-int/2addr p0, v0

    .line 105
    new-instance v7, Landroid/graphics/RadialGradient;

    const/high16 v0, -0x1000000

    or-int/2addr v0, p0

    const/high16 v1, 0x55000000

    or-int/2addr v1, p0

    filled-new-array {v0, v1, p0}, [I

    move-result-object v4

    const/4 p0, 0x3

    new-array v5, p0, [F

    fill-array-data v5, :array_0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v7

    nop

    :array_0
    .array-data 4
        0x0
        0x3ee66666    # 0.45f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static lin(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmpl-float v0, p0, p2

    if-ltz v0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_1
    sub-float/2addr p0, p1

    sub-float/2addr p2, p1

    div-float/2addr p0, p2

    return p0
.end method

.method private loopFade()V
    .locals 4

    .line 210
    iget v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

    const/4 v1, 0x0

    const v2, 0x3d75c28f    # 0.06f

    invoke-static {v0, v1, v2}, Lcom/masterrom/sdstorage/SdAnimView;->lin(FFF)F

    move-result v0

    iget v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

    const v2, 0x3f6b851f    # 0.92f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lcom/masterrom/sdstorage/SdAnimView;->lin(FFF)F

    move-result v1

    sub-float/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mA:F

    return-void
.end method

.method private once()Z
    .locals 1

    .line 115
    iget p0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mMode:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private restart()V
    .locals 5

    .line 119
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    .line 120
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 122
    iget v2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mMode:I

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v2, v3, :cond_5

    if-eq v2, v4, :cond_4

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    const-wide/16 v2, 0x1068

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x384

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0xd48

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x514

    goto :goto_0

    :cond_4
    const-wide/16 v2, 0xa28

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x708

    .line 130
    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 131
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 132
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdAnimView;->once()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    const/4 v2, -0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 133
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/masterrom/sdstorage/SdAnimView;->mMode:I

    if-ne v2, v4, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 134
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/masterrom/sdstorage/SdAnimView$1;

    invoke-direct {v1, p0}, Lcom/masterrom/sdstorage/SdAnimView$1;-><init>(Lcom/masterrom/sdstorage/SdAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

    .line 141
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdAnimView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private seg(FF)F
    .locals 2

    .line 158
    iget v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

    cmpg-float v1, v0, p1

    if-gtz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmpl-float v1, v0, p2

    if-ltz v1, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 160
    :cond_1
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mEase:Landroid/view/animation/PathInterpolator;

    sub-float/2addr v0, p1

    sub-float/2addr p2, p1

    div-float/2addr v0, p2

    invoke-virtual {p0, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method private segIO(FF)F
    .locals 2

    .line 164
    iget v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

    cmpg-float v1, v0, p1

    if-gtz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmpl-float v1, v0, p2

    if-ltz v1, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 166
    :cond_1
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mEaseInOut:Landroid/view/animation/PathInterpolator;

    sub-float/2addr v0, p1

    sub-float/2addr p2, p1

    div-float/2addr v0, p2

    invoke-virtual {p0, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method private segOver(FF)F
    .locals 2

    .line 170
    iget v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

    cmpg-float v1, v0, p1

    if-gtz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmpl-float v1, v0, p2

    if-ltz v1, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 172
    :cond_1
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mOver:Landroid/view/animation/PathInterpolator;

    sub-float/2addr v0, p1

    sub-float/2addr p2, p1

    div-float/2addr v0, p2

    invoke-virtual {p0, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method private shine(FF)F
    .locals 0

    .line 411
    iget p0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

    invoke-static {p0, p1, p2}, Lcom/masterrom/sdstorage/SdAnimView;->lin(FFF)F

    move-result p0

    const/4 p1, 0x0

    cmpg-float p2, p0, p1

    if-lez p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p0, p2

    if-ltz p2, :cond_1

    :cond_0
    move p0, p1

    :cond_1
    return p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 145
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 146
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdAnimView;->restart()V

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdAnimView;->once()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mT:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 152
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 188
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdAnimView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdAnimView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-lez v3, :cond_1

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v2, 0x43700000    # 240.0f

    div-float v3, v0, v2

    const/high16 v4, 0x43200000    # 160.0f

    div-float v5, v1, v4

    .line 190
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    mul-float/2addr v4, v3

    sub-float/2addr v1, v4

    div-float/2addr v1, v2

    .line 192
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 193
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 194
    iput v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mA:F

    .line 195
    iget v0, p0, Lcom/masterrom/sdstorage/SdAnimView;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 203
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdAnimView;->drawToInternal(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 202
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdAnimView;->drawError(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 201
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdAnimView;->drawSecure(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 200
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdAnimView;->drawDone(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 199
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdAnimView;->drawNoCard(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 198
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdAnimView;->drawWorking(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 197
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdAnimView;->drawFiles(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 196
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdAnimView;->drawToPortable(Landroid/graphics/Canvas;)V

    .line 205
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMode(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/masterrom/sdstorage/SdAnimView;->mMode:I

    .line 111
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdAnimView;->restart()V

    return-void
.end method

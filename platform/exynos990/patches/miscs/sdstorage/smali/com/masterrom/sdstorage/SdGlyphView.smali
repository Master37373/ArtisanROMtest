.class public Lcom/masterrom/sdstorage/SdGlyphView;
.super Landroid/view/View;
.source "SdGlyphView.java"


# static fields
.field public static final PHONE:I = 0x0

.field public static final SD:I = 0x1


# instance fields
.field private mColor:I

.field private final mFill:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private final mRect:Landroid/graphics/RectF;

.field private final mStroke:Landroid/graphics/Paint;

.field private final mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 23
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mStroke:Landroid/graphics/Paint;

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mFill:Landroid/graphics/Paint;

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mRect:Landroid/graphics/RectF;

    .line 18
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mPath:Landroid/graphics/Path;

    .line 24
    iput p2, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mType:I

    .line 25
    iput p3, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mColor:I

    .line 26
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 28
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 29
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mStroke:Landroid/graphics/Paint;

    const v1, 0x3fe66666    # 1.8f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/high16 v8, 0x40400000    # 3.0f

    const/high16 v7, 0x40b00000    # 5.5f

    const/high16 v6, 0x40200000    # 2.5f

    const/high16 v5, 0x41ac0000    # 21.5f

    const/high16 v2, 0x41940000    # 18.5f

    .line 38
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdGlyphView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdGlyphView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41c00000    # 24.0f

    div-float/2addr v0, v1

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 40
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdGlyphView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x41c00000    # 24.0f

    mul-float/2addr v3, v0

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdGlyphView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41c00000    # 24.0f

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 41
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 42
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mStroke:Landroid/graphics/Paint;

    iget v1, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mFill:Landroid/graphics/Paint;

    iget v1, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mType:I

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mRect:Landroid/graphics/RectF;

    const/high16 v1, 0x40d00000    # 6.5f

    const/high16 v3, 0x418c0000    # 17.5f

    invoke-virtual {v0, v1, v6, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 46
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 47
    const/high16 v1, 0x41280000    # 10.5f

    const/high16 v3, 0x41580000    # 13.5f

    iget-object v5, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mStroke:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 76
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 77
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 50
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x41180000    # 9.5f

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 51
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x41840000    # 16.5f

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x40900000    # 4.5f

    invoke-virtual {v0, v2, v6, v2, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 53
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x419c0000    # 19.5f

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 54
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x41840000    # 16.5f

    invoke-virtual {v0, v2, v5, v1, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 55
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x40f00000    # 7.5f

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 56
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x419c0000    # 19.5f

    invoke-virtual {v0, v7, v5, v7, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 57
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x40d00000    # 6.5f

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 58
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 59
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 60
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    const/4 v0, 0x3

    if-ge v6, v0, :cond_1

    .line 61
    const/high16 v0, 0x41200000    # 10.0f

    int-to-float v1, v6

    mul-float/2addr v1, v8

    add-float/2addr v1, v0

    .line 62
    const/high16 v4, 0x41080000    # 8.5f

    iget-object v5, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mStroke:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v7

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 60
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mRect:Landroid/graphics/RectF;

    const/high16 v1, 0x41180000    # 9.5f

    const/high16 v2, 0x41500000    # 13.0f

    const/high16 v3, 0x41680000    # 14.5f

    const/high16 v4, 0x418c0000    # 17.5f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 66
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mRect:Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 67
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 68
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mPath:Landroid/graphics/Path;

    const v1, 0x4129999a    # 10.6f

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 69
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mPath:Landroid/graphics/Path;

    const v1, 0x4129999a    # 10.6f

    const v2, 0x413ccccd    # 11.8f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 70
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mPath:Landroid/graphics/Path;

    const v1, 0x4129999a    # 10.6f

    const v2, 0x4119999a    # 9.6f

    const v3, 0x41566666    # 13.4f

    const v4, 0x4119999a    # 9.6f

    const v5, 0x41566666    # 13.4f

    const v6, 0x413ccccd    # 11.8f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 71
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mPath:Landroid/graphics/Path;

    const v1, 0x41566666    # 13.4f

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mStroke:Landroid/graphics/Paint;

    const v1, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 74
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mStroke:Landroid/graphics/Paint;

    const v1, 0x3fe66666    # 1.8f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_0
.end method

.method public setColor(I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/masterrom/sdstorage/SdGlyphView;->mColor:I

    .line 34
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdGlyphView;->invalidate()V

    .line 35
    return-void
.end method

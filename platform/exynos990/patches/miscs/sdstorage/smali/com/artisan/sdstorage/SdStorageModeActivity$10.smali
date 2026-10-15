.class Lcom/artisan/sdstorage/SdStorageModeActivity$10;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity;->animateBlur(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 599
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 601
    :try_start_0
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$600(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 604
    :goto_1
    return-void

    .line 602
    :cond_0
    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v2, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$900(Lcom/artisan/sdstorage/SdStorageModeActivity;F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v3, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$900(Lcom/artisan/sdstorage/SdStorageModeActivity;F)I

    move-result v0

    int-to-float v0, v0

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {v2, v0, v3}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 603
    :catch_0
    move-exception v0

    goto :goto_1
.end method

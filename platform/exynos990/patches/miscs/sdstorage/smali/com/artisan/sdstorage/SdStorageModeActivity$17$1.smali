.class Lcom/artisan/sdstorage/SdStorageModeActivity$17$1;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$17;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity$17;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$17$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 802
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$17$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$17;

    iget-object v1, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$17;->val$bg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$17$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$17;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$17;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$900(Lcom/artisan/sdstorage/SdStorageModeActivity;F)I

    move-result v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void
.end method

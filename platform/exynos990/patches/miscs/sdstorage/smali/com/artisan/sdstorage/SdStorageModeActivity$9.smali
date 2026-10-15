.class Lcom/artisan/sdstorage/SdStorageModeActivity$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SdStorageModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity;->hideSheet(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

.field final synthetic val$after:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$9;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iput-object p2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$9;->val$after:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$9;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$800(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 584
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$9;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$700(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$9;->val$after:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$9;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-virtual {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$9;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-virtual {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$9;->val$after:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 586
    :cond_0
    return-void
.end method

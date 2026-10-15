.class Lcom/artisan/sdstorage/SdStorageModeActivity$35;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity;->setProgressText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1262
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$35;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iput-object p2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$35;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$35;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$3600(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$35;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$1100(Lcom/artisan/sdstorage/SdStorageModeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$35;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-virtual {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$35;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$3600(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$35$1;

    invoke-direct {v1, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$35$1;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity$35;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1269
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1271
    :cond_0
    return-void
.end method

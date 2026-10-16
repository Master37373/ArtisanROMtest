.class Lcom/masterrom/sdstorage/SdStorageModeActivity$35$1;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/masterrom/sdstorage/SdStorageModeActivity$35;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$35;


# direct methods
.method constructor <init>(Lcom/masterrom/sdstorage/SdStorageModeActivity$35;)V
    .locals 0

    .prologue
    .line 1289
    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$35$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$35$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$35;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$35;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$3800(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$35$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$35;

    iget-object v1, v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$35;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1292
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$35$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$35;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$35;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$3800(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1293
    return-void
.end method

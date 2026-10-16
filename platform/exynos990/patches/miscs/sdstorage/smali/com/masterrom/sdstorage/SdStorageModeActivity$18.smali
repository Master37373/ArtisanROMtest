.class Lcom/masterrom/sdstorage/SdStorageModeActivity$18;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/masterrom/sdstorage/SdStorageModeActivity;->requireUnlocked(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

.field final synthetic val$action:Ljava/lang/Runnable;

.field final synthetic val$page:I

.field final synthetic val$status:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;ILandroid/widget/TextView;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 918
    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$18;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    iput p2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$18;->val$page:I

    iput-object p3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$18;->val$status:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$18;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 920
    iget v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$18;->val$page:I

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$18;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-static {v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$2100(Lcom/masterrom/sdstorage/SdStorageModeActivity;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$18;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-virtual {v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$18;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-virtual {v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$18;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$2200(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$18;->val$status:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$18;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    const-string v2, "Entsperrt \u2713"

    const-string v3, "Unlocked \u2713"

    invoke-static {v1, v2, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$2300(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 923
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$18;->val$status:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$18;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-static {v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$1800(Lcom/masterrom/sdstorage/SdStorageModeActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 924
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$18;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$2400(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$18$1;

    invoke-direct {v1, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$18$1;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity$18;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 931
    :cond_1
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$18;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$2400(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x320

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

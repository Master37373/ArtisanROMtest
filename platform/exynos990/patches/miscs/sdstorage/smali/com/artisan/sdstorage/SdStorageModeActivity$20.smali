.class Lcom/artisan/sdstorage/SdStorageModeActivity$20;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity;->requireUnlocked(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

.field final synthetic val$action:Ljava/lang/Runnable;

.field final synthetic val$page:I

.field final synthetic val$status:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity;ILandroid/widget/TextView;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 885
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$20;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iput p2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$20;->val$page:I

    iput-object p3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$20;->val$status:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$20;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 887
    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$20;->val$page:I

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$20;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2000(Lcom/artisan/sdstorage/SdStorageModeActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$20;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-virtual {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$20;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-virtual {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$20;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2100(Lcom/artisan/sdstorage/SdStorageModeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 889
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$20;->val$status:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$20;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v2, "Entsperrt \u2713"

    const-string v3, "Unlocked \u2713"

    invoke-static {v1, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2200(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$20;->val$status:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$20;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$1800(Lcom/artisan/sdstorage/SdStorageModeActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 891
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$20;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2300(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$20$1;

    invoke-direct {v1, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$20$1;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity$20;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 898
    :cond_2
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$20;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2300(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x320

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.class Lcom/masterrom/sdstorage/SdStorageModeActivity$30$1;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/masterrom/sdstorage/SdStorageModeActivity$30;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$30;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/masterrom/sdstorage/SdStorageModeActivity$30;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$30$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$30;

    iput-object p2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$30$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1242
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$30$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$30;

    iget-object v1, v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$30;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-virtual {v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$30$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$30;

    iget-object v1, v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$30;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-virtual {v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1243
    :cond_1
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$30$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$30;

    iget-object v1, v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$30;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-static {v1, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$3600(Lcom/masterrom/sdstorage/SdStorageModeActivity;Z)V

    .line 1244
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$30$1;->val$result:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$30$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$30;

    iget-object v1, v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$30;->val$next:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 1245
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$30$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$30;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$30;->val$next:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1248
    :cond_2
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$30$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$30;

    iget-object v2, v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$30;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$30$1;->val$result:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$30$1;->val$result:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$30$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$30;

    iget-object v1, v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$30;->val$okMessage:Ljava/lang/String;

    :goto_1
    invoke-static {v2, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$3700(Lcom/masterrom/sdstorage/SdStorageModeActivity;ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$30$1;->val$result:Ljava/lang/String;

    goto :goto_1
.end method

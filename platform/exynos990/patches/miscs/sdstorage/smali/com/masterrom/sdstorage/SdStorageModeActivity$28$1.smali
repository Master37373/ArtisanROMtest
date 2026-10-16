.class Lcom/masterrom/sdstorage/SdStorageModeActivity$28$1;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/masterrom/sdstorage/SdStorageModeActivity$28;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$28;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/masterrom/sdstorage/SdStorageModeActivity$28;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1274
    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$28;

    iput-object p2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1275
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$28;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-virtual {v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$28;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-virtual {v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$28;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$3700(Lcom/masterrom/sdstorage/SdStorageModeActivity;Z)V

    .line 1277
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28$1;->val$result:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$28;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28;->val$next:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1278
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$28;

    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28;->val$next:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1281
    :cond_1
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$28;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    iget-object v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28$1;->val$result:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-nez v2, :cond_3

    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$28;

    iget-object v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28;->val$okMessage:Ljava/lang/String;

    :cond_3
    invoke-static {v0, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$3800(Lcom/masterrom/sdstorage/SdStorageModeActivity;ZLjava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

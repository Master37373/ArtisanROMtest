.class Lcom/artisan/sdstorage/SdStorageModeActivity$30$1;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity$30;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$30;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity$30;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$30$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$30;

    iput-object p2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$30$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1217
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$30$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$30;

    iget-object v1, v1, Lcom/artisan/sdstorage/SdStorageModeActivity$30;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-virtual {v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$30$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$30;

    iget-object v1, v1, Lcom/artisan/sdstorage/SdStorageModeActivity$30;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-virtual {v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1224
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$30$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$30;

    iget-object v1, v1, Lcom/artisan/sdstorage/SdStorageModeActivity$30;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v1, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$3400(Lcom/artisan/sdstorage/SdStorageModeActivity;Z)V

    .line 1219
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$30$1;->val$result:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$30$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$30;

    iget-object v1, v1, Lcom/artisan/sdstorage/SdStorageModeActivity$30;->val$next:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 1220
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$30$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$30;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$30;->val$next:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1223
    :cond_2
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$30$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$30;

    iget-object v2, v1, Lcom/artisan/sdstorage/SdStorageModeActivity$30;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$30$1;->val$result:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$30$1;->val$result:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$30$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$30;

    iget-object v1, v1, Lcom/artisan/sdstorage/SdStorageModeActivity$30;->val$okMessage:Ljava/lang/String;

    :goto_1
    invoke-static {v2, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$3500(Lcom/artisan/sdstorage/SdStorageModeActivity;ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$30$1;->val$result:Ljava/lang/String;

    goto :goto_1
.end method

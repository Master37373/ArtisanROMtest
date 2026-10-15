.class Lcom/artisan/sdstorage/SdStorageModeActivity$25$1;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$25;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity$25;)V
    .locals 0

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$25$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$25$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$25;

    iget-boolean v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$25;->val$wantSd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$25$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$25;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$25;->val$priv:Landroid/os/storage/VolumeInfo;

    .line 1040
    :goto_0
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$25$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$25;

    iget-object v1, v1, Lcom/artisan/sdstorage/SdStorageModeActivity$25;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$25$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$25;

    iget-boolean v2, v2, Lcom/artisan/sdstorage/SdStorageModeActivity$25;->val$wantSd:Z

    invoke-static {v1, v0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$3200(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;Z)V

    .line 1041
    return-void

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$25$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$25;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$25;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2500(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/os/storage/StorageManager;

    move-result-object v0

    const-string v1, "private"

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    goto :goto_0
.end method

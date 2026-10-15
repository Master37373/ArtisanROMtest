.class Lcom/artisan/sdstorage/SdStorageModeActivity$11$1;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Lcom/artisan/sdstorage/SdStorageModeActivity$Work;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity$11;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$11;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity$11;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$11$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$11$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$11;

    iget-boolean v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$11;->val$wantSd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$11$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$11;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$11;->val$priv:Landroid/os/storage/VolumeInfo;

    .line 600
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$11$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$11;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$11;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v1, "Speicher nicht gefunden."

    const-string v2, "Storage not found."

    invoke-static {v0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$700(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 601
    :goto_1
    return-object v0

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$11$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$11;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$11;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$800(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/os/storage/StorageManager;

    move-result-object v0

    const-string v1, "private"

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    goto :goto_0

    .line 601
    :cond_1
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$11$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$11;

    iget-object v1, v1, Lcom/artisan/sdstorage/SdStorageModeActivity$11;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$11$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$11;

    iget-object v2, v2, Lcom/artisan/sdstorage/SdStorageModeActivity$11;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$1400(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$1500(Lcom/artisan/sdstorage/SdStorageModeActivity;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

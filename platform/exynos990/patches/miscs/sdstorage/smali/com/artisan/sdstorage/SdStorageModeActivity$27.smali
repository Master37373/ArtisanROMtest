.class Lcom/artisan/sdstorage/SdStorageModeActivity$27;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Lcom/artisan/sdstorage/SdStorageModeActivity$Work;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity;->moveFiles(Landroid/os/storage/VolumeInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

.field final synthetic val$target:Landroid/os/storage/VolumeInfo;

.field final synthetic val$toSd:Z


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$27;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iput-object p2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$27;->val$target:Landroid/os/storage/VolumeInfo;

    iput-boolean p3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$27;->val$toSd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$27;->val$target:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$27;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v1, "Speicher nicht gefunden."

    const-string v2, "Storage not found."

    invoke-static {v0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2200(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1053
    :goto_0
    return-object v0

    .line 1049
    :cond_0
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$27;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$27;->val$toSd:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$27;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v2, "Fotos, Downloads und andere Dateien kommen auf die SD-Karte \u2026"

    const-string v3, "Photos, downloads and other files are moving to the SD card \u2026"

    invoke-static {v0, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2200(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2400(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$27;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$27;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$3200(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$27;->val$target:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$3300(Lcom/artisan/sdstorage/SdStorageModeActivity;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1051
    :cond_1
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$27;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v2, "Fotos, Downloads und andere Dateien kommen in den internen Speicher \u2026"

    const-string v3, "Photos, downloads and other files are moving to internal storage \u2026"

    invoke-static {v0, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2200(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

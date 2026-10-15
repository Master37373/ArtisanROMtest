.class Lcom/artisan/sdstorage/SdStorageModeActivity$1;
.super Landroid/os/storage/StorageEventListener;
.source "SdStorageModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$1;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$1;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$000(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    return-void
.end method

.method public onDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$1;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$000(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$1;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$000(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    return-void
.end method

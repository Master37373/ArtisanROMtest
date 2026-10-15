.class Lcom/artisan/sdstorage/SdStorageModeActivity$2;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity;->showMain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

.field final synthetic val$disk:Landroid/os/storage/DiskInfo;

.field final synthetic val$isInternal:Z

.field final synthetic val$priv:Landroid/os/storage/VolumeInfo;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity;ZLandroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 121
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$2;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iput-boolean p2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$2;->val$isInternal:Z

    iput-object p3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$2;->val$disk:Landroid/os/storage/DiskInfo;

    iput-object p4, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$2;->val$priv:Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$2;->val$isInternal:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$2;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$2;->val$disk:Landroid/os/storage/DiskInfo;

    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$2;->val$priv:Landroid/os/storage/VolumeInfo;

    invoke-static {v0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$000(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$2;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$2;->val$disk:Landroid/os/storage/DiskInfo;

    invoke-static {v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$100(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;)V

    goto :goto_0
.end method

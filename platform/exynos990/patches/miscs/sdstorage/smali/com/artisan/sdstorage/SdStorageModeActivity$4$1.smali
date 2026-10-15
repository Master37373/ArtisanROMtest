.class Lcom/artisan/sdstorage/SdStorageModeActivity$4$1;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Lcom/artisan/sdstorage/SdStorageModeActivity$Work;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$4;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity$4;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$4$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$4;

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
    .line 136
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$4$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$4;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$4;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$300(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$4$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$4;

    iget-object v1, v1, Lcom/artisan/sdstorage/SdStorageModeActivity$4;->val$diskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->partitionPrivate(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$4$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$4;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$4;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$4$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$4;

    iget-object v1, v1, Lcom/artisan/sdstorage/SdStorageModeActivity$4;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v2, "SD-Karte wird eingebunden\u2026"

    const-string v3, "Mounting SD card\u2026"

    invoke-static {v1, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$200(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$400(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$4$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$4;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$4;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$4$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$4;

    iget-object v1, v1, Lcom/artisan/sdstorage/SdStorageModeActivity$4;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$4$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$4;

    iget-object v2, v2, Lcom/artisan/sdstorage/SdStorageModeActivity$4;->val$diskId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$600(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$502(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

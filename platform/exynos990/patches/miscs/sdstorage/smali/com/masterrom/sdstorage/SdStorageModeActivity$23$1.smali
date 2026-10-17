.class Lcom/masterrom/sdstorage/SdStorageModeActivity$23$1;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/masterrom/sdstorage/SdStorageModeActivity$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$23;


# direct methods
.method constructor <init>(Lcom/masterrom/sdstorage/SdStorageModeActivity$23;)V
    .locals 0

    .line 1026
    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$23;

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

    .line 1028
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$23;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$23;

    iget-object v1, v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$23;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    const-string v2, "Karte wird sicher ausgeh\u00e4ngt \u2026"

    const-string v3, "Safely unmounting the card \u2026"

    invoke-static {v1, v2, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$2900(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$3100(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$23;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$3200(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$23;

    iget-object v1, v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$23;->val$diskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 1030
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$23;

    iget-object v1, v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$23;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    iget-object v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$23;

    iget-object v2, v2, Lcom/masterrom/sdstorage/SdStorageModeActivity$23;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$3300(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;I)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$3400(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;)V

    .line 1031
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$23;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$23;

    iget-object v1, v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$23;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    const-string v2, "Karte wird formatiert und verschl\u00fcsselt \u2026"

    const-string v3, "Formatting and encrypting the card \u2026"

    invoke-static {v1, v2, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$2900(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$3100(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V

    .line 1032
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$23;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$3200(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$23;

    iget-object v1, v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$23;->val$diskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->partitionPrivate(Ljava/lang/String;)V

    .line 1033
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$23;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$23;

    iget-object v1, v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$23;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    const-string v2, "Karte wird eingebunden \u2026"

    const-string v3, "Mounting the card \u2026"

    invoke-static {v1, v2, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$2900(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$3100(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V

    .line 1034
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$23;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$23;

    iget-object v1, v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$23;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$23;

    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$23;->val$diskId:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$3600(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$3502(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    const/4 p0, 0x0

    return-object p0
.end method

.class Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;


# direct methods
.method constructor <init>(Lcom/masterrom/sdstorage/SdStorageModeActivity$13;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 650
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$800(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/os/storage/StorageManager;

    move-result-object v0

    const-string v1, "private"

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 651
    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    const-string v1, "Interner Speicher nicht gefunden."

    const-string v2, "Internal storage not found."

    invoke-static {v0, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$700(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    :cond_0
    :goto_0
    return-object v0

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-boolean v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->val$primaryOnSd:Z

    if-eqz v0, :cond_2

    .line 653
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v1, v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    const-string v3, "Dateien werden verschoben\u2026"

    const-string v4, "Moving files\u2026"

    invoke-static {v1, v3, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$700(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$900(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v1, v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-static {v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$1400(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$1500(Lcom/masterrom/sdstorage/SdStorageModeActivity;I)Ljava/lang/String;

    move-result-object v0

    .line 655
    if-nez v0, :cond_0

    .line 657
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->val$pkgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 658
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v3, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v4, v4, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    const-string v5, "App wird verschoben: "

    const-string v6, "Moving app: "

    invoke-static {v4, v5, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$700(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->val$labels:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v4, v4, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->val$pkgs:Ljava/util/List;

    .line 659
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-static {v3, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$900(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v3, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$1400(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->val$pkgs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/os/storage/VolumeInfo;)I

    move-result v0

    invoke-static {v3, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$1500(Lcom/masterrom/sdstorage/SdStorageModeActivity;I)Ljava/lang/String;

    move-result-object v3

    .line 661
    if-eqz v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->val$labels:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 657
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 663
    :cond_4
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v1, v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    const-string v2, "SD-Karte wird formatiert\u2026"

    const-string v3, "Formatting SD card\u2026"

    invoke-static {v1, v2, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$700(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$900(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$800(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v1, v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->val$disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->partitionPublic(Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->val$fsUuid:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$800(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    iget-object v1, v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;->val$fsUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->forgetVolume(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :cond_5
    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 668
    :catch_0
    move-exception v0

    .line 669
    const-string v1, "MasterROMSdStorage"

    const-string v2, "forgetVolume failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

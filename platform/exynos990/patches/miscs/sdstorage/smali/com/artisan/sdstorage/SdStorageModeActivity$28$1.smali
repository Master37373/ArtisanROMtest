.class Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Lcom/artisan/sdstorage/SdStorageModeActivity$Work;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity$28;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity$28;)V
    .locals 0

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

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
    .line 1099
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2500(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/os/storage/StorageManager;

    move-result-object v0

    const-string v1, "private"

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 1100
    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v1, "Interner Speicher nicht gefunden."

    const-string v2, "Internal storage not found."

    invoke-static {v0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2200(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1123
    :cond_0
    :goto_0
    return-object v0

    .line 1101
    :cond_1
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-boolean v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->val$primaryOnSd:Z

    if-eqz v0, :cond_2

    .line 1102
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v1, v1, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v3, "Dateien werden in den internen Speicher verschoben \u2026"

    const-string v4, "Moving files to internal storage \u2026"

    invoke-static {v1, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2200(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2400(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V

    .line 1103
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v1, v1, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$3400(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$3500(Lcom/artisan/sdstorage/SdStorageModeActivity;I)Ljava/lang/String;

    move-result-object v0

    .line 1104
    if-nez v0, :cond_0

    .line 1106
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->val$pkgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1107
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v3, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v4, v4, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v5, "App wird verschoben: "

    const-string v6, "Moving app: "

    invoke-static {v4, v5, v6}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2200(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->val$labels:Ljava/util/List;

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

    iget-object v4, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v4, v4, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->val$pkgs:Ljava/util/List;

    .line 1108
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1107
    invoke-static {v3, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2400(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V

    .line 1109
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v3, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$3400(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->val$pkgs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/os/storage/VolumeInfo;)I

    move-result v0

    invoke-static {v3, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$3500(Lcom/artisan/sdstorage/SdStorageModeActivity;I)Ljava/lang/String;

    move-result-object v3

    .line 1110
    if-eqz v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->val$labels:Ljava/util/List;

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

    .line 1106
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 1112
    :cond_4
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v1, v1, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v2, "Karte wird sicher ausgeh\u00e4ngt \u2026"

    const-string v3, "Safely unmounting the card \u2026"

    invoke-static {v1, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2200(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2400(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v1, v1, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v2, v2, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->val$disk:Landroid/os/storage/DiskInfo;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2600(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;I)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2700(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;)V

    .line 1114
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v1, v1, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v2, "SD-Karte wird formatiert \u2026"

    const-string v3, "Formatting SD card \u2026"

    invoke-static {v1, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2200(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2400(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2500(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v1, v1, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->val$disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->partitionPublic(Ljava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->val$fsUuid:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1118
    :try_start_0
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2500(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$28$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    iget-object v1, v1, Lcom/artisan/sdstorage/SdStorageModeActivity$28;->val$fsUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->forgetVolume(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    :cond_5
    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    const-string v1, "ArtisanSdStorage"

    const-string v2, "forgetVolume failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

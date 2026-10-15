.class Lcom/artisan/sdstorage/SdStorageModeActivity$10;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity;->offerMigrate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

.field final synthetic val$target:Landroid/os/storage/VolumeInfo;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 561
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iput-object p2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10;->val$target:Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 563
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v2, "Dateien werden auf die SD-Karte verschoben\u2026"

    const-string v3, "Moving files to the SD card\u2026"

    invoke-static {v1, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$700(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/artisan/sdstorage/SdStorageModeActivity$10$1;

    invoke-direct {v2, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$10$1;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity$10;)V

    iget-object v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v4, "Fotos, Downloads und andere Dateien liegen jetzt auf der SD-Karte."

    const-string v5, "Photos, downloads and other files are now on the SD card."

    .line 567
    invoke-static {v3, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$700(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 563
    invoke-static {v0, v1, v2, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$1300(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Lcom/artisan/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 569
    return-void
.end method

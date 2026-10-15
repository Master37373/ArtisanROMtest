.class Lcom/artisan/sdstorage/SdStorageModeActivity$11;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity;->confirmFileLocation(Landroid/os/storage/VolumeInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

.field final synthetic val$priv:Landroid/os/storage/VolumeInfo;

.field final synthetic val$started:[Z

.field final synthetic val$wantSd:Z


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity;[ZZLandroid/os/storage/VolumeInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 594
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$11;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iput-object p2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$11;->val$started:[Z

    iput-boolean p3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$11;->val$wantSd:Z

    iput-object p4, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$11;->val$priv:Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 595
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$11;->val$started:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 596
    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$11;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$11;->val$wantSd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$11;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v1, "Dateien werden auf die SD-Karte verschoben\u2026"

    const-string v3, "Moving files to the SD card\u2026"

    invoke-static {v0, v1, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$700(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 597
    :goto_0
    new-instance v3, Lcom/artisan/sdstorage/SdStorageModeActivity$11$1;

    invoke-direct {v3, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$11$1;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity$11;)V

    .line 603
    iget-boolean v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$11;->val$wantSd:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$11;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v4, "Fotos, Downloads und andere Dateien werden jetzt auf der SD-Karte gespeichert."

    const-string v5, "Photos, downloads and other files are now stored on the SD card."

    invoke-static {v1, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$700(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 605
    :goto_1
    const/4 v4, 0x0

    .line 596
    invoke-static {v2, v0, v3, v1, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$1300(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Lcom/artisan/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 607
    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$11;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v1, "Dateien werden in den internen Speicher verschoben\u2026"

    const-string v3, "Moving files to internal storage\u2026"

    invoke-static {v0, v1, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$700(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 605
    :cond_1
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$11;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v4, "Fotos, Downloads und andere Dateien werden jetzt im internen Speicher gespeichert."

    const-string v5, "Photos, downloads and other files are now stored on internal storage."

    invoke-static {v1, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$700(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

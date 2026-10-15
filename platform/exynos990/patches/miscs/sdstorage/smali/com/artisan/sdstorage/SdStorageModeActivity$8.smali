.class Lcom/artisan/sdstorage/SdStorageModeActivity$8;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity;->toPortable(Landroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

.field final synthetic val$disk:Landroid/os/storage/DiskInfo;

.field final synthetic val$fsUuid:Ljava/lang/String;

.field final synthetic val$labels:Ljava/util/List;

.field final synthetic val$pkgs:Ljava/util/List;

.field final synthetic val$primaryOnSd:Z


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity;ZLjava/util/List;Ljava/util/List;Landroid/os/storage/DiskInfo;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 226
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iput-boolean p2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8;->val$primaryOnSd:Z

    iput-object p3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8;->val$pkgs:Ljava/util/List;

    iput-object p4, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8;->val$labels:Ljava/util/List;

    iput-object p5, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8;->val$disk:Landroid/os/storage/DiskInfo;

    iput-object p6, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8;->val$fsUuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 227
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v2, "Daten werden verschoben\u2026"

    const-string v3, "Moving data\u2026"

    invoke-static {v1, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$200(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;

    invoke-direct {v2, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity$8;)V

    iget-object v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v4, "Die SD-Karte wird jetzt als tragbarer Speicher genutzt."

    const-string v5, "The SD card is now used as portable storage."

    .line 251
    invoke-static {v3, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$200(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 227
    invoke-static {v0, v1, v2, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$800(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Lcom/artisan/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 253
    return-void
.end method

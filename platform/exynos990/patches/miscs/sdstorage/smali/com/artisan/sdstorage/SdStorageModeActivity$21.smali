.class Lcom/artisan/sdstorage/SdStorageModeActivity$21;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity;->confirmToInternal(Landroid/os/storage/DiskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

.field final synthetic val$diskId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 944
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$21;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iput-object p2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$21;->val$diskId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 945
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$21;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$21;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v2, "SD-Karte wird eingerichtet"

    const-string v3, "Setting up SD card"

    invoke-static {v1, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2200(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/artisan/sdstorage/SdStorageModeActivity$21$1;

    invoke-direct {v2, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$21$1;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity$21;)V

    const/4 v3, 0x0

    new-instance v4, Lcom/artisan/sdstorage/SdStorageModeActivity$21$2;

    invoke-direct {v4, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$21$2;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity$21;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$3100(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Lcom/artisan/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 957
    return-void
.end method

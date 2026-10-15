.class Lcom/artisan/sdstorage/SdStorageModeActivity$25;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$wantSd:Z


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity;ZLandroid/os/storage/VolumeInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$25;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iput-boolean p2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$25;->val$wantSd:Z

    iput-object p3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$25;->val$priv:Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$25;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$25$1;

    invoke-direct {v1, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$25$1;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity$25;)V

    invoke-static {v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$3300(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/Runnable;)V

    .line 1042
    return-void
.end method

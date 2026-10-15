.class Lcom/artisan/sdstorage/SdStorageModeActivity$29;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$doIt:Ljava/lang/Runnable;

.field final synthetic val$primaryOnSd:Z


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity;ZLjava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$29;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iput-boolean p2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$29;->val$primaryOnSd:Z

    iput-object p3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$29;->val$doIt:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1131
    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$29;->val$primaryOnSd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$29;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$29;->val$doIt:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$3300(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/Runnable;)V

    .line 1132
    :goto_0
    return-void

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$29;->val$doIt:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

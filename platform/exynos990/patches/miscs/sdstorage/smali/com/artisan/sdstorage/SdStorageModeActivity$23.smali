.class Lcom/artisan/sdstorage/SdStorageModeActivity$23;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity;->showInternalReady()V
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
    .line 1007
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$23;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iput-object p2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$23;->val$target:Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$23;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$23$1;

    invoke-direct {v1, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$23$1;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity$23;)V

    invoke-static {v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$3100(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/Runnable;)V

    .line 1010
    return-void
.end method

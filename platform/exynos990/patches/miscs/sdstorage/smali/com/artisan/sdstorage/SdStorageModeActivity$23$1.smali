.class Lcom/artisan/sdstorage/SdStorageModeActivity$23$1;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity$23;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$23;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity$23;)V
    .locals 0

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$23$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$23$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$23;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$23;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$23$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$23;

    iget-object v1, v1, Lcom/artisan/sdstorage/SdStorageModeActivity$23;->val$target:Landroid/os/storage/VolumeInfo;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$3000(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;Z)V

    return-void
.end method

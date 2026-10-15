.class Lcom/artisan/sdstorage/SdStorageModeActivity$7;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity;->showMain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

.field final synthetic val$disk:Landroid/os/storage/DiskInfo;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 478
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$7;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iput-object p2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$7;->val$disk:Landroid/os/storage/DiskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$7;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$7;->val$disk:Landroid/os/storage/DiskInfo;

    invoke-static {v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$600(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;)V

    return-void
.end method

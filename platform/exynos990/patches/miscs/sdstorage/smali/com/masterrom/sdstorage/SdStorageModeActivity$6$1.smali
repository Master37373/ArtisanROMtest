.class Lcom/masterrom/sdstorage/SdStorageModeActivity$6$1;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/masterrom/sdstorage/SdStorageModeActivity$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$6;


# direct methods
.method constructor <init>(Lcom/masterrom/sdstorage/SdStorageModeActivity$6;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$6$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$6$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$6;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$6;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$6$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$6;

    iget-object v1, v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$6;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-static {v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$900(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$6$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$6;

    iget-object v2, v2, Lcom/masterrom/sdstorage/SdStorageModeActivity$6;->val$target:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$1000(Lcom/masterrom/sdstorage/SdStorageModeActivity;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

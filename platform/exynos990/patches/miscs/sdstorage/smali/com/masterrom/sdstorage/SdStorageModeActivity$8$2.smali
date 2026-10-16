.class Lcom/masterrom/sdstorage/SdStorageModeActivity$8$2;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/masterrom/sdstorage/SdStorageModeActivity$8;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$8;


# direct methods
.method constructor <init>(Lcom/masterrom/sdstorage/SdStorageModeActivity$8;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$8$2;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$8$2;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$8;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$8;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$1200(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    return-void
.end method

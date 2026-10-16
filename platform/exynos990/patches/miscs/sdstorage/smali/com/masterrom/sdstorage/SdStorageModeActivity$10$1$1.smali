.class Lcom/masterrom/sdstorage/SdStorageModeActivity$10$1$1;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/masterrom/sdstorage/SdStorageModeActivity$10$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/masterrom/sdstorage/SdStorageModeActivity$10$1;


# direct methods
.method constructor <init>(Lcom/masterrom/sdstorage/SdStorageModeActivity$10$1;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$10$1$1;->this$2:Lcom/masterrom/sdstorage/SdStorageModeActivity$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$10$1$1;->this$2:Lcom/masterrom/sdstorage/SdStorageModeActivity$10$1;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$10$1;->this$1:Lcom/masterrom/sdstorage/SdStorageModeActivity$10;

    iget-object v0, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$10;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-virtual {v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->finish()V

    return-void
.end method

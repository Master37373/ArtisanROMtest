.class Lcom/artisan/sdstorage/SdStorageModeActivity$8;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 505
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iput-object p2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8;->val$diskId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 506
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v2, "SD-Karte wird formatiert und verschl\u00fcsselt\u2026"

    const-string v3, "Formatting and encrypting SD card\u2026"

    invoke-static {v1, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$700(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;

    invoke-direct {v2, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity$8;)V

    iget-object v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v4, "Die SD-Karte wird jetzt als interner, verschl\u00fcsselter Speicher genutzt."

    const-string v5, "The SD card is now used as encrypted internal storage."

    .line 513
    invoke-static {v3, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$700(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/artisan/sdstorage/SdStorageModeActivity$8$2;

    invoke-direct {v4, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$8$2;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity$8;)V

    .line 506
    invoke-static {v0, v1, v2, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$1300(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Lcom/artisan/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 516
    return-void
.end method

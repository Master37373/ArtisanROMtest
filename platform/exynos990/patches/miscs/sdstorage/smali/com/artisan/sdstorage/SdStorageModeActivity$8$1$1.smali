.class Lcom/artisan/sdstorage/SdStorageModeActivity$8$1$1;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8$1$1;->this$2:Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8$1$1;->this$2:Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$8;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$8;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-virtual {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->finish()V

    return-void
.end method

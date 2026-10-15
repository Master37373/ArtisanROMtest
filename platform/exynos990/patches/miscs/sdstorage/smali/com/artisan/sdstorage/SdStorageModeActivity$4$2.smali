.class Lcom/artisan/sdstorage/SdStorageModeActivity$4$2;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$4;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity$4;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$4$2;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$4$2;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$4;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$4;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$700(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    return-void
.end method

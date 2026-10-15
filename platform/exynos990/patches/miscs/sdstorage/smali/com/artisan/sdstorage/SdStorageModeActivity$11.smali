.class Lcom/artisan/sdstorage/SdStorageModeActivity$11;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity;->updateBackCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$11;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackInvoked()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$11;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$300(Lcom/artisan/sdstorage/SdStorageModeActivity;)Z

    return-void
.end method

.class Lcom/artisan/sdstorage/SdStorageModeActivity$34;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity;->showResult(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

.field final synthetic val$next:Ljava/lang/Runnable;

.field final synthetic val$okMsg:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$work:Lcom/artisan/sdstorage/SdStorageModeActivity$Work;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Lcom/artisan/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$34;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iput-object p2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$34;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$34;->val$work:Lcom/artisan/sdstorage/SdStorageModeActivity$Work;

    iput-object p4, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$34;->val$okMsg:Ljava/lang/String;

    iput-object p5, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$34;->val$next:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$34;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$34$1;

    invoke-direct {v1, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$34$1;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity$34;)V

    invoke-static {v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$3300(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/Runnable;)V

    .line 1279
    return-void
.end method

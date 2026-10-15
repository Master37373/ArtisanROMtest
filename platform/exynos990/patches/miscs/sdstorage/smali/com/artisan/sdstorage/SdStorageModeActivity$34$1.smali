.class Lcom/artisan/sdstorage/SdStorageModeActivity$34$1;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity$34;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$34;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity$34;)V
    .locals 0

    .prologue
    .line 1253
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$34$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$34$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$34;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$34;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$34$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$34;

    iget-object v1, v1, Lcom/artisan/sdstorage/SdStorageModeActivity$34;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$34$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$34;

    iget-object v2, v2, Lcom/artisan/sdstorage/SdStorageModeActivity$34;->val$work:Lcom/artisan/sdstorage/SdStorageModeActivity$Work;

    iget-object v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$34$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$34;

    iget-object v3, v3, Lcom/artisan/sdstorage/SdStorageModeActivity$34;->val$okMsg:Ljava/lang/String;

    iget-object v4, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$34$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$34;

    iget-object v4, v4, Lcom/artisan/sdstorage/SdStorageModeActivity$34;->val$next:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$2900(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Lcom/artisan/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

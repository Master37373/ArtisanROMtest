.class Lcom/artisan/sdstorage/SdStorageModeActivity$10$1;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$10;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity$10;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 293
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$10;

    iput-object p2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$10;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$10;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$1100(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$10;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$10;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$1100(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$10;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$10;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$1100(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$10;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$10;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-virtual {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$10;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$10;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-virtual {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    :cond_1
    :goto_1
    return-void

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10$1;->val$result:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$10;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$10;->val$next:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 299
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$10;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$10;->val$next:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$10;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$10;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$1200(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10$1;->val$result:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$10;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$10;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v2, "Fertig"

    const-string v3, "Done"

    invoke-static {v0, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$200(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 303
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10$1;->val$result:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$10;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$10;->val$okMessage:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/artisan/sdstorage/SdStorageModeActivity$10$1$1;

    invoke-direct {v2, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$10$1$1;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity$10$1;)V

    .line 304
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 302
    :cond_4
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$10;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$10;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v2, "Fehler"

    const-string v3, "Error"

    invoke-static {v0, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$200(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 303
    :cond_5
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$10$1;->val$result:Ljava/lang/String;

    goto :goto_3

    .line 295
    :catch_0
    move-exception v0

    goto :goto_0
.end method

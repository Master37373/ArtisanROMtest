.class Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$8;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity$8;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 239
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$8;

    iput-object p2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$8;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$8;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$800(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$8;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$8;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$800(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$8;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$8;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-static {v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$900(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;->val$result:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$8;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$8;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v2, "Fertig"

    const-string v3, "Done"

    invoke-static {v0, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$200(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 242
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;->val$result:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$8;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$8;->val$okMessage:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/artisan/sdstorage/SdStorageModeActivity$8$1$1;

    invoke-direct {v2, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$8$1$1;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;)V

    .line 243
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 245
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;->this$1:Lcom/artisan/sdstorage/SdStorageModeActivity$8;

    iget-object v0, v0, Lcom/artisan/sdstorage/SdStorageModeActivity$8;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const-string v2, "Fehler"

    const-string v3, "Error"

    invoke-static {v0, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$200(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$8$1;->val$result:Ljava/lang/String;

    goto :goto_1
.end method

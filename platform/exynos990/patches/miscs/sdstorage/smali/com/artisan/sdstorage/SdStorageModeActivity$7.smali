.class Lcom/artisan/sdstorage/SdStorageModeActivity$7;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity;->showSheet(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V
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
    .line 555
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$7;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$7;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$500(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/Runnable;)V

    return-void
.end method

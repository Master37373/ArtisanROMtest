.class Lcom/artisan/sdstorage/SdStorageModeActivity$5;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdStorageModeActivity;->showMain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

.field final synthetic val$onSd:Z

.field final synthetic val$priv:Landroid/os/storage/VolumeInfo;

.field final synthetic val$rSd:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/widget/RadioButton;ZLandroid/os/storage/VolumeInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 446
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$5;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iput-object p2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$5;->val$rSd:Landroid/widget/RadioButton;

    iput-boolean p3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$5;->val$onSd:Z

    iput-object p4, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$5;->val$priv:Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 448
    if-nez p2, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$5;->val$rSd:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    .line 450
    :goto_1
    iget-boolean v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$5;->val$onSd:Z

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$5;->this$0:Lcom/artisan/sdstorage/SdStorageModeActivity;

    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity$5;->val$priv:Landroid/os/storage/VolumeInfo;

    invoke-static {v1, v2, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->access$400(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;Z)V

    goto :goto_0

    .line 449
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

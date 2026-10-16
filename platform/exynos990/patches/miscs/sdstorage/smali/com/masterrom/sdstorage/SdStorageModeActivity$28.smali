.class Lcom/masterrom/sdstorage/SdStorageModeActivity$28;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/masterrom/sdstorage/SdStorageModeActivity;->toPortable(Landroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

.field final synthetic val$disk:Landroid/os/storage/DiskInfo;

.field final synthetic val$fsUuid:Ljava/lang/String;

.field final synthetic val$labels:Ljava/util/List;

.field final synthetic val$pkgs:Ljava/util/List;

.field final synthetic val$primaryOnSd:Z


# direct methods
.method constructor <init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;ZLjava/util/List;Ljava/util/List;Landroid/os/storage/DiskInfo;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    iput-boolean p2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28;->val$primaryOnSd:Z

    iput-object p3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28;->val$pkgs:Ljava/util/List;

    iput-object p4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28;->val$labels:Ljava/util/List;

    iput-object p5, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28;->val$disk:Landroid/os/storage/DiskInfo;

    iput-object p6, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28;->val$fsUuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    const-string v2, "SD-Karte wird tragbar gemacht"

    const-string v3, "Making SD card portable"

    invoke-static {v1, v2, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$2200(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/masterrom/sdstorage/SdStorageModeActivity$28$1;

    invoke-direct {v2, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$28$1;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity$28;)V

    iget-object v3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    const-string v4, "Die SD-Karte ist jetzt wieder ein tragbarer Speicher \u2013 ohne Verschl\u00fcsselung und auch in anderen Ger\u00e4ten lesbar."

    const-string v5, "The SD card is portable storage again \u2013 without encryption and readable on other devices."

    .line 1124
    invoke-static {v3, v4, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$2200(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1098
    invoke-static {v0, v1, v2, v3, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$3100(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1126
    return-void
.end method

.class public Lcom/artisan/sdstorage/SdStorageModeActivity;
.super Landroid/app/Activity;
.source "SdStorageModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artisan/sdstorage/SdStorageModeActivity$Work;
    }
.end annotation


# static fields
.field private static final MATCH_ANY_USER:I = 0x400000

.field private static final MOVE_SUCCEEDED:I = -0x64

.field private static final TAG:Ljava/lang/String; = "ArtisanSdStorage"


# instance fields
.field private mDe:Z

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mSm:Landroid/os/storage/StorageManager;

.field private mUi:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->toPortable(Landroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->confirmToInternal(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/os/storage/StorageManager;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Lcom/artisan/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->runWork(Ljava/lang/String;Lcom/artisan/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->setProgressText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/artisan/sdstorage/SdStorageModeActivity;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->waitMove(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->builder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private builder()Landroid/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dialogTheme()I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 61
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 62
    return-object v0
.end method

.method private confirmToInternal(Landroid/os/storage/DiskInfo;)V
    .locals 3

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->builder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Alle Daten l\u00f6schen?"

    const-string v2, "Erase all data?"

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Alle Daten auf der SD-Karte werden unwiderruflich gel\u00f6scht."

    const-string v2, "All data on the SD card will be permanently erased."

    .line 129
    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/artisan/sdstorage/SdStorageModeActivity$5;

    invoke-direct {v2, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$5;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "L\u00f6schen und einrichten"

    const-string v2, "Erase and set up"

    .line 132
    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/artisan/sdstorage/SdStorageModeActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity$4;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 142
    return-void
.end method

.method private dialogTheme()I
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    .line 54
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 55
    const v0, 0x10302d1

    .line 54
    :goto_0
    return v0

    .line 56
    :cond_0
    const v0, 0x10302d2

    goto :goto_0
.end method

.method private findSdDisk()Landroid/os/storage/DiskInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v0

    .line 69
    if-nez v0, :cond_0

    move-object v0, v1

    .line 73
    :goto_0
    return-object v0

    .line 70
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    .line 71
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 73
    goto :goto_0
.end method

.method private findVolume(Landroid/os/storage/DiskInfo;I)Landroid/os/storage/VolumeInfo;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v1

    .line 82
    :goto_0
    return-object v0

    .line 79
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 80
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    if-ne v3, p2, :cond_2

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 82
    goto :goto_0
.end method

.method private runWork(Ljava/lang/String;Lcom/artisan/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 226
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dialogTheme()I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mProgress:Landroid/app/ProgressDialog;

    .line 227
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 228
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 229
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 231
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 232
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$8;

    invoke-direct {v1, p0, p2, p3}, Lcom/artisan/sdstorage/SdStorageModeActivity$8;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Lcom/artisan/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;)V

    const-string v2, "ArtisanSdStorage"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 252
    return-void
.end method

.method private setProgressText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity$9;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    return-void
.end method

.method private showMain()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 88
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->findSdDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    .line 89
    if-nez v3, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->builder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SD-Karte"

    const-string v2, "SD card"

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Es ist keine SD-Karte eingelegt."

    const-string v2, "No SD card inserted."

    .line 91
    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/artisan/sdstorage/SdStorageModeActivity$1;

    invoke-direct {v2, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$1;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 123
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-direct {p0, v3, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->findVolume(Landroid/os/storage/DiskInfo;I)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    .line 97
    if-eqz v4, :cond_1

    move v2, v0

    .line 101
    :goto_1
    if-eqz v2, :cond_2

    .line 102
    const-string v0, "Die SD-Karte wird aktuell als interner Speicher genutzt (verschl\u00fcsselt, nur in diesem Ger\u00e4t lesbar).\n\nAls tragbaren Speicher einrichten? Apps auf der Karte werden vorher auf den internen Speicher verschoben. Danach wird die Karte formatiert, alle Daten darauf werden gel\u00f6scht."

    const-string v1, "The SD card is currently used as internal storage (encrypted, readable only on this device).\n\nSet it up as portable storage? Apps on the card are moved back to internal storage first. The card is then formatted and all data on it is erased."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    const-string v0, "Als tragbar einrichten"

    const-string v5, "Use as portable"

    invoke-direct {p0, v0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_2
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->builder()Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "SD-Karte als internen Speicher nutzen"

    const-string v7, "Use SD card as internal storage"

    invoke-direct {p0, v6, v7}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 119
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/artisan/sdstorage/SdStorageModeActivity$3;

    invoke-direct {v6, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$3;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    .line 120
    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v5, Lcom/artisan/sdstorage/SdStorageModeActivity$2;

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity$2;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;ZLandroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V

    .line 121
    invoke-virtual {v1, v0, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1

    .line 110
    :cond_2
    const-string v0, "Die SD-Karte wird aktuell als tragbarer Speicher genutzt.\n\nAls internen Speicher einrichten? Die Karte wird formatiert und verschl\u00fcsselt. Alle Daten darauf werden gel\u00f6scht, und sie ist danach nur noch in diesem Ger\u00e4t lesbar."

    const-string v1, "The SD card is currently used as portable storage.\n\nSet it up as internal storage? The card is formatted and encrypted. All data on it is erased and it will only be readable on this device."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    const-string v0, "Als intern einrichten"

    const-string v5, "Use as internal"

    invoke-direct {p0, v0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mDe:Z

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method private toPortable(Landroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V
    .locals 9

    .prologue
    const/16 v8, 0xa

    .line 147
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v6

    .line 148
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 149
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 150
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 151
    if-eqz v6, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_1
    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    .line 158
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    if-eqz v2, :cond_2

    .line 160
    const-string v0, "\u2022 Fotos, Downloads und andere Dateien liegen auf der Karte und werden zur\u00fcck auf den internen Speicher verschoben.\n"

    const-string v5, "\u2022 Photos, downloads and other files are on the card and will be moved back to internal storage.\n"

    invoke-direct {p0, v0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 164
    const-string v0, "\u2022 Diese Apps werden zur\u00fcck auf den internen Speicher verschoben:\n"

    const-string v5, "\u2022 These apps will be moved back to internal storage:\n"

    invoke-direct {p0, v0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "   \u2013 "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 156
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 168
    :cond_4
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "Danach wird die SD-Karte formatiert. Alle restlichen Daten darauf werden gel\u00f6scht."

    const-string v7, "The SD card is then formatted. All remaining data on it is erased."

    invoke-direct {p0, v5, v7}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->builder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v5, "Als tragbar einrichten?"

    const-string v7, "Use as portable?"

    invoke-direct {p0, v5, v7}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v5, Lcom/artisan/sdstorage/SdStorageModeActivity$7;

    invoke-direct {v5, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$7;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    .line 173
    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string v0, "Fortfahren"

    const-string v1, "Continue"

    .line 174
    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/artisan/sdstorage/SdStorageModeActivity$6;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/artisan/sdstorage/SdStorageModeActivity$6;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;ZLjava/util/List;Ljava/util/List;Landroid/os/storage/DiskInfo;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 203
    return-void
.end method

.method private waitMove(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    .line 208
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    .line 209
    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getMoveStatus(I)I

    move-result v2

    .line 210
    const/16 v3, -0x64

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    .line 214
    :goto_1
    return-object v0

    .line 211
    :cond_0
    if-gez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verschieben fehlgeschlagen (Code "

    const-string v3, "Move failed (code "

    invoke-direct {p0, v1, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 212
    :cond_1
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 214
    :cond_2
    const-string v0, "Zeit\u00fcberschreitung beim Verschieben."

    const-string v1, "Move timed out."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    .line 42
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    .line 44
    const-string v0, "de"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mDe:Z

    .line 45
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->showMain()V

    .line 46
    return-void
.end method

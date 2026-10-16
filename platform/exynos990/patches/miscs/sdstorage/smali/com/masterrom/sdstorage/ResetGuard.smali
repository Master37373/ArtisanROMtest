.class public final Lcom/masterrom/sdstorage/ResetGuard;
.super Ljava/lang/Object;
.source "ResetGuard.java"


# static fields
.field private static final MATCH_ANY_USER:I = 0x400000

.field private static final TAG:Ljava/lang/String; = "MasterROMResetGuard"

.field private static sAllowOnce:Lcom/android/settings/MainClearConfirm;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/MainClearConfirm;)Lcom/android/settings/MainClearConfirm;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lcom/masterrom/sdstorage/ResetGuard;->sAllowOnce:Lcom/android/settings/MainClearConfirm;

    return-object p0
.end method

.method private static findAdoptedSd(Landroid/os/storage/StorageManager;)Landroid/os/storage/VolumeInfo;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 114
    if-nez v0, :cond_0

    move-object v0, v1

    .line 120
    :goto_0
    return-object v0

    .line 115
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 116
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 117
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v3

    .line 118
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 120
    goto :goto_0
.end method

.method public static intercept(Lcom/android/settings/MainClearConfirm;)Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    :try_start_0
    sget-object v0, Lcom/masterrom/sdstorage/ResetGuard;->sAllowOnce:Lcom/android/settings/MainClearConfirm;

    if-ne v0, p0, :cond_0

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/masterrom/sdstorage/ResetGuard;->sAllowOnce:Lcom/android/settings/MainClearConfirm;

    move v0, v2

    .line 108
    :goto_0
    return v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MainClearConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    .line 42
    if-nez v5, :cond_1

    move v0, v2

    goto :goto_0

    .line 43
    :cond_1
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 44
    invoke-static {v0}, Lcom/masterrom/sdstorage/ResetGuard;->findAdoptedSd(Landroid/os/storage/StorageManager;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 45
    if-nez v1, :cond_2

    move v0, v2

    goto :goto_0

    .line 47
    :cond_2
    const-string v4, "de"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 48
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v7

    .line 49
    if-eqz v7, :cond_3

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v4, v3

    .line 51
    :goto_1
    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 52
    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_4

    if-eqz v7, :cond_4

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 55
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    .line 56
    goto :goto_2

    :cond_3
    move v4, v2

    .line 49
    goto :goto_1

    :cond_4
    move v1, v2

    .line 59
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    if-eqz v6, :cond_b

    .line 61
    const-string v0, "Die SD-Karte wird als interner Speicher genutzt. Sie ist verschl\u00fcsselt und an dieses Ger\u00e4t gebunden. Beim Zur\u00fccksetzen wird der Schl\u00fcssel gel\u00f6scht \u2013 die Daten auf der Karte sind danach nicht mehr lesbar.\n\n"

    .line 60
    :goto_4
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    if-nez v4, :cond_6

    if-lez v1, :cond_9

    .line 66
    :cond_6
    if-eqz v6, :cond_c

    const-string v0, "Auf der Karte liegen:\n"

    :goto_5
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    if-eqz v4, :cond_7

    if-eqz v6, :cond_d

    const-string v0, "\u2022 Fotos, Videos, Downloads und andere Dateien\n"

    :goto_6
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_7
    if-lez v1, :cond_8

    if-eqz v6, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2022 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v1, v3, :cond_e

    const-string v0, " App\n"

    :goto_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_8
    const/16 v0, 0xa

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    :cond_9
    if-eqz v6, :cond_11

    .line 72
    const-string v0, "Sichere wichtige Dateien vorher, z. B. auf einen PC oder in die Cloud.\n\nDamit die Karte danach sofort wieder nutzbar ist, wird sie beim Zur\u00fccksetzen mit gel\u00f6scht und als tragbarer Speicher formatiert."

    .line 71
    :goto_9
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    .line 80
    const/16 v1, 0x20

    if-ne v0, v1, :cond_12

    .line 81
    const v0, 0x10302d1

    .line 83
    :goto_a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 84
    if-eqz v6, :cond_13

    const-string v0, "SD-Karte wird mit gel\u00f6scht"

    :goto_b
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v4, 0x0

    .line 86
    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 87
    if-eqz v6, :cond_14

    const-string v0, "Karte mit l\u00f6schen"

    :goto_c
    new-instance v4, Lcom/masterrom/sdstorage/ResetGuard$1;

    invoke-direct {v4, p0}, Lcom/masterrom/sdstorage/ResetGuard$1;-><init>(Lcom/android/settings/MainClearConfirm;)V

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 95
    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.sec.android.app.myfiles"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 96
    if-eqz v4, :cond_a

    .line 97
    if-eqz v6, :cond_15

    const-string v0, "Eigene Dateien"

    :goto_d
    new-instance v6, Lcom/masterrom/sdstorage/ResetGuard$2;

    invoke-direct {v6, v5, v4}, Lcom/masterrom/sdstorage/ResetGuard$2;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    :cond_a
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v3

    .line 104
    goto/16 :goto_0

    .line 63
    :cond_b
    const-string v0, "The SD card is used as internal storage. It is encrypted and tied to this device. Resetting deletes the key \u2013 the data on the card can no longer be read afterwards.\n\n"

    goto/16 :goto_4

    .line 66
    :cond_c
    const-string v0, "Stored on the card:\n"

    goto/16 :goto_5

    .line 67
    :cond_d
    const-string v0, "\u2022 Photos, videos, downloads and other files\n"

    goto/16 :goto_6

    .line 68
    :cond_e
    const-string v0, " Apps\n"

    goto :goto_7

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2022 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v1, v3, :cond_10

    const-string v0, " app\n"

    :goto_e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_10
    const-string v0, " apps\n"

    goto :goto_e

    .line 75
    :cond_11
    const-string v0, "Back up important files first, e.g. to a PC or the cloud.\n\nSo that the card can be used again right away, it is erased as part of the reset and formatted as portable storage."

    goto/16 :goto_9

    .line 82
    :cond_12
    const v0, 0x10302d2

    goto :goto_a

    .line 84
    :cond_13
    const-string v0, "SD card will be erased too"

    goto :goto_b

    .line 87
    :cond_14
    const-string v0, "Erase card too"

    goto :goto_c

    .line 97
    :cond_15
    const-string v0, "My Files"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    .line 105
    :catch_0
    move-exception v0

    .line 107
    const-string v1, "MasterROMResetGuard"

    const-string v3, "SD card check failed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    .line 108
    goto/16 :goto_0

    :cond_16
    move v0, v1

    goto/16 :goto_3
.end method

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

.field private static final MOVE_FAILED_LOCKED_USER:I = -0xa

.field private static final MOVE_SUCCEEDED:I = -0x64

.field private static final SECURE_FOLDER_PKG:Ljava/lang/String; = "com.samsung.knox.securefolder"

.field private static final TAG:Ljava/lang/String; = "ArtisanSdStorage"


# instance fields
.field private mAccent:I

.field private mAccent2:I

.field private mBack:Landroid/widget/ImageButton;

.field private mBackCb:Landroid/window/OnBackInvokedCallback;

.field private mBarTitle:Landroid/widget/TextView;

.field private mBase:I

.field private mBigTitle:Landroid/widget/TextView;

.field private mBottom:Landroid/widget/LinearLayout;

.field private mBusy:Z

.field private mContent:Landroid/widget/LinearLayout;

.field private mDe:Z

.field private mDivider:I

.field private final mEase:Landroid/view/animation/PathInterpolator;

.field private final mEmph:Landroid/view/animation/PathInterpolator;

.field private mFrame:Landroid/widget/LinearLayout;

.field private mGlass:I

.field private mGlassHi:I

.field private mGlassStroke:I

.field private mLastNext:Ljava/lang/Runnable;

.field private mLastOk:Ljava/lang/String;

.field private mLastTitle:Ljava/lang/String;

.field private mLastWork:Lcom/artisan/sdstorage/SdStorageModeActivity$Work;

.field private final mListener:Landroid/os/storage/StorageEventListener;

.field private volatile mNewPrivate:Landroid/os/storage/VolumeInfo;

.field private mNight:Z

.field private mOnAccent:I

.field private mOnMain:Z

.field private mPageId:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRoot:Landroid/widget/FrameLayout;

.field private mScrim:I

.field private mScrim2:Landroid/view/View;

.field private mScroll:Landroid/widget/ScrollView;

.field private mSheet:Landroid/widget/LinearLayout;

.field private mSheetBg:I

.field private mSheetCancel:Ljava/lang/Runnable;

.field private mSheetLayer:Landroid/widget/FrameLayout;

.field private mSheetShown:Z

.field private mSm:Landroid/os/storage/StorageManager;

.field private mSubText:I

.field private mText:I

.field private mUi:Landroid/os/Handler;

.field private mUm:Landroid/os/UserManager;

.field private mWorkText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 114
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mEase:Landroid/view/animation/PathInterpolator;

    .line 115
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3d4ccccd    # 0.05f

    const v2, 0x3f333333    # 0.7f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mEmph:Landroid/view/animation/PathInterpolator;

    .line 117
    new-instance v0, Lcom/artisan/sdstorage/SdStorageModeActivity$1;

    invoke-direct {v0, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$1;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/artisan/sdstorage/SdStorageModeActivity;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->refreshMain()V

    return-void
.end method

.method static synthetic access$100(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/view/animation/PathInterpolator;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mEase:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/artisan/sdstorage/SdStorageModeActivity;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mOnMain:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/artisan/sdstorage/SdStorageModeActivity;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBusy:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/artisan/sdstorage/SdStorageModeActivity;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheetShown:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/artisan/sdstorage/SdStorageModeActivity;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->showMain()V

    return-void
.end method

.method static synthetic access$1400(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;Z)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->confirmFileLocation(Landroid/os/storage/VolumeInfo;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->toPortable(Landroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->confirmToInternal(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/artisan/sdstorage/SdStorageModeActivity;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mDivider:I

    return v0
.end method

.method static synthetic access$1800(Lcom/artisan/sdstorage/SdStorageModeActivity;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    return v0
.end method

.method static synthetic access$1900(Lcom/artisan/sdstorage/SdStorageModeActivity;I)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->unlockUser(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/view/animation/PathInterpolator;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mEmph:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/artisan/sdstorage/SdStorageModeActivity;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPageId:I

    return v0
.end method

.method static synthetic access$2100(Lcom/artisan/sdstorage/SdStorageModeActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->lockedUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->setProgressText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/os/storage/StorageManager;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;I)Landroid/os/storage/VolumeInfo;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->findVolume(Landroid/os/storage/DiskInfo;I)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->unmountQuietly(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static synthetic access$2802(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNewPrivate:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->waitPrivateMounted(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/artisan/sdstorage/SdStorageModeActivity;)Z
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->handleBack()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/artisan/sdstorage/SdStorageModeActivity;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->showInternalReady()V

    return-void
.end method

.method static synthetic access$3100(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Lcom/artisan/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->runWork(Ljava/lang/String;Lcom/artisan/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;Z)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->moveFiles(Landroid/os/storage/VolumeInfo;Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->requireUnlocked(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/artisan/sdstorage/SdStorageModeActivity;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->waitMove(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/artisan/sdstorage/SdStorageModeActivity;Z)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->setBusy(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/artisan/sdstorage/SdStorageModeActivity;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->showResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mWorkText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/artisan/sdstorage/SdStorageModeActivity;I)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->onScrolled(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->hideSheet(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mFrame:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheetLayer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheet:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/artisan/sdstorage/SdStorageModeActivity;F)I
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v0

    return v0
.end method

.method private addPress(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 236
    new-instance v0, Lcom/artisan/sdstorage/SdStorageModeActivity$2;

    invoke-direct {v0, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$2;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 251
    return-void
.end method

.method private anim(Landroid/widget/LinearLayout;II)Lcom/artisan/sdstorage/SdAnimView;
    .locals 4

    .prologue
    .line 412
    new-instance v0, Lcom/artisan/sdstorage/SdAnimView;

    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mText:I

    iget v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    iget v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mOnAccent:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/artisan/sdstorage/SdAnimView;-><init>(Landroid/content/Context;III)V

    .line 413
    invoke-virtual {v0, p2}, Lcom/artisan/sdstorage/SdAnimView;->setMode(I)V

    .line 414
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    int-to-float v3, p3

    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 415
    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 416
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    return-object v0
.end method

.method private animateBlur(FF)V
    .locals 4

    .prologue
    .line 593
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 607
    :goto_0
    return-void

    .line 594
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 595
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 596
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mEase:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 597
    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$10;

    invoke-direct {v1, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$10;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 606
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private animatePage()V
    .locals 9

    .prologue
    const v8, 0x3f7851ec    # 0.97f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 380
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 382
    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 383
    const/high16 v2, 0x42100000    # 36.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 384
    invoke-virtual {v1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 385
    invoke-virtual {v1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 386
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x37

    int-to-long v4, v0

    mul-long/2addr v2, v4

    .line 387
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x208

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mEmph:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 391
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 392
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1a4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mEmph:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 394
    :cond_1
    return-void
.end method

.method private body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 433
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 434
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSubText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 436
    const/4 v1, 0x2

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 437
    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 438
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    return-object v0
.end method

.method private buildFrame()V
    .locals 12

    .prologue
    const/4 v11, -0x2

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBase:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 256
    :try_start_0
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 257
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 258
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 261
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mRoot:Landroid/widget/FrameLayout;

    .line 262
    iget-object v6, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mRoot:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/artisan/sdstorage/SdGlassBackground;

    iget v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBase:I

    iget v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    .line 263
    iget-boolean v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x66

    :goto_1
    invoke-static {v3, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->withAlpha(II)I

    move-result v3

    iget v4, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent2:I

    .line 264
    iget-boolean v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x4d

    :goto_2
    invoke-static {v4, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->withAlpha(II)I

    move-result v4

    const v5, -0x4d830b

    .line 265
    iget-boolean v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x47

    :goto_3
    invoke-static {v5, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->withAlpha(II)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/artisan/sdstorage/SdGlassBackground;-><init>(Landroid/content/Context;IIII)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 262
    invoke-virtual {v6, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mFrame:Landroid/widget/LinearLayout;

    .line 269
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 270
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mRoot:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mFrame:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 274
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 275
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 276
    const/high16 v0, 0x40800000    # 4.0f

    invoke-direct {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    invoke-virtual {v1, v0, v7, v2, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 277
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBack:Landroid/widget/ImageButton;

    .line 278
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "ic_arrow_back"

    const-string v3, "drawable"

    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 279
    const/4 v0, 0x0

    .line 280
    if-eqz v2, :cond_0

    .line 281
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 283
    :cond_0
    :goto_4
    if-eqz v0, :cond_1

    .line 284
    iget v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mText:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 285
    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBack:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBack:Landroid/widget/ImageButton;

    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    iget v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mText:I

    const/16 v4, 0x22

    invoke-static {v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->withAlpha(II)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-direct {p0, v8, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->pill(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBack:Landroid/widget/ImageButton;

    const-string v2, "Zur\u00fcck"

    const-string v3, "Navigate up"

    invoke-direct {p0, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBack:Landroid/widget/ImageButton;

    new-instance v2, Lcom/artisan/sdstorage/SdStorageModeActivity$3;

    invoke-direct {v2, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$3;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBack:Landroid/widget/ImageButton;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    const/high16 v4, 0x42400000    # 48.0f

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBarTitle:Landroid/widget/TextView;

    .line 292
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBarTitle:Landroid/widget/TextView;

    iget v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mText:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBarTitle:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41980000    # 19.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 294
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBarTitle:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v3, 0x258

    invoke-static {v2, v3, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 295
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 296
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBarTitle:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 297
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBarTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 298
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBarTitle:Landroid/widget/TextView;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 299
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBarTitle:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v11, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mFrame:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42600000    # 56.0f

    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    invoke-direct {v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    .line 303
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v9}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 304
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v7}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 305
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v9}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 306
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v7}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 307
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    .line 308
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 309
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 310
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v8, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$4;

    invoke-direct {v1, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$4;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 314
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mFrame:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v8, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    .line 317
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 318
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 319
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    invoke-direct {p0, v10}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 320
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mFrame:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheetLayer:Landroid/widget/FrameLayout;

    .line 324
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheetLayer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 325
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScrim2:Landroid/view/View;

    .line 326
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScrim2:Landroid/view/View;

    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScrim:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 327
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScrim2:Landroid/view/View;

    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$5;

    invoke-direct {v1, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$5;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheetLayer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScrim2:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheet:Landroid/widget/LinearLayout;

    .line 330
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheet:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 331
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheet:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 332
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheet:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheetBg:I

    const/high16 v2, 0x42000000    # 32.0f

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->glass(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 333
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheet:Landroid/widget/LinearLayout;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    const/high16 v4, 0x41900000    # 18.0f

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 334
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x50

    invoke-direct {v0, v8, v11, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 335
    invoke-direct {p0, v10}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    invoke-direct {p0, v10}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    invoke-direct {p0, v10}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 336
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheetLayer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheet:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mRoot:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheetLayer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mRoot:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$6;

    invoke-direct {v1, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$6;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 347
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->setContentView(Landroid/view/View;)V

    .line 348
    return-void

    .line 263
    :cond_2
    const/16 v1, 0x47

    goto/16 :goto_1

    .line 264
    :cond_3
    const/16 v1, 0x3d

    goto/16 :goto_2

    .line 265
    :cond_4
    const/16 v1, 0x33

    goto/16 :goto_3

    .line 281
    :catch_0
    move-exception v2

    goto/16 :goto_4

    .line 259
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method private button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 10

    .prologue
    const/high16 v9, 0x42500000    # 52.0f

    const/high16 v2, 0x41900000    # 18.0f

    const/4 v5, 0x2

    const/high16 v8, 0x41d00000    # 26.0f

    const/4 v7, 0x0

    .line 506
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 507
    invoke-virtual {v3, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 508
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 509
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v3, v5, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 510
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v1, 0x258

    invoke-static {v0, v1, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 511
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 512
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setElevation(F)V

    .line 513
    invoke-direct {p0, v9}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setMinHeight(I)V

    .line 514
    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v0

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    invoke-virtual {v3, v0, v7, v1, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 515
    if-eqz p4, :cond_2

    const v0, -0x1ab7b3

    move v2, v0

    .line 517
    :goto_0
    if-eqz p3, :cond_4

    .line 518
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 519
    if-eqz p4, :cond_3

    new-array v0, v5, [I

    aput v2, v0, v7

    const/4 v5, 0x1

    aput v2, v0, v5

    :goto_1
    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 520
    invoke-direct {p0, v8}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 522
    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mOnAccent:I

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    move-object v0, v1

    .line 527
    :goto_2
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p3, :cond_5

    const v1, 0x33ffffff

    :goto_3
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {p0, v2, v8}, Lcom/artisan/sdstorage/SdStorageModeActivity;->pill(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-direct {v4, v1, v0, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 528
    invoke-virtual {v3, p5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->addPress(Landroid/view/View;)V

    .line 530
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v9}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v7, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 531
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 532
    :cond_0
    invoke-virtual {p1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 534
    :cond_1
    return-object v3

    .line 515
    :cond_2
    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    move v2, v0

    goto :goto_0

    .line 519
    :cond_3
    new-array v0, v5, [I

    iget v5, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    aput v5, v0, v7

    const/4 v5, 0x1

    iget v6, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent2:I

    aput v6, v0, v5

    goto :goto_1

    .line 524
    :cond_4
    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mGlass:I

    invoke-direct {p0, v0, v8}, Lcom/artisan/sdstorage/SdStorageModeActivity;->glass(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 525
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2

    .line 527
    :cond_5
    const/16 v1, 0x2a

    invoke-static {v2, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->withAlpha(II)I

    move-result v1

    goto :goto_3
.end method

.method private card()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/high16 v4, 0x41b00000    # 22.0f

    .line 401
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 402
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 403
    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mGlass:I

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->glass(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 404
    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 405
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 406
    const/high16 v2, 0x41400000    # 12.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 407
    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    return-object v0
.end method

.method private varargs chips(Landroid/widget/LinearLayout;[Ljava/lang/String;)V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, -0x2

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v9, 0x40c00000    # 6.0f

    const/4 v1, 0x0

    .line 454
    new-instance v3, Landroid/widget/HorizontalScrollView;

    invoke-direct {v3, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 455
    invoke-virtual {v3, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 456
    invoke-virtual {v3, v12}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 457
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 458
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v0, v1

    .line 459
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 460
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 461
    aget-object v2, p2, v0

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 463
    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v5, v12, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 464
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v6, 0x258

    invoke-static {v2, v6, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 465
    iget v6, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    iget-boolean v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x2e

    :goto_1
    invoke-static {v6, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->withAlpha(II)I

    move-result v2

    const/high16 v6, 0x41800000    # 16.0f

    invoke-direct {p0, v2, v6}, Lcom/artisan/sdstorage/SdStorageModeActivity;->pill(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 466
    invoke-direct {p0, v10}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    invoke-direct {p0, v9}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v6

    invoke-direct {p0, v10}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v7

    invoke-direct {p0, v9}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v8

    invoke-virtual {v5, v2, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 467
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 468
    if-lez v0, :cond_0

    const/high16 v6, 0x41000000    # 8.0f

    invoke-direct {p0, v6}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 469
    :cond_0
    invoke-virtual {v4, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    :cond_1
    const/16 v2, 0x1f

    goto :goto_1

    .line 471
    :cond_2
    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 472
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 473
    const/high16 v1, 0x41600000    # 14.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 474
    invoke-virtual {p1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    return-void
.end method

.method private confirmFileLocation(Landroid/os/storage/VolumeInfo;Z)V
    .locals 8

    .prologue
    .line 1030
    if-eqz p2, :cond_0

    const-string v0, "Dateien auf die SD-Karte verschieben?"

    const-string v1, "Move files to the SD card?"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1031
    :goto_0
    const-string v0, "Fotos, Videos, Downloads und andere Dateien werden verschoben und k\u00fcnftig dort gespeichert. Je nach Datenmenge dauert das einige Minuten."

    const-string v2, "Photos, videos, downloads and other files are moved and stored there from now on. Depending on the amount of data this takes a few minutes."

    .line 1032
    invoke-direct {p0, v0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const-string v0, "Abbrechen"

    const-string v4, "Cancel"

    .line 1036
    invoke-direct {p0, v0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "Verschieben"

    const-string v5, "Move"

    invoke-direct {p0, v0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/artisan/sdstorage/SdStorageModeActivity$25;

    invoke-direct {v7, p0, p2, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity$25;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;ZLandroid/os/storage/VolumeInfo;)V

    move-object v0, p0

    .line 1030
    invoke-direct/range {v0 .. v7}, Lcom/artisan/sdstorage/SdStorageModeActivity;->showSheet(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 1044
    new-instance v0, Lcom/artisan/sdstorage/SdStorageModeActivity$26;

    invoke-direct {v0, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$26;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheetCancel:Ljava/lang/Runnable;

    .line 1045
    return-void

    .line 1031
    :cond_0
    const-string v0, "Dateien in den internen Speicher verschieben?"

    const-string v1, "Move files to internal storage?"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private confirmToInternal(Landroid/os/storage/DiskInfo;)V
    .locals 8

    .prologue
    .line 939
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 940
    const-string v1, "Alle Daten auf der SD-Karte l\u00f6schen?"

    const-string v2, "Erase all data on the SD card?"

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Die Karte wird formatiert und verschl\u00fcsselt. Alle Daten darauf werden unwiderruflich gel\u00f6scht."

    const-string v3, "The card is formatted and encrypted. All data on it will be permanently erased."

    .line 941
    invoke-direct {p0, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const-string v4, "Abbrechen"

    const-string v5, "Cancel"

    .line 943
    invoke-direct {p0, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "L\u00f6schen und einrichten"

    const-string v6, "Erase and set up"

    invoke-direct {p0, v5, v6}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-instance v7, Lcom/artisan/sdstorage/SdStorageModeActivity$21;

    invoke-direct {v7, p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity$21;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V

    move-object v0, p0

    .line 940
    invoke-direct/range {v0 .. v7}, Lcom/artisan/sdstorage/SdStorageModeActivity;->showSheet(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 958
    return-void
.end method

.method private currentFileLocation(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 657
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->filesOnSd(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SD-Karte"

    const-string v1, "SD card"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Interner Speicher"

    const-string v1, "Internal storage"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private dp(F)I
    .locals 2

    .prologue
    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private filesOnSd(Landroid/os/storage/VolumeInfo;)Z
    .locals 2

    .prologue
    .line 652
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    .line 653
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findSdDisk()Landroid/os/storage/DiskInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 628
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v0

    .line 629
    if-nez v0, :cond_0

    move-object v0, v1

    .line 633
    :goto_0
    return-object v0

    .line 630
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

    .line 631
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 633
    goto :goto_0
.end method

.method private findVolume(Landroid/os/storage/DiskInfo;I)Landroid/os/storage/VolumeInfo;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 637
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 638
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v1

    .line 642
    :goto_0
    return-object v0

    .line 639
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

    .line 640
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

    .line 642
    goto :goto_0
.end method

.method private glass(IF)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 215
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 216
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 217
    invoke-direct {p0, p2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 218
    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mGlassStroke:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 219
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v7, [I

    iget v4, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mGlassHi:I

    aput v4, v3, v6

    iget v4, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mGlassHi:I

    .line 220
    invoke-static {v4, v6}, Lcom/artisan/sdstorage/SdStorageModeActivity;->withAlpha(II)I

    move-result v4

    aput v4, v3, v5

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 221
    invoke-direct {p0, p2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 222
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    new-array v3, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v3, v6

    aput-object v1, v3, v5

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 223
    const/high16 v0, 0x42200000    # 40.0f

    invoke-direct {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v0

    invoke-virtual {v2, v5, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    .line 224
    return-object v2
.end method

.method private handleBack()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 154
    iget-boolean v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBusy:Z

    if-eqz v1, :cond_0

    .line 159
    :goto_0
    return v0

    .line 155
    :cond_0
    iget-boolean v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheetShown:Z

    if-eqz v1, :cond_1

    .line 156
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->hideSheet(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 159
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 4

    .prologue
    .line 421
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 422
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 424
    const/4 v1, 0x2

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 425
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v2, 0x258

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 426
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 427
    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 428
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    return-object v0
.end method

.method private hideSheet(Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 574
    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheetShown:Z

    if-nez v0, :cond_0

    .line 589
    :goto_0
    return-void

    .line 575
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheetShown:Z

    .line 576
    if-eqz p1, :cond_1

    .line 577
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheetCancel:Ljava/lang/Runnable;

    .line 578
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->updateBackCallback()V

    .line 579
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScrim2:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mEase:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 580
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheet:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheet:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x104

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mEase:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity$9;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/Runnable;)V

    .line 581
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 588
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-direct {p0, v0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->animateBlur(FF)V

    goto :goto_0

    .line 576
    :cond_1
    iget-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheetCancel:Ljava/lang/Runnable;

    goto :goto_1
.end method

.method private loadColors()V
    .locals 5

    .prologue
    const v4, 0x1fffffff

    const/4 v3, 0x0

    .line 183
    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v0, :cond_0

    const-string v0, "sesl_primary_color_dark"

    .line 184
    :goto_0
    iget-boolean v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v1, :cond_1

    const v1, -0xc16e01

    .line 183
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->resColor(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    .line 185
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 186
    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 187
    aget v1, v0, v3

    const/high16 v2, 0x42180000    # 38.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    aput v1, v0, v3

    .line 188
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent2:I

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mOnAccent:I

    .line 190
    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v0, :cond_2

    .line 191
    const v0, -0xfafaf9

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBase:I

    .line 192
    const v0, -0xa0a09

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mText:I

    .line 193
    const v0, -0x56544d

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSubText:I

    .line 194
    iput v4, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mGlass:I

    .line 195
    const v0, 0x29ffffff

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mGlassStroke:I

    .line 196
    const v0, 0x14ffffff

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mGlassHi:I

    .line 197
    const v0, -0x14e3e3e0

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheetBg:I

    .line 198
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScrim:I

    .line 199
    iput v4, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mDivider:I

    .line 211
    :goto_2
    return-void

    .line 183
    :cond_0
    const-string v0, "sesl_primary_color_light"

    goto :goto_0

    .line 184
    :cond_1
    const v1, -0xfc7e02

    goto :goto_1

    .line 201
    :cond_2
    const v0, -0xd0c09

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBase:I

    .line 202
    const v0, -0xefeeec

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mText:I

    .line 203
    const v0, -0xa19e98

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSubText:I

    .line 204
    const v0, -0x4c000001

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mGlass:I

    .line 205
    const v0, -0x19000001

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mGlassStroke:I

    .line 206
    const v0, -0x7f000001

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mGlassHi:I

    .line 207
    const v0, -0xd000001

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheetBg:I

    .line 208
    const/high16 v0, 0x52000000

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScrim:I

    .line 209
    const/high16 v0, 0x14000000

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mDivider:I

    goto :goto_2
.end method

.method private lockedUsers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 817
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 819
    :try_start_0
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 820
    if-nez v0, :cond_0

    move-object v0, v1

    .line 827
    :goto_0
    return-object v0

    .line 821
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 822
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mUm:Landroid/os/UserManager;

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 824
    :catch_0
    move-exception v0

    .line 825
    const-string v2, "ArtisanSdStorage"

    const-string v3, "lockedUsers"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move-object v0, v1

    .line 827
    goto :goto_0
.end method

.method private matchWrap()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 397
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private moveError(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1170
    packed-switch p1, :pswitch_data_0

    .line 1182
    :pswitch_0
    const-string v0, "Interner Fehler."

    const-string v1, "Internal error."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1184
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Code "

    const-string v2, " (code "

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1171
    :pswitch_1
    const-string v0, "Nicht genug freier Speicher am Ziel."

    const-string v1, "Not enough free space at the destination."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1172
    :pswitch_2
    const-string v0, "Die App existiert nicht mehr."

    const-string v1, "The app no longer exists."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1173
    :pswitch_3
    const-string v0, "System-Apps k\u00f6nnen nicht verschoben werden."

    const-string v1, "System apps cannot be moved."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1174
    :pswitch_4
    const-string v0, "Dieser Speicherort ist nicht m\u00f6glich."

    const-string v1, "This location is not possible."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1175
    :pswitch_5
    const-string v0, "Es l\u00e4uft bereits ein anderer Verschiebevorgang. Bitte sp\u00e4ter erneut versuchen."

    const-string v1, "Another move is already in progress. Please try again later."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1177
    :pswitch_6
    const-string v0, "Diese App ist ein Ger\u00e4teadministrator und kann nicht verschoben werden."

    const-string v1, "This app is a device administrator and cannot be moved."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1179
    :pswitch_7
    const-string v0, "Der Sichere Ordner oder ein anderer Benutzer ist gesperrt. Entsperre ihn und versuche es dann erneut."

    const-string v1, "Secure Folder or another user is locked. Unlock it, then try again."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1170
    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private moveFiles(Landroid/os/storage/VolumeInfo;Z)V
    .locals 4

    .prologue
    .line 1048
    if-eqz p2, :cond_0

    const-string v0, "Dateien werden verschoben"

    const-string v1, "Moving files"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/artisan/sdstorage/SdStorageModeActivity$27;

    invoke-direct {v2, p0, p1, p2}, Lcom/artisan/sdstorage/SdStorageModeActivity$27;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;Z)V

    .line 1059
    if-eqz p2, :cond_1

    const-string v1, "Fotos, Downloads und andere Dateien liegen jetzt auf der SD-Karte. Neue Dateien werden automatisch dort gespeichert."

    const-string v3, "Photos, downloads and other files are now on the SD card. New files are stored there automatically."

    invoke-direct {p0, v1, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1061
    :goto_1
    const/4 v3, 0x0

    .line 1048
    invoke-direct {p0, v0, v2, v1, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->runWork(Ljava/lang/String;Lcom/artisan/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1064
    return-void

    .line 1048
    :cond_0
    const-string v0, "Dateien werden zur\u00fcckgeholt"

    const-string v1, "Moving files back"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1061
    :cond_1
    const-string v1, "Fotos, Downloads und andere Dateien liegen jetzt im internen Speicher."

    const-string v3, "Photos, downloads and other files are now on internal storage."

    invoke-direct {p0, v1, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private newPage(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/high16 v6, 0x41f00000    # 30.0f

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 361
    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPageId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPageId:I

    .line 362
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 363
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 364
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 367
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBigTitle:Landroid/widget/TextView;

    .line 368
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBigTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBigTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBigTitle:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 371
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBigTitle:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v2, 0x1f4

    invoke-static {v1, v2, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 372
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBigTitle:Landroid/widget/TextView;

    const v1, 0x3f851eb8    # 1.04f

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 373
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBigTitle:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    invoke-direct {p0, v6}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    invoke-direct {p0, v6}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 374
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBigTitle:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 376
    return-void
.end method

.method private onScrolled(I)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 351
    const/4 v0, 0x0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 352
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBarTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 353
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBigTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBigTitle:Landroid/widget/TextView;

    sub-float v0, v3, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 355
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBigTitle:Landroid/widget/TextView;

    int-to-float v1, p1

    const v2, 0x3eb33333    # 0.35f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 357
    :cond_0
    return-void
.end method

.method private pill(IF)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .prologue
    .line 228
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 229
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 230
    invoke-direct {p0, p2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 231
    return-object v0
.end method

.method private refreshMain()V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$12;

    invoke-direct {v1, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$12;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 649
    return-void
.end method

.method private requireUnlocked(Ljava/lang/Runnable;)V
    .locals 11

    .prologue
    const/16 v7, 0xa

    const/high16 v6, 0x41b00000    # 22.0f

    const/4 v3, 0x0

    .line 839
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->lockedUsers()Ljava/util/List;

    move-result-object v1

    .line 840
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 901
    :goto_0
    return-void

    .line 844
    :cond_0
    iput-boolean v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mOnMain:Z

    .line 845
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 846
    const-string v0, "Sicheren Ordner entsperren"

    const-string v2, "Unlock Secure Folder"

    invoke-direct {p0, v0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 847
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 848
    const/4 v0, 0x6

    const/16 v4, 0xb4

    invoke-direct {p0, v2, v0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/artisan/sdstorage/SdAnimView;

    .line 849
    const-string v0, "Kurz entsperren, dann geht es weiter"

    const-string v4, "Unlock briefly, then we continue"

    invoke-direct {p0, v0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 850
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 851
    const-string v0, "Damit Fotos, Downloads und andere Dateien verschoben werden k\u00f6nnen, m\u00fcssen alle Bereiche dieses Ger\u00e4ts entsperrt sein. Gesperrt ist zurzeit:\n"

    const-string v5, "To move photos, downloads and other files, every space on this device has to be unlocked. Currently locked:\n"

    invoke-direct {p0, v0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    const-string v5, "\u2022 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->userLabel(Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 856
    :cond_1
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Tippe auf \u201eEntsperren\u201c und gib die Sperre ein. Sobald alles entsperrt ist, geht es hier automatisch weiter."

    const-string v5, "Tap \u201cUnlock\u201d and enter the lock. As soon as everything is unlocked, this page continues automatically."

    invoke-direct {p0, v1, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 861
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 862
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 863
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 864
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 865
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 866
    iget v4, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 867
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v6}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v5

    invoke-direct {p0, v6}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 868
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 869
    const-string v2, "Warte auf Entsperrung \u2026"

    const-string v4, "Waiting for unlock \u2026"

    invoke-direct {p0, v2, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 870
    iget v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mText:I

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 871
    const/4 v2, 0x2

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v10, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 872
    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    invoke-virtual {v10, v2, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 873
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 874
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 876
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Abbrechen"

    const-string v2, "Cancel"

    invoke-direct {p0, v0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/artisan/sdstorage/SdStorageModeActivity$18;

    invoke-direct {v5, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$18;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 879
    iget-object v5, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Entsperren"

    const-string v1, "Unlock"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-instance v9, Lcom/artisan/sdstorage/SdStorageModeActivity$19;

    invoke-direct {v9, p0, v8}, Lcom/artisan/sdstorage/SdStorageModeActivity$19;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/content/pm/UserInfo;)V

    move-object v4, p0

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/artisan/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 882
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->animatePage()V

    .line 884
    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPageId:I

    .line 885
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    new-instance v2, Lcom/artisan/sdstorage/SdStorageModeActivity$20;

    invoke-direct {v2, p0, v0, v10, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity$20;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;ILandroid/widget/TextView;Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x320

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private resColor(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 174
    if-nez v0, :cond_0

    .line 175
    :goto_0
    return p2

    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getColor(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x2

    const/4 v6, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    .line 478
    if-eqz p4, :cond_0

    .line 479
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 480
    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mDivider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 481
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 482
    invoke-direct {p0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 483
    invoke-direct {p0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 484
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 487
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 488
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 489
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 490
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mText:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 492
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 493
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 495
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSubText:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 497
    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 498
    const v2, 0x800005

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 499
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x3f99999a    # 1.2f

    invoke-direct {v2, v6, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 500
    invoke-direct {p0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 501
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    return-void
.end method

.method private runWork(Ljava/lang/String;Lcom/artisan/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1211
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mLastTitle:Ljava/lang/String;

    .line 1212
    iput-object p2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mLastWork:Lcom/artisan/sdstorage/SdStorageModeActivity$Work;

    .line 1213
    iput-object p3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mLastOk:Ljava/lang/String;

    .line 1214
    iput-object p4, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mLastNext:Ljava/lang/Runnable;

    .line 1215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mOnMain:Z

    .line 1216
    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->setBusy(Z)V

    .line 1217
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 1218
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1219
    const/4 v1, 0x3

    const/16 v2, 0xbe

    invoke-direct {p0, v0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/artisan/sdstorage/SdAnimView;

    .line 1220
    const-string v1, "Bitte warten \u2026"

    const-string v2, "Please wait \u2026"

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mWorkText:Landroid/widget/TextView;

    .line 1221
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1222
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1223
    iget v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 1224
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 1225
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1226
    const/high16 v3, 0x41400000    # 12.0f

    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1227
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1228
    const-string v1, "Entferne die SD-Karte nicht und schalte das Ger\u00e4t nicht aus. Das Display bleibt dabei an."

    const-string v2, "Do not remove the SD card or turn off the device. The screen stays on meanwhile."

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 1230
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->animatePage()V

    .line 1232
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$30;

    invoke-direct {v1, p0, p2, p4, p3}, Lcom/artisan/sdstorage/SdStorageModeActivity$30;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Lcom/artisan/sdstorage/SdStorageModeActivity$Work;Ljava/lang/Runnable;Ljava/lang/String;)V

    const-string v2, "ArtisanSdStorage"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1250
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1251
    return-void
.end method

.method private sectionLabel(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/high16 v4, 0x41b00000    # 22.0f

    .line 443
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 444
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSubText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 446
    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 447
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v2, 0x258

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 448
    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 449
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    return-void
.end method

.method private setBusy(Z)V
    .locals 5

    .prologue
    const/16 v4, 0x80

    .line 1195
    iput-boolean p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBusy:Z

    .line 1196
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBack:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1197
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBack:Landroid/widget/ImageButton;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1198
    if-eqz p1, :cond_2

    .line 1199
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1203
    :goto_2
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->updateBackCallback()V

    .line 1204
    return-void

    .line 1196
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1197
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1201
    :cond_2
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_2
.end method

.method private setProgressText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$35;

    invoke-direct {v1, p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity$35;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1297
    return-void
.end method

.method private showInternalReady()V
    .locals 12

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 979
    iput-boolean v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mOnMain:Z

    .line 980
    iget-object v8, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNewPrivate:Landroid/os/storage/VolumeInfo;

    .line 981
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->findSdDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 982
    const-string v1, "SD-Karte ist bereit"

    const-string v2, "SD card is ready"

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 983
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 984
    const/4 v2, 0x5

    const/16 v4, 0xaa

    invoke-direct {p0, v1, v2, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/artisan/sdstorage/SdAnimView;

    .line 985
    const-string v2, "Interner Speicher eingerichtet"

    const-string v4, "Internal storage set up"

    invoke-direct {p0, v2, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 986
    const-string v2, "Die SD-Karte ist jetzt verschl\u00fcsselt und Teil des internen Speichers. Sie ist nur noch in diesem Ger\u00e4t lesbar."

    const-string v4, "The SD card is now encrypted and part of internal storage. It can only be read on this device."

    invoke-direct {p0, v2, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 988
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "Verschl\u00fcsselt"

    const-string v5, "Encrypted"

    invoke-direct {p0, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v4, "Eingebunden"

    const-string v5, "Mounted"

    invoke-direct {p0, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    const-string v4, "Bereit"

    const-string v5, "Ready"

    invoke-direct {p0, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->chips(Landroid/widget/LinearLayout;[Ljava/lang/String;)V

    .line 990
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 991
    const-string v2, "Nutzung"

    const-string v4, "Usage"

    invoke-direct {p0, v2, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Interner Speicher"

    const-string v5, "Internal storage"

    invoke-direct {p0, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 992
    const-string v2, "Verschl\u00fcsselung"

    const-string v4, "Encryption"

    invoke-direct {p0, v2, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Ja, nur dieses Ger\u00e4t"

    const-string v5, "Yes, this device only"

    invoke-direct {p0, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v4, v7}, Lcom/artisan/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 993
    if-eqz v0, :cond_0

    iget-wide v4, v0, Landroid/os/storage/DiskInfo;->size:J

    const-wide/16 v10, 0x0

    cmp-long v2, v4, v10

    if-lez v2, :cond_0

    const-string v2, "Kapazit\u00e4t"

    const-string v4, "Capacity"

    invoke-direct {p0, v2, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, v0, Landroid/os/storage/DiskInfo;->size:J

    invoke-static {p0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0, v7}, Lcom/artisan/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 995
    :cond_0
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v7

    .line 996
    :goto_0
    if-eqz v0, :cond_3

    .line 997
    const-string v0, "N\u00e4chster Schritt"

    const-string v1, "Next step"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->sectionLabel(Ljava/lang/String;)V

    .line 998
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 999
    const/16 v1, 0x82

    invoke-direct {p0, v0, v6, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/artisan/sdstorage/SdAnimView;

    .line 1000
    const-string v1, "Dateien auf die SD-Karte verschieben?"

    const-string v2, "Move files to the SD card?"

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 1001
    const-string v1, "Fotos, Videos, Downloads, Musik und andere Dateien kommen auf die Karte, neue Fotos und Downloads landen danach automatisch dort. System und Apps bleiben im internen Speicher. Je nach Datenmenge dauert das einige Minuten \u2013 du kannst es auch sp\u00e4ter auf dieser Seite \u00e4ndern."

    const-string v2, "Photos, videos, downloads, music and other files go to the card, and new photos and downloads are stored there automatically. System and apps stay on internal storage. Depending on the amount of data this takes a few minutes \u2013 you can also change it later on this page."

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 1007
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Sp\u00e4ter"

    const-string v2, "Later"

    invoke-direct {p0, v0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/artisan/sdstorage/SdStorageModeActivity$22;

    invoke-direct {v5, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$22;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 1010
    iget-object v5, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Dateien verschieben"

    const-string v1, "Move files"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/artisan/sdstorage/SdStorageModeActivity$23;

    invoke-direct {v9, p0, v8}, Lcom/artisan/sdstorage/SdStorageModeActivity$23;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;)V

    move-object v4, p0

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/artisan/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 1024
    :goto_1
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->animatePage()V

    .line 1025
    return-void

    :cond_2
    move v0, v3

    .line 995
    goto :goto_0

    .line 1016
    :cond_3
    if-nez v8, :cond_4

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Die Karte wird noch eingebunden. Dateien kannst du gleich auf dieser Seite verschieben."

    const-string v4, "The card is still being mounted. You can move files on this page in a moment."

    invoke-direct {p0, v2, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 1020
    :cond_4
    iget-object v5, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Fertig"

    const-string v1, "Done"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/artisan/sdstorage/SdStorageModeActivity$24;

    invoke-direct {v9, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$24;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    move-object v4, p0

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/artisan/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/Button;

    goto :goto_1
.end method

.method private showMain()V
    .locals 13

    .prologue
    const/4 v8, 0x3

    const/16 v7, 0xb4

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 663
    iput-boolean v10, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mOnMain:Z

    .line 664
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->findSdDisk()Landroid/os/storage/DiskInfo;

    move-result-object v11

    .line 665
    if-nez v11, :cond_0

    .line 666
    const-string v0, "SD-Karte"

    const-string v1, "SD card"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 667
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 668
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, v7}, Lcom/artisan/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/artisan/sdstorage/SdAnimView;

    .line 669
    const-string v1, "Keine SD-Karte eingelegt"

    const-string v2, "No SD card inserted"

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 670
    const-string v1, "Lege eine microSD-Karte ein. Danach kannst du hier w\u00e4hlen, ob sie als tragbarer Speicher oder als interner, verschl\u00fcsselter Speicher genutzt wird. Die Seite aktualisiert sich automatisch."

    const-string v2, "Insert a microSD card. You can then choose here whether it is used as portable storage or as encrypted internal storage. This page updates automatically."

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 674
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->animatePage()V

    .line 754
    :goto_0
    return-void

    .line 677
    :cond_0
    invoke-direct {p0, v11, v10}, Lcom/artisan/sdstorage/SdStorageModeActivity;->findVolume(Landroid/os/storage/DiskInfo;I)Landroid/os/storage/VolumeInfo;

    move-result-object v12

    .line 678
    iget-wide v0, v11, Landroid/os/storage/DiskInfo;->size:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v0, v11, Landroid/os/storage/DiskInfo;->size:J

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 680
    :goto_1
    if-eqz v12, :cond_3

    .line 681
    const-string v1, "SD-Karte wieder tragbar machen"

    const-string v3, "Make SD card portable again"

    invoke-direct {p0, v1, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 682
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 683
    invoke-direct {p0, v1, v10, v7}, Lcom/artisan/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/artisan/sdstorage/SdAnimView;

    .line 684
    const-string v3, "Tragbarer Speicher"

    const-string v4, "Portable storage"

    invoke-direct {p0, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 685
    const-string v3, "Die Karte wird wieder ein normaler, austauschbarer Speicher \u2013 ohne Verschl\u00fcsselung und auch in anderen Ger\u00e4ten, Kameras oder am PC lesbar. Apps und Dateien auf der Karte werden vorher automatisch in den internen Speicher verschoben, danach wird die Karte formatiert."

    const-string v4, "The card becomes normal removable storage again \u2013 without encryption and readable in other devices, cameras or on a PC. Apps and files on the card are moved to internal storage automatically first, then the card is formatted."

    invoke-direct {p0, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 691
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "Austauschbar"

    const-string v5, "Removable"

    invoke-direct {p0, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "Am PC lesbar"

    const-string v5, "Readable on PC"

    invoke-direct {p0, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    const-string v4, "Unverschl\u00fcsselt"

    const-string v5, "Not encrypted"

    invoke-direct {p0, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {p0, v1, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->chips(Landroid/widget/LinearLayout;[Ljava/lang/String;)V

    .line 693
    const-string v1, "Aktueller Zustand"

    const-string v3, "Current state"

    invoke-direct {p0, v1, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->sectionLabel(Ljava/lang/String;)V

    .line 694
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 695
    const-string v3, "Nutzung"

    const-string v4, "Usage"

    invoke-direct {p0, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Interner Speicher"

    const-string v5, "Internal storage"

    invoke-direct {p0, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 696
    const-string v3, "Verschl\u00fcsselung"

    const-string v4, "Encryption"

    invoke-direct {p0, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Ja, nur dieses Ger\u00e4t"

    const-string v5, "Yes, this device only"

    invoke-direct {p0, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4, v10}, Lcom/artisan/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 697
    const-string v3, "Dateien gespeichert auf"

    const-string v4, "Files stored on"

    invoke-direct {p0, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v12}, Lcom/artisan/sdstorage/SdStorageModeActivity;->currentFileLocation(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4, v10}, Lcom/artisan/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 698
    const-string v3, "Kapazit\u00e4t"

    const-string v4, "Capacity"

    invoke-direct {p0, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3, v0, v10}, Lcom/artisan/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 700
    const-string v0, "Speicherort f\u00fcr Dateien"

    const-string v1, "Location for files"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->sectionLabel(Ljava/lang/String;)V

    .line 701
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 702
    const/16 v1, 0x82

    invoke-direct {p0, v0, v6, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/artisan/sdstorage/SdAnimView;

    .line 703
    const-string v1, "W\u00e4hle, wo Fotos, Videos, Downloads, Musik und andere Dateien gespeichert werden. Vorhandene Dateien werden mit verschoben. System und Apps bleiben im internen Speicher."

    const-string v3, "Choose where photos, videos, downloads, music and other files are stored. Existing files are moved along. System and apps stay on internal storage."

    invoke-direct {p0, v1, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 707
    invoke-direct {p0, v12}, Lcom/artisan/sdstorage/SdStorageModeActivity;->filesOnSd(Landroid/os/storage/VolumeInfo;)Z

    move-result v8

    .line 708
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 709
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 710
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 711
    const/high16 v4, 0x41800000    # 16.0f

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 712
    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 713
    const-string v0, "Intern"

    const-string v3, "Internal"

    invoke-direct {p0, v0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Ger\u00e4tespeicher"

    const-string v4, "Device storage"

    invoke-direct {p0, v0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v8, :cond_2

    move v5, v10

    :goto_2
    new-instance v6, Lcom/artisan/sdstorage/SdStorageModeActivity$13;

    invoke-direct {v6, p0, v8, v12}, Lcom/artisan/sdstorage/SdStorageModeActivity$13;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;ZLandroid/os/storage/VolumeInfo;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/artisan/sdstorage/SdStorageModeActivity;->tile(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 715
    const-string v0, "SD-Karte"

    const-string v3, "SD card"

    invoke-direct {p0, v0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "Verschl\u00fcsselt"

    const-string v3, "Encrypted"

    invoke-direct {p0, v0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/artisan/sdstorage/SdStorageModeActivity$14;

    invoke-direct {v9, p0, v8, v12}, Lcom/artisan/sdstorage/SdStorageModeActivity$14;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;ZLandroid/os/storage/VolumeInfo;)V

    move-object v3, p0

    move-object v4, v1

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/artisan/sdstorage/SdStorageModeActivity;->tile(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 718
    iget-object v4, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Tragbar machen"

    const-string v1, "Make portable"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/artisan/sdstorage/SdStorageModeActivity$15;

    invoke-direct {v8, p0, v11, v12}, Lcom/artisan/sdstorage/SdStorageModeActivity$15;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V

    move-object v3, p0

    move v6, v10

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/artisan/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 753
    :goto_3
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->animatePage()V

    goto/16 :goto_0

    .line 678
    :cond_1
    const-string v0, "\u2013"

    goto/16 :goto_1

    :cond_2
    move v5, v2

    .line 713
    goto :goto_2

    .line 722
    :cond_3
    const-string v1, "SD-Karte als internen Speicher nutzen"

    const-string v3, "Use SD card as internal storage"

    invoke-direct {p0, v1, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 723
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 724
    invoke-direct {p0, v1, v2, v7}, Lcom/artisan/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/artisan/sdstorage/SdAnimView;

    .line 725
    const-string v3, "Interner, verschl\u00fcsselter Speicher"

    const-string v4, "Encrypted internal storage"

    invoke-direct {p0, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 726
    const-string v3, "Die Karte wird formatiert, verschl\u00fcsselt und als Erweiterung des internen Speichers genutzt. Danach kannst du Fotos, Downloads und andere Dateien \u2013 und unterst\u00fctzte Apps \u2013 auf der Karte speichern. Die Karte ist anschlie\u00dfend nur noch in diesem Ger\u00e4t lesbar."

    const-string v4, "The card is formatted, encrypted and used as an extension of internal storage. You can then store photos, downloads and other files \u2013 and supported apps \u2013 on the card. Afterwards the card can only be read on this device."

    invoke-direct {p0, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 732
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "Verschl\u00fcsselt"

    const-string v5, "Encrypted"

    invoke-direct {p0, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "Mehr Speicher"

    const-string v5, "More storage"

    invoke-direct {p0, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    const-string v4, "Nur dieses Ger\u00e4t"

    const-string v5, "This device only"

    invoke-direct {p0, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {p0, v1, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->chips(Landroid/widget/LinearLayout;[Ljava/lang/String;)V

    .line 734
    const-string v1, "Aktueller Zustand"

    const-string v3, "Current state"

    invoke-direct {p0, v1, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->sectionLabel(Ljava/lang/String;)V

    .line 735
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 736
    const-string v3, "Nutzung"

    const-string v4, "Usage"

    invoke-direct {p0, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Tragbarer Speicher"

    const-string v5, "Portable storage"

    invoke-direct {p0, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 737
    const-string v3, "Verschl\u00fcsselung"

    const-string v4, "Encryption"

    invoke-direct {p0, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Nein"

    const-string v5, "No"

    invoke-direct {p0, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4, v10}, Lcom/artisan/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 738
    const-string v3, "Kapazit\u00e4t"

    const-string v4, "Capacity"

    invoke-direct {p0, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3, v0, v10}, Lcom/artisan/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 740
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 741
    const-string v1, "Gut zu wissen"

    const-string v3, "Good to know"

    invoke-direct {p0, v1, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 742
    const-string v1, "\u2022 Alle Daten, die jetzt auf der Karte sind, werden gel\u00f6scht \u2013 sichere sie vorher.\n\u2022 Nimm die Karte danach nicht mehr einfach heraus, sie ist Teil des Speichers.\n\u2022 Du kannst die Karte hier jederzeit wieder tragbar machen."

    const-string v3, "\u2022 All data currently on the card is erased \u2013 back it up first.\n\u2022 Do not simply remove the card afterwards, it is part of the storage.\n\u2022 You can make the card portable again here at any time."

    invoke-direct {p0, v1, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 749
    iget-object v4, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Als intern einrichten"

    const-string v1, "Set up as internal"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/artisan/sdstorage/SdStorageModeActivity$16;

    invoke-direct {v8, p0, v11}, Lcom/artisan/sdstorage/SdStorageModeActivity$16;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;)V

    move-object v3, p0

    move v6, v10

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/artisan/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/Button;

    goto/16 :goto_3
.end method

.method private showResult(ZLjava/lang/String;)V
    .locals 10

    .prologue
    .line 1254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mOnMain:Z

    .line 1255
    if-eqz p1, :cond_1

    const-string v0, "Fertig"

    const-string v1, "Done"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 1256
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1257
    if-eqz p1, :cond_2

    const/4 v0, 0x5

    :goto_1
    const/16 v2, 0xaa

    invoke-direct {p0, v1, v0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/artisan/sdstorage/SdAnimView;

    .line 1258
    if-eqz p1, :cond_3

    const-string v0, "Alles erledigt"

    const-string v2, "All done"

    invoke-direct {p0, v0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 1259
    invoke-direct {p0, v1, p2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 1260
    if-eqz p1, :cond_4

    .line 1261
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Zur\u00fcck zur \u00dcbersicht"

    const-string v2, "Back to overview"

    invoke-direct {p0, v0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/artisan/sdstorage/SdStorageModeActivity$31;

    invoke-direct {v5, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$31;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 1264
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Fertig"

    const-string v2, "Done"

    invoke-direct {p0, v0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Lcom/artisan/sdstorage/SdStorageModeActivity$32;

    invoke-direct {v5, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$32;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 1283
    :cond_0
    :goto_3
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->animatePage()V

    .line 1284
    return-void

    .line 1255
    :cond_1
    const-string v0, "Das hat nicht geklappt"

    const-string v1, "That didn\'t work"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1257
    :cond_2
    const/4 v0, 0x7

    goto :goto_1

    .line 1258
    :cond_3
    const-string v0, "Fehler"

    const-string v2, "Error"

    invoke-direct {p0, v0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1268
    :cond_4
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Zur\u00fcck"

    const-string v2, "Back"

    invoke-direct {p0, v0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/artisan/sdstorage/SdStorageModeActivity$33;

    invoke-direct {v5, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$33;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 1271
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mLastWork:Lcom/artisan/sdstorage/SdStorageModeActivity$Work;

    if-eqz v0, :cond_0

    .line 1272
    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mLastTitle:Ljava/lang/String;

    .line 1273
    iget-object v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mLastWork:Lcom/artisan/sdstorage/SdStorageModeActivity$Work;

    .line 1274
    iget-object v4, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mLastOk:Ljava/lang/String;

    .line 1275
    iget-object v5, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mLastNext:Ljava/lang/Runnable;

    .line 1276
    iget-object v6, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Erneut versuchen"

    const-string v1, "Try again"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v0, Lcom/artisan/sdstorage/SdStorageModeActivity$34;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/artisan/sdstorage/SdStorageModeActivity$34;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Lcom/artisan/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V

    move-object v1, p0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    move v5, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/artisan/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/Button;

    goto :goto_3
.end method

.method private showSheet(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 541
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheet:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 542
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 543
    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mText:I

    const/16 v2, 0x33

    invoke-static {v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->withAlpha(II)I

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->pill(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 544
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42100000    # 36.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 545
    const/4 v2, 0x1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 546
    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 547
    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheet:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheet:Landroid/widget/LinearLayout;

    const/16 v1, 0x78

    invoke-direct {p0, v0, p3, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/artisan/sdstorage/SdAnimView;

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheet:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 550
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheet:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 551
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 552
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 553
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 554
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheet:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/artisan/sdstorage/SdStorageModeActivity$7;

    invoke-direct {v5, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$7;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    move-object v0, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 558
    const/4 v3, 0x1

    new-instance v5, Lcom/artisan/sdstorage/SdStorageModeActivity$8;

    invoke-direct {v5, p0, p7}, Lcom/artisan/sdstorage/SdStorageModeActivity$8;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/Runnable;)V

    move-object v0, p0

    move-object v2, p5

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheetShown:Z

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheetCancel:Ljava/lang/Runnable;

    .line 564
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->updateBackCallback()V

    .line 565
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheetLayer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScrim2:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 567
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScrim2:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x118

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mEase:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 568
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheet:Landroid/widget/LinearLayout;

    const/high16 v1, 0x43d20000    # 420.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 569
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheet:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1cc

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mEmph:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 570
    const/4 v0, 0x0

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->animateBlur(FF)V

    .line 571
    return-void
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mDe:Z

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method private tile(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 8

    .prologue
    .line 758
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 759
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 760
    const/high16 v0, 0x41800000    # 16.0f

    invoke-direct {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v0

    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 761
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 762
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-direct {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 763
    if-eqz p5, :cond_2

    iget v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x33

    :goto_0
    invoke-static {v3, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->withAlpha(II)I

    move-result v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 764
    if-eqz p5, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    :goto_2
    invoke-direct {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    if-eqz p5, :cond_5

    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    :goto_3
    invoke-virtual {v2, v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 765
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    const/16 v4, 0x2a

    invoke-static {v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->withAlpha(II)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v2, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 766
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 767
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 768
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 769
    new-instance v4, Lcom/artisan/sdstorage/SdGlyphView;

    if-eqz p5, :cond_6

    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    :goto_4
    invoke-direct {v4, p0, p2, v0}, Lcom/artisan/sdstorage/SdGlyphView;-><init>(Landroid/content/Context;II)V

    .line 770
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-direct {p0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v5

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-direct {p0, v6}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v6

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 771
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 772
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 774
    const-string v0, "\u2713"

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    const/16 v0, 0x11

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 776
    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mOnAccent:I

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 777
    const/4 v0, 0x2

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 778
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 779
    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    const/high16 v5, 0x41300000    # 11.0f

    invoke-direct {p0, v0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->pill(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 780
    if-eqz p5, :cond_7

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 781
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-direct {p0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v5

    const/high16 v6, 0x41b00000    # 22.0f

    invoke-direct {p0, v6}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v6

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 783
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 784
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    if-eqz p5, :cond_8

    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 786
    const/4 v0, 0x2

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 787
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v4, 0x258

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 788
    const/4 v0, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {p0, v6}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v6

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 789
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 790
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 791
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSubText:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 793
    const/4 v3, 0x2

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 794
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 795
    new-instance v0, Lcom/artisan/sdstorage/SdStorageModeActivity$17;

    invoke-direct {v0, p0, p5, v2, p6}, Lcom/artisan/sdstorage/SdStorageModeActivity$17;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;ZLandroid/graphics/drawable/GradientDrawable;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 808
    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->addPress(Landroid/view/View;)V

    .line 809
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 810
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 811
    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    return-void

    .line 763
    :cond_1
    const/16 v0, 0x1f

    goto/16 :goto_0

    :cond_2
    iget v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mText:I

    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xf

    :goto_7
    invoke-static {v3, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->withAlpha(II)I

    move-result v0

    goto/16 :goto_1

    :cond_3
    const/16 v0, 0x8

    goto :goto_7

    .line 764
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_2

    :cond_5
    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mDivider:I

    goto/16 :goto_3

    .line 769
    :cond_6
    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSubText:I

    goto/16 :goto_4

    .line 780
    :cond_7
    const/4 v0, 0x4

    goto/16 :goto_5

    .line 785
    :cond_8
    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mText:I

    goto/16 :goto_6
.end method

.method private toPortable(Landroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 1069
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v6

    .line 1070
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1071
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x400000

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1073
    if-eqz v6, :cond_0

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1074
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    iget-object v5, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1078
    :cond_1
    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v8

    .line 1080
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1081
    if-eqz v2, :cond_2

    .line 1082
    const-string v0, "\u2022 Fotos, Downloads und andere Dateien werden zur\u00fcck in den internen Speicher verschoben.\n"

    const-string v5, "\u2022 Photos, downloads and other files are moved back to internal storage.\n"

    invoke-direct {p0, v0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1086
    const-string v0, "\u2022 Diese Apps werden zur\u00fcck in den internen Speicher verschoben: "

    const-string v5, "\u2022 These apps are moved back to internal storage: "

    invoke-direct {p0, v0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    if-lez v1, :cond_4

    const-string v0, ", "

    :goto_3
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v2, v1

    .line 1078
    goto :goto_1

    .line 1088
    :cond_4
    const-string v0, ""

    goto :goto_3

    .line 1089
    :cond_5
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1091
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1092
    :cond_7
    const-string v0, "Danach wird die SD-Karte formatiert und alle restlichen Daten darauf gel\u00f6scht. Sie ist dann nicht mehr verschl\u00fcsselt und auch in anderen Ger\u00e4ten lesbar."

    const-string v1, "The SD card is then formatted and all remaining data on it is erased. It is no longer encrypted and can be read on other devices."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    new-instance v0, Lcom/artisan/sdstorage/SdStorageModeActivity$28;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/artisan/sdstorage/SdStorageModeActivity$28;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;ZLjava/util/List;Ljava/util/List;Landroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 1128
    const-string v1, "SD-Karte wieder tragbar machen?"

    const-string v3, "Make SD card portable again?"

    invoke-direct {p0, v1, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Abbrechen"

    const-string v5, "Cancel"

    .line 1129
    invoke-direct {p0, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Fortfahren"

    const-string v6, "Continue"

    invoke-direct {p0, v5, v6}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/artisan/sdstorage/SdStorageModeActivity$29;

    invoke-direct {v7, p0, v2, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity$29;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;ZLjava/lang/Runnable;)V

    move-object v0, p0

    move-object v2, v3

    move v3, v8

    move v6, v8

    .line 1128
    invoke-direct/range {v0 .. v7}, Lcom/artisan/sdstorage/SdStorageModeActivity;->showSheet(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 1133
    return-void
.end method

.method private unlockUser(I)V
    .locals 4

    .prologue
    .line 905
    :try_start_0
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 906
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->startProfile(Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    :cond_0
    :goto_0
    :try_start_1
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 912
    const-string v1, "Sicheren Ordner entsperren"

    const-string v2, "Unlock Secure Folder"

    .line 913
    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Zum Verschieben der Dateien"

    const-string v3, "To move your files"

    .line 914
    invoke-direct {p0, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 912
    invoke-virtual {v0, v1, v2, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    .line 915
    if-eqz v0, :cond_1

    .line 916
    invoke-virtual {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 934
    :goto_1
    return-void

    .line 907
    :catch_0
    move-exception v0

    .line 908
    const-string v1, "ArtisanSdStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startProfile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 919
    :catch_1
    move-exception v0

    .line 920
    const-string v1, "ArtisanSdStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirm credential "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 923
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "com.samsung.knox.securefolder"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 924
    if-eqz v0, :cond_2

    .line 925
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 926
    invoke-virtual {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 929
    :catch_2
    move-exception v0

    .line 930
    const-string v1, "ArtisanSdStorage"

    const-string v2, "open Secure Folder"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 932
    :cond_2
    const-string v0, "Bitte \u00f6ffne den Sicheren Ordner und entsperre ihn."

    const-string v1, "Please open Secure Folder and unlock it."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 933
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private unmountQuietly(Landroid/os/storage/VolumeInfo;)V
    .locals 5

    .prologue
    .line 1140
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1141
    :cond_1
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1143
    :try_start_0
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unmount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x28

    if-ge v0, v2, :cond_0

    .line 1149
    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 1150
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1151
    const-wide/16 v2, 0xfa

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1148
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1144
    :catch_0
    move-exception v0

    .line 1145
    const-string v2, "ArtisanSdStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unmount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1151
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private updateBackCallback()V
    .locals 3

    .prologue
    .line 610
    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBusy:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSheetShown:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 612
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    .line 613
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBackCb:Landroid/window/OnBackInvokedCallback;

    if-nez v2, :cond_3

    .line 614
    new-instance v0, Lcom/artisan/sdstorage/SdStorageModeActivity$11;

    invoke-direct {v0, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$11;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBackCb:Landroid/window/OnBackInvokedCallback;

    .line 615
    const v0, 0xf4240

    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBackCb:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v1, v0, v2}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 623
    :cond_1
    :goto_1
    return-void

    .line 610
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 616
    :cond_3
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBackCb:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBackCb:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v1, v0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 618
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBackCb:Landroid/window/OnBackInvokedCallback;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 620
    :catch_0
    move-exception v0

    .line 621
    const-string v1, "ArtisanSdStorage"

    const-string v2, "back dispatcher"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private userLabel(Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 831
    const/4 v0, 0x0

    .line 832
    :try_start_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 833
    :goto_0
    if-nez v0, :cond_0

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    const/16 v1, 0x96

    if-lt v0, v1, :cond_1

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    const/16 v1, 0xa0

    if-gt v0, v1, :cond_1

    :cond_0
    const-string v0, "Sicherer Ordner"

    const-string v1, "Secure Folder"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 834
    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Benutzer "

    const-string v2, "User "

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 832
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private waitMove(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    .line 1158
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    .line 1159
    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getMoveStatus(I)I

    move-result v2

    .line 1160
    const/16 v3, -0x64

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    .line 1164
    :goto_1
    return-object v0

    .line 1161
    :cond_0
    if-gez v2, :cond_1

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->moveError(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1162
    :cond_1
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 1164
    :cond_2
    const-string v0, "Zeit\u00fcberschreitung beim Verschieben."

    const-string v1, "Move timed out."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private waitPrivateMounted(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 962
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x78

    if-ge v1, v0, :cond_2

    .line 963
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 964
    if-eqz v0, :cond_1

    .line 965
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 966
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 967
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 974
    :goto_1
    return-object v0

    .line 972
    :cond_1
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 962
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 974
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static withAlpha(II)I
    .locals 2

    .prologue
    .line 179
    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->handleBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    .line 127
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 128
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mUm:Landroid/os/UserManager;

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    .line 130
    const-string v0, "de"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mDe:Z

    .line 131
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNight:Z

    .line 133
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->loadColors()V

    .line 134
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->buildFrame()V

    .line 135
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->showMain()V

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_1
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    const-string v1, "ArtisanSdStorage"

    const-string v2, "registerListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPageId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPageId:I

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 144
    return-void

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method

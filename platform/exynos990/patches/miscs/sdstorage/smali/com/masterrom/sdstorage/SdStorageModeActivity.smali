.class public Lcom/masterrom/sdstorage/SdStorageModeActivity;
.super Landroid/app/Activity;
.source "SdStorageModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;
    }
.end annotation


# static fields
.field private static final MATCH_ANY_USER:I = 0x400000

.field private static final MOVE_FAILED_LOCKED_USER:I = -0xa

.field private static final MOVE_SUCCEEDED:I = -0x64

.field private static final SECURE_FOLDER_PKG:Ljava/lang/String; = "com.samsung.knox.securefolder"

.field private static final TAG:Ljava/lang/String; = "MasterROMSdStorage"


# instance fields
.field private mAccent:I

.field private mAccent2:I

.field private mBack:Landroid/view/View;

.field private mBackCb:Landroid/window/OnBackInvokedCallback;

.field private mBase:I

.field private mBottom:Landroid/widget/LinearLayout;

.field private mBusy:Z

.field private mChipBg:I

.field private mChipText:I

.field private mCollapse:F

.field private mCollapseAnim:Landroid/animation/ValueAnimator;

.field private mCollapsed:Z

.field private mContent:Landroid/widget/LinearLayout;

.field private mDe:Z

.field private mDivider:I

.field private final mEase:Landroid/view/animation/PathInterpolator;

.field private final mEmph:Landroid/view/animation/PathInterpolator;

.field private mError:I

.field private mFont:Landroid/graphics/Typeface;

.field private mFrame:Landroid/widget/LinearLayout;

.field private mGlass:I

.field private mGlassHi:I

.field private mGlassStroke:I

.field private mHeader:Landroid/widget/LinearLayout;

.field private mLastNext:Ljava/lang/Runnable;

.field private mLastOk:Ljava/lang/String;

.field private mLastTitle:Ljava/lang/String;

.field private mLastWork:Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;

.field private final mListener:Landroid/os/storage/StorageEventListener;

.field private volatile mNewPrivate:Landroid/os/storage/VolumeInfo;

.field private mNight:Z

.field private mOnAccent:I

.field private mOnMain:Z

.field private mPageId:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRoot:Landroid/widget/FrameLayout;

.field private mScroll:Landroid/widget/ScrollView;

.field private mSheetCancel:Ljava/lang/Runnable;

.field private mSheetShown:Z

.field private mSm:Landroid/os/storage/StorageManager;

.field private final mSpring:Landroid/view/animation/PathInterpolator;

.field private mSubText:I

.field private mText:I

.field private mTitle:Landroid/widget/TextView;

.field private mUi:Landroid/os/Handler;

.field private mUm:Landroid/os/UserManager;

.field private mViolet:I

.field private mWorkText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 118
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mEase:Landroid/view/animation/PathInterpolator;

    .line 119
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f333333    # 0.7f

    const v2, 0x3dcccccd    # 0.1f

    const v4, 0x3d4ccccd    # 0.05f

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mEmph:Landroid/view/animation/PathInterpolator;

    .line 120
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3fa00000    # 1.25f

    const v2, 0x3f23d70a    # 0.64f

    const v4, 0x3eae147b    # 0.34f

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSpring:Landroid/view/animation/PathInterpolator;

    .line 122
    new-instance v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$1;

    invoke-direct {v0, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$1;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    iput-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->refreshMain()V

    return-void
.end method

.method static synthetic access$100(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/view/animation/PathInterpolator;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mEase:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->updateBackCallback()V

    return-void
.end method

.method static synthetic access$1100(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnMain:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBusy:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->showMain()V

    return-void
.end method

.method static synthetic access$1400(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->confirmFileLocation(Landroid/os/storage/VolumeInfo;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->toPortable(Landroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->confirmToInternal(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/masterrom/sdstorage/SdStorageModeActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mDivider:I

    return p0
.end method

.method static synthetic access$1800(Lcom/masterrom/sdstorage/SdStorageModeActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    return p0
.end method

.method static synthetic access$1900(Lcom/masterrom/sdstorage/SdStorageModeActivity;F)I
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/view/animation/PathInterpolator;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSpring:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/masterrom/sdstorage/SdStorageModeActivity;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->unlockUser(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/masterrom/sdstorage/SdStorageModeActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPageId:I

    return p0
.end method

.method static synthetic access$2200(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Ljava/util/List;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->lockedUsers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/os/Handler;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->setProgressText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/os/storage/StorageManager;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;I)Landroid/os/storage/VolumeInfo;
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->findVolume(Landroid/os/storage/DiskInfo;I)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->unmountQuietly(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static synthetic access$2902(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mNewPrivate:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->handleBack()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->waitPrivateMounted(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->showInternalReady()V

    return-void
.end method

.method static synthetic access$3200(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->runWork(Ljava/lang/String;Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->moveFiles(Landroid/os/storage/VolumeInfo;Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->requireUnlocked(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/masterrom/sdstorage/SdStorageModeActivity;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->waitMove(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Lcom/masterrom/sdstorage/SdStorageModeActivity;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->setBusy(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/masterrom/sdstorage/SdStorageModeActivity;ZLjava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->showResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mWorkText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/masterrom/sdstorage/SdStorageModeActivity;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->onScrolled(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mFrame:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/masterrom/sdstorage/SdStorageModeActivity;F)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->applyCollapse(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->cancelSheet()V

    return-void
.end method

.method static synthetic access$800(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetShown:Z

    return p0
.end method

.method static synthetic access$802(Lcom/masterrom/sdstorage/SdStorageModeActivity;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetShown:Z

    return p1
.end method

.method static synthetic access$902(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetCancel:Ljava/lang/Runnable;

    return-object p1
.end method

.method private addPress(Landroid/view/View;)V
    .locals 1

    .line 248
    new-instance v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$2;

    invoke-direct {v0, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$2;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static alphaF(IF)I
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    .line 182
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->withAlpha(II)I

    move-result p0

    return p0
.end method

.method private anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;
    .locals 4

    .line 436
    new-instance v0, Lcom/masterrom/sdstorage/SdAnimView;

    iget v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mText:I

    iget v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    iget v3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnAccent:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/masterrom/sdstorage/SdAnimView;-><init>(Landroid/content/Context;III)V

    .line 437
    invoke-virtual {v0, p2}, Lcom/masterrom/sdstorage/SdAnimView;->setMode(I)V

    .line 438
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p3, p3

    invoke-direct {p0, p3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p3

    const/4 v1, -0x1

    invoke-direct {p2, v1, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 p3, 0x41400000    # 12.0f

    .line 439
    invoke-direct {p0, p3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p0

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 440
    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private animateCollapse(F)V
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mCollapseAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 362
    :cond_0
    iget v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mCollapse:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mCollapseAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x17c

    .line 363
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 364
    iget-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mCollapseAnim:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSpring:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 365
    iget-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mCollapseAnim:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$6;

    invoke-direct {v0, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$6;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 368
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mCollapseAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animatePage()V
    .locals 6

    const/4 v0, 0x0

    .line 403
    :goto_0
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 405
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    const/high16 v4, 0x42100000    # 36.0f

    .line 406
    invoke-direct {p0, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    const v4, 0x3f7851ec    # 0.97f

    .line 407
    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 408
    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 409
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x37

    int-to-long v4, v0

    mul-long/2addr v4, v2

    .line 410
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x208

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mEmph:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 414
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 415
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1a4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mEmph:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method private applyCollapse(F)V
    .locals 4

    .line 372
    iput p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mCollapse:F

    .line 373
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x42a80000    # 84.0f

    .line 374
    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42600000    # 56.0f

    invoke-direct {p0, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 375
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x3ec28f5c    # 0.38f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 377
    iget-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 378
    iget-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 379
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setScaleY(F)V

    return-void
.end method

.method private body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .line 457
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 458
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget p2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSubText:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x2

    const/high16 v1, 0x41700000    # 15.0f

    .line 460
    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p2, 0x190

    .line 461
    invoke-direct {p0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 p2, 0x40800000    # 4.0f

    .line 462
    invoke-direct {p0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 463
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private buildFrame()V
    .locals 12

    .line 266
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBase:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, 0x0

    .line 268
    :try_start_0
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 269
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 270
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :catchall_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mRoot:Landroid/widget/FrameLayout;

    .line 274
    iget-boolean v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mNight:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    const v2, 0x3f8ccccd    # 1.1f

    goto :goto_0

    :cond_0
    move v2, v3

    .line 275
    :goto_0
    new-instance v10, Lcom/masterrom/sdstorage/SdGlassBackground;

    iget v6, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBase:I

    iget v4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    const v5, 0x3eae147b    # 0.34f

    mul-float/2addr v5, v2

    .line 276
    invoke-static {v4, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->alphaF(IF)I

    move-result v7

    iget v4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent2:I

    const v5, 0x3e851eb8    # 0.26f

    mul-float/2addr v5, v2

    invoke-static {v4, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->alphaF(IF)I

    move-result v8

    iget v4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mViolet:I

    const v5, 0x3e6147ae    # 0.22f

    mul-float/2addr v2, v5

    invoke-static {v4, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->alphaF(IF)I

    move-result v9

    move-object v4, v10

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/masterrom/sdstorage/SdGlassBackground;-><init>(Landroid/content/Context;IIII)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 275
    invoke-virtual {v1, v10, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mFrame:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    .line 280
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 281
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mRoot:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mFrame:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mHeader:Landroid/widget/LinearLayout;

    .line 285
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 286
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mHeader:Landroid/widget/LinearLayout;

    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 287
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mHeader:Landroid/widget/LinearLayout;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-direct {p0, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v6

    invoke-direct {p0, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v7

    invoke-virtual {v1, v6, v0, v7, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 289
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 290
    iget-boolean v6, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v6, :cond_1

    const v6, 0x1affffff

    goto :goto_1

    :cond_1
    const v6, -0x38000001

    :goto_1
    const/high16 v7, 0x41b00000    # 22.0f

    invoke-direct {p0, v6, v7}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->pill(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    .line 291
    invoke-direct {p0, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v7

    iget-boolean v8, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v8, :cond_2

    const v8, 0x24ffffff

    goto :goto_2

    :cond_2
    const/high16 v8, 0x12000000

    :goto_2
    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 292
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 293
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 294
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "drawable"

    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ic_arrow_back"

    invoke-virtual {v7, v10, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_3

    .line 297
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 298
    iget v8, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mText:I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 299
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 302
    :catch_0
    :cond_3
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-direct {p0, v8}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v9

    invoke-direct {p0, v8}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v10

    const/16 v11, 0x11

    invoke-direct {v7, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    const-string v6, "Zur\u00fcck"

    const-string v7, "Navigate up"

    invoke-direct {p0, v6, v7}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 304
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 305
    new-instance v6, Lcom/masterrom/sdstorage/SdStorageModeActivity$3;

    invoke-direct {v6, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$3;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->addPress(Landroid/view/View;)V

    .line 307
    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBack:Landroid/view/View;

    .line 308
    iget-object v6, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mHeader:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42300000    # 44.0f

    invoke-direct {p0, v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v10

    invoke-direct {p0, v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v9

    invoke-direct {v7, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    .line 311
    iget v6, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mText:I

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 312
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    const/4 v6, 0x2

    const/high16 v7, 0x42080000    # 34.0f

    invoke-virtual {v1, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 313
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    const/16 v6, 0x258

    invoke-direct {p0, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 314
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 315
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 316
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setPivotX(F)V

    .line 317
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v1, v0, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v7, 0x41400000    # 12.0f

    .line 318
    invoke-direct {p0, v7}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 319
    iget-object v7, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mHeader:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mFrame:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mHeader:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x42a80000    # 84.0f

    invoke-direct {p0, v10}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v10

    invoke-direct {v9, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    .line 323
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 324
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 325
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 326
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 327
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    .line 328
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 329
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-direct {p0, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    const/high16 v7, 0x40000000    # 2.0f

    invoke-direct {p0, v7}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v7

    invoke-direct {p0, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v9

    invoke-direct {p0, v8}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v8

    invoke-virtual {v1, v2, v7, v9, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 330
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    new-instance v2, Lcom/masterrom/sdstorage/SdStorageModeActivity$4;

    invoke-direct {v2, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$4;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 334
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mFrame:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    .line 337
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 338
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 339
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-direct {p0, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    invoke-direct {p0, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    const/high16 v5, 0x41800000    # 16.0f

    invoke-direct {p0, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 340
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mFrame:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mRoot:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$5;

    invoke-direct {v1, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$5;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 349
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;
    .locals 6

    .line 540
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 541
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 542
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p2, 0x2

    const/high16 v1, 0x41800000    # 16.0f

    .line 543
    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 544
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 545
    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p2

    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 p2, 0x258

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x41d80000    # 27.0f

    if-eqz p4, :cond_1

    .line 548
    iget p3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mError:I

    iget-boolean p4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz p4, :cond_0

    const p4, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_0
    const p4, 0x3e051eb8    # 0.13f

    :goto_0
    invoke-static {p3, p4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->alphaF(IF)I

    move-result p3

    invoke-direct {p0, p3, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->pill(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p3

    .line 549
    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p4

    iget v3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mError:I

    const v4, 0x3ee66666    # 0.45f

    invoke-static {v3, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->alphaF(IF)I

    move-result v3

    invoke-virtual {p3, p4, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 551
    iget p4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mError:I

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 552
    invoke-direct {p0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 554
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    sget-object p2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget p4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mViolet:I

    iget v4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    iget v5, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent2:I

    filled-new-array {p4, v4, v5}, [I

    move-result-object p4

    invoke-direct {p3, p2, p4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 556
    invoke-direct {p0, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 558
    iget p2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnAccent:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0x2bc

    .line 559
    invoke-direct {p0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 561
    :cond_2
    iget p3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mGlass:I

    invoke-direct {p0, p3, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->pill(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p3

    .line 562
    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p4

    iget v3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    const v4, 0x3e8f5c29    # 0.28f

    invoke-static {v3, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->alphaF(IF)I

    move-result v3

    invoke-virtual {p3, p4, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 564
    iget p4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mChipText:I

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 565
    invoke-direct {p0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 567
    :goto_1
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 568
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 569
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 570
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    invoke-direct {p0, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->addPress(Landroid/view/View;)V

    .line 572
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p3, 0x42580000    # 54.0f

    invoke-direct {p0, p3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p3

    invoke-direct {p2, v2, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 573
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    if-lez p3, :cond_3

    const/high16 p3, 0x41400000    # 12.0f

    invoke-direct {p0, p3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 574
    :cond_3
    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    if-ne p1, p0, :cond_4

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    return-object v0
.end method

.method private cancelSheet()V
    .locals 2

    .line 621
    iget-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetShown:Z

    if-nez v0, :cond_0

    return-void

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetCancel:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 623
    iput-boolean v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetShown:Z

    const/4 v1, 0x0

    .line 624
    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetCancel:Ljava/lang/Runnable;

    .line 625
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->updateBackCallback()V

    .line 626
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 627
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->showMain()V

    :cond_3
    :goto_0
    return-void
.end method

.method private card()Landroid/widget/LinearLayout;
    .locals 5

    .line 425
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 426
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 427
    iget v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mGlass:I

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-direct {p0, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->glass(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x41b00000    # 22.0f

    .line 428
    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {p0, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    invoke-direct {p0, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 429
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    .line 430
    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 431
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private varargs chips(Landroid/widget/LinearLayout;[Ljava/lang/String;)V
    .locals 9

    .line 480
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 481
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    const/4 v2, 0x2

    .line 482
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 483
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 484
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 485
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_1

    .line 486
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 487
    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget v5, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mChipText:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41500000    # 13.0f

    .line 489
    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v5, 0x2bc

    .line 490
    invoke-direct {p0, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 491
    iget v5, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mChipBg:I

    const/high16 v6, 0x41800000    # 16.0f

    invoke-direct {p0, v5, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->pill(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v5, 0x41400000    # 12.0f

    .line 492
    invoke-direct {p0, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v6

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-direct {p0, v7}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v8

    invoke-direct {p0, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v5

    invoke-direct {p0, v7}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v7

    invoke-virtual {v4, v6, v8, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 493
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v1, :cond_0

    const/high16 v6, 0x41000000    # 8.0f

    .line 494
    invoke-direct {p0, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 495
    :cond_0
    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 497
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 498
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    const/high16 v1, 0x41600000    # 14.0f

    .line 499
    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p0

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 500
    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private confirmFileLocation(Landroid/os/storage/VolumeInfo;Z)V
    .locals 9

    if-eqz p2, :cond_0

    .line 1051
    const-string v0, "Dateien auf die SD-Karte verschieben?"

    const-string v1, "Move files to the SD card?"

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1052
    :cond_0
    const-string v0, "Dateien in den internen Speicher verschieben?"

    const-string v1, "Move files to internal storage?"

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v2, v0

    const-string v0, "Fotos, Videos, Downloads und andere Dateien werden verschoben und k\u00fcnftig dort gespeichert. Je nach Datenmenge dauert das einige Minuten."

    const-string v1, "Photos, videos, downloads and other files are moved and stored there from now on. Depending on the amount of data this takes a few minutes."

    .line 1053
    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Abbrechen"

    const-string v1, "Cancel"

    .line 1057
    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "Verschieben"

    const-string v1, "Move"

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/masterrom/sdstorage/SdStorageModeActivity$23;

    invoke-direct {v8, p0, p2, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity$23;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;ZLandroid/os/storage/VolumeInfo;)V

    const/4 v4, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    .line 1051
    invoke-direct/range {v1 .. v8}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->showSheet(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 1065
    new-instance p1, Lcom/masterrom/sdstorage/SdStorageModeActivity$24;

    invoke-direct {p1, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$24;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetCancel:Ljava/lang/Runnable;

    return-void
.end method

.method private confirmToInternal(Landroid/os/storage/DiskInfo;)V
    .locals 10

    .line 960
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 961
    const-string v0, "Alle Daten auf der SD-Karte l\u00f6schen?"

    const-string v1, "Erase all data on the SD card?"

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Die Karte wird formatiert und verschl\u00fcsselt. Alle Daten darauf werden unwiderruflich gel\u00f6scht."

    const-string v1, "The card is formatted and encrypted. All data on it will be permanently erased."

    .line 962
    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "Abbrechen"

    const-string v1, "Cancel"

    .line 964
    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "L\u00f6schen und einrichten"

    const-string v1, "Erase and set up"

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/masterrom/sdstorage/SdStorageModeActivity$19;

    invoke-direct {v9, p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity$19;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V

    const/4 v5, -0x1

    const/4 v8, 0x1

    move-object v2, p0

    .line 961
    invoke-direct/range {v2 .. v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->showSheet(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    return-void
.end method

.method private currentFileLocation(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;
    .locals 1

    .line 678
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->filesOnSd(Landroid/os/storage/VolumeInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SD-Karte"

    const-string v0, "SD card"

    goto :goto_0

    :cond_0
    const-string p1, "Interner Speicher"

    const-string v0, "Internal storage"

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private dp(F)I
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private filesOnSd(Landroid/os/storage/VolumeInfo;)Z
    .locals 0

    .line 673
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 674
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private findSdDisk()Landroid/os/storage/DiskInfo;
    .locals 3

    .line 649
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 651
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    if-eqz v1, :cond_1

    .line 652
    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method private findVolume(Landroid/os/storage/DiskInfo;I)Landroid/os/storage/VolumeInfo;
    .locals 4

    .line 658
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 660
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    if-eqz v1, :cond_1

    .line 661
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private font(I)Landroid/graphics/Typeface;
    .locals 1

    .line 187
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mFont:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private glass(IF)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 226
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 227
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 228
    invoke-direct {p0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const p1, 0x3f4ccccd    # 0.8f

    .line 229
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mGlassStroke:I

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 230
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget v3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mGlassHi:I

    const/4 v4, 0x0

    .line 231
    invoke-static {v3, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->withAlpha(II)I

    move-result v5

    filled-new-array {v3, v5}, [I

    move-result-object v3

    invoke-direct {p1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 232
    invoke-direct {p0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/16 v6, 0x8

    new-array v6, v6, [F

    aput v2, v6, v4

    aput v3, v6, v1

    const/4 v2, 0x2

    aput v5, v6, v2

    const/4 v3, 0x3

    aput p2, v6, v3

    const/4 p2, 0x4

    const/4 v3, 0x0

    aput v3, v6, p2

    const/4 p2, 0x5

    aput v3, v6, p2

    const/4 p2, 0x6

    aput v3, v6, p2

    const/4 p2, 0x7

    aput v3, v6, p2

    invoke-virtual {p1, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 233
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v2, v4

    aput-object p1, v2, v1

    invoke-direct {p2, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x42600000    # 56.0f

    .line 234
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p0

    invoke-virtual {p2, v1, p0}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    const/16 p0, 0x37

    .line 235
    invoke-virtual {p2, v1, p0}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    return-object p2
.end method

.method private handleBack()Z
    .locals 2

    .line 159
    iget-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBusy:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetShown:Z

    if-eqz v0, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->cancelSheet()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .line 445
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 446
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget p2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mText:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x2

    const/high16 v1, 0x41a00000    # 20.0f

    .line 448
    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p2, 0x2bc

    .line 449
    invoke-direct {p0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 450
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    const/high16 v1, 0x41000000    # 8.0f

    .line 451
    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p0

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 452
    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private loadColors()V
    .locals 2

    .line 191
    const-string v0, "sec"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mFont:Landroid/graphics/Typeface;

    const/4 v0, -0x1

    .line 192
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnAccent:I

    .line 193
    iget-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v0, :cond_0

    const v0, -0xf8f7f4

    .line 194
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBase:I

    const v0, -0xb0a09

    .line 195
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mText:I

    const v0, -0x4c4840

    .line 196
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSubText:I

    const v0, -0xc16e01

    .line 197
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    const v0, -0xd12c3a

    .line 198
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent2:I

    const v0, -0x849301

    .line 199
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mViolet:I

    const v0, 0x12ffffff

    .line 200
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mGlass:I

    const v0, 0x21ffffff

    .line 201
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mGlassStroke:I

    const v0, 0x14ffffff

    .line 202
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mGlassHi:I

    .line 203
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mDivider:I

    const v0, 0x2e3e91ff

    .line 204
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mChipBg:I

    const v0, -0x633701

    .line 205
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mChipText:I

    const v0, -0x9491

    .line 206
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mError:I

    goto :goto_0

    :cond_0
    const v0, -0xd0b08

    .line 208
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBase:I

    const v0, -0xefeeec

    .line 209
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mText:I

    const v0, -0xb5b1a9

    .line 210
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSubText:I

    const v0, -0xf58d1a

    .line 211
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    const v0, -0xeb4a37

    .line 212
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent2:I

    const v0, -0xa49301

    .line 213
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mViolet:I

    const v0, -0x57000001

    .line 214
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mGlass:I

    const v0, -0x14000001

    .line 215
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mGlassStroke:I

    const v0, -0x7f000001

    .line 216
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mGlassHi:I

    const/high16 v0, 0x12000000

    .line 217
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mDivider:I

    const v0, 0x1c0a72e6

    .line 218
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mChipBg:I

    const v0, -0xf5992f

    .line 219
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mChipText:I

    const v0, -0x26c5c1

    .line 220
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mError:I

    :goto_0
    return-void
.end method

.method private lockedUsers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 838
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 840
    :try_start_0
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mUm:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 842
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    if-eqz v2, :cond_1

    .line 843
    iget-object v3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mUm:Landroid/os/UserManager;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 846
    const-string v1, "MasterROMSdStorage"

    const-string v2, "lockedUsers"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v0
.end method

.method private matchWrap()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 420
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method private moveError(I)Ljava/lang/String;
    .locals 3

    const/16 v0, -0xa

    if-eq p1, v0, :cond_6

    const/4 v0, -0x5

    if-eq p1, v0, :cond_5

    const/4 v0, -0x8

    if-eq p1, v0, :cond_4

    const/4 v0, -0x7

    if-eq p1, v0, :cond_3

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1203
    const-string v0, "Interner Fehler."

    const-string v1, "Internal error."

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1192
    :cond_0
    const-string v0, "Nicht genug freier Speicher am Ziel."

    const-string v1, "Not enough free space at the destination."

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1193
    :cond_1
    const-string v0, "Die App existiert nicht mehr."

    const-string v1, "The app no longer exists."

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1194
    :cond_2
    const-string v0, "System-Apps k\u00f6nnen nicht verschoben werden."

    const-string v1, "System apps cannot be moved."

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1196
    :cond_3
    const-string v0, "Es l\u00e4uft bereits ein anderer Verschiebevorgang. Bitte sp\u00e4ter erneut versuchen."

    const-string v1, "Another move is already in progress. Please try again later."

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1198
    :cond_4
    const-string v0, "Diese App ist ein Ger\u00e4teadministrator und kann nicht verschoben werden."

    const-string v1, "This app is a device administrator and cannot be moved."

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1195
    :cond_5
    const-string v0, "Dieser Speicherort ist nicht m\u00f6glich."

    const-string v1, "This location is not possible."

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1200
    :cond_6
    const-string v0, "Der Sichere Ordner oder ein anderer Benutzer ist gesperrt. Entsperre ihn und versuche es dann erneut."

    const-string v1, "Secure Folder or another user is locked. Unlock it, then try again."

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1205
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (Code "

    const-string v2, " (code "

    invoke-direct {p0, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private moveFiles(Landroid/os/storage/VolumeInfo;Z)V
    .locals 2

    .line 1069
    const-string v0, "Verschieben"

    const-string v1, "Moving files"

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$25;

    invoke-direct {v1, p0, p1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity$25;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;Z)V

    if-eqz p2, :cond_0

    .line 1080
    const-string p1, "Fotos, Downloads und andere Dateien liegen jetzt auf der SD-Karte. Neue Dateien werden automatisch dort gespeichert."

    const-string p2, "Photos, downloads and other files are now on the SD card. New files are stored there automatically."

    invoke-direct {p0, p1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1082
    :cond_0
    const-string p1, "Fotos, Downloads und andere Dateien liegen jetzt im internen Speicher."

    const-string p2, "Photos, downloads and other files are now on internal storage."

    invoke-direct {p0, p1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 1069
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->runWork(Ljava/lang/String;Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private newPage(Ljava/lang/String;)V
    .locals 3

    .line 384
    iget v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPageId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPageId:I

    const/4 v0, 0x0

    .line 385
    iput-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetShown:Z

    const/4 v1, 0x0

    .line 386
    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetCancel:Ljava/lang/Runnable;

    .line 387
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->updateBackCallback()V

    .line 388
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 389
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 390
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 391
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 393
    iput-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mCollapsed:Z

    .line 394
    iget-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mCollapseAnim:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 p1, 0x0

    .line 395
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->applyCollapse(F)V

    .line 396
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 397
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 398
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x168

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mEmph:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private onScrolled(I)V
    .locals 1

    const/high16 v0, 0x41000000    # 8.0f

    .line 354
    invoke-direct {p0, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 355
    :goto_0
    iget-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mCollapsed:Z

    if-ne p1, v0, :cond_1

    return-void

    .line 356
    :cond_1
    iput-boolean p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mCollapsed:Z

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 357
    :goto_1
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->animateCollapse(F)V

    return-void
.end method

.method private pill(IF)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 240
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 241
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 242
    invoke-direct {p0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private refreshMain()V
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    new-instance v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$10;

    invoke-direct {v1, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$10;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private requireUnlocked(Ljava/lang/Runnable;)V
    .locals 10

    .line 860
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->lockedUsers()Ljava/util/List;

    move-result-object v0

    .line 861
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 865
    iput-boolean v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnMain:Z

    .line 866
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 867
    const-string v7, "Entsperren"

    const-string v8, "Unlock"

    invoke-direct {p0, v7, v8}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 868
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x6

    const/16 v4, 0xb4

    .line 869
    invoke-direct {p0, v2, v3, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;

    .line 870
    const-string v3, "Kurz entsperren, dann geht es weiter"

    const-string v4, "Unlock briefly, then we continue"

    invoke-direct {p0, v3, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 871
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 872
    const-string v4, "Damit Fotos, Downloads und andere Dateien verschoben werden k\u00f6nnen, m\u00fcssen alle Bereiche dieses Ger\u00e4ts entsperrt sein. Gesperrt ist zurzeit:\n"

    const-string v5, "To move photos, downloads and other files, every space on this device has to be unlocked. Currently locked:\n"

    invoke-direct {p0, v4, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0xa

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    const-string v9, "\u2022 "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->userLabel(Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 877
    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "Tippe auf \u201eEntsperren\u201c und gib die Sperre ein. Sobald alles entsperrt ist, geht es hier automatisch weiter."

    const-string v4, "Tap \u201cUnlock\u201d and enter the lock. As soon as everything is unlocked, this page continues automatically."

    invoke-direct {p0, v0, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 882
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 883
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 884
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 885
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 886
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 887
    iget v4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 888
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-direct {p0, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v9

    invoke-direct {p0, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v5

    invoke-direct {v4, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 890
    const-string v3, "Warte auf Entsperrung \u2026"

    const-string v4, "Waiting for unlock \u2026"

    invoke-direct {p0, v3, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    iget v3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mText:I

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x2

    const/high16 v4, 0x41700000    # 15.0f

    .line 892
    invoke-virtual {v9, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 893
    invoke-direct {p0, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    invoke-virtual {v9, v3, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 894
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 895
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 897
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Abbrechen"

    const-string v2, "Cancel"

    invoke-direct {p0, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/masterrom/sdstorage/SdStorageModeActivity$16;

    invoke-direct {v5, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$16;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 900
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7, v8}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/masterrom/sdstorage/SdStorageModeActivity$17;

    invoke-direct {v5, p0, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity$17;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/content/pm/UserInfo;)V

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 903
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->animatePage()V

    .line 905
    iget v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPageId:I

    .line 906
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    new-instance v2, Lcom/masterrom/sdstorage/SdStorageModeActivity$18;

    invoke-direct {v2, p0, v0, v9, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity$18;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;ILandroid/widget/TextView;Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x320

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p4, :cond_0

    const/high16 p4, 0x41b00000    # 22.0f

    .line 507
    invoke-direct {p0, p4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    invoke-direct {p0, p4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p4

    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    invoke-virtual {p1, v1, v3, p4, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 509
    :cond_0
    new-instance p4, Landroid/view/View;

    invoke-direct {p4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 510
    iget v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mDivider:I

    invoke-virtual {p4, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 511
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {p0, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    :goto_0
    new-instance p4, Landroid/widget/LinearLayout;

    invoke-direct {p4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 514
    invoke-virtual {p4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 515
    invoke-virtual {p4, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 516
    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    invoke-virtual {p4, v1, v3, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 517
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 518
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget p2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mText:I

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    .line 520
    invoke-virtual {v2, p2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v4, 0x190

    .line 521
    invoke-direct {p0, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 522
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v1, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 524
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget p3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSubText:I

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p3, 0x41700000    # 15.0f

    .line 526
    invoke-virtual {v0, p2, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 527
    invoke-direct {p0, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p2, 0x800005

    .line 528
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 529
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const p3, 0x3f99999a    # 1.2f

    invoke-direct {p2, v1, v6, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 530
    invoke-direct {p0, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 531
    invoke-virtual {p4, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p4, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private runWork(Ljava/lang/String;Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4

    .line 1232
    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mLastTitle:Ljava/lang/String;

    .line 1233
    iput-object p2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mLastWork:Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;

    .line 1234
    iput-object p3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mLastOk:Ljava/lang/String;

    .line 1235
    iput-object p4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mLastNext:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 1236
    iput-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnMain:Z

    const/4 v0, 0x1

    .line 1237
    invoke-direct {p0, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->setBusy(Z)V

    .line 1238
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 1239
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v1, 0x3

    const/16 v2, 0xbe

    .line 1240
    invoke-direct {p0, p1, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;

    .line 1241
    const-string v1, "Bitte warten \u2026"

    const-string v2, "Please wait \u2026"

    invoke-direct {p0, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mWorkText:Landroid/widget/TextView;

    .line 1242
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1243
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1244
    iget v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 1245
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    const/high16 v2, 0x40c00000    # 6.0f

    .line 1246
    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v2, 0x41400000    # 12.0f

    .line 1247
    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1248
    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1249
    const-string v0, "Entferne die SD-Karte nicht und schalte das Ger\u00e4t nicht aus. Das Display bleibt dabei an."

    const-string v1, "Do not remove the SD card or turn off the device. The screen stays on meanwhile."

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 1251
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->animatePage()V

    .line 1253
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$28;

    invoke-direct {v0, p0, p2, p4, p3}, Lcom/masterrom/sdstorage/SdStorageModeActivity$28;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;Ljava/lang/Runnable;Ljava/lang/String;)V

    const-string p0, "MasterROMSdStorage"

    invoke-direct {p1, v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1271
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sectionLabel(Ljava/lang/String;)V
    .locals 4

    .line 469
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 470
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSubText:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    .line 472
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p1, 0x2bc

    .line 473
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 p1, 0x41b00000    # 22.0f

    .line 474
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p1

    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {p0, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 475
    iget-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setBusy(Z)V
    .locals 3

    .line 1216
    iput-boolean p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBusy:Z

    .line 1217
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBack:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1218
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBack:Landroid/view/View;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const/16 v0, 0x80

    if-eqz p1, :cond_1

    .line 1220
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 1222
    :cond_1
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 1224
    :goto_1
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->updateBackCallback()V

    return-void
.end method

.method private setProgressText(Ljava/lang/String;)V
    .locals 2

    .line 1308
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    new-instance v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$33;

    invoke-direct {v1, p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity$33;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showInternalReady()V
    .locals 15

    const/4 v0, 0x0

    .line 1000
    iput-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnMain:Z

    .line 1001
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mNewPrivate:Landroid/os/storage/VolumeInfo;

    .line 1002
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->findSdDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    .line 1003
    const-string v3, "Bereit"

    const-string v4, "Ready"

    invoke-direct {p0, v3, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 1004
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v5

    const/4 v6, 0x5

    const/16 v7, 0xaa

    .line 1005
    invoke-direct {p0, v5, v6, v7}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;

    .line 1006
    const-string v6, "Interner Speicher eingerichtet"

    const-string v7, "Internal storage set up"

    invoke-direct {p0, v6, v7}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 1007
    const-string v6, "Die SD-Karte ist jetzt verschl\u00fcsselt und Teil des internen Speichers. Sie ist nur noch in diesem Ger\u00e4t lesbar."

    const-string v7, "The SD card is now encrypted and part of internal storage. It can only be read on this device."

    invoke-direct {p0, v6, v7}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 1009
    const-string v6, "Verschl\u00fcsselt"

    const-string v7, "Encrypted"

    invoke-direct {p0, v6, v7}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Eingebunden"

    const-string v8, "Mounted"

    invoke-direct {p0, v7, v8}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v5, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->chips(Landroid/widget/LinearLayout;[Ljava/lang/String;)V

    .line 1011
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1012
    const-string v4, "Nutzung"

    const-string v5, "Usage"

    invoke-direct {p0, v4, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Interner Speicher"

    const-string v6, "Internal storage"

    invoke-direct {p0, v5, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1013
    const-string v0, "Verschl\u00fcsselung"

    const-string v4, "Encryption"

    invoke-direct {p0, v0, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Ja, nur dieses Ger\u00e4t"

    const-string v5, "Yes, this device only"

    invoke-direct {p0, v4, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v3, v0, v4, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v2, :cond_0

    .line 1014
    iget-wide v6, v2, Landroid/os/storage/DiskInfo;->size:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    const-string v0, "Kapazit\u00e4t"

    const-string v4, "Capacity"

    invoke-direct {p0, v0, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v6, v2, Landroid/os/storage/DiskInfo;->size:J

    invoke-static {p0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v0, v2, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    if-eqz v1, :cond_2

    .line 1016
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1018
    :cond_1
    const-string v0, "N\u00e4chster Schritt"

    const-string v2, "Next step"

    invoke-direct {p0, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->sectionLabel(Ljava/lang/String;)V

    .line 1019
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x2

    const/16 v3, 0x82

    .line 1020
    invoke-direct {p0, v0, v2, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;

    .line 1021
    const-string v2, "Dateien auf die SD-Karte verschieben?"

    const-string v3, "Move files to the SD card?"

    invoke-direct {p0, v2, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 1022
    const-string v2, "Fotos, Videos, Downloads, Musik und andere Dateien kommen auf die Karte, neue Fotos und Downloads landen danach automatisch dort. System und Apps bleiben im internen Speicher. Je nach Datenmenge dauert das einige Minuten \u2013 du kannst es auch sp\u00e4ter auf dieser Seite \u00e4ndern."

    const-string v3, "Photos, videos, downloads, music and other files go to the card, and new photos and downloads are stored there automatically. System and apps stay on internal storage. Depending on the amount of data this takes a few minutes \u2013 you can also change it later on this page."

    invoke-direct {p0, v2, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 1028
    iget-object v4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Sp\u00e4ter"

    const-string v2, "Later"

    invoke-direct {p0, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/masterrom/sdstorage/SdStorageModeActivity$20;

    invoke-direct {v8, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$20;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 1031
    iget-object v10, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Dateien verschieben"

    const-string v2, "Move files"

    invoke-direct {p0, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/masterrom/sdstorage/SdStorageModeActivity$21;

    invoke-direct {v14, p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity$21;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;)V

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Die Karte wird noch eingebunden. Dateien kannst du gleich auf dieser Seite verschieben."

    const-string v2, "The card is still being mounted. You can move files on this page in a moment."

    invoke-direct {p0, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 1041
    :cond_3
    iget-object v5, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Fertig"

    const-string v1, "Done"

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/masterrom/sdstorage/SdStorageModeActivity$22;

    invoke-direct {v9, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$22;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 1045
    :goto_0
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->animatePage()V

    return-void
.end method

.method private showMain()V
    .locals 22

    move-object/from16 v7, p0

    const/4 v0, 0x1

    .line 684
    iput-boolean v0, v7, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnMain:Z

    .line 685
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->findSdDisk()Landroid/os/storage/DiskInfo;

    move-result-object v8

    const/16 v1, 0xb4

    .line 686
    const-string v9, "SD card"

    const-string v10, "SD-Karte"

    if-nez v8, :cond_0

    .line 687
    invoke-direct {v7, v10, v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 688
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x4

    .line 689
    invoke-direct {v7, v0, v2, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;

    .line 690
    const-string v1, "Keine SD-Karte eingelegt"

    const-string v2, "No SD card inserted"

    invoke-direct {v7, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 691
    const-string v1, "Lege eine microSD-Karte ein. Danach kannst du hier w\u00e4hlen, ob sie als tragbarer Speicher oder als interner, verschl\u00fcsselter Speicher genutzt wird. Die Seite aktualisiert sich automatisch."

    const-string v2, "Insert a microSD card. You can then choose here whether it is used as portable storage or as encrypted internal storage. This page updates automatically."

    invoke-direct {v7, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 695
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->animatePage()V

    return-void

    .line 698
    :cond_0
    invoke-direct {v7, v8, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->findVolume(Landroid/os/storage/DiskInfo;I)Landroid/os/storage/VolumeInfo;

    move-result-object v11

    .line 699
    iget-wide v2, v8, Landroid/os/storage/DiskInfo;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, v8, Landroid/os/storage/DiskInfo;->size:J

    invoke-static {v7, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "\u2013"

    .line 701
    :goto_0
    const-string v3, "Capacity"

    const-string v4, "Kapazit\u00e4t"

    const-string v5, "Encryption"

    const-string v6, "Verschl\u00fcsselung"

    const-string v12, "Portable storage"

    const-string v13, "Tragbarer Speicher"

    const-string v14, "Usage"

    const-string v15, "Nutzung"

    const-string v0, "Current state"

    const-string v1, "Aktueller Zustand"

    move-object/from16 v17, v8

    const-string v8, "Encrypted"

    move-object/from16 v18, v8

    const-string v8, "Verschl\u00fcsselt"

    move-object/from16 v19, v8

    if-eqz v11, :cond_2

    .line 702
    invoke-direct {v7, v10, v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 703
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    const/16 v9, 0xb4

    const/4 v10, 0x1

    .line 704
    invoke-direct {v7, v8, v10, v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;

    .line 705
    invoke-direct {v7, v13, v12}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 706
    const-string v9, "Die Karte wird wieder ein normaler, austauschbarer Speicher \u2013 ohne Verschl\u00fcsselung und auch in anderen Ger\u00e4ten, Kameras oder am PC lesbar. Apps und Dateien auf der Karte werden vorher automatisch in den internen Speicher verschoben, danach wird die Karte formatiert."

    const-string v10, "The card becomes normal removable storage again \u2013 without encryption and readable in other devices, cameras or on a PC. Apps and files on the card are moved to internal storage automatically first, then the card is formatted."

    invoke-direct {v7, v9, v10}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 712
    const-string v9, "Austauschbar"

    const-string v10, "Removable"

    invoke-direct {v7, v9, v10}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Am PC lesbar"

    const-string v12, "Readable on PC"

    invoke-direct {v7, v10, v12}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "Unverschl\u00fcsselt"

    const-string v13, "Not encrypted"

    invoke-direct {v7, v12, v13}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v9, v10, v12}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->chips(Landroid/widget/LinearLayout;[Ljava/lang/String;)V

    .line 714
    invoke-direct {v7, v1, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->sectionLabel(Ljava/lang/String;)V

    .line 715
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 716
    invoke-direct {v7, v15, v14}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "Interner Speicher"

    const-string v9, "Internal storage"

    invoke-direct {v7, v8, v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v0, v1, v8, v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 717
    invoke-direct {v7, v6, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "Ja, nur dieses Ger\u00e4t"

    const-string v6, "Yes, this device only"

    invoke-direct {v7, v5, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v7, v0, v1, v5, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 718
    const-string v1, "Dateien gespeichert auf"

    const-string v5, "Files stored on"

    invoke-direct {v7, v1, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v11}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->currentFileLocation(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v0, v1, v5, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 719
    invoke-direct {v7, v4, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1, v2, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 721
    const-string v0, "Speicherort f\u00fcr Dateien"

    const-string v1, "Location for files"

    invoke-direct {v7, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->sectionLabel(Ljava/lang/String;)V

    .line 722
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x2

    const/16 v2, 0x82

    .line 723
    invoke-direct {v7, v0, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;

    .line 724
    const-string v1, "W\u00e4hle, wo Fotos, Videos, Downloads, Musik und andere Dateien gespeichert werden. Vorhandene Dateien werden mit verschoben. System und Apps bleiben im internen Speicher."

    const-string v2, "Choose where photos, videos, downloads, music and other files are stored. Existing files are moved along. System and apps stay on internal storage."

    invoke-direct {v7, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 728
    invoke-direct {v7, v11}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->filesOnSd(Landroid/os/storage/VolumeInfo;)Z

    move-result v8

    .line 729
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 730
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 731
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    .line 732
    invoke-direct {v7, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 733
    invoke-virtual {v0, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 734
    const-string v0, "Intern"

    const-string v1, "Internal"

    invoke-direct {v7, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Ger\u00e4tespeicher"

    const-string v1, "Device storage"

    invoke-direct {v7, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    xor-int/lit8 v5, v8, 0x1

    new-instance v6, Lcom/masterrom/sdstorage/SdStorageModeActivity$11;

    invoke-direct {v6, v7, v8, v11}, Lcom/masterrom/sdstorage/SdStorageModeActivity$11;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;ZLandroid/os/storage/VolumeInfo;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct/range {v0 .. v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->tile(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    move-object/from16 v10, v20

    move-object/from16 v0, v21

    .line 736
    invoke-direct {v7, v0, v10}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v7, v1, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/masterrom/sdstorage/SdStorageModeActivity$12;

    invoke-direct {v6, v7, v8, v11}, Lcom/masterrom/sdstorage/SdStorageModeActivity$12;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;ZLandroid/os/storage/VolumeInfo;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->tile(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 739
    iget-object v1, v7, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Tragbar machen"

    const-string v2, "Make portable"

    invoke-direct {v7, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    move-object/from16 v8, v17

    invoke-direct {v5, v7, v8, v11}, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    goto/16 :goto_1

    :cond_2
    move-object v8, v10

    move-object/from16 v11, v19

    move-object v10, v9

    move-object/from16 v9, v18

    .line 743
    invoke-direct {v7, v8, v10}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 744
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v8

    move-object/from16 v16, v2

    const/4 v2, 0x0

    const/16 v10, 0xb4

    .line 745
    invoke-direct {v7, v8, v2, v10}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;

    .line 746
    const-string v2, "Interner, verschl\u00fcsselter Speicher"

    const-string v10, "Encrypted internal storage"

    invoke-direct {v7, v2, v10}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v8, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 747
    const-string v2, "Die Karte wird formatiert, verschl\u00fcsselt und als Erweiterung des internen Speichers genutzt. Danach kannst du Fotos, Downloads und andere Dateien \u2013 und unterst\u00fctzte Apps \u2013 auf der Karte speichern. Die Karte ist anschlie\u00dfend nur noch in diesem Ger\u00e4t lesbar."

    const-string v10, "The card is formatted, encrypted and used as an extension of internal storage. You can then store photos, downloads and other files \u2013 and supported apps \u2013 on the card. Afterwards the card can only be read on this device."

    invoke-direct {v7, v2, v10}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v8, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 753
    invoke-direct {v7, v11, v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "Mehr Speicher"

    const-string v10, "More storage"

    invoke-direct {v7, v9, v10}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Nur dieses Ger\u00e4t"

    const-string v11, "This device only"

    invoke-direct {v7, v10, v11}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v2, v9, v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v8, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->chips(Landroid/widget/LinearLayout;[Ljava/lang/String;)V

    .line 755
    invoke-direct {v7, v1, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->sectionLabel(Ljava/lang/String;)V

    .line 756
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 757
    invoke-direct {v7, v15, v14}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v13, v12}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-direct {v7, v0, v1, v2, v8}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 758
    invoke-direct {v7, v6, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Nein"

    const-string v5, "No"

    invoke-direct {v7, v2, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct {v7, v0, v1, v2, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 759
    invoke-direct {v7, v4, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-direct {v7, v0, v1, v2, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 761
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 762
    const-string v1, "Gut zu wissen"

    const-string v2, "Good to know"

    invoke-direct {v7, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 763
    const-string v1, "\u2022 Alle Daten, die jetzt auf der Karte sind, werden gel\u00f6scht \u2013 sichere sie vorher.\n\u2022 Nimm die Karte danach nicht mehr einfach heraus, sie ist Teil des Speichers.\n\u2022 Du kannst die Karte hier jederzeit wieder tragbar machen."

    const-string v2, "\u2022 All data currently on the card is erased \u2013 back it up first.\n\u2022 Do not simply remove the card afterwards, it is part of the storage.\n\u2022 You can make the card portable again here at any time."

    invoke-direct {v7, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 770
    iget-object v1, v7, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Als intern einrichten"

    const-string v2, "Set up as internal"

    invoke-direct {v7, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/masterrom/sdstorage/SdStorageModeActivity$14;

    move-object/from16 v0, v17

    invoke-direct {v5, v7, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$14;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 774
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->animatePage()V

    return-void
.end method

.method private showResult(ZLjava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    .line 1275
    iput-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnMain:Z

    .line 1276
    const-string v6, "Done"

    const-string v7, "Fertig"

    if-eqz p1, :cond_0

    invoke-direct {p0, v7, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Fehler"

    const-string v1, "Error"

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 1277
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :cond_1
    const/4 v1, 0x7

    :goto_1
    const/16 v2, 0xaa

    .line 1278
    invoke-direct {p0, v0, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;

    if-eqz p1, :cond_2

    .line 1279
    const-string v1, "Alles erledigt"

    const-string v2, "All done"

    goto :goto_2

    :cond_2
    const-string v1, "Das hat nicht geklappt"

    const-string v2, "That didn\'t work"

    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 1280
    invoke-direct {p0, v0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 1282
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Zur\u00fcck zur \u00dcbersicht"

    const-string v2, "Back to overview"

    invoke-direct {p0, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/masterrom/sdstorage/SdStorageModeActivity$29;

    invoke-direct {v5, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$29;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 1285
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/masterrom/sdstorage/SdStorageModeActivity$30;

    invoke-direct {v5, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$30;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    goto :goto_3

    .line 1289
    :cond_3
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Zur\u00fcck"

    const-string v2, "Back"

    invoke-direct {p0, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/masterrom/sdstorage/SdStorageModeActivity$31;

    invoke-direct {v5, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$31;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 1292
    iget-object v3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mLastWork:Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;

    if-eqz v3, :cond_4

    .line 1293
    iget-object v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mLastTitle:Ljava/lang/String;

    .line 1295
    iget-object v4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mLastOk:Ljava/lang/String;

    .line 1296
    iget-object v5, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mLastNext:Ljava/lang/Runnable;

    .line 1297
    iget-object v6, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Erneut versuchen"

    const-string v1, "Try again"

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/masterrom/sdstorage/SdStorageModeActivity$32;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity$32;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 1304
    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->animatePage()V

    return-void
.end method

.method private showSheet(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 6

    const/4 v0, 0x0

    .line 589
    iput-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnMain:Z

    .line 590
    const-string v1, "Best\u00e4tigen"

    const-string v2, "Confirm"

    invoke-direct {p0, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 591
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v1

    if-ltz p3, :cond_0

    move v0, p3

    :cond_0
    const/16 v2, 0xaa

    .line 592
    invoke-direct {p0, v1, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;

    .line 593
    invoke-direct {p0, v1, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 594
    invoke-direct {p0, v1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    if-eqz p6, :cond_1

    .line 596
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 597
    const-string v1, "Dieser Schritt l\u00e4sst sich nicht r\u00fcckg\u00e4ngig machen."

    const-string v2, "This step cannot be undone."

    invoke-direct {p0, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 599
    iget v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mError:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x258

    .line 600
    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 602
    :cond_1
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/masterrom/sdstorage/SdStorageModeActivity$7;

    invoke-direct {v5, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$7;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 605
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/masterrom/sdstorage/SdStorageModeActivity$8;

    invoke-direct {v5, p0, p7}, Lcom/masterrom/sdstorage/SdStorageModeActivity$8;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/Runnable;)V

    const/4 v3, 0x1

    move-object v2, p5

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 614
    iput-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetShown:Z

    const/4 v0, 0x0

    .line 615
    iput-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetCancel:Ljava/lang/Runnable;

    .line 616
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->updateBackCallback()V

    .line 617
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->animatePage()V

    return-void
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mDe:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method private tile(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p5

    .line 779
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 780
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 781
    invoke-direct {p0, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v5

    const/high16 v6, 0x41600000    # 14.0f

    invoke-direct {p0, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v7

    invoke-direct {p0, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v8

    invoke-direct {p0, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v6

    invoke-virtual {v2, v5, v7, v8, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 782
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v6, 0x41a00000    # 20.0f

    .line 783
    invoke-direct {p0, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz v1, :cond_1

    .line 784
    iget v6, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    iget-boolean v7, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v7, :cond_0

    const/16 v7, 0x33

    goto :goto_0

    :cond_0
    const/16 v7, 0x1f

    goto :goto_0

    :cond_1
    iget v6, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mText:I

    iget-boolean v7, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v7, :cond_2

    const/16 v7, 0xf

    goto :goto_0

    :cond_2
    const/16 v7, 0x8

    :goto_0
    invoke-static {v6, v7}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->withAlpha(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    move v8, v6

    goto :goto_1

    :cond_3
    move v8, v7

    .line 785
    :goto_1
    invoke-direct {p0, v8}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v8

    if-eqz v1, :cond_4

    iget v9, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    goto :goto_2

    :cond_4
    iget v9, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mDivider:I

    :goto_2
    invoke-virtual {v5, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 786
    new-instance v8, Landroid/graphics/drawable/RippleDrawable;

    iget v9, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    const/16 v10, 0x2a

    invoke-static {v9, v10}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->withAlpha(II)I

    move-result v9

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v5, v10}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 787
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    .line 788
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v10, 0x10

    .line 789
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 790
    new-instance v10, Lcom/masterrom/sdstorage/SdGlyphView;

    if-eqz v1, :cond_5

    iget v11, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    goto :goto_3

    :cond_5
    iget v11, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSubText:I

    :goto_3
    move/from16 v12, p2

    invoke-direct {v10, p0, v12, v11}, Lcom/masterrom/sdstorage/SdGlyphView;-><init>(Landroid/content/Context;II)V

    .line 791
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x41e00000    # 28.0f

    invoke-direct {p0, v12}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v13

    invoke-direct {p0, v12}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v12

    invoke-direct {v11, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 792
    new-instance v10, Landroid/view/View;

    invoke-direct {v10, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 793
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v9, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 795
    const-string v10, "\u2713"

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v10, 0x11

    .line 796
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 797
    iget v10, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnAccent:I

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v10, 0x2

    const/high16 v11, 0x41500000    # 13.0f

    .line 798
    invoke-virtual {v3, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 799
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 800
    iget v12, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    const/high16 v13, 0x41300000    # 11.0f

    invoke-direct {p0, v12, v13}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->pill(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_6

    move v12, v9

    goto :goto_4

    :cond_6
    const/4 v12, 0x4

    .line 801
    :goto_4
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 802
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x41b00000    # 22.0f

    invoke-direct {p0, v13}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v14

    invoke-direct {p0, v13}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v13

    invoke-direct {v12, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v8, p3

    .line 805
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_7

    .line 806
    iget v8, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    goto :goto_5

    :cond_7
    iget v8, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mText:I

    :goto_5
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 807
    invoke-virtual {v3, v10, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 808
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v8, 0x258

    invoke-static {v4, v8, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v4, 0x41400000    # 12.0f

    .line 809
    invoke-direct {p0, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    invoke-direct {p0, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v6

    invoke-virtual {v3, v9, v4, v9, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 810
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 811
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v4, p4

    .line 812
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    iget v4, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSubText:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 814
    invoke-virtual {v3, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 815
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 816
    new-instance v3, Lcom/masterrom/sdstorage/SdStorageModeActivity$15;

    move-object/from16 v4, p6

    invoke-direct {v3, p0, v1, v5, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity$15;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;ZLandroid/graphics/drawable/GradientDrawable;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 829
    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->addPress(Landroid/view/View;)V

    .line 830
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v9, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 831
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_8

    const/high16 v3, 0x41200000    # 10.0f

    invoke-direct {p0, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_8
    move-object/from16 v0, p1

    .line 832
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private toPortable(Landroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V
    .locals 11

    .line 1090
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v6

    .line 1091
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1093
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_0

    .line 1094
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1095
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    iget-object v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz v6, :cond_2

    .line 1099
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move v8, v1

    goto :goto_1

    :cond_2
    move v8, v0

    .line 1101
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_3

    .line 1103
    const-string v1, "\u2022 Fotos, Downloads und andere Dateien werden zur\u00fcck in den internen Speicher verschoben.\n"

    const-string v2, "\u2022 Photos, downloads and other files are moved back to internal storage.\n"

    invoke-direct {p0, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v2, 0xa

    if-nez v1, :cond_6

    .line 1107
    const-string v1, "\u2022 Diese Apps werden zur\u00fcck in den internen Speicher verschoben: "

    const-string v5, "\u2022 These apps are moved back to internal storage: "

    invoke-direct {p0, v1, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    if-lez v0, :cond_4

    const-string v1, ", "

    goto :goto_3

    :cond_4
    const-string v1, ""

    :goto_3
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1110
    :cond_5
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1112
    :cond_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1113
    :cond_7
    const-string v0, "Danach wird die SD-Karte formatiert und alle restlichen Daten darauf gel\u00f6scht. Sie ist dann nicht mehr verschl\u00fcsselt und auch in anderen Ger\u00e4ten lesbar."

    const-string v1, "The SD card is then formatted and all remaining data on it is erased. It is no longer encrypted and can be read on other devices."

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    new-instance v10, Lcom/masterrom/sdstorage/SdStorageModeActivity$26;

    move-object v0, v10

    move-object v1, p0

    move v2, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity$26;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;ZLjava/util/List;Ljava/util/List;Landroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 1149
    const-string v0, "SD-Karte wieder tragbar machen?"

    const-string v1, "Make SD card portable again?"

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "Abbrechen"

    const-string v3, "Cancel"

    .line 1150
    invoke-direct {p0, v0, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "Fortfahren"

    const-string v3, "Continue"

    invoke-direct {p0, v0, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Lcom/masterrom/sdstorage/SdStorageModeActivity$27;

    invoke-direct {v9, p0, v8, v10}, Lcom/masterrom/sdstorage/SdStorageModeActivity$27;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;ZLjava/lang/Runnable;)V

    const/4 v3, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v7, v9

    .line 1149
    invoke-direct/range {v0 .. v7}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->showSheet(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    return-void
.end method

.method private unlockUser(I)V
    .locals 5

    .line 926
    const-string v0, "MasterROMSdStorage"

    :try_start_0
    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 927
    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->startProfile(Landroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 929
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startProfile "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 932
    :cond_0
    :goto_0
    :try_start_1
    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 933
    const-string v2, "Sicheren Ordner entsperren"

    const-string v3, "Unlock Secure Folder"

    .line 934
    invoke-direct {p0, v2, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Zum Verschieben der Dateien"

    const-string v4, "To move your files"

    .line 935
    invoke-direct {p0, v3, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 933
    invoke-virtual {v1, v2, v3, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 937
    invoke-virtual {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    .line 941
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "confirm credential "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 944
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "com.samsung.knox.securefolder"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    const/high16 v1, 0x10000000

    .line 946
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 947
    invoke-virtual {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    .line 951
    const-string v1, "open Secure Folder"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 953
    :cond_2
    const-string p1, "Bitte \u00f6ffne den Sicheren Ordner und entsperre ihn."

    const-string v0, "Please open Secure Folder and unlock it."

    invoke-direct {p0, p1, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 954
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private unmountQuietly(Landroid/os/storage/VolumeInfo;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1161
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 1162
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 1164
    :try_start_0
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->unmount(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x28

    if-ge v0, v1, :cond_2

    .line 1170
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1171
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0xfa

    .line 1172
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unmount "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MasterROMSdStorage"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-void
.end method

.method private updateBackCallback()V
    .locals 3

    .line 631
    iget-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBusy:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetShown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 633
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 634
    iget-object v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBackCb:Landroid/window/OnBackInvokedCallback;

    if-nez v2, :cond_2

    .line 635
    new-instance v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$9;

    invoke-direct {v0, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$9;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    iput-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBackCb:Landroid/window/OnBackInvokedCallback;

    const p0, 0xf4240

    .line 636
    invoke-interface {v1, p0, v0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    .line 637
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBackCb:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_3

    .line 638
    invoke-interface {v1, v0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    const/4 v0, 0x0

    .line 639
    iput-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBackCb:Landroid/window/OnBackInvokedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 642
    const-string v0, "MasterROMSdStorage"

    const-string v1, "back dispatcher"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-void
.end method

.method private userLabel(Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 3

    .line 853
    :try_start_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 854
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    const/16 v1, 0x96

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    const/16 v1, 0xa0

    if-gt v0, v1, :cond_0

    goto :goto_2

    .line 855
    :cond_0
    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Benutzer "

    const-string v2, "User "

    invoke-direct {p0, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    .line 854
    :cond_2
    :goto_2
    const-string p1, "Sicherer Ordner"

    const-string v0, "Secure Folder"

    invoke-direct {p0, p1, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private waitMove(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    .line 1179
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    .line 1180
    iget-object v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getMoveStatus(I)I

    move-result v2

    const/16 v3, -0x64

    if-ne v2, v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-gez v2, :cond_1

    .line 1182
    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->moveError(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/16 v2, 0x1f4

    .line 1183
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 1185
    :cond_2
    const-string p1, "Zeit\u00fcberschreitung beim Verschieben."

    const-string v0, "Move timed out."

    invoke-direct {p0, p1, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private waitPrivateMounted(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x78

    if-ge v0, v1, :cond_2

    .line 984
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 986
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    if-eqz v2, :cond_0

    .line 987
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 988
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_1
    const-wide/16 v1, 0x1f4

    .line 993
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static withAlpha(II)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    const/16 v0, 0xff

    .line 178
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 153
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->handleBack()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const-class p1, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    .line 132
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 133
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mUm:Landroid/os/UserManager;

    .line 134
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    .line 135
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "de"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mDe:Z

    .line 136
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mNight:Z

    .line 138
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->loadColors()V

    .line 139
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->buildFrame()V

    .line 140
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->showMain()V

    .line 141
    :try_start_0
    iget-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {p1, p0}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    const-string p1, "MasterROMSdStorage"

    const-string v0, "registerListener"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :catchall_0
    iget v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPageId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPageId:I

    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

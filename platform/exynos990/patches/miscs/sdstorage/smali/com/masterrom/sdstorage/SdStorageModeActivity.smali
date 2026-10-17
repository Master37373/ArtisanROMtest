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

.field private mContent:Landroid/widget/LinearLayout;

.field private mDe:Z

.field private mDivider:I

.field private final mEase:Landroid/view/animation/PathInterpolator;

.field private final mEmph:Landroid/view/animation/PathInterpolator;

.field private mError:I

.field private mExpand:Landroid/widget/FrameLayout;

.field private mFont:Landroid/graphics/Typeface;

.field private mFrame:Landroid/widget/LinearLayout;

.field private mGlass:I

.field private mGlassHi:I

.field private mGlassStroke:I

.field private mHeader:Landroid/widget/LinearLayout;

.field private mLastNext:Ljava/lang/Runnable;

.field private mLastOk:Ljava/lang/String;

.field private mLastReverse:Z

.field private mLastTitle:Ljava/lang/String;

.field private mLastWork:Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;

.field private final mListener:Landroid/os/storage/StorageEventListener;

.field private volatile mNewPrivate:Landroid/os/storage/VolumeInfo;

.field private mNextReverse:Z

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

.field private final mSnap:Ljava/lang/Runnable;

.field private final mSpring:Landroid/view/animation/PathInterpolator;

.field private mStartCollapsed:Z

.field private mSubText:I

.field private mText:I

.field private mTitle:Landroid/widget/TextView;

.field private mTop:Landroid/widget/FrameLayout;

.field private mTouching:Z

.field private mUi:Landroid/os/Handler;

.field private mUm:Landroid/os/UserManager;

.field private mViolet:I

.field private mWorkBar:Landroid/widget/ProgressBar;

.field private mWorkPercent:Landroid/widget/TextView;

.field private mWorkText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    new-instance v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$1;

    invoke-direct {v0, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$1;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    iput-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSnap:Ljava/lang/Runnable;

    .line 127
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mEase:Landroid/view/animation/PathInterpolator;

    .line 128
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f333333    # 0.7f

    const v2, 0x3dcccccd    # 0.1f

    const v4, 0x3d4ccccd    # 0.05f

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mEmph:Landroid/view/animation/PathInterpolator;

    .line 129
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3fa00000    # 1.25f

    const v2, 0x3f23d70a    # 0.64f

    const v4, 0x3eae147b    # 0.34f

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSpring:Landroid/view/animation/PathInterpolator;

    .line 131
    new-instance v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$2;

    invoke-direct {v0, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$2;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    iput-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->snapAppBar()V

    return-void
.end method

.method static synthetic access$100(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->refreshMain()V

    return-void
.end method

.method static synthetic access$1000(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->collapseNow()V

    return-void
.end method

.method static synthetic access$1200(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mFrame:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->cancelSheet()V

    return-void
.end method

.method static synthetic access$1400(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetShown:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/masterrom/sdstorage/SdStorageModeActivity;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetShown:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetCancel:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->updateBackCallback()V

    return-void
.end method

.method static synthetic access$1700(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnMain:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBusy:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->showMain()V

    return-void
.end method

.method static synthetic access$200(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/view/animation/PathInterpolator;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mEase:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->confirmFileLocation(Landroid/os/storage/VolumeInfo;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->toPortable(Landroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->confirmToInternal(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/masterrom/sdstorage/SdStorageModeActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mDivider:I

    return p0
.end method

.method static synthetic access$2400(Lcom/masterrom/sdstorage/SdStorageModeActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    return p0
.end method

.method static synthetic access$2500(Lcom/masterrom/sdstorage/SdStorageModeActivity;F)I
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/masterrom/sdstorage/SdStorageModeActivity;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->unlockUser(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/masterrom/sdstorage/SdStorageModeActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPageId:I

    return p0
.end method

.method static synthetic access$2800(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Ljava/util/List;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->lockedUsers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/view/animation/PathInterpolator;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSpring:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/os/Handler;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->setProgressText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/os/storage/StorageManager;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;I)Landroid/os/storage/VolumeInfo;
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->findVolume(Landroid/os/storage/DiskInfo;I)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->unmountQuietly(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static synthetic access$3502(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mNewPrivate:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
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

.method static synthetic access$3700(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->showInternalReady()V

    return-void
.end method

.method static synthetic access$3800(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->runWork(Ljava/lang/String;Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->moveFiles(Landroid/os/storage/VolumeInfo;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->handleBack()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->requireUnlocked(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/masterrom/sdstorage/SdStorageModeActivity;I)Ljava/lang/String;
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

.method static synthetic access$4302(Lcom/masterrom/sdstorage/SdStorageModeActivity;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mNextReverse:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/masterrom/sdstorage/SdStorageModeActivity;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->setBusy(Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/masterrom/sdstorage/SdStorageModeActivity;ZLjava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->showResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mWorkPercent:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mWorkBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mWorkText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/masterrom/sdstorage/SdStorageModeActivity;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->applyAppBar(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSnap:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Landroid/widget/ScrollView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$802(Lcom/masterrom/sdstorage/SdStorageModeActivity;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTouching:Z

    return p1
.end method

.method static synthetic access$900(Lcom/masterrom/sdstorage/SdStorageModeActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mStartCollapsed:Z

    return p0
.end method

.method static synthetic access$902(Lcom/masterrom/sdstorage/SdStorageModeActivity;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mStartCollapsed:Z

    return p1
.end method

.method private addPress(Landroid/view/View;)V
    .locals 1

    .line 257
    new-instance v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$3;

    invoke-direct {v0, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$3;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static alphaF(IF)I
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    .line 191
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->withAlpha(II)I

    move-result p0

    return p0
.end method

.method private anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;
    .locals 4

    .line 496
    new-instance v0, Lcom/masterrom/sdstorage/SdAnimView;

    iget v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mText:I

    iget v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    iget v3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnAccent:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/masterrom/sdstorage/SdAnimView;-><init>(Landroid/content/Context;III)V

    .line 497
    invoke-virtual {v0, p2}, Lcom/masterrom/sdstorage/SdAnimView;->setMode(I)V

    .line 498
    iget-boolean p2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mNextReverse:Z

    invoke-virtual {v0, p2}, Lcom/masterrom/sdstorage/SdAnimView;->setReverse(Z)V

    const/4 p2, 0x0

    .line 499
    iput-boolean p2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mNextReverse:Z

    .line 500
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p3, p3

    invoke-direct {p0, p3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p3

    const/4 v1, -0x1

    invoke-direct {p2, v1, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 p3, 0x41400000    # 12.0f

    .line 501
    invoke-direct {p0, p3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p0

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 502
    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private animatePage()V
    .locals 6

    const/4 v0, 0x0

    .line 463
    :goto_0
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 465
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    const/high16 v4, 0x42100000    # 36.0f

    .line 466
    invoke-direct {p0, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    const v4, 0x3f7851ec    # 0.97f

    .line 467
    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 468
    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 469
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

    .line 470
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

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 474
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 475
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

.method private applyAppBar(I)V
    .locals 7

    int-to-float p1, p1

    .line 417
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->expandRange()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v1, -0x41400000    # -0.375f

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    .line 419
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTop:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42600000    # 56.0f

    .line 420
    invoke-direct {p0, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->expandRange()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v3, v0

    const/high16 v6, 0x428c0000    # 70.0f

    .line 421
    invoke-direct {p0, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v2

    div-float/2addr v5, v0

    add-float/2addr v5, v4

    mul-float/2addr v2, v1

    sub-float/2addr v4, v2

    div-float/2addr v4, v0

    .line 423
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 424
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 425
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    sub-float/2addr v6, v3

    mul-float/2addr v6, p1

    add-float/2addr v3, v6

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 426
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v5, v4

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method private body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .line 519
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 520
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget p2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSubText:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x2

    const/high16 v1, 0x41700000    # 15.0f

    .line 522
    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p2, 0x190

    .line 523
    invoke-direct {p0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 p2, 0x40800000    # 4.0f

    .line 524
    invoke-direct {p0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 525
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private buildFrame()V
    .locals 13

    .line 275
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBase:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, 0x0

    .line 277
    :try_start_0
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 278
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 279
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :catchall_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mRoot:Landroid/widget/FrameLayout;

    .line 283
    iget-boolean v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mNight:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    const v2, 0x3f8ccccd    # 1.1f

    goto :goto_0

    :cond_0
    move v2, v3

    .line 284
    :goto_0
    new-instance v10, Lcom/masterrom/sdstorage/SdGlassBackground;

    iget v6, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBase:I

    iget v4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    const v5, 0x3eae147b    # 0.34f

    mul-float/2addr v5, v2

    .line 285
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

    .line 284
    invoke-virtual {v1, v10, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mFrame:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    .line 289
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 290
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mRoot:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mFrame:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mHeader:Landroid/widget/LinearLayout;

    .line 294
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 295
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mHeader:Landroid/widget/LinearLayout;

    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 296
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mHeader:Landroid/widget/LinearLayout;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-direct {p0, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v6

    invoke-direct {p0, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v7

    invoke-virtual {v1, v6, v0, v7, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 298
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 299
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

    .line 300
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

    .line 301
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 302
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 303
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "drawable"

    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ic_arrow_back"

    invoke-virtual {v7, v10, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_3

    .line 306
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 307
    iget v8, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mText:I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 308
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 311
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

    .line 312
    const-string v6, "Zur\u00fcck"

    const-string v7, "Navigate up"

    invoke-direct {p0, v6, v7}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 313
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 314
    new-instance v6, Lcom/masterrom/sdstorage/SdStorageModeActivity$4;

    invoke-direct {v6, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$4;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->addPress(Landroid/view/View;)V

    .line 316
    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBack:Landroid/view/View;

    .line 317
    iget-object v6, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mHeader:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42300000    # 44.0f

    invoke-direct {p0, v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v10

    invoke-direct {p0, v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v9

    invoke-direct {v7, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTop:Landroid/widget/FrameLayout;

    .line 320
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 321
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 322
    iget-object v6, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTop:Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    iget-object v6, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mHeader:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42600000    # 56.0f

    invoke-direct {p0, v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v9

    invoke-direct {v7, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    new-instance v6, Landroid/widget/ScrollView;

    invoke-direct {v6, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    .line 326
    invoke-virtual {v6, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 327
    iget-object v6, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v6, v0}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 328
    iget-object v6, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v6, v2}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 329
    iget-object v6, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v6, v0}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 330
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 331
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 334
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mExpand:Landroid/widget/FrameLayout;

    .line 335
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->expandRange()I

    move-result v10

    invoke-direct {v9, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    .line 338
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 339
    iget-object v7, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-direct {p0, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-direct {p0, v10}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v10

    invoke-direct {p0, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v12

    invoke-direct {p0, v8}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v8

    invoke-virtual {v7, v9, v10, v12, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 340
    iget-object v7, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    iget-object v7, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v4, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v6, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    iget-object v6, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    new-instance v7, Lcom/masterrom/sdstorage/SdStorageModeActivity$5;

    invoke-direct {v7, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$5;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 349
    iget-object v6, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    new-instance v7, Lcom/masterrom/sdstorage/SdStorageModeActivity$6;

    invoke-direct {v7, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$6;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 362
    iget-object v6, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    new-instance v7, Lcom/masterrom/sdstorage/SdStorageModeActivity$7;

    invoke-direct {v7, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$7;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 368
    iget-object v6, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    .line 372
    iget v6, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mText:I

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    const/4 v6, 0x2

    const/high16 v7, 0x42000000    # 32.0f

    invoke-virtual {v1, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 374
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    const/16 v6, 0x258

    invoke-direct {p0, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 375
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 376
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 377
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v6, 0x42400000    # 48.0f

    invoke-direct {p0, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 378
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPivotX(F)V

    .line 379
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPivotY(F)V

    .line 380
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTop:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const v7, 0x800033

    invoke-direct {v6, v9, v9, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    new-instance v2, Lcom/masterrom/sdstorage/SdStorageModeActivity$8;

    invoke-direct {v2, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$8;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 387
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mFrame:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTop:Landroid/widget/FrameLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    .line 390
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 391
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 392
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

    .line 393
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mFrame:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mRoot:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$9;

    invoke-direct {v1, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$9;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 402
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;
    .locals 6

    .line 602
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 603
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 604
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p2, 0x2

    const/high16 v1, 0x41800000    # 16.0f

    .line 605
    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 606
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 607
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

    .line 610
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

    .line 611
    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p4

    iget v3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mError:I

    const v4, 0x3ee66666    # 0.45f

    invoke-static {v3, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->alphaF(IF)I

    move-result v3

    invoke-virtual {p3, p4, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 613
    iget p4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mError:I

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 614
    invoke-direct {p0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 616
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    sget-object p2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget p4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mViolet:I

    iget v4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    iget v5, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent2:I

    filled-new-array {p4, v4, v5}, [I

    move-result-object p4

    invoke-direct {p3, p2, p4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 618
    invoke-direct {p0, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 620
    iget p2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnAccent:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0x2bc

    .line 621
    invoke-direct {p0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 623
    :cond_2
    iget p3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mGlass:I

    invoke-direct {p0, p3, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->pill(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p3

    .line 624
    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p4

    iget v3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    const v4, 0x3e8f5c29    # 0.28f

    invoke-static {v3, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->alphaF(IF)I

    move-result v3

    invoke-virtual {p3, p4, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 626
    iget p4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mChipText:I

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 627
    invoke-direct {p0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 629
    :goto_1
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 630
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 631
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 632
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    invoke-direct {p0, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->addPress(Landroid/view/View;)V

    .line 634
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p3, 0x42580000    # 54.0f

    invoke-direct {p0, p3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p3

    invoke-direct {p2, v2, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 635
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    if-lez p3, :cond_3

    const/high16 p3, 0x41400000    # 12.0f

    invoke-direct {p0, p3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 636
    :cond_3
    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 637
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    if-ne p1, p0, :cond_4

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    return-object v0
.end method

.method private cancelSheet()V
    .locals 2

    .line 683
    iget-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetShown:Z

    if-nez v0, :cond_0

    return-void

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetCancel:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 685
    iput-boolean v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetShown:Z

    const/4 v1, 0x0

    .line 686
    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetCancel:Ljava/lang/Runnable;

    .line 687
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->updateBackCallback()V

    .line 688
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 689
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

    .line 485
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 486
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 487
    iget v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mGlass:I

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-direct {p0, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->glass(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x41b00000    # 22.0f

    .line 488
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

    .line 489
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    .line 490
    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 491
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private varargs chips(Landroid/widget/LinearLayout;[Ljava/lang/String;)V
    .locals 9

    .line 542
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 543
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    const/4 v2, 0x2

    .line 544
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 545
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 546
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 547
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_1

    .line 548
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 549
    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget v5, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mChipText:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41500000    # 13.0f

    .line 551
    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v5, 0x2bc

    .line 552
    invoke-direct {p0, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 553
    iget v5, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mChipBg:I

    const/high16 v6, 0x41800000    # 16.0f

    invoke-direct {p0, v5, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->pill(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v5, 0x41400000    # 12.0f

    .line 554
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

    .line 555
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v1, :cond_0

    const/high16 v6, 0x41000000    # 8.0f

    .line 556
    invoke-direct {p0, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 557
    :cond_0
    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 559
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 560
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    const/high16 v1, 0x41600000    # 14.0f

    .line 561
    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p0

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 562
    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private collapseNow()V
    .locals 3

    .line 438
    iget-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mStartCollapsed:Z

    if-nez v0, :cond_0

    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->expandRange()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->expandRange()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->applyAppBar(I)V

    return-void
.end method

.method private confirmFileLocation(Landroid/os/storage/VolumeInfo;Z)V
    .locals 9

    xor-int/lit8 v0, p2, 0x1

    .line 1113
    iput-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mNextReverse:Z

    if-eqz p2, :cond_0

    .line 1114
    const-string v0, "Dateien auf die SD-Karte verschieben?"

    const-string v1, "Move files to the SD card?"

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1115
    :cond_0
    const-string v0, "Dateien in den internen Speicher verschieben?"

    const-string v1, "Move files to internal storage?"

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v2, v0

    const-string v0, "Fotos, Videos, Downloads und andere Dateien werden verschoben und k\u00fcnftig dort gespeichert. Je nach Datenmenge dauert das einige Minuten."

    const-string v1, "Photos, videos, downloads and other files are moved and stored there from now on. Depending on the amount of data this takes a few minutes."

    .line 1116
    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Abbrechen"

    const-string v1, "Cancel"

    .line 1120
    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "Verschieben"

    const-string v1, "Move"

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/masterrom/sdstorage/SdStorageModeActivity$27;

    invoke-direct {v8, p0, p2, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity$27;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;ZLandroid/os/storage/VolumeInfo;)V

    const/4 v4, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    .line 1114
    invoke-direct/range {v1 .. v8}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->showSheet(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 1128
    new-instance p1, Lcom/masterrom/sdstorage/SdStorageModeActivity$28;

    invoke-direct {p1, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$28;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetCancel:Ljava/lang/Runnable;

    return-void
.end method

.method private confirmToInternal(Landroid/os/storage/DiskInfo;)V
    .locals 10

    .line 1022
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 1023
    const-string v0, "Alle Daten auf der SD-Karte l\u00f6schen?"

    const-string v1, "Erase all data on the SD card?"

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Die Karte wird formatiert und verschl\u00fcsselt. Alle Daten darauf werden unwiderruflich gel\u00f6scht."

    const-string v1, "The card is formatted and encrypted. All data on it will be permanently erased."

    .line 1024
    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "Abbrechen"

    const-string v1, "Cancel"

    .line 1026
    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "L\u00f6schen und einrichten"

    const-string v1, "Erase and set up"

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/masterrom/sdstorage/SdStorageModeActivity$23;

    invoke-direct {v9, p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity$23;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V

    const/4 v5, -0x1

    const/4 v8, 0x1

    move-object v2, p0

    .line 1023
    invoke-direct/range {v2 .. v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->showSheet(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    return-void
.end method

.method private currentFileLocation(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;
    .locals 1

    .line 740
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

    .line 183
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

.method private expandRange()I
    .locals 4

    .line 407
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v1, 0x42600000    # 56.0f

    .line 408
    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    int-to-float v0, v0

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private filesOnSd(Landroid/os/storage/VolumeInfo;)Z
    .locals 0

    .line 735
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 736
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

    .line 711
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 713
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

    .line 714
    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method private findVolume(Landroid/os/storage/DiskInfo;I)Landroid/os/storage/VolumeInfo;
    .locals 4

    .line 720
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 722
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

    .line 723
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

    .line 196
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mFont:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private glass(IF)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 235
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 236
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 237
    invoke-direct {p0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const p1, 0x3f4ccccd    # 0.8f

    .line 238
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mGlassStroke:I

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 239
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget v3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mGlassHi:I

    const/4 v4, 0x0

    .line 240
    invoke-static {v3, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->withAlpha(II)I

    move-result v5

    filled-new-array {v3, v5}, [I

    move-result-object v3

    invoke-direct {p1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 241
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

    .line 242
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v2, v4

    aput-object p1, v2, v1

    invoke-direct {p2, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x42600000    # 56.0f

    .line 243
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p0

    invoke-virtual {p2, v1, p0}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    const/16 p0, 0x37

    .line 244
    invoke-virtual {p2, v1, p0}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    return-object p2
.end method

.method private handleBack()Z
    .locals 2

    .line 168
    iget-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBusy:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 169
    :cond_0
    iget-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetShown:Z

    if-eqz v0, :cond_1

    .line 170
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->cancelSheet()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .line 507
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 508
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget p2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mText:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x2

    const/high16 v1, 0x41a00000    # 20.0f

    .line 510
    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p2, 0x2bc

    .line 511
    invoke-direct {p0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 512
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    const/high16 v1, 0x41000000    # 8.0f

    .line 513
    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p0

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 514
    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private loadColors()V
    .locals 2

    .line 200
    const-string v0, "sec"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mFont:Landroid/graphics/Typeface;

    const/4 v0, -0x1

    .line 201
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnAccent:I

    .line 202
    iget-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v0, :cond_0

    const v0, -0xf8f7f4

    .line 203
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBase:I

    const v0, -0xb0a09

    .line 204
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mText:I

    const v0, -0x4c4840

    .line 205
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSubText:I

    const v0, -0xc16e01

    .line 206
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    const v0, -0xd12c3a

    .line 207
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent2:I

    const v0, -0x849301

    .line 208
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mViolet:I

    const v0, 0x12ffffff

    .line 209
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mGlass:I

    const v0, 0x21ffffff

    .line 210
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mGlassStroke:I

    const v0, 0x14ffffff

    .line 211
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mGlassHi:I

    .line 212
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mDivider:I

    const v0, 0x2e3e91ff

    .line 213
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mChipBg:I

    const v0, -0x633701

    .line 214
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mChipText:I

    const v0, -0x9491

    .line 215
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mError:I

    goto :goto_0

    :cond_0
    const v0, -0xd0b08

    .line 217
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBase:I

    const v0, -0xefeeec

    .line 218
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mText:I

    const v0, -0xb5b1a9

    .line 219
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSubText:I

    const v0, -0xf58d1a

    .line 220
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    const v0, -0xeb4a37

    .line 221
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent2:I

    const v0, -0xa49301

    .line 222
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mViolet:I

    const v0, -0x57000001

    .line 223
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mGlass:I

    const v0, -0x14000001

    .line 224
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mGlassStroke:I

    const v0, -0x7f000001

    .line 225
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mGlassHi:I

    const/high16 v0, 0x12000000

    .line 226
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mDivider:I

    const v0, 0x1c0a72e6

    .line 227
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mChipBg:I

    const v0, -0xf5992f

    .line 228
    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mChipText:I

    const v0, -0x26c5c1

    .line 229
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

    .line 900
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 902
    :try_start_0
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mUm:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 904
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

    .line 905
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

    .line 908
    const-string v1, "MasterROMSdStorage"

    const-string v2, "lockedUsers"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v0
.end method

.method private matchWrap()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 480
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

    .line 1269
    const-string v0, "Interner Fehler."

    const-string v1, "Internal error."

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1258
    :cond_0
    const-string v0, "Nicht genug freier Speicher am Ziel."

    const-string v1, "Not enough free space at the destination."

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1259
    :cond_1
    const-string v0, "Die App existiert nicht mehr."

    const-string v1, "The app no longer exists."

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1260
    :cond_2
    const-string v0, "System-Apps k\u00f6nnen nicht verschoben werden."

    const-string v1, "System apps cannot be moved."

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1262
    :cond_3
    const-string v0, "Es l\u00e4uft bereits ein anderer Verschiebevorgang. Bitte sp\u00e4ter erneut versuchen."

    const-string v1, "Another move is already in progress. Please try again later."

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1264
    :cond_4
    const-string v0, "Diese App ist ein Ger\u00e4teadministrator und kann nicht verschoben werden."

    const-string v1, "This app is a device administrator and cannot be moved."

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1261
    :cond_5
    const-string v0, "Dieser Speicherort ist nicht m\u00f6glich."

    const-string v1, "This location is not possible."

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1266
    :cond_6
    const-string v0, "Der Sichere Ordner oder ein anderer Benutzer ist gesperrt. Entsperre ihn und versuche es dann erneut."

    const-string v1, "Secure Folder or another user is locked. Unlock it, then try again."

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1271
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

    xor-int/lit8 v0, p2, 0x1

    .line 1132
    iput-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mNextReverse:Z

    .line 1133
    const-string v0, "Verschieben"

    const-string v1, "Moving files"

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$29;

    invoke-direct {v1, p0, p1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity$29;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;Z)V

    if-eqz p2, :cond_0

    .line 1144
    const-string p1, "Fotos, Downloads und andere Dateien liegen jetzt auf der SD-Karte. Neue Dateien werden automatisch dort gespeichert."

    const-string p2, "Photos, downloads and other files are now on the SD card. New files are stored there automatically."

    invoke-direct {p0, p1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1146
    :cond_0
    const-string p1, "Fotos, Downloads und andere Dateien liegen jetzt im internen Speicher."

    const-string p2, "Photos, downloads and other files are now on internal storage."

    invoke-direct {p0, p1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 1133
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->runWork(Ljava/lang/String;Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private newPage(Ljava/lang/String;)V
    .locals 3

    .line 445
    iget v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPageId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPageId:I

    const/4 v0, 0x0

    .line 446
    iput-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetShown:Z

    const/4 v0, 0x0

    .line 447
    iput-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetCancel:Ljava/lang/Runnable;

    .line 448
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->updateBackCallback()V

    .line 449
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 450
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 451
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 454
    iput-boolean v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mStartCollapsed:Z

    .line 455
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->collapseNow()V

    .line 456
    iget-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    new-instance v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$10;

    invoke-direct {v0, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$10;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 457
    iget-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 458
    iget-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mEmph:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private pill(IF)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 249
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 250
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 251
    invoke-direct {p0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private refreshMain()V
    .locals 2

    .line 729
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    new-instance v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$14;

    invoke-direct {v1, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$14;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private requireUnlocked(Ljava/lang/Runnable;)V
    .locals 10

    .line 922
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->lockedUsers()Ljava/util/List;

    move-result-object v0

    .line 923
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 924
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 927
    iput-boolean v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnMain:Z

    .line 928
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 929
    const-string v7, "Entsperren"

    const-string v8, "Unlock"

    invoke-direct {p0, v7, v8}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 930
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x6

    const/16 v4, 0xb4

    .line 931
    invoke-direct {p0, v2, v3, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;

    .line 932
    const-string v3, "Kurz entsperren, dann geht es weiter"

    const-string v4, "Unlock briefly, then we continue"

    invoke-direct {p0, v3, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 933
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 934
    const-string v4, "Damit Fotos, Downloads und andere Dateien verschoben werden k\u00f6nnen, m\u00fcssen alle Bereiche dieses Ger\u00e4ts entsperrt sein. Gesperrt ist zurzeit:\n"

    const-string v5, "To move photos, downloads and other files, every space on this device has to be unlocked. Currently locked:\n"

    invoke-direct {p0, v4, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
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

    .line 939
    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "Tippe auf \u201eEntsperren\u201c und gib die Sperre ein. Sobald alles entsperrt ist, geht es hier automatisch weiter."

    const-string v4, "Tap \u201cUnlock\u201d and enter the lock. As soon as everything is unlocked, this page continues automatically."

    invoke-direct {p0, v0, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 944
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 945
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 946
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 947
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 948
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 949
    iget v4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 950
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-direct {p0, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v9

    invoke-direct {p0, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v5

    invoke-direct {v4, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 951
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 952
    const-string v3, "Warte auf Entsperrung \u2026"

    const-string v4, "Waiting for unlock \u2026"

    invoke-direct {p0, v3, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 953
    iget v3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mText:I

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x2

    const/high16 v4, 0x41700000    # 15.0f

    .line 954
    invoke-virtual {v9, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 955
    invoke-direct {p0, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    invoke-virtual {v9, v3, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 956
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 957
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 959
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Abbrechen"

    const-string v2, "Cancel"

    invoke-direct {p0, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/masterrom/sdstorage/SdStorageModeActivity$20;

    invoke-direct {v5, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$20;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 962
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7, v8}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/masterrom/sdstorage/SdStorageModeActivity$21;

    invoke-direct {v5, p0, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity$21;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/content/pm/UserInfo;)V

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 965
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->animatePage()V

    .line 967
    iget v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPageId:I

    .line 968
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    new-instance v2, Lcom/masterrom/sdstorage/SdStorageModeActivity$22;

    invoke-direct {v2, p0, v0, v9, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity$22;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;ILandroid/widget/TextView;Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x320

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p4, :cond_0

    const/high16 p4, 0x41b00000    # 22.0f

    .line 569
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

    .line 571
    :cond_0
    new-instance p4, Landroid/view/View;

    invoke-direct {p4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 572
    iget v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mDivider:I

    invoke-virtual {p4, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 573
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {p0, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    :goto_0
    new-instance p4, Landroid/widget/LinearLayout;

    invoke-direct {p4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 576
    invoke-virtual {p4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 577
    invoke-virtual {p4, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 578
    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    invoke-virtual {p4, v1, v3, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 579
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 580
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget p2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mText:I

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    .line 582
    invoke-virtual {v2, p2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v4, 0x190

    .line 583
    invoke-direct {p0, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 584
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v1, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 586
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget p3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSubText:I

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p3, 0x41700000    # 15.0f

    .line 588
    invoke-virtual {v0, p2, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 589
    invoke-direct {p0, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p2, 0x800005

    .line 590
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 591
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const p3, 0x3f99999a    # 1.2f

    invoke-direct {p2, v1, v6, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 592
    invoke-direct {p0, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 593
    invoke-virtual {p4, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p4, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private runWork(Ljava/lang/String;Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4

    .line 1298
    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mLastTitle:Ljava/lang/String;

    .line 1299
    iput-object p2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mLastWork:Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;

    .line 1300
    iput-object p3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mLastOk:Ljava/lang/String;

    .line 1301
    iput-object p4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mLastNext:Ljava/lang/Runnable;

    .line 1302
    iget-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mNextReverse:Z

    iput-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mLastReverse:Z

    const/4 v0, 0x0

    .line 1303
    iput-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnMain:Z

    const/4 v0, 0x1

    .line 1304
    invoke-direct {p0, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->setBusy(Z)V

    .line 1305
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 1306
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v1, 0x3

    const/16 v2, 0xbe

    .line 1307
    invoke-direct {p0, p1, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;

    .line 1308
    const-string v1, "Bitte warten \u2026"

    const-string v2, "Please wait \u2026"

    invoke-direct {p0, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mWorkText:Landroid/widget/TextView;

    .line 1310
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mWorkPercent:Landroid/widget/TextView;

    .line 1311
    iget v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1312
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mWorkPercent:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x42080000    # 34.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1313
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mWorkPercent:Landroid/widget/TextView;

    const/16 v2, 0x2bc

    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1314
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mWorkPercent:Landroid/widget/TextView;

    const-string v2, "tnum"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 1315
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mWorkPercent:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1316
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mWorkPercent:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1317
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1318
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/16 v0, 0x64

    .line 1319
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1320
    iget v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 1321
    iget v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1322
    iget v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mDivider:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1323
    iput-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mWorkBar:Landroid/widget/ProgressBar;

    .line 1324
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    const/high16 v2, 0x40c00000    # 6.0f

    .line 1325
    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v2, 0x41400000    # 12.0f

    .line 1326
    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1327
    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1328
    const-string v0, "Entferne die SD-Karte nicht und schalte das Ger\u00e4t nicht aus. Das Display bleibt dabei an."

    const-string v1, "Do not remove the SD card or turn off the device. The screen stays on meanwhile."

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 1330
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->animatePage()V

    .line 1332
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$32;

    invoke-direct {v0, p0, p2, p4, p3}, Lcom/masterrom/sdstorage/SdStorageModeActivity$32;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;Ljava/lang/Runnable;Ljava/lang/String;)V

    const-string p0, "MasterROMSdStorage"

    invoke-direct {p1, v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1350
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sectionLabel(Ljava/lang/String;)V
    .locals 4

    .line 531
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 532
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSubText:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    .line 534
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p1, 0x2bc

    .line 535
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 p1, 0x41b00000    # 22.0f

    .line 536
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

    .line 537
    iget-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setBusy(Z)V
    .locals 3

    .line 1282
    iput-boolean p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBusy:Z

    .line 1283
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

    .line 1284
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBack:Landroid/view/View;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const/16 v0, 0x80

    if-eqz p1, :cond_1

    .line 1286
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 1288
    :cond_1
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 1290
    :goto_1
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->updateBackCallback()V

    return-void
.end method

.method private setProgressPercent(I)V
    .locals 2

    .line 1389
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    new-instance v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$37;

    invoke-direct {v1, p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity$37;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setProgressText(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    .line 1409
    invoke-direct {p0, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->setProgressPercent(I)V

    .line 1410
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    new-instance v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$38;

    invoke-direct {v1, p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity$38;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showInternalReady()V
    .locals 15

    const/4 v0, 0x0

    .line 1062
    iput-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnMain:Z

    .line 1063
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mNewPrivate:Landroid/os/storage/VolumeInfo;

    .line 1064
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->findSdDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    .line 1065
    const-string v3, "Bereit"

    const-string v4, "Ready"

    invoke-direct {p0, v3, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 1066
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v5

    const/4 v6, 0x5

    const/16 v7, 0xaa

    .line 1067
    invoke-direct {p0, v5, v6, v7}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;

    .line 1068
    const-string v6, "Interner Speicher eingerichtet"

    const-string v7, "Internal storage set up"

    invoke-direct {p0, v6, v7}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 1069
    const-string v6, "Die SD-Karte ist jetzt verschl\u00fcsselt und Teil des internen Speichers. Sie ist nur noch in diesem Ger\u00e4t lesbar."

    const-string v7, "The SD card is now encrypted and part of internal storage. It can only be read on this device."

    invoke-direct {p0, v6, v7}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 1071
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

    .line 1073
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1074
    const-string v4, "Nutzung"

    const-string v5, "Usage"

    invoke-direct {p0, v4, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Interner Speicher"

    const-string v6, "Internal storage"

    invoke-direct {p0, v5, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1075
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

    .line 1076
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

    .line 1078
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

    .line 1080
    :cond_1
    const-string v0, "N\u00e4chster Schritt"

    const-string v2, "Next step"

    invoke-direct {p0, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->sectionLabel(Ljava/lang/String;)V

    .line 1081
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x2

    const/16 v3, 0x82

    .line 1082
    invoke-direct {p0, v0, v2, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;

    .line 1083
    const-string v2, "Dateien auf die SD-Karte verschieben?"

    const-string v3, "Move files to the SD card?"

    invoke-direct {p0, v2, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 1084
    const-string v2, "Fotos, Videos, Downloads, Musik und andere Dateien kommen auf die Karte, neue Fotos und Downloads landen danach automatisch dort. System und Apps bleiben im internen Speicher. Je nach Datenmenge dauert das einige Minuten \u2013 du kannst es auch sp\u00e4ter auf dieser Seite \u00e4ndern."

    const-string v3, "Photos, videos, downloads, music and other files go to the card, and new photos and downloads are stored there automatically. System and apps stay on internal storage. Depending on the amount of data this takes a few minutes \u2013 you can also change it later on this page."

    invoke-direct {p0, v2, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 1090
    iget-object v4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Sp\u00e4ter"

    const-string v2, "Later"

    invoke-direct {p0, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/masterrom/sdstorage/SdStorageModeActivity$24;

    invoke-direct {v8, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$24;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 1093
    iget-object v10, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Dateien verschieben"

    const-string v2, "Move files"

    invoke-direct {p0, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/masterrom/sdstorage/SdStorageModeActivity$25;

    invoke-direct {v14, p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity$25;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;)V

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 1100
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

    .line 1103
    :cond_3
    iget-object v5, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Fertig"

    const-string v1, "Done"

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/masterrom/sdstorage/SdStorageModeActivity$26;

    invoke-direct {v9, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$26;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 1107
    :goto_0
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->animatePage()V

    return-void
.end method

.method private showMain()V
    .locals 22

    move-object/from16 v7, p0

    const/4 v0, 0x1

    .line 746
    iput-boolean v0, v7, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnMain:Z

    .line 747
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->findSdDisk()Landroid/os/storage/DiskInfo;

    move-result-object v8

    const/16 v1, 0xb4

    .line 748
    const-string v9, "SD card"

    const-string v10, "SD-Karte"

    if-nez v8, :cond_0

    .line 749
    invoke-direct {v7, v10, v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 750
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x4

    .line 751
    invoke-direct {v7, v0, v2, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;

    .line 752
    const-string v1, "Keine SD-Karte eingelegt"

    const-string v2, "No SD card inserted"

    invoke-direct {v7, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 753
    const-string v1, "Lege eine microSD-Karte ein. Danach kannst du hier w\u00e4hlen, ob sie als tragbarer Speicher oder als interner, verschl\u00fcsselter Speicher genutzt wird. Die Seite aktualisiert sich automatisch."

    const-string v2, "Insert a microSD card. You can then choose here whether it is used as portable storage or as encrypted internal storage. This page updates automatically."

    invoke-direct {v7, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 757
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->animatePage()V

    return-void

    .line 760
    :cond_0
    invoke-direct {v7, v8, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->findVolume(Landroid/os/storage/DiskInfo;I)Landroid/os/storage/VolumeInfo;

    move-result-object v11

    .line 761
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

    .line 763
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

    .line 764
    invoke-direct {v7, v10, v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 765
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    const/16 v9, 0xb4

    const/4 v10, 0x1

    .line 766
    invoke-direct {v7, v8, v10, v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;

    .line 767
    invoke-direct {v7, v13, v12}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 768
    const-string v9, "Die Karte wird wieder ein normaler, austauschbarer Speicher \u2013 ohne Verschl\u00fcsselung und auch in anderen Ger\u00e4ten, Kameras oder am PC lesbar. Apps und Dateien auf der Karte werden vorher automatisch in den internen Speicher verschoben, danach wird die Karte formatiert."

    const-string v10, "The card becomes normal removable storage again \u2013 without encryption and readable in other devices, cameras or on a PC. Apps and files on the card are moved to internal storage automatically first, then the card is formatted."

    invoke-direct {v7, v9, v10}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 774
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

    .line 776
    invoke-direct {v7, v1, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->sectionLabel(Ljava/lang/String;)V

    .line 777
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 778
    invoke-direct {v7, v15, v14}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "Interner Speicher"

    const-string v9, "Internal storage"

    invoke-direct {v7, v8, v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v0, v1, v8, v9}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 779
    invoke-direct {v7, v6, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "Ja, nur dieses Ger\u00e4t"

    const-string v6, "Yes, this device only"

    invoke-direct {v7, v5, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v7, v0, v1, v5, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 780
    const-string v1, "Dateien gespeichert auf"

    const-string v5, "Files stored on"

    invoke-direct {v7, v1, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v11}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->currentFileLocation(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v0, v1, v5, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 781
    invoke-direct {v7, v4, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1, v2, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 783
    const-string v0, "Speicherort f\u00fcr Dateien"

    const-string v1, "Location for files"

    invoke-direct {v7, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->sectionLabel(Ljava/lang/String;)V

    .line 784
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x2

    const/16 v2, 0x82

    .line 785
    invoke-direct {v7, v0, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;

    .line 786
    const-string v1, "W\u00e4hle, wo Fotos, Videos, Downloads, Musik und andere Dateien gespeichert werden. Vorhandene Dateien werden mit verschoben. System und Apps bleiben im internen Speicher."

    const-string v2, "Choose where photos, videos, downloads, music and other files are stored. Existing files are moved along. System and apps stay on internal storage."

    invoke-direct {v7, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 790
    invoke-direct {v7, v11}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->filesOnSd(Landroid/os/storage/VolumeInfo;)Z

    move-result v8

    .line 791
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 792
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 793
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    .line 794
    invoke-direct {v7, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 795
    invoke-virtual {v0, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 796
    const-string v0, "Intern"

    const-string v1, "Internal"

    invoke-direct {v7, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Ger\u00e4tespeicher"

    const-string v1, "Device storage"

    invoke-direct {v7, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    xor-int/lit8 v5, v8, 0x1

    new-instance v6, Lcom/masterrom/sdstorage/SdStorageModeActivity$15;

    invoke-direct {v6, v7, v8, v11}, Lcom/masterrom/sdstorage/SdStorageModeActivity$15;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;ZLandroid/os/storage/VolumeInfo;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct/range {v0 .. v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->tile(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    move-object/from16 v10, v20

    move-object/from16 v0, v21

    .line 798
    invoke-direct {v7, v0, v10}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v7, v1, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/masterrom/sdstorage/SdStorageModeActivity$16;

    invoke-direct {v6, v7, v8, v11}, Lcom/masterrom/sdstorage/SdStorageModeActivity$16;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;ZLandroid/os/storage/VolumeInfo;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->tile(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 801
    iget-object v1, v7, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Tragbar machen"

    const-string v2, "Make portable"

    invoke-direct {v7, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/masterrom/sdstorage/SdStorageModeActivity$17;

    move-object/from16 v8, v17

    invoke-direct {v5, v7, v8, v11}, Lcom/masterrom/sdstorage/SdStorageModeActivity$17;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V

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

    .line 805
    invoke-direct {v7, v8, v10}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 806
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v8

    move-object/from16 v16, v2

    const/4 v2, 0x0

    const/16 v10, 0xb4

    .line 807
    invoke-direct {v7, v8, v2, v10}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;

    .line 808
    const-string v2, "Interner, verschl\u00fcsselter Speicher"

    const-string v10, "Encrypted internal storage"

    invoke-direct {v7, v2, v10}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v8, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 809
    const-string v2, "Die Karte wird formatiert, verschl\u00fcsselt und als Erweiterung des internen Speichers genutzt. Danach kannst du Fotos, Downloads und andere Dateien \u2013 und unterst\u00fctzte Apps \u2013 auf der Karte speichern. Die Karte ist anschlie\u00dfend nur noch in diesem Ger\u00e4t lesbar."

    const-string v10, "The card is formatted, encrypted and used as an extension of internal storage. You can then store photos, downloads and other files \u2013 and supported apps \u2013 on the card. Afterwards the card can only be read on this device."

    invoke-direct {v7, v2, v10}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v8, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 815
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

    .line 817
    invoke-direct {v7, v1, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->sectionLabel(Ljava/lang/String;)V

    .line 818
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 819
    invoke-direct {v7, v15, v14}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v13, v12}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-direct {v7, v0, v1, v2, v8}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 820
    invoke-direct {v7, v6, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Nein"

    const-string v5, "No"

    invoke-direct {v7, v2, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct {v7, v0, v1, v2, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 821
    invoke-direct {v7, v4, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-direct {v7, v0, v1, v2, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 823
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 824
    const-string v1, "Gut zu wissen"

    const-string v2, "Good to know"

    invoke-direct {v7, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 825
    const-string v1, "\u2022 Alle Daten, die jetzt auf der Karte sind, werden gel\u00f6scht \u2013 sichere sie vorher.\n\u2022 Nimm die Karte danach nicht mehr einfach heraus, sie ist Teil des Speichers.\n\u2022 Du kannst die Karte hier jederzeit wieder tragbar machen."

    const-string v2, "\u2022 All data currently on the card is erased \u2013 back it up first.\n\u2022 Do not simply remove the card afterwards, it is part of the storage.\n\u2022 You can make the card portable again here at any time."

    invoke-direct {v7, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 832
    iget-object v1, v7, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Als intern einrichten"

    const-string v2, "Set up as internal"

    invoke-direct {v7, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/masterrom/sdstorage/SdStorageModeActivity$18;

    move-object/from16 v0, v17

    invoke-direct {v5, v7, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$18;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 836
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->animatePage()V

    return-void
.end method

.method private showResult(ZLjava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    .line 1354
    iput-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnMain:Z

    .line 1355
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

    .line 1356
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :cond_1
    const/4 v1, 0x7

    :goto_1
    const/16 v2, 0xaa

    .line 1357
    invoke-direct {p0, v0, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;

    if-eqz p1, :cond_2

    .line 1358
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

    .line 1359
    invoke-direct {p0, v0, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 1361
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Zur\u00fcck zur \u00dcbersicht"

    const-string v2, "Back to overview"

    invoke-direct {p0, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/masterrom/sdstorage/SdStorageModeActivity$33;

    invoke-direct {v5, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$33;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 1364
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/masterrom/sdstorage/SdStorageModeActivity$34;

    invoke-direct {v5, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$34;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    goto :goto_3

    .line 1368
    :cond_3
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Zur\u00fcck"

    const-string v2, "Back"

    invoke-direct {p0, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/masterrom/sdstorage/SdStorageModeActivity$35;

    invoke-direct {v5, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$35;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 1371
    iget-object v4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mLastWork:Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;

    if-eqz v4, :cond_4

    .line 1372
    iget-object v3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mLastTitle:Ljava/lang/String;

    .line 1374
    iget-object v5, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mLastOk:Ljava/lang/String;

    .line 1375
    iget-object v6, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mLastNext:Ljava/lang/Runnable;

    .line 1376
    iget-boolean v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mLastReverse:Z

    .line 1377
    iget-object v7, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const-string v0, "Erneut versuchen"

    const-string v1, "Try again"

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/masterrom/sdstorage/SdStorageModeActivity$36;

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity$36;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;ZLjava/lang/String;Lcom/masterrom/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 1384
    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->animatePage()V

    return-void
.end method

.method private showSheet(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 6

    const/4 v0, 0x0

    .line 651
    iput-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnMain:Z

    .line 652
    const-string v1, "Best\u00e4tigen"

    const-string v2, "Confirm"

    invoke-direct {p0, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 653
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v1

    if-ltz p3, :cond_0

    move v0, p3

    :cond_0
    const/16 v2, 0xaa

    .line 654
    invoke-direct {p0, v1, v0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/masterrom/sdstorage/SdAnimView;

    .line 655
    invoke-direct {p0, v1, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 656
    invoke-direct {p0, v1, p2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    if-eqz p6, :cond_1

    .line 658
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 659
    const-string v1, "Dieser Schritt l\u00e4sst sich nicht r\u00fcckg\u00e4ngig machen."

    const-string v2, "This step cannot be undone."

    invoke-direct {p0, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 661
    iget v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mError:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x258

    .line 662
    invoke-direct {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->font(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 664
    :cond_1
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/masterrom/sdstorage/SdStorageModeActivity$11;

    invoke-direct {v5, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$11;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 667
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/masterrom/sdstorage/SdStorageModeActivity$12;

    invoke-direct {v5, p0, p7}, Lcom/masterrom/sdstorage/SdStorageModeActivity$12;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;Ljava/lang/Runnable;)V

    const/4 v3, 0x1

    move-object v2, p5

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 676
    iput-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetShown:Z

    const/4 v0, 0x0

    .line 677
    iput-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSheetCancel:Ljava/lang/Runnable;

    .line 678
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->updateBackCallback()V

    .line 679
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->animatePage()V

    return-void
.end method

.method private snapAppBar()V
    .locals 4

    .line 431
    iget-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mTouching:Z

    if-eqz v0, :cond_0

    return-void

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->expandRange()I

    move-result v0

    .line 433
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-lez v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 434
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    move v0, v3

    :cond_1
    invoke-virtual {p0, v3, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    :cond_2
    return-void
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 177
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

    .line 841
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 842
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 843
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

    .line 844
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v6, 0x41a00000    # 20.0f

    .line 845
    invoke-direct {p0, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz v1, :cond_1

    .line 846
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

    .line 847
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

    .line 848
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

    .line 849
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    .line 850
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v10, 0x10

    .line 851
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 852
    new-instance v10, Lcom/masterrom/sdstorage/SdGlyphView;

    if-eqz v1, :cond_5

    iget v11, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    goto :goto_3

    :cond_5
    iget v11, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSubText:I

    :goto_3
    move/from16 v12, p2

    invoke-direct {v10, p0, v12, v11}, Lcom/masterrom/sdstorage/SdGlyphView;-><init>(Landroid/content/Context;II)V

    .line 853
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x41e00000    # 28.0f

    invoke-direct {p0, v12}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v13

    invoke-direct {p0, v12}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v12

    invoke-direct {v11, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 854
    new-instance v10, Landroid/view/View;

    invoke-direct {v10, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 855
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v9, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 856
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 857
    const-string v10, "\u2713"

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v10, 0x11

    .line 858
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 859
    iget v10, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mOnAccent:I

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v10, 0x2

    const/high16 v11, 0x41500000    # 13.0f

    .line 860
    invoke-virtual {v3, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 861
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 862
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

    .line 863
    :goto_4
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 864
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x41b00000    # 22.0f

    invoke-direct {p0, v13}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v14

    invoke-direct {p0, v13}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v13

    invoke-direct {v12, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v8, p3

    .line 867
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_7

    .line 868
    iget v8, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mAccent:I

    goto :goto_5

    :cond_7
    iget v8, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mText:I

    :goto_5
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 869
    invoke-virtual {v3, v10, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 870
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v8, 0x258

    invoke-static {v4, v8, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v4, 0x41400000    # 12.0f

    .line 871
    invoke-direct {p0, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    invoke-direct {p0, v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v6

    invoke-virtual {v3, v9, v4, v9, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 872
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v4, p4

    .line 874
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    iget v4, v0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSubText:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 876
    invoke-virtual {v3, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 877
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 878
    new-instance v3, Lcom/masterrom/sdstorage/SdStorageModeActivity$19;

    move-object/from16 v4, p6

    invoke-direct {v3, p0, v1, v5, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity$19;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;ZLandroid/graphics/drawable/GradientDrawable;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->addPress(Landroid/view/View;)V

    .line 892
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v9, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 893
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_8

    const/high16 v3, 0x41200000    # 10.0f

    invoke-direct {p0, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_8
    move-object/from16 v0, p1

    .line 894
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private toPortable(Landroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V
    .locals 11

    .line 1154
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v6

    .line 1155
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1157
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

    .line 1158
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1159
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1160
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

    .line 1163
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

    .line 1165
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_3

    .line 1167
    const-string v1, "\u2022 Fotos, Downloads und andere Dateien werden zur\u00fcck in den internen Speicher verschoben.\n"

    const-string v2, "\u2022 Photos, downloads and other files are moved back to internal storage.\n"

    invoke-direct {p0, v1, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v2, 0xa

    if-nez v1, :cond_6

    .line 1171
    const-string v1, "\u2022 Diese Apps werden zur\u00fcck in den internen Speicher verschoben: "

    const-string v5, "\u2022 These apps are moved back to internal storage: "

    invoke-direct {p0, v1, v5}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
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

    .line 1174
    :cond_5
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1176
    :cond_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1177
    :cond_7
    const-string v0, "Danach wird die SD-Karte formatiert und alle restlichen Daten darauf gel\u00f6scht. Sie ist dann nicht mehr verschl\u00fcsselt und auch in anderen Ger\u00e4ten lesbar."

    const-string v1, "The SD card is then formatted and all remaining data on it is erased. It is no longer encrypted and can be read on other devices."

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    new-instance v10, Lcom/masterrom/sdstorage/SdStorageModeActivity$30;

    move-object v0, v10

    move-object v1, p0

    move v2, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/masterrom/sdstorage/SdStorageModeActivity$30;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;ZLjava/util/List;Ljava/util/List;Landroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 1214
    const-string v0, "SD-Karte wieder tragbar machen?"

    const-string v1, "Make SD card portable again?"

    invoke-direct {p0, v0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "Abbrechen"

    const-string v3, "Cancel"

    .line 1215
    invoke-direct {p0, v0, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "Fortfahren"

    const-string v3, "Continue"

    invoke-direct {p0, v0, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Lcom/masterrom/sdstorage/SdStorageModeActivity$31;

    invoke-direct {v9, p0, v8, v10}, Lcom/masterrom/sdstorage/SdStorageModeActivity$31;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;ZLjava/lang/Runnable;)V

    const/4 v3, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v7, v9

    .line 1214
    invoke-direct/range {v0 .. v7}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->showSheet(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    return-void
.end method

.method private unlockUser(I)V
    .locals 5

    .line 988
    const-string v0, "MasterROMSdStorage"

    :try_start_0
    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 989
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

    .line 991
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startProfile "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 994
    :cond_0
    :goto_0
    :try_start_1
    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 995
    const-string v2, "Sicheren Ordner entsperren"

    const-string v3, "Unlock Secure Folder"

    .line 996
    invoke-direct {p0, v2, v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Zum Verschieben der Dateien"

    const-string v4, "To move your files"

    .line 997
    invoke-direct {p0, v3, v4}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 995
    invoke-virtual {v1, v2, v3, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 999
    invoke-virtual {p0, v1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    .line 1003
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "confirm credential "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1006
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "com.samsung.knox.securefolder"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    const/high16 v1, 0x10000000

    .line 1008
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1009
    invoke-virtual {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    .line 1013
    const-string v1, "open Secure Folder"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1015
    :cond_2
    const-string p1, "Bitte \u00f6ffne den Sicheren Ordner und entsperre ihn."

    const-string v0, "Please open Secure Folder and unlock it."

    invoke-direct {p0, p1, v0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1016
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private unmountQuietly(Landroid/os/storage/VolumeInfo;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1226
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 1227
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 1229
    :try_start_0
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->unmount(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x28

    if-ge v0, v1, :cond_2

    .line 1235
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1236
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0xfa

    .line 1237
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

    .line 1231
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

    .line 693
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

    .line 695
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 696
    iget-object v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBackCb:Landroid/window/OnBackInvokedCallback;

    if-nez v2, :cond_2

    .line 697
    new-instance v0, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;

    invoke-direct {v0, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$13;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;)V

    iput-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBackCb:Landroid/window/OnBackInvokedCallback;

    const p0, 0xf4240

    .line 698
    invoke-interface {v1, p0, v0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    .line 699
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBackCb:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_3

    .line 700
    invoke-interface {v1, v0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    const/4 v0, 0x0

    .line 701
    iput-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mBackCb:Landroid/window/OnBackInvokedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 704
    const-string v0, "MasterROMSdStorage"

    const-string v1, "back dispatcher"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-void
.end method

.method private userLabel(Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 3

    .line 915
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

    .line 916
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    const/16 v1, 0x96

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    const/16 v1, 0xa0

    if-gt v0, v1, :cond_0

    goto :goto_2

    .line 917
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

    .line 916
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

    .line 1243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    .line 1244
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    .line 1245
    iget-object v2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getMoveStatus(I)I

    move-result v2

    const/16 v3, -0x64

    if-ne v2, v3, :cond_0

    const/16 p1, 0x64

    .line 1246
    invoke-direct {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->setProgressPercent(I)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-gez v2, :cond_1

    .line 1247
    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->moveError(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1248
    :cond_1
    invoke-direct {p0, v2}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->setProgressPercent(I)V

    const-wide/16 v2, 0x1f4

    .line 1249
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 1251
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

    .line 1046
    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1048
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

    .line 1049
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1050
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_1
    const-wide/16 v1, 0x1f4

    .line 1055
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

    .line 187
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

    .line 162
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->handleBack()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const-class p1, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    .line 141
    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 142
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mUm:Landroid/os/UserManager;

    .line 143
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    .line 144
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "de"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mDe:Z

    .line 145
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

    .line 147
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->loadColors()V

    .line 148
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->buildFrame()V

    .line 149
    invoke-direct {p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->showMain()V

    .line 150
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

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :catchall_0
    iget v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPageId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity;->mPageId:I

    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

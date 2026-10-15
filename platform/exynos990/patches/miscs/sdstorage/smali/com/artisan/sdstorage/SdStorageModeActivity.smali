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
.field private mAccent:I

.field private mBack:Landroid/widget/ImageButton;

.field private mBlockBack:Landroid/window/OnBackInvokedCallback;

.field private mBottom:Landroid/widget/LinearLayout;

.field private mBusy:Z

.field private mCardBg:I

.field private mContent:Landroid/widget/LinearLayout;

.field private mDe:Z

.field private mDivider:I

.field private final mEase:Landroid/view/animation/PathInterpolator;

.field private final mListener:Landroid/os/storage/StorageEventListener;

.field private volatile mNewPrivate:Landroid/os/storage/VolumeInfo;

.field private mNight:Z

.field private mOnAccent:I

.field private mOnMain:Z

.field private mPageBg:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mScroll:Landroid/widget/ScrollView;

.field private mSm:Landroid/os/storage/StorageManager;

.field private mSubText:I

.field private mText:I

.field private mUi:Landroid/os/Handler;

.field private mWorkText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mEase:Landroid/view/animation/PathInterpolator;

    .line 82
    new-instance v0, Lcom/artisan/sdstorage/SdStorageModeActivity$1;

    invoke-direct {v0, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$1;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/artisan/sdstorage/SdStorageModeActivity;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->refreshMain()V

    return-void
.end method

.method static synthetic access$100(Lcom/artisan/sdstorage/SdStorageModeActivity;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBusy:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNewPrivate:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->waitPrivateMounted(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/artisan/sdstorage/SdStorageModeActivity;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->offerMigrate()V

    return-void
.end method

.method static synthetic access$1300(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Lcom/artisan/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->runWork(Ljava/lang/String;Lcom/artisan/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/artisan/sdstorage/SdStorageModeActivity;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->waitMove(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/artisan/sdstorage/SdStorageModeActivity;Z)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->setBusy(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/artisan/sdstorage/SdStorageModeActivity;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->showResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mWorkText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/artisan/sdstorage/SdStorageModeActivity;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mOnMain:Z

    return v0
.end method

.method static synthetic access$300(Lcom/artisan/sdstorage/SdStorageModeActivity;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->showMain()V

    return-void
.end method

.method static synthetic access$400(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;Z)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->confirmFileLocation(Landroid/os/storage/VolumeInfo;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->toPortable(Landroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->confirmToInternal(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/artisan/sdstorage/SdStorageModeActivity;)Landroid/os/storage/StorageManager;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->setProgressText(Ljava/lang/String;)V

    return-void
.end method

.method private anim(Landroid/widget/LinearLayout;II)Lcom/artisan/sdstorage/SdAnimView;
    .locals 4

    .prologue
    .line 270
    new-instance v0, Lcom/artisan/sdstorage/SdAnimView;

    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mText:I

    iget v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    iget v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mOnAccent:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/artisan/sdstorage/SdAnimView;-><init>(Landroid/content/Context;III)V

    .line 271
    invoke-virtual {v0, p2}, Lcom/artisan/sdstorage/SdAnimView;->setMode(I)V

    .line 272
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    int-to-float v3, p3

    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 273
    const/high16 v2, 0x41400000    # 12.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 274
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    return-object v0
.end method

.method private animatePage()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 242
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 244
    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 245
    const/high16 v2, 0x41e00000    # 28.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 246
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x28

    int-to-long v4, v0

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1c2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mEase:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 250
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mEase:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 252
    :cond_1
    return-void
.end method

.method private attrColor(II)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 134
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p2

    .line 138
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    :goto_0
    return p2

    .line 135
    :catch_0
    move-exception v1

    .line 138
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    throw v1
.end method

.method private body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 291
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 292
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSubText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    const/4 v1, 0x2

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 295
    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 296
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    return-object v0
.end method

.method private buildFrame()V
    .locals 10

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v9, 0x41200000    # 10.0f

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPageBg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPageBg:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 166
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPageBg:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 171
    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPageBg:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 172
    new-instance v0, Lcom/artisan/sdstorage/SdStorageModeActivity$2;

    invoke-direct {v0, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$2;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 181
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 182
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 183
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 184
    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v0

    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    invoke-virtual {v2, v0, v6, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 185
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBack:Landroid/widget/ImageButton;

    .line 186
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "ic_arrow_back"

    const-string v4, "drawable"

    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 187
    const/4 v0, 0x0

    .line 188
    if-eqz v3, :cond_0

    .line 189
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 191
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 192
    iget v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mText:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 193
    iget-object v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBack:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    :cond_1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 196
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x101045c

    invoke-virtual {v3, v4, v0, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_2

    .line 197
    iget-object v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBack:Landroid/widget/ImageButton;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 201
    :goto_2
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBack:Landroid/widget/ImageButton;

    const-string v3, "Zur\u00fcck"

    const-string v4, "Navigate up"

    invoke-direct {p0, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBack:Landroid/widget/ImageButton;

    new-instance v3, Lcom/artisan/sdstorage/SdStorageModeActivity$3;

    invoke-direct {v3, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$3;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBack:Landroid/widget/ImageButton;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42400000    # 48.0f

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    const/high16 v5, 0x42400000    # 48.0f

    invoke-direct {p0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42600000    # 56.0f

    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    invoke-direct {v0, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    .line 207
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v8}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 208
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 209
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    .line 210
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 211
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-direct {p0, v9}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    invoke-direct {p0, v9}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    invoke-virtual {v0, v2, v6, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 212
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v7, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    .line 216
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 217
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 218
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    invoke-direct {p0, v9}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    const/high16 v5, 0x41600000    # 14.0f

    invoke-direct {p0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 219
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    invoke-virtual {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->setContentView(Landroid/view/View;)V

    .line 222
    return-void

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 189
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 167
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method private builder()Landroid/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 360
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dialogTheme()I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 361
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 362
    return-object v0
.end method

.method private card()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/high16 v3, 0x41c00000    # 24.0f

    .line 259
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 260
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 261
    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mCardBg:I

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 262
    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 263
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 264
    const/high16 v2, 0x41400000    # 12.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 265
    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    return-object v0
.end method

.method private confirmFileLocation(Landroid/os/storage/VolumeInfo;Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 586
    const/4 v0, 0x1

    new-array v1, v0, [Z

    aput-boolean v2, v1, v2

    .line 587
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->builder()Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v0, "Dateien auf die SD-Karte verschieben?"

    const-string v3, "Move files to the SD card?"

    invoke-direct {p0, v0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Fotos, Videos, Downloads und andere Dateien werden verschoben und k\u00fcnftig dort gespeichert. Das kann je nach Datenmenge einige Minuten dauern."

    const-string v3, "Photos, videos, downloads and other files are moved and stored there from now on. This can take a few minutes depending on the amount of data."

    .line 589
    invoke-direct {p0, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 593
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Verschieben"

    const-string v3, "Move"

    .line 594
    invoke-direct {p0, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/artisan/sdstorage/SdStorageModeActivity$11;

    invoke-direct {v3, p0, v1, p2, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity$11;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;[ZZLandroid/os/storage/VolumeInfo;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 609
    new-instance v2, Lcom/artisan/sdstorage/SdStorageModeActivity$12;

    invoke-direct {v2, p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity$12;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;[Z)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 612
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 613
    return-void

    .line 588
    :cond_0
    const-string v0, "Dateien in den internen Speicher verschieben?"

    const-string v3, "Move files to internal storage?"

    invoke-direct {p0, v0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private confirmToInternal(Landroid/os/storage/DiskInfo;)V
    .locals 4

    .prologue
    .line 500
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->builder()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Alle Daten auf der SD-Karte l\u00f6schen?"

    const-string v3, "Erase all data on the SD card?"

    invoke-direct {p0, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Alle Daten auf der SD-Karte werden unwiderruflich gel\u00f6scht. Sichere wichtige Dateien vorher."

    const-string v3, "All data on the SD card will be permanently erased. Back up important files first."

    .line 502
    invoke-direct {p0, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 504
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "L\u00f6schen und einrichten"

    const-string v3, "Erase and set up"

    .line 505
    invoke-direct {p0, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/artisan/sdstorage/SdStorageModeActivity$8;

    invoke-direct {v3, p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity$8;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 518
    return-void
.end method

.method private currentFileLocation(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 582
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

.method private dialogTheme()I
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v0, :cond_0

    const v0, 0x10302d1

    :goto_0
    return v0

    .line 356
    :cond_0
    const v0, 0x10302d2

    goto :goto_0
.end method

.method private dp(F)I
    .locals 2

    .prologue
    .line 122
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
    .line 577
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    .line 578
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

    .line 368
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v0

    .line 369
    if-nez v0, :cond_0

    move-object v0, v1

    .line 373
    :goto_0
    return-object v0

    .line 370
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

    .line 371
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 373
    goto :goto_0
.end method

.method private findVolume(Landroid/os/storage/DiskInfo;I)Landroid/os/storage/VolumeInfo;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 377
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v1

    .line 382
    :goto_0
    return-object v0

    .line 379
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

    .line 380
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

    .line 382
    goto :goto_0
.end method

.method private headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 279
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 280
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    const/4 v1, 0x2

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 283
    const-string v1, "sans-serif-medium"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 284
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 285
    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 286
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    return-object v0
.end method

.method private loadColors()V
    .locals 5

    .prologue
    const v4, -0x30304

    const v3, -0xe8e8e9

    const/high16 v1, -0x1000000

    .line 143
    const-string v2, "sec_widget_round_and_bgcolor"

    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->resColor(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPageBg:I

    .line 144
    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v0, :cond_3

    const-string v0, "sesl_background_color_dark"

    .line 145
    :goto_1
    iget-boolean v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v2, :cond_4

    move v2, v3

    .line 144
    :goto_2
    invoke-direct {p0, v0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->resColor(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mCardBg:I

    .line 146
    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mCardBg:I

    iget v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPageBg:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v0, :cond_5

    :goto_3
    iput v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mCardBg:I

    .line 147
    :cond_0
    const v0, 0x1010036

    iget-boolean v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v2, :cond_1

    const v1, -0x50506

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->attrColor(II)I

    move-result v0

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mText:I

    .line 148
    const-string v1, "sec_widget_body_text_color"

    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v0, :cond_6

    const v0, -0x4a4a4b

    :goto_4
    invoke-direct {p0, v1, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->resColor(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSubText:I

    .line 149
    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v0, :cond_7

    const-string v0, "sesl_primary_color_dark"

    :goto_5
    const v2, 0x1010435

    .line 150
    iget-boolean v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNight:Z

    if-eqz v1, :cond_8

    const v1, -0xc16e01

    :goto_6
    invoke-direct {p0, v2, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->attrColor(II)I

    move-result v1

    .line 149
    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->resColor(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mOnAccent:I

    .line 152
    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mText:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, 0x1f000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mDivider:I

    .line 153
    return-void

    .line 143
    :cond_2
    const v0, -0xd0d0e

    goto :goto_0

    .line 144
    :cond_3
    const-string v0, "sesl_background_color_light"

    goto :goto_1

    :cond_4
    move v2, v4

    .line 145
    goto :goto_2

    :cond_5
    move v3, v4

    .line 146
    goto :goto_3

    .line 148
    :cond_6
    const v0, -0x9b9b9c

    goto :goto_4

    .line 149
    :cond_7
    const-string v0, "sesl_primary_color_light"

    goto :goto_5

    .line 150
    :cond_8
    const v1, -0xfc7e02

    goto :goto_6
.end method

.method private matchWrap()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 255
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private moveError(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 694
    packed-switch p1, :pswitch_data_0

    .line 706
    :pswitch_0
    const-string v0, "Interner Fehler."

    const-string v1, "Internal error."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 708
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

    .line 695
    :pswitch_1
    const-string v0, "Nicht genug freier Speicher am Ziel."

    const-string v1, "Not enough free space at the destination."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 696
    :pswitch_2
    const-string v0, "Die App existiert nicht mehr."

    const-string v1, "The app no longer exists."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 697
    :pswitch_3
    const-string v0, "System-Apps k\u00f6nnen nicht verschoben werden."

    const-string v1, "System apps cannot be moved."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 698
    :pswitch_4
    const-string v0, "Dieser Speicherort ist nicht m\u00f6glich."

    const-string v1, "This location is not possible."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 699
    :pswitch_5
    const-string v0, "Es l\u00e4uft bereits ein anderer Verschiebevorgang. Bitte sp\u00e4ter erneut versuchen."

    const-string v1, "Another move is already in progress. Please try again later."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 701
    :pswitch_6
    const-string v0, "Diese App ist ein Ger\u00e4teadministrator und kann nicht verschoben werden."

    const-string v1, "This app is a device administrator and cannot be moved."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 703
    :pswitch_7
    const-string v0, "Der Sichere Ordner oder ein anderer Benutzer ist gesperrt. \u00d6ffne und entsperre den Sicheren Ordner einmal und versuche es dann erneut."

    const-string v1, "Secure Folder or another user is locked. Open and unlock Secure Folder once, then try again."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 694
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

.method private newPage(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/high16 v3, 0x41900000    # 18.0f

    const/4 v5, 0x0

    .line 226
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 227
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 228
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 230
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    const/4 v1, 0x2

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 233
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 234
    const/4 v1, 0x0

    const v2, 0x3f866666    # 1.05f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 235
    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    const/high16 v2, 0x42100000    # 36.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    const/high16 v4, 0x42080000    # 34.0f

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 236
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 238
    return-void
.end method

.method private offerMigrate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 539
    iput-boolean v5, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mOnMain:Z

    .line 540
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mNewPrivate:Landroid/os/storage/VolumeInfo;

    .line 541
    const-string v1, "Die SD-Karte wird jetzt als interner, verschl\u00fcsselter Speicher genutzt."

    const-string v2, "The SD card is now used as encrypted internal storage."

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 543
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 544
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_1

    const-string v0, "\n\nDateien kannst du sp\u00e4ter auf dieser Seite verschieben."

    const-string v2, "\n\nYou can move files later on this page."

    invoke-direct {p0, v0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 544
    invoke-direct {p0, v6, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->showResult(ZLjava/lang/String;)V

    .line 572
    :goto_1
    return-void

    .line 545
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 548
    :cond_2
    const-string v2, "Dateien auf die SD-Karte verschieben?"

    const-string v3, "Move files to the SD card?"

    invoke-direct {p0, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 549
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 550
    const/4 v3, 0x2

    const/16 v4, 0xaa

    invoke-direct {p0, v2, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/artisan/sdstorage/SdAnimView;

    .line 551
    const-string v3, "SD-Karte ist eingerichtet"

    const-string v4, "SD card is set up"

    invoke-direct {p0, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\nFotos, Videos, Downloads, Musik und andere Dateien jetzt auf die SD-Karte verschieben? Neue Fotos und Downloads landen danach automatisch auf der Karte. System und Apps bleiben im internen Speicher.\n\nDas kann je nach Datenmenge einige Minuten dauern. Du kannst das sp\u00e4ter auf dieser Seite jederzeit \u00e4ndern."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n\nMove photos, videos, downloads, music and other files to the SD card now? New photos and downloads will then be stored on the card automatically. System and apps stay on internal storage.\n\nThis can take a few minutes depending on the amount of data. You can change this later on this page at any time."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 558
    const-string v1, "Intern lassen"

    const-string v2, "Keep internal"

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/artisan/sdstorage/SdStorageModeActivity$9;

    invoke-direct {v2, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$9;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    invoke-direct {p0, v1, v5, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->roundButton(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 561
    const-string v1, "Auf SD-Karte"

    const-string v2, "To SD card"

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/artisan/sdstorage/SdStorageModeActivity$10;

    invoke-direct {v2, p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity$10;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/VolumeInfo;)V

    invoke-direct {p0, v1, v6, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->roundButton(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 571
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->animatePage()V

    goto :goto_1
.end method

.method private radio(Landroid/widget/RadioGroup;Ljava/lang/String;)Landroid/widget/RadioButton;
    .locals 5

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    .line 486
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 487
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setId(I)V

    .line 488
    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mText:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 490
    const/4 v1, 0x2

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 491
    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 492
    const/high16 v1, 0x41000000    # 8.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RadioButton;->setPadding(IIII)V

    .line 493
    new-instance v1, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    return-object v0
.end method

.method private refreshMain()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$4;

    invoke-direct {v1, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$4;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 389
    return-void
.end method

.method private resColor(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 127
    if-nez v0, :cond_0

    .line 128
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

.method private roundButton(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 8

    .prologue
    const/high16 v7, 0x42400000    # 48.0f

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v2, 0x0

    .line 332
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 333
    invoke-virtual {v3, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 334
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 335
    const/4 v0, 0x2

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v3, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 336
    const-string v0, "sans-serif-medium"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 337
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 338
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setElevation(F)V

    .line 339
    invoke-direct {p0, v7}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setMinHeight(I)V

    .line 340
    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v0

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    invoke-virtual {v3, v0, v2, v1, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 341
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    move v1, v0

    .line 342
    :goto_0
    if-eqz p2, :cond_2

    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mOnAccent:I

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 343
    invoke-direct {p0, v1, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 344
    const/4 v0, -0x1

    invoke-direct {p0, v0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    .line 345
    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p2, :cond_3

    const v0, 0x33ffffff

    :goto_2
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-direct {v5, v0, v1, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 346
    invoke-virtual {v3, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v7}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 348
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 351
    return-object v3

    :cond_1
    move v1, v2

    .line 341
    goto :goto_0

    .line 342
    :cond_2
    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    goto :goto_1

    .line 345
    :cond_3
    iget v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    const v6, 0xffffff

    and-int/2addr v0, v6

    const/high16 v6, 0x33000000

    or-int/2addr v0, v6

    goto :goto_2
.end method

.method private rounded(IF)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 157
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 158
    invoke-direct {p0, p2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 159
    return-object v0
.end method

.method private row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x41400000    # 12.0f

    .line 311
    if-eqz p4, :cond_0

    .line 312
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 313
    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mDivider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 314
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 315
    invoke-direct {p0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 316
    invoke-direct {p0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 317
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 320
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 323
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 325
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 328
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    return-void
.end method

.method private runWork(Ljava/lang/String;Lcom/artisan/sdstorage/SdStorageModeActivity$Work;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 741
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mOnMain:Z

    .line 742
    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->setBusy(Z)V

    .line 743
    invoke-direct {p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 744
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 745
    const/4 v1, 0x3

    const/16 v2, 0xaa

    invoke-direct {p0, v0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/artisan/sdstorage/SdAnimView;

    .line 746
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 747
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 748
    iget v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 749
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 750
    const/high16 v3, 0x41400000    # 12.0f

    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 751
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 752
    const-string v1, "Bitte warten. Entferne die SD-Karte nicht und schalte das Ger\u00e4t nicht aus."

    const-string v2, "Please wait. Do not remove the SD card or turn off the device."

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mWorkText:Landroid/widget/TextView;

    .line 754
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->animatePage()V

    .line 756
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$15;

    invoke-direct {v1, p0, p2, p4, p3}, Lcom/artisan/sdstorage/SdStorageModeActivity$15;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Lcom/artisan/sdstorage/SdStorageModeActivity$Work;Ljava/lang/Runnable;Ljava/lang/String;)V

    const-string v2, "ArtisanSdStorage"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 774
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 775
    return-void
.end method

.method private sectionLabel(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/high16 v3, 0x41c00000    # 24.0f

    .line 301
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 302
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mAccent:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 305
    const-string v1, "sans-serif-medium"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 306
    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 307
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mContent:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    return-void
.end method

.method private setBusy(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x80

    .line 719
    iput-boolean p1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBusy:Z

    .line 720
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBack:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 721
    if-eqz p1, :cond_2

    .line 722
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 727
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    .line 728
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBlockBack:Landroid/window/OnBackInvokedCallback;

    if-nez v1, :cond_3

    .line 729
    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$14;

    invoke-direct {v1, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$14;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    iput-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBlockBack:Landroid/window/OnBackInvokedCallback;

    .line 730
    const v1, 0xf4240

    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBlockBack:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v1, v2}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :cond_0
    :goto_2
    return-void

    .line 720
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 724
    :cond_2
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1

    .line 731
    :cond_3
    if-nez p1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBlockBack:Landroid/window/OnBackInvokedCallback;

    if-eqz v1, :cond_0

    .line 732
    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBlockBack:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 733
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBlockBack:Landroid/window/OnBackInvokedCallback;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 735
    :catch_0
    move-exception v0

    .line 736
    const-string v1, "ArtisanSdStorage"

    const-string v2, "back dispatcher"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private setProgressText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$18;

    invoke-direct {v1, p0, p1}, Lcom/artisan/sdstorage/SdStorageModeActivity$18;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 799
    return-void
.end method

.method private showMain()V
    .locals 10

    .prologue
    const/16 v5, 0xaa

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 394
    iput-boolean v8, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mOnMain:Z

    .line 395
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->findSdDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    .line 396
    if-nez v3, :cond_0

    .line 397
    const-string v0, "SD-Karte"

    const-string v1, "SD card"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 399
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/artisan/sdstorage/SdAnimView;

    .line 400
    const-string v1, "Keine SD-Karte eingelegt"

    const-string v2, "No SD card inserted"

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 401
    const-string v1, "Lege eine microSD-Karte ein. Danach kannst du hier w\u00e4hlen, ob sie als tragbarer Speicher oder als interner, verschl\u00fcsselter Speicher genutzt wird."

    const-string v2, "Insert a microSD card. You can then choose here whether it is used as portable storage or as encrypted internal storage."

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 405
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->animatePage()V

    .line 483
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-direct {p0, v3, v8}, Lcom/artisan/sdstorage/SdStorageModeActivity;->findVolume(Landroid/os/storage/DiskInfo;I)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    .line 409
    iget-wide v0, v3, Landroid/os/storage/DiskInfo;->size:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    iget-wide v0, v3, Landroid/os/storage/DiskInfo;->size:J

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 411
    :goto_1
    if-eqz v4, :cond_3

    .line 412
    const-string v1, "SD-Karte wieder tragbar machen"

    const-string v2, "Make SD card portable again"

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 413
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 414
    invoke-direct {p0, v1, v8, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/artisan/sdstorage/SdAnimView;

    .line 415
    const-string v2, "Tragbarer Speicher"

    const-string v5, "Portable storage"

    invoke-direct {p0, v2, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 416
    const-string v2, "Die Karte wird wieder ein normaler, austauschbarer Speicher \u2013 ohne Verschl\u00fcsselung und auch in anderen Ger\u00e4ten, Kameras oder am PC lesbar.\n\nApps und Dateien auf der Karte werden vorher automatisch auf den internen Speicher verschoben. Anschlie\u00dfend wird die Karte formatiert."

    const-string v5, "The card becomes normal removable storage again \u2013 without encryption and readable in other devices, cameras or on a PC.\n\nApps and files on the card are moved back to internal storage automatically first. The card is formatted afterwards."

    invoke-direct {p0, v2, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 425
    const-string v1, "Aktueller Zustand"

    const-string v2, "Current state"

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->sectionLabel(Ljava/lang/String;)V

    .line 426
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 427
    const-string v2, "Nutzung"

    const-string v5, "Usage"

    invoke-direct {p0, v2, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Interner Speicher"

    const-string v6, "Internal storage"

    invoke-direct {p0, v5, v6}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v2, v5, v9}, Lcom/artisan/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 428
    const-string v2, "Verschl\u00fcsselung"

    const-string v5, "Encryption"

    invoke-direct {p0, v2, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Verschl\u00fcsselt, nur in diesem Ger\u00e4t lesbar"

    const-string v6, "Encrypted, readable only on this device"

    invoke-direct {p0, v5, v6}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v2, v5, v8}, Lcom/artisan/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 429
    const-string v2, "Dateien gespeichert auf"

    const-string v5, "Files stored on"

    invoke-direct {p0, v2, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->currentFileLocation(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v2, v5, v8}, Lcom/artisan/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 430
    const-string v2, "Kapazit\u00e4t"

    const-string v5, "Capacity"

    invoke-direct {p0, v2, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0, v8}, Lcom/artisan/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 432
    const-string v0, "Speicherort f\u00fcr Dateien"

    const-string v1, "Location for files"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->sectionLabel(Ljava/lang/String;)V

    .line 433
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v5

    .line 434
    const/4 v0, 0x2

    const/16 v1, 0x82

    invoke-direct {p0, v5, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/artisan/sdstorage/SdAnimView;

    .line 435
    const-string v0, "W\u00e4hle, wo Fotos, Videos, Downloads, Musik und andere Dateien standardm\u00e4\u00dfig gespeichert werden. Vorhandene Dateien werden mit verschoben. System und Apps bleiben im internen Speicher."

    const-string v1, "Choose where photos, videos, downloads, music and other files are stored by default. Existing files are moved along. System and apps stay on internal storage."

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 439
    invoke-direct {p0, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->filesOnSd(Landroid/os/storage/VolumeInfo;)Z

    move-result v6

    .line 440
    new-instance v7, Landroid/widget/RadioGroup;

    invoke-direct {v7, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 441
    invoke-virtual {v7, v8}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 442
    const/high16 v0, 0x41200000    # 10.0f

    invoke-direct {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->dp(F)I

    move-result v0

    invoke-virtual {v7, v9, v0, v9, v9}, Landroid/widget/RadioGroup;->setPadding(IIII)V

    .line 443
    const-string v0, "Interner Speicher"

    const-string v1, "Internal storage"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->radio(Landroid/widget/RadioGroup;Ljava/lang/String;)Landroid/widget/RadioButton;

    move-result-object v2

    .line 444
    const-string v0, "SD-Karte (verschl\u00fcsselt)"

    const-string v1, "SD card (encrypted)"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->radio(Landroid/widget/RadioGroup;Ljava/lang/String;)Landroid/widget/RadioButton;

    move-result-object v1

    .line 445
    if-eqz v6, :cond_2

    move-object v0, v1

    :goto_2
    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 446
    new-instance v0, Lcom/artisan/sdstorage/SdStorageModeActivity$5;

    invoke-direct {v0, p0, v1, v6, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity$5;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/widget/RadioButton;ZLandroid/os/storage/VolumeInfo;)V

    .line 453
    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 454
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 455
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    const-string v0, "Tragbar machen"

    const-string v1, "Make portable"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$6;

    invoke-direct {v1, p0, v3, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity$6;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;Landroid/os/storage/VolumeInfo;)V

    invoke-direct {p0, v0, v8, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->roundButton(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 482
    :goto_3
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->animatePage()V

    goto/16 :goto_0

    .line 409
    :cond_1
    const-string v0, "\u2013"

    goto/16 :goto_1

    :cond_2
    move-object v0, v2

    .line 445
    goto :goto_2

    .line 461
    :cond_3
    const-string v1, "SD-Karte als internen Speicher nutzen"

    const-string v2, "Use SD card as internal storage"

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 462
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 463
    invoke-direct {p0, v1, v9, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/artisan/sdstorage/SdAnimView;

    .line 464
    const-string v2, "Interner, verschl\u00fcsselter Speicher"

    const-string v4, "Encrypted internal storage"

    invoke-direct {p0, v2, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->headline(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 465
    const-string v2, "Die Karte wird formatiert, verschl\u00fcsselt und als Erweiterung des internen Speichers genutzt. Danach kannst du Fotos, Downloads und andere Dateien \u2013 und unterst\u00fctzte Apps \u2013 auf der Karte speichern.\n\nDie Karte ist anschlie\u00dfend nur noch in diesem Ger\u00e4t lesbar. Alle Daten, die jetzt auf der Karte sind, werden gel\u00f6scht."

    const-string v4, "The card is formatted, encrypted and used as an extension of internal storage. You can then store photos, downloads and other files \u2013 and supported apps \u2013 on the card.\n\nAfterwards the card can only be read on this device. All data currently on the card is erased."

    invoke-direct {p0, v2, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 472
    const-string v1, "Aktueller Zustand"

    const-string v2, "Current state"

    invoke-direct {p0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->sectionLabel(Ljava/lang/String;)V

    .line 473
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 474
    const-string v2, "Nutzung"

    const-string v4, "Usage"

    invoke-direct {p0, v2, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Tragbarer Speicher"

    const-string v5, "Portable storage"

    invoke-direct {p0, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v4, v9}, Lcom/artisan/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 475
    const-string v2, "Verschl\u00fcsselung"

    const-string v4, "Encryption"

    invoke-direct {p0, v2, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Nicht verschl\u00fcsselt"

    const-string v5, "Not encrypted"

    invoke-direct {p0, v4, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v4, v8}, Lcom/artisan/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 476
    const-string v2, "Kapazit\u00e4t"

    const-string v4, "Capacity"

    invoke-direct {p0, v2, v4}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0, v8}, Lcom/artisan/sdstorage/SdStorageModeActivity;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 478
    const-string v0, "Als intern einrichten"

    const-string v1, "Set up as internal"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$7;

    invoke-direct {v1, p0, v3}, Lcom/artisan/sdstorage/SdStorageModeActivity$7;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;Landroid/os/storage/DiskInfo;)V

    invoke-direct {p0, v0, v8, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->roundButton(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)Landroid/widget/Button;

    goto/16 :goto_3
.end method

.method private showResult(ZLjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 778
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mOnMain:Z

    .line 779
    if-eqz p1, :cond_1

    const-string v0, "Fertig"

    const-string v1, "Done"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->newPage(Ljava/lang/String;)V

    .line 780
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 781
    if-eqz p1, :cond_0

    const/4 v1, 0x5

    const/16 v2, 0x96

    invoke-direct {p0, v0, v1, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->anim(Landroid/widget/LinearLayout;II)Lcom/artisan/sdstorage/SdAnimView;

    .line 782
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->body(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 783
    if-eqz p1, :cond_2

    .line 784
    const-string v0, "Fertig"

    const-string v1, "Done"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$16;

    invoke-direct {v1, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$16;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    invoke-direct {p0, v0, v3, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->roundButton(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 792
    :goto_1
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->animatePage()V

    .line 793
    return-void

    .line 779
    :cond_1
    const-string v0, "Das hat nicht geklappt"

    const-string v1, "That didn\'t work"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 788
    :cond_2
    const-string v0, "Zur\u00fcck"

    const-string v1, "Back"

    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/artisan/sdstorage/SdStorageModeActivity$17;

    invoke-direct {v1, p0}, Lcom/artisan/sdstorage/SdStorageModeActivity$17;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;)V

    invoke-direct {p0, v0, v3, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->roundButton(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)Landroid/widget/Button;

    goto :goto_1
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
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

    .line 618
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v6

    .line 619
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 620
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 621
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

    .line 622
    if-eqz v6, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 623
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 627
    :cond_1
    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    .line 629
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    if-eqz v2, :cond_2

    .line 631
    const-string v0, "\u2022 Fotos, Downloads und andere Dateien liegen auf der Karte und werden zur\u00fcck in den internen Speicher verschoben.\n"

    const-string v5, "\u2022 Photos, downloads and other files are on the card and will be moved back to internal storage.\n"

    invoke-direct {p0, v0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 635
    const-string v0, "\u2022 Diese Apps werden zur\u00fcck in den internen Speicher verschoben:\n"

    const-string v5, "\u2022 These apps will be moved back to internal storage:\n"

    invoke-direct {p0, v0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
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

    .line 627
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 639
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 640
    :cond_5
    const-string v0, "Danach wird die SD-Karte formatiert. Alle restlichen Daten darauf werden gel\u00f6scht. Die Karte ist danach nicht mehr verschl\u00fcsselt und auch in anderen Ger\u00e4ten lesbar."

    const-string v5, "The SD card is then formatted. All remaining data on it is erased. It will no longer be encrypted and can be read on other devices."

    invoke-direct {p0, v0, v5}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->builder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v5, "SD-Karte wieder tragbar machen?"

    const-string v7, "Make SD card portable again?"

    invoke-direct {p0, v5, v7}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 646
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v5, 0x0

    .line 647
    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string v0, "Fortfahren"

    const-string v1, "Continue"

    .line 648
    invoke-direct {p0, v0, v1}, Lcom/artisan/sdstorage/SdStorageModeActivity;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/artisan/sdstorage/SdStorageModeActivity$13;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/artisan/sdstorage/SdStorageModeActivity$13;-><init>(Lcom/artisan/sdstorage/SdStorageModeActivity;ZLjava/util/List;Ljava/util/List;Landroid/os/storage/DiskInfo;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 676
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 677
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
    .line 681
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    .line 682
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    .line 683
    iget-object v2, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getMoveStatus(I)I

    move-result v2

    .line 684
    const/16 v3, -0x64

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    .line 688
    :goto_1
    return-object v0

    .line 685
    :cond_0
    if-gez v2, :cond_1

    invoke-direct {p0, v2}, Lcom/artisan/sdstorage/SdStorageModeActivity;->moveError(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 686
    :cond_1
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 688
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
    .line 522
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x78

    if-ge v1, v0, :cond_2

    .line 523
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 524
    if-eqz v0, :cond_1

    .line 525
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 526
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

    .line 527
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 534
    :goto_1
    return-object v0

    .line 532
    :cond_1
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 522
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 534
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mBusy:Z

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    .line 92
    invoke-virtual {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mUi:Landroid/os/Handler;

    .line 94
    const-string v0, "de"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mDe:Z

    .line 95
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

    .line 97
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->loadColors()V

    .line 98
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->buildFrame()V

    .line 99
    invoke-direct {p0}, Lcom/artisan/sdstorage/SdStorageModeActivity;->showMain()V

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_1
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 100
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
    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mSm:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/artisan/sdstorage/SdStorageModeActivity;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 107
    return-void

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method

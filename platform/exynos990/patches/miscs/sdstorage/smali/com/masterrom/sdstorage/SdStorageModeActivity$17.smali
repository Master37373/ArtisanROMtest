.class Lcom/masterrom/sdstorage/SdStorageModeActivity$17;
.super Ljava/lang/Object;
.source "SdStorageModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/masterrom/sdstorage/SdStorageModeActivity;->tile(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

.field final synthetic val$bg:Landroid/graphics/drawable/GradientDrawable;

.field final synthetic val$onPick:Ljava/lang/Runnable;

.field final synthetic val$selected:Z


# direct methods
.method constructor <init>(Lcom/masterrom/sdstorage/SdStorageModeActivity;ZLandroid/graphics/drawable/GradientDrawable;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 795
    iput-object p1, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$17;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    iput-boolean p2, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$17;->val$selected:Z

    iput-object p3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$17;->val$bg:Landroid/graphics/drawable/GradientDrawable;

    iput-object p4, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$17;->val$onPick:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 797
    iget-boolean v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$17;->val$selected:Z

    if-eqz v0, :cond_0

    .line 806
    :goto_0
    return-void

    .line 799
    :cond_0
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$17;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-static {v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$1700(Lcom/masterrom/sdstorage/SdStorageModeActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$17;->this$0:Lcom/masterrom/sdstorage/SdStorageModeActivity;

    invoke-static {v3}, Lcom/masterrom/sdstorage/SdStorageModeActivity;->access$1800(Lcom/masterrom/sdstorage/SdStorageModeActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 800
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 801
    new-instance v1, Lcom/masterrom/sdstorage/SdStorageModeActivity$17$1;

    invoke-direct {v1, p0}, Lcom/masterrom/sdstorage/SdStorageModeActivity$17$1;-><init>(Lcom/masterrom/sdstorage/SdStorageModeActivity$17;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 804
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 805
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdStorageModeActivity$17;->val$onPick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

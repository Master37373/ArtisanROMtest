.class Lcom/artisan/sdstorage/SdAnimView$1;
.super Ljava/lang/Object;
.source "SdAnimView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/SdAnimView;->restart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artisan/sdstorage/SdAnimView;


# direct methods
.method constructor <init>(Lcom/artisan/sdstorage/SdAnimView;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/artisan/sdstorage/SdAnimView$1;->this$0:Lcom/artisan/sdstorage/SdAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/artisan/sdstorage/SdAnimView$1;->this$0:Lcom/artisan/sdstorage/SdAnimView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/artisan/sdstorage/SdAnimView;->access$002(Lcom/artisan/sdstorage/SdAnimView;F)F

    .line 71
    iget-object v0, p0, Lcom/artisan/sdstorage/SdAnimView$1;->this$0:Lcom/artisan/sdstorage/SdAnimView;

    invoke-virtual {v0}, Lcom/artisan/sdstorage/SdAnimView;->invalidate()V

    .line 72
    return-void
.end method

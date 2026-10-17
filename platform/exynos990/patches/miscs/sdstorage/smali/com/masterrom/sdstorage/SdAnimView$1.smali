.class Lcom/masterrom/sdstorage/SdAnimView$1;
.super Ljava/lang/Object;
.source "SdAnimView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/masterrom/sdstorage/SdAnimView;->restart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/masterrom/sdstorage/SdAnimView;


# direct methods
.method constructor <init>(Lcom/masterrom/sdstorage/SdAnimView;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/masterrom/sdstorage/SdAnimView$1;->this$0:Lcom/masterrom/sdstorage/SdAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/masterrom/sdstorage/SdAnimView$1;->this$0:Lcom/masterrom/sdstorage/SdAnimView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/masterrom/sdstorage/SdAnimView;->access$002(Lcom/masterrom/sdstorage/SdAnimView;F)F

    .line 144
    iget-object p0, p0, Lcom/masterrom/sdstorage/SdAnimView$1;->this$0:Lcom/masterrom/sdstorage/SdAnimView;

    invoke-virtual {p0}, Lcom/masterrom/sdstorage/SdAnimView;->invalidate()V

    return-void
.end method

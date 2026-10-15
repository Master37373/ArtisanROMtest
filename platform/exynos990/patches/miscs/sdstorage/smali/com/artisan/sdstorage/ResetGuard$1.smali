.class Lcom/artisan/sdstorage/ResetGuard$1;
.super Ljava/lang/Object;
.source "ResetGuard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artisan/sdstorage/ResetGuard;->intercept(Lcom/android/settings/MainClearConfirm;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$f:Lcom/android/settings/MainClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/MainClearConfirm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lcom/artisan/sdstorage/ResetGuard$1;->val$f:Lcom/android/settings/MainClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/artisan/sdstorage/ResetGuard$1;->val$f:Lcom/android/settings/MainClearConfirm;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/MainClearConfirm;->mEraseSdCard:Z

    .line 90
    iget-object v0, p0, Lcom/artisan/sdstorage/ResetGuard$1;->val$f:Lcom/android/settings/MainClearConfirm;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/MainClearConfirm;->mCanEraseExternalOnFuseSystem:Z

    .line 91
    iget-object v0, p0, Lcom/artisan/sdstorage/ResetGuard$1;->val$f:Lcom/android/settings/MainClearConfirm;

    invoke-static {v0}, Lcom/artisan/sdstorage/ResetGuard;->access$002(Lcom/android/settings/MainClearConfirm;)Lcom/android/settings/MainClearConfirm;

    .line 92
    iget-object v0, p0, Lcom/artisan/sdstorage/ResetGuard$1;->val$f:Lcom/android/settings/MainClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MainClearConfirm;->onResetButtonClick()V

    .line 93
    return-void
.end method

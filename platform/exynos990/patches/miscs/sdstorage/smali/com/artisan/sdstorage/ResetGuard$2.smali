.class Lcom/artisan/sdstorage/ResetGuard$2;
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
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$files:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/artisan/sdstorage/ResetGuard$2;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/artisan/sdstorage/ResetGuard$2;->val$files:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/artisan/sdstorage/ResetGuard$2;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/artisan/sdstorage/ResetGuard$2;->val$files:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    const-string v1, "ArtisanResetGuard"

    const-string v2, "My Files"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

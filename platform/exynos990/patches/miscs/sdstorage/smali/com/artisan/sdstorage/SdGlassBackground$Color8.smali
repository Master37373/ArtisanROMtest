.class final Lcom/artisan/sdstorage/SdGlassBackground$Color8;
.super Ljava/lang/Object;
.source "SdGlassBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artisan/sdstorage/SdGlassBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Color8"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static alpha(I)I
    .locals 1

    .prologue
    .line 81
    ushr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

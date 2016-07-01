.class public abstract Ljavafx/scene/image/WritablePixelFormat;
.super Ljavafx/scene/image/PixelFormat;
.source "WritablePixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/image/WritablePixelFormat$ByteBgraPre;,
        Ljavafx/scene/image/WritablePixelFormat$ByteBgra;,
        Ljavafx/scene/image/WritablePixelFormat$IntArgbPre;,
        Ljavafx/scene/image/WritablePixelFormat$IntArgb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/nio/Buffer;",
        ">",
        "Ljavafx/scene/image/PixelFormat",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljavafx/scene/image/PixelFormat$Type;)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritablePixelFormat;, "Ljavafx/scene/image/WritablePixelFormat<TT;>;"
    move-object v1, p1

    .local v1, "type":Ljavafx/scene/image/PixelFormat$Type;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/image/PixelFormat;-><init>(Ljavafx/scene/image/PixelFormat$Type;)V

    .line 43
    return-void
.end method


# virtual methods
.method public isWritable()Z
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritablePixelFormat;, "Ljavafx/scene/image/WritablePixelFormat<TT;>;"
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/image/WritablePixelFormat;, "Ljavafx/scene/image/WritablePixelFormat<TT;>;"
    return v0
.end method

.method public abstract setArgb(Ljava/nio/Buffer;IIII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)V"
        }
    .end annotation
.end method

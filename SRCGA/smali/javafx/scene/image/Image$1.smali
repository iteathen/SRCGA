.class final Ljavafx/scene/image/Image$1;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Lcom/sun/javafx/tk/Toolkit$ImageAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/image/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageProperty(Ljavafx/scene/image/Image;)Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/image/Image;",
            ")",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Lcom/sun/javafx/tk/PlatformImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$1;
    move-object v1, p1

    .local v1, "image":Ljavafx/scene/image/Image;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/image/Image;->acc_platformImageProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/image/Image$1;
    return-object v0
.end method

.method public getNonPreColors(Ljavafx/scene/image/PixelFormat;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$1;
    move-object v1, p1

    .local v1, "pf":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/ByteBuffer;>;"
    move-object v2, v1

    check-cast v2, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;

    invoke-virtual {v2}, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->getNonPreColors()[I

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/image/Image$1;
    return-object v0
.end method

.method public getPreColors(Ljavafx/scene/image/PixelFormat;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$1;
    move-object v1, p1

    .local v1, "pf":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/ByteBuffer;>;"
    move-object v2, v1

    check-cast v2, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;

    invoke-virtual {v2}, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->getPreColors()[I

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/image/Image$1;
    return-object v0
.end method

.method public isAnimation(Ljavafx/scene/image/Image;)Z
    .locals 3

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$1;
    move-object v1, p1

    .local v1, "image":Ljavafx/scene/image/Image;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/image/Image;->isAnimation()Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/image/Image$1;
    return v0
.end method

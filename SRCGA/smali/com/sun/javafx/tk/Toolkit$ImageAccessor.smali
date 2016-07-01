.class public interface abstract Lcom/sun/javafx/tk/Toolkit$ImageAccessor;
.super Ljava/lang/Object;
.source "Toolkit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/Toolkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageAccessor"
.end annotation


# virtual methods
.method public abstract getImageProperty(Ljavafx/scene/image/Image;)Ljavafx/beans/property/ReadOnlyObjectProperty;
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
.end method

.method public abstract getNonPreColors(Ljavafx/scene/image/PixelFormat;)[I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)[I"
        }
    .end annotation
.end method

.method public abstract getPreColors(Ljavafx/scene/image/PixelFormat;)[I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)[I"
        }
    .end annotation
.end method

.method public abstract isAnimation(Ljavafx/scene/image/Image;)Z
.end method

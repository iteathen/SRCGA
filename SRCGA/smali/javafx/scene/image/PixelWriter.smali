.class public interface abstract Ljavafx/scene/image/PixelWriter;
.super Ljava/lang/Object;
.source "PixelWriter.java"


# virtual methods
.method public abstract getPixelFormat()Ljavafx/scene/image/PixelFormat;
.end method

.method public abstract setArgb(III)V
.end method

.method public abstract setColor(IILjavafx/scene/paint/Color;)V
.end method

.method public abstract setPixels(IIIILjavafx/scene/image/PixelFormat;Ljava/nio/Buffer;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/nio/Buffer;",
            ">(IIII",
            "Ljavafx/scene/image/PixelFormat",
            "<TT;>;TT;I)V"
        }
    .end annotation
.end method

.method public abstract setPixels(IIIILjavafx/scene/image/PixelFormat;[BII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;[BII)V"
        }
    .end annotation
.end method

.method public abstract setPixels(IIIILjavafx/scene/image/PixelFormat;[III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/IntBuffer;",
            ">;[III)V"
        }
    .end annotation
.end method

.method public abstract setPixels(IIIILjavafx/scene/image/PixelReader;II)V
.end method

.class public interface abstract Ljavafx/scene/image/PixelReader;
.super Ljava/lang/Object;
.source "PixelReader.java"


# virtual methods
.method public abstract getArgb(II)I
.end method

.method public abstract getColor(II)Ljavafx/scene/paint/Color;
.end method

.method public abstract getPixelFormat()Ljavafx/scene/image/PixelFormat;
.end method

.method public abstract getPixels(IIIILjavafx/scene/image/WritablePixelFormat;Ljava/nio/Buffer;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/nio/Buffer;",
            ">(IIII",
            "Ljavafx/scene/image/WritablePixelFormat",
            "<TT;>;TT;I)V"
        }
    .end annotation
.end method

.method public abstract getPixels(IIIILjavafx/scene/image/WritablePixelFormat;[BII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljavafx/scene/image/WritablePixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;[BII)V"
        }
    .end annotation
.end method

.method public abstract getPixels(IIIILjavafx/scene/image/WritablePixelFormat;[III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljavafx/scene/image/WritablePixelFormat",
            "<",
            "Ljava/nio/IntBuffer;",
            ">;[III)V"
        }
    .end annotation
.end method

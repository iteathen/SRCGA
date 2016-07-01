.class public interface abstract Lcom/sun/javafx/tk/PlatformImage;
.super Ljava/lang/Object;
.source "PlatformImage.java"


# virtual methods
.method public abstract getArgb(II)I
.end method

.method public abstract getPixelScale()F
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

.method public abstract getPlatformPixelFormat()Ljavafx/scene/image/PixelFormat;
.end method

.method public abstract isWritable()Z
.end method

.method public abstract promoteToWritableImage()Lcom/sun/javafx/tk/PlatformImage;
.end method

.method public abstract setArgb(III)V
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

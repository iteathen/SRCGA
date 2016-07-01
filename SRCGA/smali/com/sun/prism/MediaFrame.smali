.class public interface abstract Lcom/sun/prism/MediaFrame;
.super Ljava/lang/Object;
.source "MediaFrame.java"


# virtual methods
.method public abstract convertToFormat(Lcom/sun/prism/PixelFormat;)Lcom/sun/prism/MediaFrame;
.end method

.method public abstract getBufferForPlane(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract getEncodedHeight()I
.end method

.method public abstract getEncodedWidth()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getPixelFormat()Lcom/sun/prism/PixelFormat;
.end method

.method public abstract getWidth()I
.end method

.method public abstract holdFrame()V
.end method

.method public abstract planeCount()I
.end method

.method public abstract planeStrides()[I
.end method

.method public abstract releaseFrame()V
.end method

.method public abstract strideForPlane(I)I
.end method

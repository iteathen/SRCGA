.class public interface abstract Lcom/sun/media/jfxmedia/control/VideoDataBuffer;
.super Ljava/lang/Object;
.source "VideoDataBuffer.java"


# static fields
.field public static final PACKED_FORMAT_PLANE:I = 0x0

.field public static final YCBCR_PLANE_ALPHA:I = 0x3

.field public static final YCBCR_PLANE_CB:I = 0x2

.field public static final YCBCR_PLANE_CR:I = 0x1

.field public static final YCBCR_PLANE_LUMA:I


# virtual methods
.method public abstract convertToFormat(Lcom/sun/media/jfxmedia/control/VideoFormat;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;
.end method

.method public abstract getBufferForPlane(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract getEncodedHeight()I
.end method

.method public abstract getEncodedWidth()I
.end method

.method public abstract getFormat()Lcom/sun/media/jfxmedia/control/VideoFormat;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getPlaneCount()I
.end method

.method public abstract getPlaneStrides()[I
.end method

.method public abstract getStrideForPlane(I)I
.end method

.method public abstract getTimestamp()D
.end method

.method public abstract getWidth()I
.end method

.method public abstract hasAlpha()Z
.end method

.method public abstract holdFrame()V
.end method

.method public abstract releaseFrame()V
.end method

.method public abstract setDirty()V
.end method

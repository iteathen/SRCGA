.class public interface abstract Lcom/sun/prism/Texture;
.super Ljava/lang/Object;
.source "Texture.java"

# interfaces
.implements Lcom/sun/prism/GraphicsResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/Texture$WrapMode;,
        Lcom/sun/prism/Texture$Usage;
    }
.end annotation


# virtual methods
.method public abstract assertLocked()V
.end method

.method public abstract contentsNotUseful()V
.end method

.method public abstract contentsUseful()V
.end method

.method public abstract getContentHeight()I
.end method

.method public abstract getContentWidth()I
.end method

.method public abstract getContentX()I
.end method

.method public abstract getContentY()I
.end method

.method public abstract getLastImageSerial()I
.end method

.method public abstract getLinearFiltering()Z
.end method

.method public abstract getLockCount()I
.end method

.method public abstract getMaxContentHeight()I
.end method

.method public abstract getMaxContentWidth()I
.end method

.method public abstract getPhysicalHeight()I
.end method

.method public abstract getPhysicalWidth()I
.end method

.method public abstract getPixelFormat()Lcom/sun/prism/PixelFormat;
.end method

.method public abstract getSharedTexture(Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;
.end method

.method public abstract getUseMipmap()Z
.end method

.method public abstract getWrapMode()Lcom/sun/prism/Texture$WrapMode;
.end method

.method public abstract isLocked()Z
.end method

.method public abstract isSurfaceLost()Z
.end method

.method public abstract lock()V
.end method

.method public abstract makePermanent()V
.end method

.method public abstract setContentHeight(I)V
.end method

.method public abstract setContentWidth(I)V
.end method

.method public abstract setLastImageSerial(I)V
.end method

.method public abstract setLinearFiltering(Z)V
.end method

.method public abstract unlock()V
.end method

.method public abstract update(Lcom/sun/prism/Image;)V
.end method

.method public abstract update(Lcom/sun/prism/Image;II)V
.end method

.method public abstract update(Lcom/sun/prism/Image;IIII)V
.end method

.method public abstract update(Lcom/sun/prism/Image;IIIIZ)V
.end method

.method public abstract update(Lcom/sun/prism/MediaFrame;Z)V
.end method

.method public abstract update(Ljava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIZ)V
.end method

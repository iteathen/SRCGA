.class public interface abstract Lcom/sun/prism/RTTexture;
.super Ljava/lang/Object;
.source "RTTexture.java"

# interfaces
.implements Lcom/sun/prism/Texture;
.implements Lcom/sun/prism/RenderTarget;


# virtual methods
.method public abstract getPixels()[I
.end method

.method public abstract isVolatile()Z
.end method

.method public abstract readPixels(Ljava/nio/Buffer;)Z
.end method

.method public abstract readPixels(Ljava/nio/Buffer;IIII)Z
.end method

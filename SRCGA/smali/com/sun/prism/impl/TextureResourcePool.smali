.class public interface abstract Lcom/sun/prism/impl/TextureResourcePool;
.super Ljava/lang/Object;
.source "TextureResourcePool.java"

# interfaces
.implements Lcom/sun/prism/impl/ResourcePool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sun/prism/impl/ResourcePool",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract estimateRTTextureSize(IIZ)J
.end method

.method public abstract estimateTextureSize(IILcom/sun/prism/PixelFormat;)J
.end method

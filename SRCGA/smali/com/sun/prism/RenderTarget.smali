.class public interface abstract Lcom/sun/prism/RenderTarget;
.super Ljava/lang/Object;
.source "RenderTarget.java"

# interfaces
.implements Lcom/sun/prism/Surface;


# virtual methods
.method public abstract createGraphics()Lcom/sun/prism/Graphics;
.end method

.method public abstract getAssociatedScreen()Lcom/sun/glass/ui/Screen;
.end method

.method public abstract isMSAA()Z
.end method

.method public abstract isOpaque()Z
.end method

.method public abstract setOpaque(Z)V
.end method

.class public interface abstract Lcom/sun/prism/ReadbackGraphics;
.super Ljava/lang/Object;
.source "ReadbackGraphics.java"

# interfaces
.implements Lcom/sun/prism/Graphics;


# virtual methods
.method public abstract canReadBack()Z
.end method

.method public abstract readBack(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/prism/RTTexture;
.end method

.method public abstract releaseReadBackBuffer(Lcom/sun/prism/RTTexture;)V
.end method

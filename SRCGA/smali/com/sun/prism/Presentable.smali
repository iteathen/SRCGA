.class public interface abstract Lcom/sun/prism/Presentable;
.super Ljava/lang/Object;
.source "Presentable.java"

# interfaces
.implements Lcom/sun/prism/RenderTarget;


# virtual methods
.method public abstract getPixelScaleFactor()F
.end method

.method public abstract lockResources(Lcom/sun/prism/PresentableState;)Z
.end method

.method public abstract prepare(Lcom/sun/javafx/geom/Rectangle;)Z
.end method

.method public abstract present()Z
.end method

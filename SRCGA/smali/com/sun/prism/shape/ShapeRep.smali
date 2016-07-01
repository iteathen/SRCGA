.class public interface abstract Lcom/sun/prism/shape/ShapeRep;
.super Ljava/lang/Object;
.source "ShapeRep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/shape/ShapeRep$InvalidationType;
    }
.end annotation


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract draw(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/BaseBounds;)V
.end method

.method public abstract fill(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/BaseBounds;)V
.end method

.method public abstract invalidate(Lcom/sun/prism/shape/ShapeRep$InvalidationType;)V
.end method

.method public abstract is3DCapable()Z
.end method

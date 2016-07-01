.class public Lcom/sun/prism/impl/shape/BasicShapeRep;
.super Ljava/lang/Object;
.source "BasicShapeRep.java"

# interfaces
.implements Lcom/sun/prism/shape/ShapeRep;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/BasicShapeRep;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public draw(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/BasicShapeRep;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, p2

    .local v2, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v3, p3

    .local v3, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v4, v1

    move-object v5, v2

    invoke-interface {v4, v5}, Lcom/sun/prism/Graphics;->draw(Lcom/sun/javafx/geom/Shape;)V

    .line 51
    return-void
.end method

.method public fill(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/BasicShapeRep;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, p2

    .local v2, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v3, p3

    .local v3, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v4, v1

    move-object v5, v2

    invoke-interface {v4, v5}, Lcom/sun/prism/Graphics;->fill(Lcom/sun/javafx/geom/Shape;)V

    .line 47
    return-void
.end method

.method public invalidate(Lcom/sun/prism/shape/ShapeRep$InvalidationType;)V
    .locals 0
    .param p1, "type"    # Lcom/sun/prism/shape/ShapeRep$InvalidationType;

    .prologue
    .line 43
    return-void
.end method

.method public is3DCapable()Z
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/BasicShapeRep;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/shape/BasicShapeRep;
    return v0
.end method

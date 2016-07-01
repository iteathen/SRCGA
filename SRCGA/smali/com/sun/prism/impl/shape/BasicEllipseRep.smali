.class public Lcom/sun/prism/impl/shape/BasicEllipseRep;
.super Lcom/sun/prism/impl/shape/BasicShapeRep;
.source "BasicEllipseRep.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/BasicEllipseRep;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/prism/impl/shape/BasicShapeRep;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public draw(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 10

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/BasicEllipseRep;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, p2

    .local v2, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v3, p3

    .local v3, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v5, v2

    check-cast v5, Lcom/sun/javafx/geom/Ellipse2D;

    move-object v4, v5

    .line 47
    .local v4, "e":Lcom/sun/javafx/geom/Ellipse2D;
    move-object v5, v1

    move-object v6, v4

    iget v6, v6, Lcom/sun/javafx/geom/Ellipse2D;->x:F

    move-object v7, v4

    iget v7, v7, Lcom/sun/javafx/geom/Ellipse2D;->y:F

    move-object v8, v4

    iget v8, v8, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    move-object v9, v4

    iget v9, v9, Lcom/sun/javafx/geom/Ellipse2D;->height:F

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/sun/prism/Graphics;->drawEllipse(FFFF)V

    .line 48
    return-void
.end method

.method public fill(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 10

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/BasicEllipseRep;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, p2

    .local v2, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v3, p3

    .local v3, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v5, v2

    check-cast v5, Lcom/sun/javafx/geom/Ellipse2D;

    move-object v4, v5

    .line 41
    .local v4, "e":Lcom/sun/javafx/geom/Ellipse2D;
    move-object v5, v1

    move-object v6, v4

    iget v6, v6, Lcom/sun/javafx/geom/Ellipse2D;->x:F

    move-object v7, v4

    iget v7, v7, Lcom/sun/javafx/geom/Ellipse2D;->y:F

    move-object v8, v4

    iget v8, v8, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    move-object v9, v4

    iget v9, v9, Lcom/sun/javafx/geom/Ellipse2D;->height:F

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/sun/prism/Graphics;->fillEllipse(FFFF)V

    .line 42
    return-void
.end method

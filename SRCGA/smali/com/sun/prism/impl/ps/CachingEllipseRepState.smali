.class Lcom/sun/prism/impl/ps/CachingEllipseRepState;
.super Lcom/sun/prism/impl/ps/CachingShapeRepState;
.source "CachingEllipseRep.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingEllipseRepState;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/prism/impl/ps/CachingShapeRepState;-><init>()V

    return-void
.end method


# virtual methods
.method drawNoCache(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;)V
    .locals 9

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingEllipseRepState;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, p2

    .local v2, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v4, v2

    check-cast v4, Lcom/sun/javafx/geom/Ellipse2D;

    move-object v3, v4

    .line 53
    .local v3, "e":Lcom/sun/javafx/geom/Ellipse2D;
    move-object v4, v1

    move-object v5, v3

    iget v5, v5, Lcom/sun/javafx/geom/Ellipse2D;->x:F

    move-object v6, v3

    iget v6, v6, Lcom/sun/javafx/geom/Ellipse2D;->y:F

    move-object v7, v3

    iget v7, v7, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    move-object v8, v3

    iget v8, v8, Lcom/sun/javafx/geom/Ellipse2D;->height:F

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/sun/prism/Graphics;->drawEllipse(FFFF)V

    .line 54
    return-void
.end method

.method fillNoCache(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;)V
    .locals 9

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingEllipseRepState;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, p2

    .local v2, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v4, v2

    check-cast v4, Lcom/sun/javafx/geom/Ellipse2D;

    move-object v3, v4

    .line 47
    .local v3, "e":Lcom/sun/javafx/geom/Ellipse2D;
    move-object v4, v1

    move-object v5, v3

    iget v5, v5, Lcom/sun/javafx/geom/Ellipse2D;->x:F

    move-object v6, v3

    iget v6, v6, Lcom/sun/javafx/geom/Ellipse2D;->y:F

    move-object v7, v3

    iget v7, v7, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    move-object v8, v3

    iget v8, v8, Lcom/sun/javafx/geom/Ellipse2D;->height:F

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/sun/prism/Graphics;->fillEllipse(FFFF)V

    .line 48
    return-void
.end method

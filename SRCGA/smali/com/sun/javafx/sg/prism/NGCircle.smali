.class public Lcom/sun/javafx/sg/prism/NGCircle;
.super Lcom/sun/javafx/sg/prism/NGShape;
.source "NGCircle.java"


# static fields
.field static final HALF_SQRT_HALF:F = 0.353f


# instance fields
.field private cx:F

.field private cy:F

.field private ellipse:Lcom/sun/javafx/geom/Ellipse2D;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCircle;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGShape;-><init>()V

    .line 48
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/Ellipse2D;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/Ellipse2D;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGCircle;->ellipse:Lcom/sun/javafx/geom/Ellipse2D;

    return-void
.end method


# virtual methods
.method protected computeOpaqueRegion(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/RectBounds;
    .locals 10

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCircle;
    move-object v1, p1

    .local v1, "opaqueRegion":Lcom/sun/javafx/geom/RectBounds;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCircle;->ellipse:Lcom/sun/javafx/geom/Ellipse2D;

    iget v3, v3, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    const v4, 0x3eb4bc6a    # 0.353f

    mul-float/2addr v3, v4

    move v2, v3

    .line 82
    .local v2, "halfSquareLength":F
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/NGCircle;->cx:F

    move v5, v2

    sub-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/sg/prism/NGCircle;->cy:F

    move v6, v2

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/sg/prism/NGCircle;->cx:F

    move v8, v2

    add-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/sg/prism/NGCircle;->cy:F

    move v9, v2

    add-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/RectBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/geom/RectBounds;

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCircle;
    return-object v0
.end method

.method protected createShapeRep(Lcom/sun/prism/Graphics;)Lcom/sun/prism/shape/ShapeRep;
    .locals 3

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCircle;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/prism/ResourceFactory;->createEllipseRep()Lcom/sun/prism/shape/ShapeRep;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCircle;
    return-object v0
.end method

.method public getShape()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCircle;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGCircle;->ellipse:Lcom/sun/javafx/geom/Ellipse2D;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCircle;
    return-object v0
.end method

.method protected hasOpaqueRegion()Z
    .locals 3

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCircle;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/sg/prism/NGShape;->hasOpaqueRegion()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGCircle;->ellipse:Lcom/sun/javafx/geom/Ellipse2D;

    iget v1, v1, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCircle;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGCircle;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected supportsOpaqueRegions()Z
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCircle;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCircle;
    return v0
.end method

.method public updateCircle(FFF)V
    .locals 7

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCircle;
    move v1, p1

    .local v1, "cx":F
    move v2, p2

    .local v2, "cy":F
    move v3, p3

    .local v3, "r":F
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCircle;->ellipse:Lcom/sun/javafx/geom/Ellipse2D;

    move v5, v1

    move v6, v3

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/Ellipse2D;->x:F

    .line 53
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCircle;->ellipse:Lcom/sun/javafx/geom/Ellipse2D;

    move v5, v2

    move v6, v3

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/Ellipse2D;->y:F

    .line 54
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCircle;->ellipse:Lcom/sun/javafx/geom/Ellipse2D;

    move v5, v3

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    .line 55
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCircle;->ellipse:Lcom/sun/javafx/geom/Ellipse2D;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGCircle;->ellipse:Lcom/sun/javafx/geom/Ellipse2D;

    iget v5, v5, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    iput v5, v4, Lcom/sun/javafx/geom/Ellipse2D;->height:F

    .line 56
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/sun/javafx/sg/prism/NGCircle;->cx:F

    .line 57
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/javafx/sg/prism/NGCircle;->cy:F

    .line 58
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGCircle;->geometryChanged()V

    .line 59
    return-void
.end method

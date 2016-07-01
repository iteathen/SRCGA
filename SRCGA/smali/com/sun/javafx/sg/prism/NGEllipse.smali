.class public Lcom/sun/javafx/sg/prism/NGEllipse;
.super Lcom/sun/javafx/sg/prism/NGShape;
.source "NGEllipse.java"


# instance fields
.field private cx:F

.field private cy:F

.field private ellipse:Lcom/sun/javafx/geom/Ellipse2D;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGEllipse;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGShape;-><init>()V

    .line 38
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/Ellipse2D;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/Ellipse2D;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGEllipse;->ellipse:Lcom/sun/javafx/geom/Ellipse2D;

    return-void
.end method


# virtual methods
.method protected computeOpaqueRegion(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/RectBounds;
    .locals 11

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGEllipse;
    move-object v1, p1

    .local v1, "opaqueRegion":Lcom/sun/javafx/geom/RectBounds;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGEllipse;->ellipse:Lcom/sun/javafx/geom/Ellipse2D;

    iget v4, v4, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    const v5, 0x3eb4bc6a    # 0.353f

    mul-float/2addr v4, v5

    move v2, v4

    .line 80
    .local v2, "halfWidth":F
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGEllipse;->ellipse:Lcom/sun/javafx/geom/Ellipse2D;

    iget v4, v4, Lcom/sun/javafx/geom/Ellipse2D;->height:F

    const v5, 0x3eb4bc6a    # 0.353f

    mul-float/2addr v4, v5

    move v3, v4

    .line 81
    .local v3, "halfHeight":F
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/sg/prism/NGEllipse;->cx:F

    move v6, v2

    sub-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/sg/prism/NGEllipse;->cy:F

    move v7, v3

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/sg/prism/NGEllipse;->cx:F

    move v9, v2

    add-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/sg/prism/NGEllipse;->cy:F

    move v10, v3

    add-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/sun/javafx/geom/RectBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/geom/RectBounds;

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGEllipse;
    return-object v0
.end method

.method protected createShapeRep(Lcom/sun/prism/Graphics;)Lcom/sun/prism/shape/ShapeRep;
    .locals 3

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGEllipse;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/prism/ResourceFactory;->createEllipseRep()Lcom/sun/prism/shape/ShapeRep;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGEllipse;
    return-object v0
.end method

.method public final getShape()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGEllipse;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGEllipse;->ellipse:Lcom/sun/javafx/geom/Ellipse2D;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGEllipse;
    return-object v0
.end method

.method protected hasOpaqueRegion()Z
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGEllipse;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/sg/prism/NGShape;->hasOpaqueRegion()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGEllipse;->ellipse:Lcom/sun/javafx/geom/Ellipse2D;

    iget v1, v1, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGEllipse;->ellipse:Lcom/sun/javafx/geom/Ellipse2D;

    iget v1, v1, Lcom/sun/javafx/geom/Ellipse2D;->height:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGEllipse;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGEllipse;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected supportsOpaqueRegions()Z
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGEllipse;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGEllipse;
    return v0
.end method

.method public updateEllipse(FFFF)V
    .locals 8

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGEllipse;
    move v1, p1

    .local v1, "cx":F
    move v2, p2

    .local v2, "cy":F
    move v3, p3

    .local v3, "rx":F
    move v4, p4

    .local v4, "ry":F
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGEllipse;->ellipse:Lcom/sun/javafx/geom/Ellipse2D;

    move v6, v1

    move v7, v3

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/sun/javafx/geom/Ellipse2D;->x:F

    .line 43
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGEllipse;->ellipse:Lcom/sun/javafx/geom/Ellipse2D;

    move v6, v3

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    iput v6, v5, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    .line 44
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGEllipse;->ellipse:Lcom/sun/javafx/geom/Ellipse2D;

    move v6, v2

    move v7, v4

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/sun/javafx/geom/Ellipse2D;->y:F

    .line 45
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGEllipse;->ellipse:Lcom/sun/javafx/geom/Ellipse2D;

    move v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    iput v6, v5, Lcom/sun/javafx/geom/Ellipse2D;->height:F

    .line 46
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/sun/javafx/sg/prism/NGEllipse;->cx:F

    .line 47
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/javafx/sg/prism/NGEllipse;->cy:F

    .line 48
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/sg/prism/NGEllipse;->geometryChanged()V

    .line 49
    return-void
.end method

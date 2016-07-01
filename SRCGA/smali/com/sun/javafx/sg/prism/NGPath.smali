.class public Lcom/sun/javafx/sg/prism/NGPath;
.super Lcom/sun/javafx/sg/prism/NGShape;
.source "NGPath.java"


# instance fields
.field private p:Lcom/sun/javafx/geom/Path2D;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPath;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGShape;-><init>()V

    .line 39
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/Path2D;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/Path2D;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGPath;->p:Lcom/sun/javafx/geom/Path2D;

    return-void
.end method

.method private toWindingRule(Ljavafx/scene/shape/FillRule;)I
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPath;
    move-object v1, p1

    .local v1, "rule":Ljavafx/scene/shape/FillRule;
    move-object v2, v1

    sget-object v3, Ljavafx/scene/shape/FillRule;->NON_ZERO:Ljavafx/scene/shape/FillRule;

    if-ne v2, v3, :cond_0

    .line 51
    const/4 v2, 0x1

    move v0, v2

    .line 53
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGPath;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGPath;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public acceptsPath2dOnUpdate()Z
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPath;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGPath;
    return v0
.end method

.method public addArcTo(FFFFFFF)V
    .locals 24

    .prologue
    .line 95
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/sg/prism/NGPath;
    move/from16 v4, p1

    .local v4, "arcX":F
    move/from16 v5, p2

    .local v5, "arcY":F
    move/from16 v6, p3

    .local v6, "arcW":F
    move/from16 v7, p4

    .local v7, "arcH":F
    move/from16 v8, p5

    .local v8, "arcStart":F
    move/from16 v9, p6

    .local v9, "arcExtent":F
    move/from16 v10, p7

    .local v10, "xAxisRotation":F
    new-instance v14, Lcom/sun/javafx/geom/Arc2D;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    const/16 v22, 0x0

    invoke-direct/range {v15 .. v22}, Lcom/sun/javafx/geom/Arc2D;-><init>(FFFFFFI)V

    move-object v11, v14

    .line 96
    .local v11, "arc":Lcom/sun/javafx/geom/Arc2D;
    move v14, v10

    float-to-double v14, v14

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_0

    const/4 v14, 0x0

    .line 97
    :goto_0
    move-object v12, v14

    .line 99
    .local v12, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v14, v11

    move-object v15, v12

    invoke-virtual {v14, v15}, Lcom/sun/javafx/geom/Arc2D;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v14

    move-object v13, v14

    .line 103
    .local v13, "pi":Lcom/sun/javafx/geom/PathIterator;
    move-object v14, v13

    invoke-interface {v14}, Lcom/sun/javafx/geom/PathIterator;->next()V

    .line 104
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/sg/prism/NGPath;->p:Lcom/sun/javafx/geom/Path2D;

    move-object v15, v13

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/geom/Path2D;->append(Lcom/sun/javafx/geom/PathIterator;Z)V

    .line 105
    return-void

    .line 96
    .end local v12    # "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v13    # "pi":Lcom/sun/javafx/geom/PathIterator;
    :cond_0
    move v14, v10

    float-to-double v14, v14

    move-object/from16 v16, v11

    .line 98
    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/Arc2D;->getCenterX()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/Arc2D;->getCenterY()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    .line 97
    invoke-static/range {v14 .. v19}, Lcom/sun/javafx/geom/transform/BaseTransform;->getRotateInstance(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v14

    goto :goto_0
.end method

.method public addClosePath()V
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPath;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGPath;->p:Lcom/sun/javafx/geom/Path2D;

    invoke-virtual {v1}, Lcom/sun/javafx/geom/Path2D;->closePath()V

    .line 71
    return-void
.end method

.method public addCubicTo(FFFFFF)V
    .locals 14

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPath;
    move v1, p1

    .local v1, "ctrlx1":F
    move/from16 v2, p2

    .local v2, "ctrly1":F
    move/from16 v3, p3

    .local v3, "ctrlx2":F
    move/from16 v4, p4

    .local v4, "ctrly2":F
    move/from16 v5, p5

    .local v5, "x":F
    move/from16 v6, p6

    .local v6, "y":F
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGPath;->p:Lcom/sun/javafx/geom/Path2D;

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/geom/Path2D;->curveTo(FFFFFF)V

    .line 90
    return-void
.end method

.method public addLineTo(FF)V
    .locals 6

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPath;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGPath;->p:Lcom/sun/javafx/geom/Path2D;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 79
    return-void
.end method

.method public addMoveTo(FF)V
    .locals 6

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPath;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGPath;->p:Lcom/sun/javafx/geom/Path2D;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Path2D;->moveTo(FF)V

    .line 75
    return-void
.end method

.method public addQuadTo(FFFF)V
    .locals 10

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPath;
    move v1, p1

    .local v1, "ctrlx":F
    move v2, p2

    .local v2, "ctrly":F
    move v3, p3

    .local v3, "x":F
    move v4, p4

    .local v4, "y":F
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPath;->p:Lcom/sun/javafx/geom/Path2D;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Path2D;->quadTo(FFFF)V

    .line 83
    return-void
.end method

.method public getCurrentX()F
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPath;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGPath;->p:Lcom/sun/javafx/geom/Path2D;

    invoke-virtual {v1}, Lcom/sun/javafx/geom/Path2D;->getCurrentPoint()Lcom/sun/javafx/geom/Point2D;

    move-result-object v1

    iget v1, v1, Lcom/sun/javafx/geom/Point2D;->x:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGPath;
    return v0
.end method

.method public getCurrentY()F
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPath;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGPath;->p:Lcom/sun/javafx/geom/Path2D;

    invoke-virtual {v1}, Lcom/sun/javafx/geom/Path2D;->getCurrentPoint()Lcom/sun/javafx/geom/Point2D;

    move-result-object v1

    iget v1, v1, Lcom/sun/javafx/geom/Point2D;->y:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGPath;
    return v0
.end method

.method public getGeometry()Lcom/sun/javafx/geom/Path2D;
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPath;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGPath;->p:Lcom/sun/javafx/geom/Path2D;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGPath;
    return-object v0
.end method

.method public getShape()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPath;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGPath;->p:Lcom/sun/javafx/geom/Path2D;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGPath;
    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPath;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGPath;->p:Lcom/sun/javafx/geom/Path2D;

    invoke-virtual {v1}, Lcom/sun/javafx/geom/Path2D;->reset()V

    .line 43
    return-void
.end method

.method public setFillRule(Ljavafx/scene/shape/FillRule;)V
    .locals 5

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPath;
    move-object v1, p1

    .local v1, "fillRule":Ljavafx/scene/shape/FillRule;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGPath;->p:Lcom/sun/javafx/geom/Path2D;

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/sg/prism/NGPath;->toWindingRule(Ljavafx/scene/shape/FillRule;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/Path2D;->setWindingRule(I)V

    .line 59
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPath;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGPath;->geometryChanged()V

    .line 47
    return-void
.end method

.method public updateWithPath2d(Lcom/sun/javafx/geom/Path2D;)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPath;
    move-object v1, p1

    .local v1, "path":Lcom/sun/javafx/geom/Path2D;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGPath;->p:Lcom/sun/javafx/geom/Path2D;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/Path2D;->setTo(Lcom/sun/javafx/geom/Path2D;)V

    .line 122
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGPath;->geometryChanged()V

    .line 123
    return-void
.end method

.class public Lcom/sun/scenario/effect/impl/prism/PrFloodPeer;
.super Lcom/sun/scenario/effect/impl/EffectPeer;
.source "PrFloodPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrFloodPeer;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "r":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v3, p3

    .local v3, "uniqueName":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/EffectPeer;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 27

    .prologue
    .line 54
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/impl/prism/PrFloodPeer;
    move-object/from16 v2, p1

    .local v2, "effect":Lcom/sun/scenario/effect/Effect;
    move-object/from16 v3, p2

    .local v3, "rstate":Lcom/sun/scenario/effect/impl/state/RenderState;
    move-object/from16 v4, p3

    .local v4, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v5, p4

    .local v5, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v6, p5

    .local v6, "inputs":[Lcom/sun/scenario/effect/ImageData;
    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Lcom/sun/scenario/effect/impl/prism/PrFloodPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v20

    move-object/from16 v7, v20

    .line 55
    .local v7, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object/from16 v20, v2

    check-cast v20, Lcom/sun/scenario/effect/Flood;

    move-object/from16 v8, v20

    .line 56
    .local v8, "flood":Lcom/sun/scenario/effect/Flood;
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lcom/sun/scenario/effect/Flood;->getFloodBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v20

    move-object/from16 v9, v20

    .line 57
    .local v9, "floodBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v10, v20

    .line 58
    .local v10, "fx":I
    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v11, v20

    .line 59
    .local v11, "fy":I
    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getWidth()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v12, v20

    .line 60
    .local v12, "fw":I
    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v13, v20

    .line 62
    .local v13, "fh":I
    move-object/from16 v20, v4

    move-object/from16 v21, v9

    invoke-static/range {v20 .. v21}, Lcom/sun/scenario/effect/Effect;->transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v20

    move-object/from16 v14, v20

    .line 63
    .local v14, "fullBounds":Lcom/sun/javafx/geom/BaseBounds;
    new-instance v20, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    move-object/from16 v22, v14

    invoke-direct/range {v21 .. v22}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/BaseBounds;)V

    move-object/from16 v15, v20

    .line 64
    .local v15, "tmp":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v20, v15

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/geom/Rectangle;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 65
    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v20, v0

    move/from16 v16, v20

    .line 66
    .local v16, "w":I
    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v20, v0

    move/from16 v17, v20

    .line 67
    .local v17, "h":I
    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Lcom/sun/scenario/effect/impl/prism/PrFloodPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v20

    move/from16 v21, v16

    move/from16 v22, v17

    invoke-virtual/range {v20 .. v22}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v20

    check-cast v20, Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    move-object/from16 v18, v20

    .line 68
    .local v18, "dst":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object/from16 v20, v18

    if-eqz v20, :cond_1

    .line 69
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v20

    move-object/from16 v19, v20

    .line 70
    .local v19, "gdst":Lcom/sun/prism/Graphics;
    move-object/from16 v20, v19

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v22, v15

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Lcom/sun/prism/Graphics;->translate(FF)V

    .line 71
    move-object/from16 v20, v4

    if-eqz v20, :cond_0

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v20

    if-nez v20, :cond_0

    .line 72
    move-object/from16 v20, v19

    move-object/from16 v21, v4

    invoke-interface/range {v20 .. v21}, Lcom/sun/prism/Graphics;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 74
    :cond_0
    move-object/from16 v20, v19

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Lcom/sun/scenario/effect/Flood;->getPaint()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sun/prism/paint/Paint;

    invoke-interface/range {v20 .. v21}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 75
    move-object/from16 v20, v19

    move/from16 v21, v10

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v11

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v10

    move/from16 v24, v12

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v24, v11

    move/from16 v25, v13

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/sun/prism/Graphics;->fillQuad(FFFF)V

    .line 78
    .end local v19    # "gdst":Lcom/sun/prism/Graphics;
    :cond_1
    new-instance v20, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    move-object/from16 v22, v7

    move-object/from16 v23, v18

    move-object/from16 v24, v15

    invoke-direct/range {v21 .. v24}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v1, v20

    .end local v1    # "this":Lcom/sun/scenario/effect/impl/prism/PrFloodPeer;
    return-object v1
.end method

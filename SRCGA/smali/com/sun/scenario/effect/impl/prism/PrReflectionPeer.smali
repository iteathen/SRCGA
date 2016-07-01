.class public Lcom/sun/scenario/effect/impl/prism/PrReflectionPeer;
.super Lcom/sun/scenario/effect/impl/EffectPeer;
.source "PrReflectionPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrReflectionPeer;
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

    .line 44
    return-void
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 41

    .prologue
    .line 53
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/prism/PrReflectionPeer;
    move-object/from16 v3, p1

    .local v3, "effect":Lcom/sun/scenario/effect/Effect;
    move-object/from16 v4, p2

    .local v4, "rstate":Lcom/sun/scenario/effect/impl/state/RenderState;
    move-object/from16 v5, p3

    .local v5, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v6, p4

    .local v6, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v7, p5

    .local v7, "inputs":[Lcom/sun/scenario/effect/ImageData;
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/sun/scenario/effect/impl/prism/PrReflectionPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v28

    move-object/from16 v8, v28

    .line 54
    .local v8, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object/from16 v28, v3

    check-cast v28, Lcom/sun/scenario/effect/Reflection;

    move-object/from16 v9, v28

    .line 56
    .local v9, "reflect":Lcom/sun/scenario/effect/Reflection;
    move-object/from16 v28, v7

    const/16 v29, 0x0

    aget-object v28, v28, v29

    invoke-virtual/range {v28 .. v28}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v28

    move-object/from16 v10, v28

    .line 57
    .local v10, "inputbounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v28, v10

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v28, v0

    move/from16 v11, v28

    .line 58
    .local v11, "srcW":I
    move-object/from16 v28, v10

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v28, v0

    move/from16 v12, v28

    .line 59
    .local v12, "srcH":I
    move/from16 v28, v12

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v29, v9

    invoke-virtual/range {v29 .. v29}, Lcom/sun/scenario/effect/Reflection;->getTopOffset()F

    move-result v29

    add-float v28, v28, v29

    move/from16 v13, v28

    .line 60
    .local v13, "refY":F
    move-object/from16 v28, v9

    invoke-virtual/range {v28 .. v28}, Lcom/sun/scenario/effect/Reflection;->getFraction()F

    move-result v28

    move/from16 v29, v12

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v14, v28

    .line 61
    .local v14, "refH":F
    move/from16 v28, v13

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    move/from16 v15, v28

    .line 62
    .local v15, "irefY1":I
    move/from16 v28, v13

    move/from16 v29, v14

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    move/from16 v16, v28

    .line 63
    .local v16, "irefY2":I
    move/from16 v28, v16

    move/from16 v29, v15

    sub-int v28, v28, v29

    move/from16 v17, v28

    .line 65
    .local v17, "irefH":I
    move/from16 v28, v16

    move/from16 v29, v12

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_1

    move/from16 v28, v16

    :goto_0
    move/from16 v18, v28

    .line 67
    .local v18, "dstH":I
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/sun/scenario/effect/impl/prism/PrReflectionPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v28

    move/from16 v29, v11

    move/from16 v30, v18

    invoke-virtual/range {v28 .. v30}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v28

    check-cast v28, Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    move-object/from16 v19, v28

    .line 68
    .local v19, "dst":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object/from16 v28, v7

    const/16 v29, 0x0

    aget-object v28, v28, v29

    move-object/from16 v29, v8

    invoke-virtual/range {v28 .. v29}, Lcom/sun/scenario/effect/ImageData;->validate(Lcom/sun/scenario/effect/FilterContext;)Z

    move-result v28

    if-eqz v28, :cond_0

    move-object/from16 v28, v19

    if-nez v28, :cond_2

    .line 69
    :cond_0
    new-instance v28, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v40, v28

    move-object/from16 v28, v40

    move-object/from16 v29, v40

    move-object/from16 v30, v8

    const/16 v31, 0x0

    move-object/from16 v32, v10

    invoke-direct/range {v29 .. v32}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v28

    .line 89
    .end local v2    # "this":Lcom/sun/scenario/effect/impl/prism/PrReflectionPeer;
    :goto_1
    return-object v2

    .line 65
    .end local v18    # "dstH":I
    .end local v19    # "dst":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    .restart local v2    # "this":Lcom/sun/scenario/effect/impl/prism/PrReflectionPeer;
    :cond_1
    move/from16 v28, v12

    goto :goto_0

    .line 71
    .restart local v18    # "dstH":I
    .restart local v19    # "dst":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    :cond_2
    move-object/from16 v28, v7

    const/16 v29, 0x0

    aget-object v28, v28, v29

    invoke-virtual/range {v28 .. v28}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v28

    check-cast v28, Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    move-object/from16 v20, v28

    .line 72
    .local v20, "src":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object/from16 v28, v20

    invoke-virtual/range {v28 .. v28}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v28

    move-object/from16 v21, v28

    .line 74
    .local v21, "srctex":Lcom/sun/prism/Texture;
    move-object/from16 v28, v19

    invoke-virtual/range {v28 .. v28}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v28

    move-object/from16 v22, v28

    .line 75
    .local v22, "gdst":Lcom/sun/prism/Graphics;
    move-object/from16 v28, v22

    move-object/from16 v29, v7

    const/16 v30, 0x0

    aget-object v29, v29, v30

    invoke-virtual/range {v29 .. v29}, Lcom/sun/scenario/effect/ImageData;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lcom/sun/prism/Graphics;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 76
    const/16 v28, 0x0

    move/from16 v23, v28

    .line 77
    .local v23, "sx1":F
    move/from16 v28, v12

    move/from16 v29, v17

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v24, v28

    .line 78
    .local v24, "sy1":F
    move/from16 v28, v11

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v25, v28

    .line 79
    .local v25, "sx2":F
    move/from16 v28, v12

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v26, v28

    .line 80
    .local v26, "sy2":F
    move-object/from16 v28, v22

    move-object/from16 v29, v21

    move-object/from16 v30, v9

    .line 81
    invoke-virtual/range {v30 .. v30}, Lcom/sun/scenario/effect/Reflection;->getBottomOpacity()F

    move-result v30

    move-object/from16 v31, v9

    .line 82
    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/Reflection;->getTopOpacity()F

    move-result v31

    const/16 v32, 0x0

    move/from16 v33, v16

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v34, v11

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v35, v15

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v36, v23

    move/from16 v37, v24

    move/from16 v38, v25

    move/from16 v39, v26

    .line 80
    invoke-interface/range {v28 .. v39}, Lcom/sun/prism/Graphics;->drawTextureVO(Lcom/sun/prism/Texture;FFFFFFFFFF)V

    .line 85
    move-object/from16 v28, v22

    move-object/from16 v29, v21

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v32, v11

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v33, v12

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    invoke-interface/range {v28 .. v33}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFF)V

    .line 87
    new-instance v28, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v40, v28

    move-object/from16 v28, v40

    move-object/from16 v29, v40

    move-object/from16 v30, v10

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v30, v0

    move-object/from16 v31, v10

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v31, v0

    move/from16 v32, v11

    move/from16 v33, v18

    invoke-direct/range {v29 .. v33}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v27, v28

    .line 89
    .local v27, "newbounds":Lcom/sun/javafx/geom/Rectangle;
    new-instance v28, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v40, v28

    move-object/from16 v28, v40

    move-object/from16 v29, v40

    move-object/from16 v30, v8

    move-object/from16 v31, v19

    move-object/from16 v32, v27

    invoke-direct/range {v29 .. v32}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v28

    goto/16 :goto_1
.end method

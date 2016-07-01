.class public Lcom/sun/scenario/effect/impl/prism/PrMergePeer;
.super Lcom/sun/scenario/effect/impl/EffectPeer;
.source "PrMergePeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrMergePeer;
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

    .line 43
    return-void
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 23

    .prologue
    .line 52
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/prism/PrMergePeer;
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
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/scenario/effect/impl/prism/PrMergePeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v17

    move-object/from16 v8, v17

    .line 53
    .local v8, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object/from16 v17, v3

    check-cast v17, Lcom/sun/scenario/effect/Merge;

    move-object/from16 v9, v17

    .line 55
    .local v9, "merge":Lcom/sun/scenario/effect/Merge;
    move-object/from16 v17, v9

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-virtual/range {v17 .. v20}, Lcom/sun/scenario/effect/Merge;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v17

    move-object/from16 v10, v17

    .line 56
    .local v10, "unionbounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/scenario/effect/impl/prism/PrMergePeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v17

    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v18, v0

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v19, v0

    .line 57
    invoke-virtual/range {v17 .. v19}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v17

    check-cast v17, Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    move-object/from16 v11, v17

    .line 58
    .local v11, "dst":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object/from16 v17, v11

    if-nez v17, :cond_0

    .line 59
    new-instance v17, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v8

    const/16 v20, 0x0

    move-object/from16 v21, v10

    invoke-direct/range {v18 .. v21}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v17

    .line 67
    .end local v2    # "this":Lcom/sun/scenario/effect/impl/prism/PrMergePeer;
    :goto_0
    return-object v2

    .line 62
    .restart local v2    # "this":Lcom/sun/scenario/effect/impl/prism/PrMergePeer;
    :cond_0
    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v17

    move-object/from16 v12, v17

    .line 63
    .local v12, "gdst":Lcom/sun/prism/Graphics;
    move-object/from16 v17, v7

    move-object/from16 v13, v17

    move-object/from16 v17, v13

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v14, v17

    const/16 v17, 0x0

    move/from16 v15, v17

    :goto_1
    move/from16 v17, v15

    move/from16 v18, v14

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    move-object/from16 v17, v13

    move/from16 v18, v15

    aget-object v17, v17, v18

    move-object/from16 v16, v17

    .line 64
    .local v16, "input":Lcom/sun/scenario/effect/ImageData;
    move-object/from16 v17, v12

    move-object/from16 v18, v16

    move-object/from16 v19, v10

    invoke-static/range {v17 .. v19}, Lcom/sun/scenario/effect/impl/prism/PrEffectHelper;->renderImageData(Lcom/sun/prism/Graphics;Lcom/sun/scenario/effect/ImageData;Lcom/sun/javafx/geom/Rectangle;)V

    .line 63
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 67
    .end local v16    # "input":Lcom/sun/scenario/effect/ImageData;
    :cond_1
    new-instance v17, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v8

    move-object/from16 v20, v11

    move-object/from16 v21, v10

    invoke-direct/range {v18 .. v21}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v17

    goto :goto_0
.end method

.class public Lcom/sun/scenario/effect/impl/prism/PrCropPeer;
.super Lcom/sun/scenario/effect/impl/EffectPeer;
.source "PrCropPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrCropPeer;
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

    .line 42
    return-void
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 20

    .prologue
    .line 51
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrCropPeer;
    move-object/from16 v1, p1

    .local v1, "effect":Lcom/sun/scenario/effect/Effect;
    move-object/from16 v2, p2

    .local v2, "rstate":Lcom/sun/scenario/effect/impl/state/RenderState;
    move-object/from16 v3, p3

    .local v3, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v4, p4

    .local v4, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v5, p5

    .local v5, "inputs":[Lcom/sun/scenario/effect/ImageData;
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/scenario/effect/impl/prism/PrCropPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v14

    move-object v6, v14

    .line 52
    .local v6, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v14, v5

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object v7, v14

    .line 53
    .local v7, "srcData":Lcom/sun/scenario/effect/ImageData;
    move-object v14, v7

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v14

    move-object v8, v14

    .line 54
    .local v8, "srcBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v14, v4

    move-object v15, v8

    invoke-virtual {v14, v15}, Lcom/sun/javafx/geom/Rectangle;->contains(Lcom/sun/javafx/geom/Rectangle;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 55
    move-object v14, v7

    invoke-virtual {v14}, Lcom/sun/scenario/effect/ImageData;->addref()Z

    move-result v14

    .line 56
    move-object v14, v7

    move-object v0, v14

    .line 72
    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrCropPeer;
    :goto_0
    return-object v0

    .line 59
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrCropPeer;
    :cond_0
    new-instance v14, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v8

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v9, v14

    .line 60
    .local v9, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v14, v9

    move-object v15, v4

    invoke-virtual {v14, v15}, Lcom/sun/javafx/geom/Rectangle;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 61
    move-object v14, v9

    iget v14, v14, Lcom/sun/javafx/geom/Rectangle;->width:I

    move v10, v14

    .line 62
    .local v10, "w":I
    move-object v14, v9

    iget v14, v14, Lcom/sun/javafx/geom/Rectangle;->height:I

    move v11, v14

    .line 63
    .local v11, "h":I
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/scenario/effect/impl/prism/PrCropPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v14

    move v15, v10

    move/from16 v16, v11

    invoke-virtual/range {v14 .. v16}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v14

    check-cast v14, Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    move-object v12, v14

    .line 65
    .local v12, "dst":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object v14, v7

    move-object v15, v6

    invoke-virtual {v14, v15}, Lcom/sun/scenario/effect/ImageData;->validate(Lcom/sun/scenario/effect/FilterContext;)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object v14, v12

    if-nez v14, :cond_2

    .line 66
    :cond_1
    const/4 v14, 0x0

    move-object v12, v14

    .line 72
    :goto_1
    new-instance v14, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v6

    move-object/from16 v17, v12

    move-object/from16 v18, v9

    invoke-direct/range {v15 .. v18}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v0, v14

    goto :goto_0

    .line 68
    :cond_2
    move-object v14, v12

    invoke-virtual {v14}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v14

    move-object v13, v14

    .line 69
    .local v13, "gdst":Lcom/sun/prism/Graphics;
    move-object v14, v13

    move-object v15, v7

    move-object/from16 v16, v9

    invoke-static/range {v14 .. v16}, Lcom/sun/scenario/effect/impl/prism/PrEffectHelper;->renderImageData(Lcom/sun/prism/Graphics;Lcom/sun/scenario/effect/ImageData;Lcom/sun/javafx/geom/Rectangle;)V

    goto :goto_1
.end method

.class public abstract Lcom/sun/scenario/effect/LinearConvolveCoreEffect;
.super Lcom/sun/scenario/effect/CoreEffect;
.source "LinearConvolveCoreEffect.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/scenario/effect/CoreEffect",
        "<",
        "Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/Effect;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/LinearConvolveCoreEffect;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/scenario/effect/CoreEffect;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 46
    return-void
.end method


# virtual methods
.method public varargs filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 27

    .prologue
    .line 69
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/LinearConvolveCoreEffect;
    move-object/from16 v3, p1

    .local v3, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object/from16 v4, p2

    .local v4, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v5, p3

    .local v5, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v6, p4

    .local v6, "lcrstate":Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;
    move-object/from16 v7, p5

    .local v7, "inputs":[Lcom/sun/scenario/effect/ImageData;
    move-object/from16 v17, v7

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v8, v17

    .line 70
    .local v8, "src":Lcom/sun/scenario/effect/ImageData;
    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Lcom/sun/scenario/effect/ImageData;->addref()Z

    move-result v17

    .line 71
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->isNop()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 72
    move-object/from16 v17, v8

    move-object/from16 v2, v17

    .line 95
    .end local v2    # "this":Lcom/sun/scenario/effect/LinearConvolveCoreEffect;
    :goto_0
    return-object v2

    .line 74
    .restart local v2    # "this":Lcom/sun/scenario/effect/LinearConvolveCoreEffect;
    :cond_0
    move-object/from16 v17, v7

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v17

    move-object/from16 v9, v17

    .line 75
    .local v9, "approxBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v17, v9

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v17, v0

    move/from16 v10, v17

    .line 76
    .local v10, "approxW":I
    move-object/from16 v17, v9

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v17, v0

    move/from16 v11, v17

    .line 77
    .local v11, "approxH":I
    move-object/from16 v17, v5

    move-object/from16 v12, v17

    .line 79
    .local v12, "filterClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v17, v3

    move-object/from16 v18, v2

    move/from16 v19, v10

    move/from16 v20, v11

    invoke-static/range {v17 .. v20}, Lcom/sun/scenario/effect/impl/Renderer;->getRenderer(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Effect;II)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v17

    move-object/from16 v13, v17

    .line 80
    .local v13, "r":Lcom/sun/scenario/effect/impl/Renderer;
    const/16 v17, 0x0

    move/from16 v14, v17

    .local v14, "pass":I
    :goto_1
    move/from16 v17, v14

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 81
    move-object/from16 v17, v6

    move-object/from16 v18, v8

    move/from16 v19, v14

    invoke-virtual/range {v17 .. v19}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->validatePassInput(Lcom/sun/scenario/effect/ImageData;I)Lcom/sun/scenario/effect/ImageData;

    move-result-object v17

    move-object/from16 v8, v17

    .line 82
    move-object/from16 v17, v6

    move-object/from16 v18, v13

    move-object/from16 v19, v3

    invoke-virtual/range {v17 .. v19}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPassPeer(Lcom/sun/scenario/effect/impl/Renderer;Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/EffectPeer;

    move-result-object v17

    move-object/from16 v15, v17

    .line 83
    .local v15, "peer":Lcom/sun/scenario/effect/impl/EffectPeer;
    move-object/from16 v17, v15

    if-eqz v17, :cond_1

    .line 84
    move-object/from16 v17, v15

    move/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Lcom/sun/scenario/effect/impl/EffectPeer;->setPass(I)V

    .line 85
    move-object/from16 v17, v15

    move-object/from16 v18, v2

    move-object/from16 v19, v6

    move-object/from16 v20, v4

    move-object/from16 v21, v12

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v22, v0

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    const/16 v24, 0x0

    move-object/from16 v25, v8

    aput-object v25, v23, v24

    invoke-virtual/range {v17 .. v22}, Lcom/sun/scenario/effect/impl/EffectPeer;->filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v17

    move-object/from16 v16, v17

    .line 86
    .local v16, "res":Lcom/sun/scenario/effect/ImageData;
    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 87
    move-object/from16 v17, v16

    move-object/from16 v8, v17

    .line 88
    move-object/from16 v17, v8

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Lcom/sun/scenario/effect/ImageData;->validate(Lcom/sun/scenario/effect/FilterContext;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 89
    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 90
    move-object/from16 v17, v8

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 80
    .end local v16    # "res":Lcom/sun/scenario/effect/ImageData;
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 95
    .end local v15    # "peer":Lcom/sun/scenario/effect/impl/EffectPeer;
    :cond_2
    move-object/from16 v17, v8

    move-object/from16 v2, v17

    goto/16 :goto_0
.end method

.method public bridge synthetic filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 12

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/LinearConvolveCoreEffect;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    check-cast v10, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/sun/scenario/effect/LinearConvolveCoreEffect;->filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/LinearConvolveCoreEffect;
    return-object v0
.end method

.method public bridge synthetic getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/LinearConvolveCoreEffect;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/scenario/effect/CoreEffect;->getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/LinearConvolveCoreEffect;
    return-object v0
.end method

.method public final getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;
    .locals 8

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/LinearConvolveCoreEffect;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, p3

    .local v3, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v4, p4

    .local v4, "renderHelper":Ljava/lang/Object;
    move-object v5, p5

    .local v5, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/scenario/effect/LinearConvolveCoreEffect;->getState()Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;->getRenderState(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/LinearConvolveCoreEffect;
    return-object v0
.end method

.method public bridge synthetic getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/RenderState;
    .locals 12

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/LinearConvolveCoreEffect;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/sun/scenario/effect/LinearConvolveCoreEffect;->getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/LinearConvolveCoreEffect;
    return-object v0
.end method

.method abstract getState()Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;
.end method

.method bridge synthetic getState()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/LinearConvolveCoreEffect;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/LinearConvolveCoreEffect;->getState()Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/LinearConvolveCoreEffect;
    return-object v0
.end method

.class public Lcom/sun/scenario/effect/impl/sw/java/JSWBoxShadowPeer;
.super Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;
.source "JSWBoxShadowPeer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer",
        "<",
        "Lcom/sun/scenario/effect/impl/state/BoxRenderState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBoxShadowPeer;
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

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/BoxRenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 43

    .prologue
    .line 56
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBoxShadowPeer;
    move-object/from16 v3, p1

    .local v3, "effect":Lcom/sun/scenario/effect/Effect;
    move-object/from16 v4, p2

    .local v4, "brstate":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move-object/from16 v5, p3

    .local v5, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v6, p4

    .local v6, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v7, p5

    .local v7, "inputs":[Lcom/sun/scenario/effect/ImageData;
    move-object/from16 v31, v2

    move-object/from16 v32, v4

    invoke-virtual/range {v31 .. v32}, Lcom/sun/scenario/effect/impl/sw/java/JSWBoxShadowPeer;->setRenderState(Lcom/sun/scenario/effect/impl/state/RenderState;)V

    .line 60
    move-object/from16 v31, v2

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/sw/java/JSWBoxShadowPeer;->getPass()I

    move-result v31

    if-nez v31, :cond_3

    const/16 v31, 0x1

    :goto_0
    move/from16 v8, v31

    .line 61
    .local v8, "horizontal":Z
    move/from16 v31, v8

    if-eqz v31, :cond_4

    move-object/from16 v31, v4

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getBoxPixelSize(I)I

    move-result v31

    const/16 v32, 0x1

    add-int/lit8 v31, v31, -0x1

    :goto_1
    move/from16 v9, v31

    .line 62
    .local v9, "hinc":I
    move/from16 v31, v8

    if-eqz v31, :cond_5

    const/16 v31, 0x0

    :goto_2
    move/from16 v10, v31

    .line 63
    .local v10, "vinc":I
    move/from16 v31, v9

    if-gez v31, :cond_0

    const/16 v31, 0x0

    move/from16 v9, v31

    .line 64
    :cond_0
    move/from16 v31, v10

    if-gez v31, :cond_1

    const/16 v31, 0x0

    move/from16 v10, v31

    .line 65
    :cond_1
    move-object/from16 v31, v4

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getBlurPasses()I

    move-result v31

    move/from16 v11, v31

    .line 66
    .local v11, "iterations":I
    move-object/from16 v31, v4

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getSpread()F

    move-result v31

    move/from16 v12, v31

    .line 67
    .local v12, "spread":F
    move/from16 v31, v8

    if-eqz v31, :cond_6

    move/from16 v31, v11

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_2

    move/from16 v31, v9

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_6

    move/from16 v31, v10

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_6

    .line 68
    :cond_2
    move-object/from16 v31, v7

    const/16 v32, 0x0

    aget-object v31, v31, v32

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/ImageData;->addref()Z

    move-result v31

    .line 69
    move-object/from16 v31, v7

    const/16 v32, 0x0

    aget-object v31, v31, v32

    move-object/from16 v2, v31

    .line 142
    .end local v2    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBoxShadowPeer;
    :goto_3
    return-object v2

    .line 60
    .end local v8    # "horizontal":Z
    .end local v9    # "hinc":I
    .end local v10    # "vinc":I
    .end local v11    # "iterations":I
    .end local v12    # "spread":F
    .restart local v2    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBoxShadowPeer;
    :cond_3
    const/16 v31, 0x0

    goto :goto_0

    .line 61
    .restart local v8    # "horizontal":Z
    :cond_4
    const/16 v31, 0x0

    goto :goto_1

    .line 62
    .restart local v9    # "hinc":I
    :cond_5
    move-object/from16 v31, v4

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getBoxPixelSize(I)I

    move-result v31

    const/16 v32, 0x1

    add-int/lit8 v31, v31, -0x1

    goto :goto_2

    .line 73
    .restart local v10    # "vinc":I
    .restart local v11    # "iterations":I
    .restart local v12    # "spread":F
    :cond_6
    move/from16 v31, v9

    move/from16 v32, v11

    mul-int v31, v31, v32

    const/16 v32, 0x1

    add-int/lit8 v31, v31, 0x1

    const/16 v32, -0x2

    and-int/lit8 v31, v31, -0x2

    move/from16 v13, v31

    .line 74
    .local v13, "growx":I
    move/from16 v31, v10

    move/from16 v32, v11

    mul-int v31, v31, v32

    const/16 v32, 0x1

    add-int/lit8 v31, v31, 0x1

    const/16 v32, -0x2

    and-int/lit8 v31, v31, -0x2

    move/from16 v14, v31

    .line 78
    .local v14, "growy":I
    move-object/from16 v31, v7

    const/16 v32, 0x0

    aget-object v31, v31, v32

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v31

    check-cast v31, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v15, v31

    .line 79
    .local v15, "src":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v31, v7

    const/16 v32, 0x0

    aget-object v31, v31, v32

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v31

    move-object/from16 v16, v31

    .line 81
    .local v16, "srcr":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v31, v15

    move-object/from16 v17, v31

    .line 82
    .local v17, "cur":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v31, v16

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v31, v0

    move/from16 v18, v31

    .line 83
    .local v18, "curw":I
    move-object/from16 v31, v16

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v31, v0

    move/from16 v19, v31

    .line 84
    .local v19, "curh":I
    move-object/from16 v31, v17

    invoke-interface/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v31

    move/from16 v20, v31

    .line 85
    .local v20, "curscan":I
    move-object/from16 v31, v17

    invoke-interface/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v31

    move-object/from16 v21, v31

    .line 87
    .local v21, "curPixels":[I
    move/from16 v31, v18

    move/from16 v32, v13

    add-int v31, v31, v32

    move/from16 v22, v31

    .line 88
    .local v22, "finalw":I
    move/from16 v31, v19

    move/from16 v32, v14

    add-int v31, v31, v32

    move/from16 v23, v31

    .line 89
    .local v23, "finalh":I
    move/from16 v31, v8

    if-nez v31, :cond_c

    const/16 v31, 0x1

    :goto_4
    move/from16 v24, v31

    .line 90
    .local v24, "force":Z
    :goto_5
    move/from16 v31, v24

    if-nez v31, :cond_7

    move/from16 v31, v18

    move/from16 v32, v22

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_7

    move/from16 v31, v19

    move/from16 v32, v23

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_11

    .line 91
    :cond_7
    move/from16 v31, v18

    move/from16 v32, v9

    add-int v31, v31, v32

    move/from16 v25, v31

    .line 92
    .local v25, "neww":I
    move/from16 v31, v19

    move/from16 v32, v10

    add-int v31, v31, v32

    move/from16 v26, v31

    .line 93
    .local v26, "newh":I
    move/from16 v31, v25

    move/from16 v32, v22

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_8

    move/from16 v31, v22

    move/from16 v25, v31

    .line 94
    :cond_8
    move/from16 v31, v26

    move/from16 v32, v23

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_9

    move/from16 v31, v23

    move/from16 v26, v31

    .line 95
    :cond_9
    move-object/from16 v31, v2

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/sw/java/JSWBoxShadowPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v31

    move/from16 v32, v25

    move/from16 v33, v26

    invoke-virtual/range {v31 .. v33}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v31

    check-cast v31, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v27, v31

    .line 96
    .local v27, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v31, v27

    invoke-interface/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v31

    move/from16 v28, v31

    .line 97
    .local v28, "newscan":I
    move-object/from16 v31, v27

    invoke-interface/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v31

    move-object/from16 v29, v31

    .line 98
    .local v29, "newPixels":[I
    move/from16 v31, v11

    if-nez v31, :cond_a

    .line 100
    const/16 v31, 0x0

    move/from16 v12, v31

    .line 102
    :cond_a
    move/from16 v31, v8

    if-eqz v31, :cond_d

    .line 103
    move-object/from16 v31, v2

    move-object/from16 v32, v29

    move/from16 v33, v25

    move/from16 v34, v26

    move/from16 v35, v28

    move-object/from16 v36, v21

    move/from16 v37, v18

    move/from16 v38, v19

    move/from16 v39, v20

    move/from16 v40, v12

    invoke-virtual/range {v31 .. v40}, Lcom/sun/scenario/effect/impl/sw/java/JSWBoxShadowPeer;->filterHorizontalBlack([IIII[IIIIF)V

    .line 128
    :goto_6
    move-object/from16 v31, v17

    move-object/from16 v32, v15

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_b

    .line 129
    move-object/from16 v31, v2

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/sw/java/JSWBoxShadowPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v31

    move-object/from16 v32, v17

    invoke-virtual/range {v31 .. v32}, Lcom/sun/scenario/effect/impl/Renderer;->releaseCompatibleImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 131
    :cond_b
    add-int/lit8 v11, v11, -0x1

    .line 132
    const/16 v31, 0x0

    move/from16 v24, v31

    .line 133
    move-object/from16 v31, v27

    move-object/from16 v17, v31

    .line 134
    move/from16 v31, v25

    move/from16 v18, v31

    .line 135
    move/from16 v31, v26

    move/from16 v19, v31

    .line 136
    move-object/from16 v31, v29

    move-object/from16 v21, v31

    .line 137
    move/from16 v31, v28

    move/from16 v20, v31

    .line 138
    goto/16 :goto_5

    .line 89
    .end local v24    # "force":Z
    .end local v25    # "neww":I
    .end local v26    # "newh":I
    .end local v27    # "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    .end local v28    # "newscan":I
    .end local v29    # "newPixels":[I
    :cond_c
    const/16 v31, 0x0

    goto/16 :goto_4

    .line 106
    .restart local v24    # "force":Z
    .restart local v25    # "neww":I
    .restart local v26    # "newh":I
    .restart local v27    # "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    .restart local v28    # "newscan":I
    .restart local v29    # "newPixels":[I
    :cond_d
    move/from16 v31, v25

    move/from16 v32, v22

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_e

    move/from16 v31, v26

    move/from16 v32, v23

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_f

    .line 108
    :cond_e
    move-object/from16 v31, v2

    move-object/from16 v32, v29

    move/from16 v33, v25

    move/from16 v34, v26

    move/from16 v35, v28

    move-object/from16 v36, v21

    move/from16 v37, v18

    move/from16 v38, v19

    move/from16 v39, v20

    move/from16 v40, v12

    invoke-virtual/range {v31 .. v40}, Lcom/sun/scenario/effect/impl/sw/java/JSWBoxShadowPeer;->filterVerticalBlack([IIII[IIIIF)V

    goto :goto_6

    .line 112
    :cond_f
    move-object/from16 v31, v4

    .line 113
    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getShadowColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/Color4f;->getPremultipliedRGBComponents()[F

    move-result-object v31

    move-object/from16 v30, v31

    .line 114
    .local v30, "shadowColor":[F
    move-object/from16 v31, v30

    const/16 v32, 0x3

    aget v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-nez v31, :cond_10

    move-object/from16 v31, v30

    const/16 v32, 0x0

    aget v31, v31, v32

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-nez v31, :cond_10

    move-object/from16 v31, v30

    const/16 v32, 0x1

    aget v31, v31, v32

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-nez v31, :cond_10

    move-object/from16 v31, v30

    const/16 v32, 0x2

    aget v31, v31, v32

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-nez v31, :cond_10

    .line 119
    move-object/from16 v31, v2

    move-object/from16 v32, v29

    move/from16 v33, v25

    move/from16 v34, v26

    move/from16 v35, v28

    move-object/from16 v36, v21

    move/from16 v37, v18

    move/from16 v38, v19

    move/from16 v39, v20

    move/from16 v40, v12

    invoke-virtual/range {v31 .. v40}, Lcom/sun/scenario/effect/impl/sw/java/JSWBoxShadowPeer;->filterVerticalBlack([IIII[IIIIF)V

    goto/16 :goto_6

    .line 123
    :cond_10
    move-object/from16 v31, v2

    move-object/from16 v32, v29

    move/from16 v33, v25

    move/from16 v34, v26

    move/from16 v35, v28

    move-object/from16 v36, v21

    move/from16 v37, v18

    move/from16 v38, v19

    move/from16 v39, v20

    move/from16 v40, v12

    move-object/from16 v41, v30

    invoke-virtual/range {v31 .. v41}, Lcom/sun/scenario/effect/impl/sw/java/JSWBoxShadowPeer;->filterVertical([IIII[IIIIF[F)V

    goto/16 :goto_6

    .line 140
    .end local v25    # "neww":I
    .end local v26    # "newh":I
    .end local v27    # "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    .end local v28    # "newscan":I
    .end local v29    # "newPixels":[I
    .end local v30    # "shadowColor":[F
    :cond_11
    new-instance v31, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v42, v31

    move-object/from16 v31, v42

    move-object/from16 v32, v42

    move-object/from16 v33, v16

    move-object/from16 v0, v33

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v33, v0

    move/from16 v34, v13

    const/16 v35, 0x2

    div-int/lit8 v34, v34, 0x2

    sub-int v33, v33, v34

    move-object/from16 v34, v16

    move-object/from16 v0, v34

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v34, v0

    move/from16 v35, v14

    const/16 v36, 0x2

    div-int/lit8 v35, v35, 0x2

    sub-int v34, v34, v35

    move/from16 v35, v18

    move/from16 v36, v19

    invoke-direct/range {v32 .. v36}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v25, v31

    .line 142
    .local v25, "resBounds":Lcom/sun/javafx/geom/Rectangle;
    new-instance v31, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v42, v31

    move-object/from16 v31, v42

    move-object/from16 v32, v42

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Lcom/sun/scenario/effect/impl/sw/java/JSWBoxShadowPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v33

    move-object/from16 v34, v17

    move-object/from16 v35, v25

    invoke-direct/range {v32 .. v35}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v31

    goto/16 :goto_3
.end method

.method public bridge synthetic filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 12

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBoxShadowPeer;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    check-cast v8, Lcom/sun/scenario/effect/impl/state/BoxRenderState;

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/sun/scenario/effect/impl/sw/java/JSWBoxShadowPeer;->filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/BoxRenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBoxShadowPeer;
    return-object v0
.end method

.method protected filterHorizontalBlack([IIII[IIIIF)V
    .locals 26

    .prologue
    .line 149
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBoxShadowPeer;
    move-object/from16 v3, p1

    .local v3, "dstPixels":[I
    move/from16 v4, p2

    .local v4, "dstw":I
    move/from16 v5, p3

    .local v5, "dsth":I
    move/from16 v6, p4

    .local v6, "dstscan":I
    move-object/from16 v7, p5

    .local v7, "srcPixels":[I
    move/from16 v8, p6

    .local v8, "srcw":I
    move/from16 v9, p7

    .local v9, "srch":I
    move/from16 v10, p8

    .local v10, "srcscan":I
    move/from16 v11, p9

    .local v11, "spread":F
    move/from16 v22, v4

    move/from16 v23, v8

    sub-int v22, v22, v23

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move/from16 v12, v22

    .line 151
    .local v12, "hsize":I
    move/from16 v22, v12

    const/16 v23, 0xff

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v13, v22

    .line 152
    .local v13, "amax":I
    move/from16 v22, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0xff

    move/from16 v24, v13

    move/from16 v0, v24

    rsub-int v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v24, v11

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v13, v22

    .line 153
    const v22, 0x7fffffff

    move/from16 v23, v13

    div-int v22, v22, v23

    move/from16 v14, v22

    .line 154
    .local v14, "kscale":I
    move/from16 v22, v13

    const/16 v23, 0xff

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v15, v22

    .line 155
    .local v15, "amin":I
    const/16 v22, 0x0

    move/from16 v16, v22

    .line 156
    .local v16, "srcoff":I
    const/16 v22, 0x0

    move/from16 v17, v22

    .line 157
    .local v17, "dstoff":I
    const/16 v22, 0x0

    move/from16 v18, v22

    .local v18, "y":I
    :goto_0
    move/from16 v22, v18

    move/from16 v23, v5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 158
    const/16 v22, 0x0

    move/from16 v19, v22

    .line 159
    .local v19, "suma":I
    const/16 v22, 0x0

    move/from16 v20, v22

    .local v20, "x":I
    :goto_1
    move/from16 v22, v20

    move/from16 v23, v4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 162
    move/from16 v22, v20

    move/from16 v23, v12

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    move-object/from16 v22, v7

    move/from16 v23, v16

    move/from16 v24, v20

    add-int v23, v23, v24

    move/from16 v24, v12

    sub-int v23, v23, v24

    aget v22, v22, v23

    :goto_2
    move/from16 v21, v22

    .line 163
    .local v21, "rgb":I
    move/from16 v22, v19

    move/from16 v23, v21

    const/16 v24, 0x18

    ushr-int/lit8 v23, v23, 0x18

    sub-int v22, v22, v23

    move/from16 v19, v22

    .line 165
    move/from16 v22, v20

    move/from16 v23, v8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    move-object/from16 v22, v7

    move/from16 v23, v16

    move/from16 v24, v20

    add-int v23, v23, v24

    aget v22, v22, v23

    :goto_3
    move/from16 v21, v22

    .line 166
    move/from16 v22, v19

    move/from16 v23, v21

    const/16 v24, 0x18

    ushr-int/lit8 v23, v23, 0x18

    add-int v22, v22, v23

    move/from16 v19, v22

    .line 168
    move-object/from16 v22, v3

    move/from16 v23, v17

    move/from16 v24, v20

    add-int v23, v23, v24

    move/from16 v24, v19

    move/from16 v25, v15

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    const/16 v24, 0x0

    :goto_4
    aput v24, v22, v23

    .line 159
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 162
    .end local v21    # "rgb":I
    :cond_0
    const/16 v22, 0x0

    goto :goto_2

    .line 165
    .restart local v21    # "rgb":I
    :cond_1
    const/16 v22, 0x0

    goto :goto_3

    .line 168
    :cond_2
    move/from16 v24, v19

    move/from16 v25, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_3

    const/high16 v24, -0x1000000

    goto :goto_4

    :cond_3
    move/from16 v24, v19

    move/from16 v25, v14

    mul-int v24, v24, v25

    const/16 v25, 0x17

    shr-int/lit8 v24, v24, 0x17

    const/16 v25, 0x18

    shl-int/lit8 v24, v24, 0x18

    goto :goto_4

    .line 173
    .end local v21    # "rgb":I
    :cond_4
    move/from16 v22, v16

    move/from16 v23, v10

    add-int v22, v22, v23

    move/from16 v16, v22

    .line 174
    move/from16 v22, v17

    move/from16 v23, v6

    add-int v22, v22, v23

    move/from16 v17, v22

    .line 157
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 176
    .end local v19    # "suma":I
    .end local v20    # "x":I
    :cond_5
    return-void
.end method

.method protected filterVertical([IIII[IIIIF[F)V
    .locals 33

    .prologue
    .line 216
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBoxShadowPeer;
    move-object/from16 v3, p1

    .local v3, "dstPixels":[I
    move/from16 v4, p2

    .local v4, "dstw":I
    move/from16 v5, p3

    .local v5, "dsth":I
    move/from16 v6, p4

    .local v6, "dstscan":I
    move-object/from16 v7, p5

    .local v7, "srcPixels":[I
    move/from16 v8, p6

    .local v8, "srcw":I
    move/from16 v9, p7

    .local v9, "srch":I
    move/from16 v10, p8

    .local v10, "srcscan":I
    move/from16 v11, p9

    .local v11, "spread":F
    move-object/from16 v12, p10

    .local v12, "shadowColor":[F
    move/from16 v28, v5

    move/from16 v29, v9

    sub-int v28, v28, v29

    const/16 v29, 0x1

    add-int/lit8 v28, v28, 0x1

    move/from16 v13, v28

    .line 218
    .local v13, "vsize":I
    move/from16 v28, v13

    const/16 v29, 0xff

    move/from16 v0, v28

    mul-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v14, v28

    .line 219
    .local v14, "amax":I
    move/from16 v28, v14

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/16 v29, 0xff

    move/from16 v30, v14

    move/from16 v0, v30

    rsub-int v0, v0, 0xff

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v30, v11

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v14, v28

    .line 220
    const v28, 0x7fffffff

    move/from16 v29, v14

    div-int v28, v28, v29

    move/from16 v15, v28

    .line 221
    .local v15, "kscalea":I
    move/from16 v28, v15

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v29, v12

    const/16 v30, 0x0

    aget v29, v29, v30

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v16, v28

    .line 222
    .local v16, "kscaler":I
    move/from16 v28, v15

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v29, v12

    const/16 v30, 0x1

    aget v29, v29, v30

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v17, v28

    .line 223
    .local v17, "kscaleg":I
    move/from16 v28, v15

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v29, v12

    const/16 v30, 0x2

    aget v29, v29, v30

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v18, v28

    .line 224
    .local v18, "kscaleb":I
    move/from16 v28, v15

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v29, v12

    const/16 v30, 0x3

    aget v29, v29, v30

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v15, v28

    .line 225
    move/from16 v28, v14

    const/16 v29, 0xff

    move/from16 v0, v28

    div-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v19, v28

    .line 226
    .local v19, "amin":I
    move/from16 v28, v13

    move/from16 v29, v10

    mul-int v28, v28, v29

    move/from16 v20, v28

    .line 227
    .local v20, "voff":I
    move-object/from16 v28, v12

    const/16 v29, 0x0

    aget v28, v28, v29

    const/high16 v29, 0x437f0000    # 255.0f

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    const/16 v29, 0x10

    shl-int/lit8 v28, v28, 0x10

    move-object/from16 v29, v12

    const/16 v30, 0x1

    aget v29, v29, v30

    const/high16 v30, 0x437f0000    # 255.0f

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    const/16 v30, 0x8

    shl-int/lit8 v29, v29, 0x8

    or-int v28, v28, v29

    move-object/from16 v29, v12

    const/16 v30, 0x2

    aget v29, v29, v30

    const/high16 v30, 0x437f0000    # 255.0f

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    or-int v28, v28, v29

    move-object/from16 v29, v12

    const/16 v30, 0x3

    aget v29, v29, v30

    const/high16 v30, 0x437f0000    # 255.0f

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    const/16 v30, 0x18

    shl-int/lit8 v29, v29, 0x18

    or-int v28, v28, v29

    move/from16 v21, v28

    .line 232
    .local v21, "shadowRGB":I
    const/16 v28, 0x0

    move/from16 v22, v28

    .local v22, "x":I
    :goto_0
    move/from16 v28, v22

    move/from16 v29, v4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_5

    .line 233
    const/16 v28, 0x0

    move/from16 v23, v28

    .line 234
    .local v23, "suma":I
    move/from16 v28, v22

    move/from16 v24, v28

    .line 235
    .local v24, "srcoff":I
    move/from16 v28, v22

    move/from16 v25, v28

    .line 236
    .local v25, "dstoff":I
    const/16 v28, 0x0

    move/from16 v26, v28

    .local v26, "y":I
    :goto_1
    move/from16 v28, v26

    move/from16 v29, v5

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_4

    .line 239
    move/from16 v28, v24

    move/from16 v29, v20

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_0

    move-object/from16 v28, v7

    move/from16 v29, v24

    move/from16 v30, v20

    sub-int v29, v29, v30

    aget v28, v28, v29

    :goto_2
    move/from16 v27, v28

    .line 240
    .local v27, "rgb":I
    move/from16 v28, v23

    move/from16 v29, v27

    const/16 v30, 0x18

    ushr-int/lit8 v29, v29, 0x18

    sub-int v28, v28, v29

    move/from16 v23, v28

    .line 242
    move/from16 v28, v26

    move/from16 v29, v9

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    move-object/from16 v28, v7

    move/from16 v29, v24

    aget v28, v28, v29

    :goto_3
    move/from16 v27, v28

    .line 243
    move/from16 v28, v23

    move/from16 v29, v27

    const/16 v30, 0x18

    ushr-int/lit8 v29, v29, 0x18

    add-int v28, v28, v29

    move/from16 v23, v28

    .line 245
    move-object/from16 v28, v3

    move/from16 v29, v25

    move/from16 v30, v23

    move/from16 v31, v19

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_2

    const/16 v30, 0x0

    :goto_4
    aput v30, v28, v29

    .line 252
    move/from16 v28, v24

    move/from16 v29, v10

    add-int v28, v28, v29

    move/from16 v24, v28

    .line 253
    move/from16 v28, v25

    move/from16 v29, v6

    add-int v28, v28, v29

    move/from16 v25, v28

    .line 236
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 239
    .end local v27    # "rgb":I
    :cond_0
    const/16 v28, 0x0

    goto :goto_2

    .line 242
    .restart local v27    # "rgb":I
    :cond_1
    const/16 v28, 0x0

    goto :goto_3

    .line 245
    :cond_2
    move/from16 v30, v23

    move/from16 v31, v14

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_3

    move/from16 v30, v21

    goto :goto_4

    :cond_3
    move/from16 v30, v23

    move/from16 v31, v15

    mul-int v30, v30, v31

    const/16 v31, 0x17

    shr-int/lit8 v30, v30, 0x17

    const/16 v31, 0x18

    shl-int/lit8 v30, v30, 0x18

    move/from16 v31, v23

    move/from16 v32, v16

    mul-int v31, v31, v32

    const/16 v32, 0x17

    shr-int/lit8 v31, v31, 0x17

    const/16 v32, 0x10

    shl-int/lit8 v31, v31, 0x10

    or-int v30, v30, v31

    move/from16 v31, v23

    move/from16 v32, v17

    mul-int v31, v31, v32

    const/16 v32, 0x17

    shr-int/lit8 v31, v31, 0x17

    const/16 v32, 0x8

    shl-int/lit8 v31, v31, 0x8

    or-int v30, v30, v31

    move/from16 v31, v23

    move/from16 v32, v18

    mul-int v31, v31, v32

    const/16 v32, 0x17

    shr-int/lit8 v31, v31, 0x17

    or-int v30, v30, v31

    goto :goto_4

    .line 232
    .end local v27    # "rgb":I
    :cond_4
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 256
    .end local v23    # "suma":I
    .end local v24    # "srcoff":I
    .end local v25    # "dstoff":I
    .end local v26    # "y":I
    :cond_5
    return-void
.end method

.method protected filterVerticalBlack([IIII[IIIIF)V
    .locals 27

    .prologue
    .line 182
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBoxShadowPeer;
    move-object/from16 v3, p1

    .local v3, "dstPixels":[I
    move/from16 v4, p2

    .local v4, "dstw":I
    move/from16 v5, p3

    .local v5, "dsth":I
    move/from16 v6, p4

    .local v6, "dstscan":I
    move-object/from16 v7, p5

    .local v7, "srcPixels":[I
    move/from16 v8, p6

    .local v8, "srcw":I
    move/from16 v9, p7

    .local v9, "srch":I
    move/from16 v10, p8

    .local v10, "srcscan":I
    move/from16 v11, p9

    .local v11, "spread":F
    move/from16 v23, v5

    move/from16 v24, v9

    sub-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    move/from16 v12, v23

    .line 184
    .local v12, "vsize":I
    move/from16 v23, v12

    const/16 v24, 0xff

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v13, v23

    .line 185
    .local v13, "amax":I
    move/from16 v23, v13

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0xff

    move/from16 v25, v13

    move/from16 v0, v25

    rsub-int v0, v0, 0xff

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v25, v11

    mul-float v24, v24, v25

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v13, v23

    .line 186
    const v23, 0x7fffffff

    move/from16 v24, v13

    div-int v23, v23, v24

    move/from16 v14, v23

    .line 187
    .local v14, "kscale":I
    move/from16 v23, v13

    const/16 v24, 0xff

    move/from16 v0, v23

    div-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v15, v23

    .line 188
    .local v15, "amin":I
    move/from16 v23, v12

    move/from16 v24, v10

    mul-int v23, v23, v24

    move/from16 v16, v23

    .line 189
    .local v16, "voff":I
    const/16 v23, 0x0

    move/from16 v17, v23

    .local v17, "x":I
    :goto_0
    move/from16 v23, v17

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 190
    const/16 v23, 0x0

    move/from16 v18, v23

    .line 191
    .local v18, "suma":I
    move/from16 v23, v17

    move/from16 v19, v23

    .line 192
    .local v19, "srcoff":I
    move/from16 v23, v17

    move/from16 v20, v23

    .line 193
    .local v20, "dstoff":I
    const/16 v23, 0x0

    move/from16 v21, v23

    .local v21, "y":I
    :goto_1
    move/from16 v23, v21

    move/from16 v24, v5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 196
    move/from16 v23, v19

    move/from16 v24, v16

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_0

    move-object/from16 v23, v7

    move/from16 v24, v19

    move/from16 v25, v16

    sub-int v24, v24, v25

    aget v23, v23, v24

    :goto_2
    move/from16 v22, v23

    .line 197
    .local v22, "rgb":I
    move/from16 v23, v18

    move/from16 v24, v22

    const/16 v25, 0x18

    ushr-int/lit8 v24, v24, 0x18

    sub-int v23, v23, v24

    move/from16 v18, v23

    .line 199
    move/from16 v23, v21

    move/from16 v24, v9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    move-object/from16 v23, v7

    move/from16 v24, v19

    aget v23, v23, v24

    :goto_3
    move/from16 v22, v23

    .line 200
    move/from16 v23, v18

    move/from16 v24, v22

    const/16 v25, 0x18

    ushr-int/lit8 v24, v24, 0x18

    add-int v23, v23, v24

    move/from16 v18, v23

    .line 202
    move-object/from16 v23, v3

    move/from16 v24, v20

    move/from16 v25, v18

    move/from16 v26, v15

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_2

    const/16 v25, 0x0

    :goto_4
    aput v25, v23, v24

    .line 206
    move/from16 v23, v19

    move/from16 v24, v10

    add-int v23, v23, v24

    move/from16 v19, v23

    .line 207
    move/from16 v23, v20

    move/from16 v24, v6

    add-int v23, v23, v24

    move/from16 v20, v23

    .line 193
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 196
    .end local v22    # "rgb":I
    :cond_0
    const/16 v23, 0x0

    goto :goto_2

    .line 199
    .restart local v22    # "rgb":I
    :cond_1
    const/16 v23, 0x0

    goto :goto_3

    .line 202
    :cond_2
    move/from16 v25, v18

    move/from16 v26, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_3

    const/high16 v25, -0x1000000

    goto :goto_4

    :cond_3
    move/from16 v25, v18

    move/from16 v26, v14

    mul-int v25, v25, v26

    const/16 v26, 0x17

    shr-int/lit8 v25, v25, 0x17

    const/16 v26, 0x18

    shl-int/lit8 v25, v25, 0x18

    goto :goto_4

    .line 189
    .end local v22    # "rgb":I
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 210
    .end local v18    # "suma":I
    .end local v19    # "srcoff":I
    .end local v20    # "dstoff":I
    .end local v21    # "y":I
    :cond_5
    return-void
.end method

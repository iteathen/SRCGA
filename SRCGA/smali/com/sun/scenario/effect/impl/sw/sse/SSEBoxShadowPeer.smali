.class public Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxShadowPeer;
.super Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer;
.source "SSEBoxShadowPeer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer",
        "<",
        "Lcom/sun/scenario/effect/impl/state/BoxRenderState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxShadowPeer;
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

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private static native filterHorizontalBlack([IIII[IIIIF)V
.end method

.method private static native filterVertical([IIII[IIIIF[F)V
.end method

.method private static native filterVerticalBlack([IIII[IIIIF)V
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/BoxRenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 42

    .prologue
    .line 55
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxShadowPeer;
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

    invoke-virtual/range {v31 .. v32}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxShadowPeer;->setRenderState(Lcom/sun/scenario/effect/impl/state/RenderState;)V

    .line 59
    move-object/from16 v31, v2

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxShadowPeer;->getPass()I

    move-result v31

    if-nez v31, :cond_3

    const/16 v31, 0x1

    :goto_0
    move/from16 v8, v31

    .line 60
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

    .line 61
    .local v9, "hinc":I
    move/from16 v31, v8

    if-eqz v31, :cond_5

    const/16 v31, 0x0

    :goto_2
    move/from16 v10, v31

    .line 62
    .local v10, "vinc":I
    move/from16 v31, v9

    if-gez v31, :cond_0

    const/16 v31, 0x0

    move/from16 v9, v31

    .line 63
    :cond_0
    move/from16 v31, v10

    if-gez v31, :cond_1

    const/16 v31, 0x0

    move/from16 v10, v31

    .line 64
    :cond_1
    move-object/from16 v31, v4

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getBlurPasses()I

    move-result v31

    move/from16 v11, v31

    .line 65
    .local v11, "iterations":I
    move-object/from16 v31, v4

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getSpread()F

    move-result v31

    move/from16 v12, v31

    .line 66
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

    .line 67
    :cond_2
    move-object/from16 v31, v7

    const/16 v32, 0x0

    aget-object v31, v31, v32

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/ImageData;->addref()Z

    move-result v31

    .line 68
    move-object/from16 v31, v7

    const/16 v32, 0x0

    aget-object v31, v31, v32

    move-object/from16 v2, v31

    .line 141
    .end local v2    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxShadowPeer;
    :goto_3
    return-object v2

    .line 59
    .end local v8    # "horizontal":Z
    .end local v9    # "hinc":I
    .end local v10    # "vinc":I
    .end local v11    # "iterations":I
    .end local v12    # "spread":F
    .restart local v2    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxShadowPeer;
    :cond_3
    const/16 v31, 0x0

    goto :goto_0

    .line 60
    .restart local v8    # "horizontal":Z
    :cond_4
    const/16 v31, 0x0

    goto :goto_1

    .line 61
    .restart local v9    # "hinc":I
    :cond_5
    move-object/from16 v31, v4

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getBoxPixelSize(I)I

    move-result v31

    const/16 v32, 0x1

    add-int/lit8 v31, v31, -0x1

    goto :goto_2

    .line 72
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

    .line 73
    .local v13, "growx":I
    move/from16 v31, v10

    move/from16 v32, v11

    mul-int v31, v31, v32

    const/16 v32, 0x1

    add-int/lit8 v31, v31, 0x1

    const/16 v32, -0x2

    and-int/lit8 v31, v31, -0x2

    move/from16 v14, v31

    .line 77
    .local v14, "growy":I
    move-object/from16 v31, v7

    const/16 v32, 0x0

    aget-object v31, v31, v32

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v31

    check-cast v31, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v15, v31

    .line 78
    .local v15, "src":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v31, v7

    const/16 v32, 0x0

    aget-object v31, v31, v32

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v31

    move-object/from16 v16, v31

    .line 80
    .local v16, "srcr":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v31, v15

    move-object/from16 v17, v31

    .line 81
    .local v17, "cur":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v31, v16

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v31, v0

    move/from16 v18, v31

    .line 82
    .local v18, "curw":I
    move-object/from16 v31, v16

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v31, v0

    move/from16 v19, v31

    .line 83
    .local v19, "curh":I
    move-object/from16 v31, v17

    invoke-interface/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v31

    move/from16 v20, v31

    .line 84
    .local v20, "curscan":I
    move-object/from16 v31, v17

    invoke-interface/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v31

    move-object/from16 v21, v31

    .line 86
    .local v21, "curPixels":[I
    move/from16 v31, v18

    move/from16 v32, v13

    add-int v31, v31, v32

    move/from16 v22, v31

    .line 87
    .local v22, "finalw":I
    move/from16 v31, v19

    move/from16 v32, v14

    add-int v31, v31, v32

    move/from16 v23, v31

    .line 88
    .local v23, "finalh":I
    move/from16 v31, v8

    if-nez v31, :cond_c

    const/16 v31, 0x1

    :goto_4
    move/from16 v24, v31

    .line 89
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

    .line 90
    :cond_7
    move/from16 v31, v18

    move/from16 v32, v9

    add-int v31, v31, v32

    move/from16 v25, v31

    .line 91
    .local v25, "neww":I
    move/from16 v31, v19

    move/from16 v32, v10

    add-int v31, v31, v32

    move/from16 v26, v31

    .line 92
    .local v26, "newh":I
    move/from16 v31, v25

    move/from16 v32, v22

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_8

    move/from16 v31, v22

    move/from16 v25, v31

    .line 93
    :cond_8
    move/from16 v31, v26

    move/from16 v32, v23

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_9

    move/from16 v31, v23

    move/from16 v26, v31

    .line 94
    :cond_9
    move-object/from16 v31, v2

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxShadowPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v31

    move/from16 v32, v25

    move/from16 v33, v26

    invoke-virtual/range {v31 .. v33}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v31

    check-cast v31, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v27, v31

    .line 95
    .local v27, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v31, v27

    invoke-interface/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v31

    move/from16 v28, v31

    .line 96
    .local v28, "newscan":I
    move-object/from16 v31, v27

    invoke-interface/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v31

    move-object/from16 v29, v31

    .line 97
    .local v29, "newPixels":[I
    move/from16 v31, v11

    if-nez v31, :cond_a

    .line 99
    const/16 v31, 0x0

    move/from16 v12, v31

    .line 101
    :cond_a
    move/from16 v31, v8

    if-eqz v31, :cond_d

    .line 102
    move-object/from16 v31, v29

    move/from16 v32, v25

    move/from16 v33, v26

    move/from16 v34, v28

    move-object/from16 v35, v21

    move/from16 v36, v18

    move/from16 v37, v19

    move/from16 v38, v20

    move/from16 v39, v12

    invoke-static/range {v31 .. v39}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxShadowPeer;->filterHorizontalBlack([IIII[IIIIF)V

    .line 127
    :goto_6
    move-object/from16 v31, v17

    move-object/from16 v32, v15

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_b

    .line 128
    move-object/from16 v31, v2

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxShadowPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v31

    move-object/from16 v32, v17

    invoke-virtual/range {v31 .. v32}, Lcom/sun/scenario/effect/impl/Renderer;->releaseCompatibleImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 130
    :cond_b
    add-int/lit8 v11, v11, -0x1

    .line 131
    const/16 v31, 0x0

    move/from16 v24, v31

    .line 132
    move-object/from16 v31, v27

    move-object/from16 v17, v31

    .line 133
    move/from16 v31, v25

    move/from16 v18, v31

    .line 134
    move/from16 v31, v26

    move/from16 v19, v31

    .line 135
    move-object/from16 v31, v29

    move-object/from16 v21, v31

    .line 136
    move/from16 v31, v28

    move/from16 v20, v31

    .line 137
    goto/16 :goto_5

    .line 88
    .end local v24    # "force":Z
    .end local v25    # "neww":I
    .end local v26    # "newh":I
    .end local v27    # "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    .end local v28    # "newscan":I
    .end local v29    # "newPixels":[I
    :cond_c
    const/16 v31, 0x0

    goto/16 :goto_4

    .line 105
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

    .line 107
    :cond_e
    move-object/from16 v31, v29

    move/from16 v32, v25

    move/from16 v33, v26

    move/from16 v34, v28

    move-object/from16 v35, v21

    move/from16 v36, v18

    move/from16 v37, v19

    move/from16 v38, v20

    move/from16 v39, v12

    invoke-static/range {v31 .. v39}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxShadowPeer;->filterVerticalBlack([IIII[IIIIF)V

    goto :goto_6

    .line 111
    :cond_f
    move-object/from16 v31, v4

    .line 112
    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getShadowColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/Color4f;->getPremultipliedRGBComponents()[F

    move-result-object v31

    move-object/from16 v30, v31

    .line 113
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

    .line 118
    move-object/from16 v31, v29

    move/from16 v32, v25

    move/from16 v33, v26

    move/from16 v34, v28

    move-object/from16 v35, v21

    move/from16 v36, v18

    move/from16 v37, v19

    move/from16 v38, v20

    move/from16 v39, v12

    invoke-static/range {v31 .. v39}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxShadowPeer;->filterVerticalBlack([IIII[IIIIF)V

    goto/16 :goto_6

    .line 122
    :cond_10
    move-object/from16 v31, v29

    move/from16 v32, v25

    move/from16 v33, v26

    move/from16 v34, v28

    move-object/from16 v35, v21

    move/from16 v36, v18

    move/from16 v37, v19

    move/from16 v38, v20

    move/from16 v39, v12

    move-object/from16 v40, v30

    invoke-static/range {v31 .. v40}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxShadowPeer;->filterVertical([IIII[IIIIF[F)V

    goto/16 :goto_6

    .line 139
    .end local v25    # "neww":I
    .end local v26    # "newh":I
    .end local v27    # "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    .end local v28    # "newscan":I
    .end local v29    # "newPixels":[I
    .end local v30    # "shadowColor":[F
    :cond_11
    new-instance v31, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v41, v31

    move-object/from16 v31, v41

    move-object/from16 v32, v41

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

    .line 141
    .local v25, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    new-instance v31, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v41, v31

    move-object/from16 v31, v41

    move-object/from16 v32, v41

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxShadowPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v33

    move-object/from16 v34, v17

    move-object/from16 v35, v25

    move-object/from16 v36, v7

    const/16 v37, 0x0

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Lcom/sun/scenario/effect/ImageData;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v36

    invoke-direct/range {v32 .. v36}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object/from16 v2, v31

    goto/16 :goto_3
.end method

.method public bridge synthetic filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 12

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxShadowPeer;
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

    invoke-virtual/range {v6 .. v11}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxShadowPeer;->filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/BoxRenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxShadowPeer;
    return-object v0
.end method

.class public Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxBlurPeer;
.super Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer;
.source "SSEBoxBlurPeer.java"


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

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxBlurPeer;
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

.method private static native filterHorizontal([IIII[IIII)V
.end method

.method private static native filterVertical([IIII[IIII)V
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/BoxRenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 37

    .prologue
    .line 55
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxBlurPeer;
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
    move-object/from16 v28, v2

    move-object/from16 v29, v4

    invoke-virtual/range {v28 .. v29}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxBlurPeer;->setRenderState(Lcom/sun/scenario/effect/impl/state/RenderState;)V

    .line 58
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxBlurPeer;->getPass()I

    move-result v28

    if-nez v28, :cond_1

    const/16 v28, 0x1

    :goto_0
    move/from16 v8, v28

    .line 61
    .local v8, "horizontal":Z
    move/from16 v28, v8

    if-eqz v28, :cond_2

    move-object/from16 v28, v4

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getBoxPixelSize(I)I

    move-result v28

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    :goto_1
    move/from16 v9, v28

    .line 62
    .local v9, "hinc":I
    move/from16 v28, v8

    if-eqz v28, :cond_3

    const/16 v28, 0x0

    :goto_2
    move/from16 v10, v28

    .line 63
    .local v10, "vinc":I
    move-object/from16 v28, v4

    invoke-virtual/range {v28 .. v28}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getBlurPasses()I

    move-result v28

    move/from16 v11, v28

    .line 64
    .local v11, "iterations":I
    move/from16 v28, v11

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_0

    move/from16 v28, v9

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_4

    move/from16 v28, v10

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_4

    .line 65
    :cond_0
    move-object/from16 v28, v7

    const/16 v29, 0x0

    aget-object v28, v28, v29

    invoke-virtual/range {v28 .. v28}, Lcom/sun/scenario/effect/ImageData;->addref()Z

    move-result v28

    .line 66
    move-object/from16 v28, v7

    const/16 v29, 0x0

    aget-object v28, v28, v29

    move-object/from16 v2, v28

    .line 113
    .end local v2    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxBlurPeer;
    :goto_3
    return-object v2

    .line 58
    .end local v8    # "horizontal":Z
    .end local v9    # "hinc":I
    .end local v10    # "vinc":I
    .end local v11    # "iterations":I
    .restart local v2    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxBlurPeer;
    :cond_1
    const/16 v28, 0x0

    goto :goto_0

    .line 61
    .restart local v8    # "horizontal":Z
    :cond_2
    const/16 v28, 0x0

    goto :goto_1

    .line 62
    .restart local v9    # "hinc":I
    :cond_3
    move-object/from16 v28, v4

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getBoxPixelSize(I)I

    move-result v28

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    goto :goto_2

    .line 70
    .restart local v10    # "vinc":I
    .restart local v11    # "iterations":I
    :cond_4
    move/from16 v28, v9

    move/from16 v29, v11

    mul-int v28, v28, v29

    const/16 v29, 0x1

    add-int/lit8 v28, v28, 0x1

    const/16 v29, -0x2

    and-int/lit8 v28, v28, -0x2

    move/from16 v12, v28

    .line 71
    .local v12, "growx":I
    move/from16 v28, v10

    move/from16 v29, v11

    mul-int v28, v28, v29

    const/16 v29, 0x1

    add-int/lit8 v28, v28, 0x1

    const/16 v29, -0x2

    and-int/lit8 v28, v28, -0x2

    move/from16 v13, v28

    .line 75
    .local v13, "growy":I
    move-object/from16 v28, v7

    const/16 v29, 0x0

    aget-object v28, v28, v29

    invoke-virtual/range {v28 .. v28}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v28

    check-cast v28, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v14, v28

    .line 76
    .local v14, "src":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v28, v7

    const/16 v29, 0x0

    aget-object v28, v28, v29

    invoke-virtual/range {v28 .. v28}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v28

    move-object/from16 v15, v28

    .line 78
    .local v15, "srcr":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v28, v14

    move-object/from16 v16, v28

    .line 79
    .local v16, "cur":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v28, v15

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v28, v0

    move/from16 v17, v28

    .line 80
    .local v17, "curw":I
    move-object/from16 v28, v15

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v28, v0

    move/from16 v18, v28

    .line 81
    .local v18, "curh":I
    move-object/from16 v28, v16

    invoke-interface/range {v28 .. v28}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v28

    move/from16 v19, v28

    .line 82
    .local v19, "curscan":I
    move-object/from16 v28, v16

    invoke-interface/range {v28 .. v28}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v28

    move-object/from16 v20, v28

    .line 84
    .local v20, "curPixels":[I
    move/from16 v28, v17

    move/from16 v29, v12

    add-int v28, v28, v29

    move/from16 v21, v28

    .line 85
    .local v21, "finalw":I
    move/from16 v28, v18

    move/from16 v29, v13

    add-int v28, v28, v29

    move/from16 v22, v28

    .line 86
    .local v22, "finalh":I
    :goto_4
    move/from16 v28, v17

    move/from16 v29, v21

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_5

    move/from16 v28, v18

    move/from16 v29, v22

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_a

    .line 87
    :cond_5
    move/from16 v28, v17

    move/from16 v29, v9

    add-int v28, v28, v29

    move/from16 v23, v28

    .line 88
    .local v23, "neww":I
    move/from16 v28, v18

    move/from16 v29, v10

    add-int v28, v28, v29

    move/from16 v24, v28

    .line 89
    .local v24, "newh":I
    move/from16 v28, v23

    move/from16 v29, v21

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_6

    move/from16 v28, v21

    move/from16 v23, v28

    .line 90
    :cond_6
    move/from16 v28, v24

    move/from16 v29, v22

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_7

    move/from16 v28, v22

    move/from16 v24, v28

    .line 91
    :cond_7
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxBlurPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v28

    move/from16 v29, v23

    move/from16 v30, v24

    invoke-virtual/range {v28 .. v30}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v28

    check-cast v28, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v25, v28

    .line 92
    .local v25, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v28, v25

    invoke-interface/range {v28 .. v28}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v28

    move/from16 v26, v28

    .line 93
    .local v26, "newscan":I
    move-object/from16 v28, v25

    invoke-interface/range {v28 .. v28}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v28

    move-object/from16 v27, v28

    .line 94
    .local v27, "newPixels":[I
    move/from16 v28, v8

    if-eqz v28, :cond_9

    .line 95
    move-object/from16 v28, v27

    move/from16 v29, v23

    move/from16 v30, v24

    move/from16 v31, v26

    move-object/from16 v32, v20

    move/from16 v33, v17

    move/from16 v34, v18

    move/from16 v35, v19

    invoke-static/range {v28 .. v35}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxBlurPeer;->filterHorizontal([IIII[IIII)V

    .line 101
    :goto_5
    move-object/from16 v28, v16

    move-object/from16 v29, v14

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_8

    .line 102
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxBlurPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v28

    move-object/from16 v29, v16

    invoke-virtual/range {v28 .. v29}, Lcom/sun/scenario/effect/impl/Renderer;->releaseCompatibleImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 104
    :cond_8
    move-object/from16 v28, v25

    move-object/from16 v16, v28

    .line 105
    move/from16 v28, v23

    move/from16 v17, v28

    .line 106
    move/from16 v28, v24

    move/from16 v18, v28

    .line 107
    move-object/from16 v28, v27

    move-object/from16 v20, v28

    .line 108
    move/from16 v28, v26

    move/from16 v19, v28

    .line 109
    goto/16 :goto_4

    .line 98
    :cond_9
    move-object/from16 v28, v27

    move/from16 v29, v23

    move/from16 v30, v24

    move/from16 v31, v26

    move-object/from16 v32, v20

    move/from16 v33, v17

    move/from16 v34, v18

    move/from16 v35, v19

    invoke-static/range {v28 .. v35}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxBlurPeer;->filterVertical([IIII[IIII)V

    goto :goto_5

    .line 111
    .end local v23    # "neww":I
    .end local v24    # "newh":I
    .end local v25    # "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    .end local v26    # "newscan":I
    .end local v27    # "newPixels":[I
    :cond_a
    new-instance v28, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v36, v28

    move-object/from16 v28, v36

    move-object/from16 v29, v36

    move-object/from16 v30, v15

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v30, v0

    move/from16 v31, v12

    const/16 v32, 0x2

    div-int/lit8 v31, v31, 0x2

    sub-int v30, v30, v31

    move-object/from16 v31, v15

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v31, v0

    move/from16 v32, v13

    const/16 v33, 0x2

    div-int/lit8 v32, v32, 0x2

    sub-int v31, v31, v32

    move/from16 v32, v17

    move/from16 v33, v18

    invoke-direct/range {v29 .. v33}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v23, v28

    .line 113
    .local v23, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    new-instance v28, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v36, v28

    move-object/from16 v28, v36

    move-object/from16 v29, v36

    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxBlurPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v30

    move-object/from16 v31, v16

    move-object/from16 v32, v23

    invoke-direct/range {v29 .. v32}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v28

    goto/16 :goto_3
.end method

.method public bridge synthetic filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 12

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxBlurPeer;
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

    invoke-virtual/range {v6 .. v11}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxBlurPeer;->filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/BoxRenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEBoxBlurPeer;
    return-object v0
.end method

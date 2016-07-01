.class public Lcom/sun/scenario/effect/impl/sw/java/JSWBoxBlurPeer;
.super Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;
.source "JSWBoxBlurPeer.java"


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
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBoxBlurPeer;
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

    .line 46
    return-void
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/BoxRenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 38

    .prologue
    .line 55
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBoxBlurPeer;
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

    invoke-virtual/range {v28 .. v29}, Lcom/sun/scenario/effect/impl/sw/java/JSWBoxBlurPeer;->setRenderState(Lcom/sun/scenario/effect/impl/state/RenderState;)V

    .line 59
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/sun/scenario/effect/impl/sw/java/JSWBoxBlurPeer;->getPass()I

    move-result v28

    if-nez v28, :cond_1

    const/16 v28, 0x1

    :goto_0
    move/from16 v8, v28

    .line 60
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

    .line 61
    .local v9, "hinc":I
    move/from16 v28, v8

    if-eqz v28, :cond_3

    const/16 v28, 0x0

    :goto_2
    move/from16 v10, v28

    .line 62
    .local v10, "vinc":I
    move-object/from16 v28, v4

    invoke-virtual/range {v28 .. v28}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getBlurPasses()I

    move-result v28

    move/from16 v11, v28

    .line 63
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

    .line 64
    :cond_0
    move-object/from16 v28, v7

    const/16 v29, 0x0

    aget-object v28, v28, v29

    invoke-virtual/range {v28 .. v28}, Lcom/sun/scenario/effect/ImageData;->addref()Z

    move-result v28

    .line 65
    move-object/from16 v28, v7

    const/16 v29, 0x0

    aget-object v28, v28, v29

    move-object/from16 v2, v28

    .line 112
    .end local v2    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBoxBlurPeer;
    :goto_3
    return-object v2

    .line 59
    .end local v8    # "horizontal":Z
    .end local v9    # "hinc":I
    .end local v10    # "vinc":I
    .end local v11    # "iterations":I
    .restart local v2    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBoxBlurPeer;
    :cond_1
    const/16 v28, 0x0

    goto :goto_0

    .line 60
    .restart local v8    # "horizontal":Z
    :cond_2
    const/16 v28, 0x0

    goto :goto_1

    .line 61
    .restart local v9    # "hinc":I
    :cond_3
    move-object/from16 v28, v4

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getBoxPixelSize(I)I

    move-result v28

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    goto :goto_2

    .line 69
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

    .line 70
    .local v12, "growx":I
    move/from16 v28, v10

    move/from16 v29, v11

    mul-int v28, v28, v29

    const/16 v29, 0x1

    add-int/lit8 v28, v28, 0x1

    const/16 v29, -0x2

    and-int/lit8 v28, v28, -0x2

    move/from16 v13, v28

    .line 74
    .local v13, "growy":I
    move-object/from16 v28, v7

    const/16 v29, 0x0

    aget-object v28, v28, v29

    invoke-virtual/range {v28 .. v28}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v28

    check-cast v28, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v14, v28

    .line 75
    .local v14, "src":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v28, v7

    const/16 v29, 0x0

    aget-object v28, v28, v29

    invoke-virtual/range {v28 .. v28}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v28

    move-object/from16 v15, v28

    .line 77
    .local v15, "srcr":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v28, v14

    move-object/from16 v16, v28

    .line 78
    .local v16, "cur":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v28, v15

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v28, v0

    move/from16 v17, v28

    .line 79
    .local v17, "curw":I
    move-object/from16 v28, v15

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v28, v0

    move/from16 v18, v28

    .line 80
    .local v18, "curh":I
    move-object/from16 v28, v16

    invoke-interface/range {v28 .. v28}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v28

    move/from16 v19, v28

    .line 81
    .local v19, "curscan":I
    move-object/from16 v28, v16

    invoke-interface/range {v28 .. v28}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v28

    move-object/from16 v20, v28

    .line 83
    .local v20, "curPixels":[I
    move/from16 v28, v17

    move/from16 v29, v12

    add-int v28, v28, v29

    move/from16 v21, v28

    .line 84
    .local v21, "finalw":I
    move/from16 v28, v18

    move/from16 v29, v13

    add-int v28, v28, v29

    move/from16 v22, v28

    .line 85
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

    .line 86
    :cond_5
    move/from16 v28, v17

    move/from16 v29, v9

    add-int v28, v28, v29

    move/from16 v23, v28

    .line 87
    .local v23, "neww":I
    move/from16 v28, v18

    move/from16 v29, v10

    add-int v28, v28, v29

    move/from16 v24, v28

    .line 88
    .local v24, "newh":I
    move/from16 v28, v23

    move/from16 v29, v21

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_6

    move/from16 v28, v21

    move/from16 v23, v28

    .line 89
    :cond_6
    move/from16 v28, v24

    move/from16 v29, v22

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_7

    move/from16 v28, v22

    move/from16 v24, v28

    .line 90
    :cond_7
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/sun/scenario/effect/impl/sw/java/JSWBoxBlurPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v28

    move/from16 v29, v23

    move/from16 v30, v24

    invoke-virtual/range {v28 .. v30}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v28

    check-cast v28, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v25, v28

    .line 91
    .local v25, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v28, v25

    invoke-interface/range {v28 .. v28}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v28

    move/from16 v26, v28

    .line 92
    .local v26, "newscan":I
    move-object/from16 v28, v25

    invoke-interface/range {v28 .. v28}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v28

    move-object/from16 v27, v28

    .line 93
    .local v27, "newPixels":[I
    move/from16 v28, v8

    if-eqz v28, :cond_9

    .line 94
    move-object/from16 v28, v2

    move-object/from16 v29, v27

    move/from16 v30, v23

    move/from16 v31, v24

    move/from16 v32, v26

    move-object/from16 v33, v20

    move/from16 v34, v17

    move/from16 v35, v18

    move/from16 v36, v19

    invoke-virtual/range {v28 .. v36}, Lcom/sun/scenario/effect/impl/sw/java/JSWBoxBlurPeer;->filterHorizontal([IIII[IIII)V

    .line 100
    :goto_5
    move-object/from16 v28, v16

    move-object/from16 v29, v14

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_8

    .line 101
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/sun/scenario/effect/impl/sw/java/JSWBoxBlurPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v28

    move-object/from16 v29, v16

    invoke-virtual/range {v28 .. v29}, Lcom/sun/scenario/effect/impl/Renderer;->releaseCompatibleImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 103
    :cond_8
    move-object/from16 v28, v25

    move-object/from16 v16, v28

    .line 104
    move/from16 v28, v23

    move/from16 v17, v28

    .line 105
    move/from16 v28, v24

    move/from16 v18, v28

    .line 106
    move-object/from16 v28, v27

    move-object/from16 v20, v28

    .line 107
    move/from16 v28, v26

    move/from16 v19, v28

    .line 108
    goto/16 :goto_4

    .line 97
    :cond_9
    move-object/from16 v28, v2

    move-object/from16 v29, v27

    move/from16 v30, v23

    move/from16 v31, v24

    move/from16 v32, v26

    move-object/from16 v33, v20

    move/from16 v34, v17

    move/from16 v35, v18

    move/from16 v36, v19

    invoke-virtual/range {v28 .. v36}, Lcom/sun/scenario/effect/impl/sw/java/JSWBoxBlurPeer;->filterVertical([IIII[IIII)V

    goto :goto_5

    .line 110
    .end local v23    # "neww":I
    .end local v24    # "newh":I
    .end local v25    # "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    .end local v26    # "newscan":I
    .end local v27    # "newPixels":[I
    :cond_a
    new-instance v28, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v37, v28

    move-object/from16 v28, v37

    move-object/from16 v29, v37

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

    .line 112
    .local v23, "resBounds":Lcom/sun/javafx/geom/Rectangle;
    new-instance v28, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v37, v28

    move-object/from16 v28, v37

    move-object/from16 v29, v37

    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Lcom/sun/scenario/effect/impl/sw/java/JSWBoxBlurPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

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

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBoxBlurPeer;
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

    invoke-virtual/range {v6 .. v11}, Lcom/sun/scenario/effect/impl/sw/java/JSWBoxBlurPeer;->filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/BoxRenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBoxBlurPeer;
    return-object v0
.end method

.method protected filterHorizontal([IIII[IIII)V
    .locals 27

    .prologue
    .line 118
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBoxBlurPeer;
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
    move/from16 v22, v4

    move/from16 v23, v8

    sub-int v22, v22, v23

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move/from16 v11, v22

    .line 119
    .local v11, "hsize":I
    const v22, 0x7fffffff

    move/from16 v23, v11

    const/16 v24, 0xff

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    div-int v22, v22, v23

    move/from16 v12, v22

    .line 120
    .local v12, "kscale":I
    const/16 v22, 0x0

    move/from16 v13, v22

    .line 121
    .local v13, "srcoff":I
    const/16 v22, 0x0

    move/from16 v14, v22

    .line 122
    .local v14, "dstoff":I
    const/16 v22, 0x0

    move/from16 v15, v22

    .local v15, "y":I
    :goto_0
    move/from16 v22, v15

    move/from16 v23, v5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 123
    const/16 v22, 0x0

    move/from16 v16, v22

    .line 124
    .local v16, "suma":I
    const/16 v22, 0x0

    move/from16 v17, v22

    .line 125
    .local v17, "sumr":I
    const/16 v22, 0x0

    move/from16 v18, v22

    .line 126
    .local v18, "sumg":I
    const/16 v22, 0x0

    move/from16 v19, v22

    .line 127
    .local v19, "sumb":I
    const/16 v22, 0x0

    move/from16 v20, v22

    .local v20, "x":I
    :goto_1
    move/from16 v22, v20

    move/from16 v23, v4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 130
    move/from16 v22, v20

    move/from16 v23, v11

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    move-object/from16 v22, v7

    move/from16 v23, v13

    move/from16 v24, v20

    add-int v23, v23, v24

    move/from16 v24, v11

    sub-int v23, v23, v24

    aget v22, v22, v23

    :goto_2
    move/from16 v21, v22

    .line 131
    .local v21, "rgb":I
    move/from16 v22, v16

    move/from16 v23, v21

    const/16 v24, 0x18

    ushr-int/lit8 v23, v23, 0x18

    sub-int v22, v22, v23

    move/from16 v16, v22

    .line 132
    move/from16 v22, v17

    move/from16 v23, v21

    const/16 v24, 0x10

    shr-int/lit8 v23, v23, 0x10

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v17, v22

    .line 133
    move/from16 v22, v18

    move/from16 v23, v21

    const/16 v24, 0x8

    shr-int/lit8 v23, v23, 0x8

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v18, v22

    .line 134
    move/from16 v22, v19

    move/from16 v23, v21

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v19, v22

    .line 136
    move/from16 v22, v20

    move/from16 v23, v8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    move-object/from16 v22, v7

    move/from16 v23, v13

    move/from16 v24, v20

    add-int v23, v23, v24

    aget v22, v22, v23

    :goto_3
    move/from16 v21, v22

    .line 137
    move/from16 v22, v16

    move/from16 v23, v21

    const/16 v24, 0x18

    ushr-int/lit8 v23, v23, 0x18

    add-int v22, v22, v23

    move/from16 v16, v22

    .line 138
    move/from16 v22, v17

    move/from16 v23, v21

    const/16 v24, 0x10

    shr-int/lit8 v23, v23, 0x10

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v17, v22

    .line 139
    move/from16 v22, v18

    move/from16 v23, v21

    const/16 v24, 0x8

    shr-int/lit8 v23, v23, 0x8

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v18, v22

    .line 140
    move/from16 v22, v19

    move/from16 v23, v21

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v19, v22

    .line 141
    move-object/from16 v22, v3

    move/from16 v23, v14

    move/from16 v24, v20

    add-int v23, v23, v24

    move/from16 v24, v16

    move/from16 v25, v12

    mul-int v24, v24, v25

    const/16 v25, 0x17

    shr-int/lit8 v24, v24, 0x17

    const/16 v25, 0x18

    shl-int/lit8 v24, v24, 0x18

    move/from16 v25, v17

    move/from16 v26, v12

    mul-int v25, v25, v26

    const/16 v26, 0x17

    shr-int/lit8 v25, v25, 0x17

    const/16 v26, 0x10

    shl-int/lit8 v25, v25, 0x10

    add-int v24, v24, v25

    move/from16 v25, v18

    move/from16 v26, v12

    mul-int v25, v25, v26

    const/16 v26, 0x17

    shr-int/lit8 v25, v25, 0x17

    const/16 v26, 0x8

    shl-int/lit8 v25, v25, 0x8

    add-int v24, v24, v25

    move/from16 v25, v19

    move/from16 v26, v12

    mul-int v25, v25, v26

    const/16 v26, 0x17

    shr-int/lit8 v25, v25, 0x17

    add-int v24, v24, v25

    aput v24, v22, v23

    .line 127
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 130
    .end local v21    # "rgb":I
    :cond_0
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 136
    .restart local v21    # "rgb":I
    :cond_1
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 147
    .end local v21    # "rgb":I
    :cond_2
    move/from16 v22, v13

    move/from16 v23, v10

    add-int v22, v22, v23

    move/from16 v13, v22

    .line 148
    move/from16 v22, v14

    move/from16 v23, v6

    add-int v22, v22, v23

    move/from16 v14, v22

    .line 122
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 150
    .end local v16    # "suma":I
    .end local v17    # "sumr":I
    .end local v18    # "sumg":I
    .end local v19    # "sumb":I
    .end local v20    # "x":I
    :cond_3
    return-void
.end method

.method protected filterVertical([IIII[IIII)V
    .locals 28

    .prologue
    .line 155
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBoxBlurPeer;
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
    move/from16 v23, v5

    move/from16 v24, v9

    sub-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    move/from16 v11, v23

    .line 156
    .local v11, "vsize":I
    const v23, 0x7fffffff

    move/from16 v24, v11

    const/16 v25, 0xff

    move/from16 v0, v24

    mul-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    div-int v23, v23, v24

    move/from16 v12, v23

    .line 157
    .local v12, "kscale":I
    move/from16 v23, v11

    move/from16 v24, v10

    mul-int v23, v23, v24

    move/from16 v13, v23

    .line 158
    .local v13, "voff":I
    const/16 v23, 0x0

    move/from16 v14, v23

    .local v14, "x":I
    :goto_0
    move/from16 v23, v14

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    .line 159
    const/16 v23, 0x0

    move/from16 v15, v23

    .line 160
    .local v15, "suma":I
    const/16 v23, 0x0

    move/from16 v16, v23

    .line 161
    .local v16, "sumr":I
    const/16 v23, 0x0

    move/from16 v17, v23

    .line 162
    .local v17, "sumg":I
    const/16 v23, 0x0

    move/from16 v18, v23

    .line 163
    .local v18, "sumb":I
    move/from16 v23, v14

    move/from16 v19, v23

    .line 164
    .local v19, "srcoff":I
    move/from16 v23, v14

    move/from16 v20, v23

    .line 165
    .local v20, "dstoff":I
    const/16 v23, 0x0

    move/from16 v21, v23

    .local v21, "y":I
    :goto_1
    move/from16 v23, v21

    move/from16 v24, v5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 168
    move/from16 v23, v19

    move/from16 v24, v13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_0

    move-object/from16 v23, v7

    move/from16 v24, v19

    move/from16 v25, v13

    sub-int v24, v24, v25

    aget v23, v23, v24

    :goto_2
    move/from16 v22, v23

    .line 169
    .local v22, "rgb":I
    move/from16 v23, v15

    move/from16 v24, v22

    const/16 v25, 0x18

    ushr-int/lit8 v24, v24, 0x18

    sub-int v23, v23, v24

    move/from16 v15, v23

    .line 170
    move/from16 v23, v16

    move/from16 v24, v22

    const/16 v25, 0x10

    shr-int/lit8 v24, v24, 0x10

    const/16 v25, 0xff

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v16, v23

    .line 171
    move/from16 v23, v17

    move/from16 v24, v22

    const/16 v25, 0x8

    shr-int/lit8 v24, v24, 0x8

    const/16 v25, 0xff

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v17, v23

    .line 172
    move/from16 v23, v18

    move/from16 v24, v22

    const/16 v25, 0xff

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v18, v23

    .line 174
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

    .line 175
    move/from16 v23, v15

    move/from16 v24, v22

    const/16 v25, 0x18

    ushr-int/lit8 v24, v24, 0x18

    add-int v23, v23, v24

    move/from16 v15, v23

    .line 176
    move/from16 v23, v16

    move/from16 v24, v22

    const/16 v25, 0x10

    shr-int/lit8 v24, v24, 0x10

    const/16 v25, 0xff

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v16, v23

    .line 177
    move/from16 v23, v17

    move/from16 v24, v22

    const/16 v25, 0x8

    shr-int/lit8 v24, v24, 0x8

    const/16 v25, 0xff

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v17, v23

    .line 178
    move/from16 v23, v18

    move/from16 v24, v22

    const/16 v25, 0xff

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v18, v23

    .line 179
    move-object/from16 v23, v3

    move/from16 v24, v20

    move/from16 v25, v15

    move/from16 v26, v12

    mul-int v25, v25, v26

    const/16 v26, 0x17

    shr-int/lit8 v25, v25, 0x17

    const/16 v26, 0x18

    shl-int/lit8 v25, v25, 0x18

    move/from16 v26, v16

    move/from16 v27, v12

    mul-int v26, v26, v27

    const/16 v27, 0x17

    shr-int/lit8 v26, v26, 0x17

    const/16 v27, 0x10

    shl-int/lit8 v26, v26, 0x10

    add-int v25, v25, v26

    move/from16 v26, v17

    move/from16 v27, v12

    mul-int v26, v26, v27

    const/16 v27, 0x17

    shr-int/lit8 v26, v26, 0x17

    const/16 v27, 0x8

    shl-int/lit8 v26, v26, 0x8

    add-int v25, v25, v26

    move/from16 v26, v18

    move/from16 v27, v12

    mul-int v26, v26, v27

    const/16 v27, 0x17

    shr-int/lit8 v26, v26, 0x17

    add-int v25, v25, v26

    aput v25, v23, v24

    .line 184
    move/from16 v23, v19

    move/from16 v24, v10

    add-int v23, v23, v24

    move/from16 v19, v23

    .line 185
    move/from16 v23, v20

    move/from16 v24, v6

    add-int v23, v23, v24

    move/from16 v20, v23

    .line 165
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 168
    .end local v22    # "rgb":I
    :cond_0
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 174
    .restart local v22    # "rgb":I
    :cond_1
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 158
    .end local v22    # "rgb":I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 188
    .end local v15    # "suma":I
    .end local v16    # "sumr":I
    .end local v17    # "sumg":I
    .end local v18    # "sumb":I
    .end local v19    # "srcoff":I
    .end local v20    # "dstoff":I
    .end local v21    # "y":I
    :cond_3
    return-void
.end method

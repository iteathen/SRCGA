.class public Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;
.super Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer;
.source "SSESepiaTonePeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;
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

    .line 50
    return-void
.end method

.method private static native filter([IIIIII[IFFFFIIIF)V
.end method

.method private getLevel()F
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;->getEffect()Lcom/sun/scenario/effect/SepiaTone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/SepiaTone;->getLevel()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;
    return v0
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 43

    .prologue
    .line 70
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;
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
    move-object/from16 v27, v1

    move-object/from16 v28, v2

    invoke-virtual/range {v27 .. v28}, Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 71
    move-object/from16 v27, v1

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    invoke-virtual/range {v27 .. v30}, Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v27

    move-object/from16 v7, v27

    .line 72
    .local v7, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v27, v1

    move-object/from16 v28, v7

    invoke-virtual/range {v27 .. v28}, Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 75
    move-object/from16 v27, v6

    const/16 v28, 0x0

    aget-object v27, v27, v28

    move-object/from16 v28, v7

    invoke-virtual/range {v27 .. v28}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v27

    check-cast v27, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v8, v27

    .line 76
    .local v8, "src0":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v27, 0x0

    move/from16 v9, v27

    .line 77
    .local v9, "src0x":I
    const/16 v27, 0x0

    move/from16 v10, v27

    .line 78
    .local v10, "src0y":I
    move-object/from16 v27, v8

    invoke-interface/range {v27 .. v27}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v27

    move/from16 v11, v27

    .line 79
    .local v11, "src0w":I
    move-object/from16 v27, v8

    invoke-interface/range {v27 .. v27}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v27

    move/from16 v12, v27

    .line 80
    .local v12, "src0h":I
    move-object/from16 v27, v8

    invoke-interface/range {v27 .. v27}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v27

    move/from16 v13, v27

    .line 81
    .local v13, "src0scan":I
    move-object/from16 v27, v8

    .line 82
    invoke-interface/range {v27 .. v27}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v27

    move-object/from16 v14, v27

    .line 83
    .local v14, "baseImg":[I
    new-instance v27, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v42, v27

    move-object/from16 v27, v42

    move-object/from16 v28, v42

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v32, v12

    invoke-direct/range {v28 .. v32}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v15, v27

    .line 84
    .local v15, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v27, v6

    const/16 v28, 0x0

    aget-object v27, v27, v28

    move-object/from16 v28, v7

    invoke-virtual/range {v27 .. v28}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v27

    move-object/from16 v16, v27

    .line 85
    .local v16, "src0InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v27, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v17, v27

    .line 86
    .local v17, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v27, v1

    const/16 v28, 0x0

    move-object/from16 v29, v16

    invoke-virtual/range {v27 .. v29}, Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 87
    move-object/from16 v27, v1

    const/16 v28, 0x0

    move-object/from16 v29, v15

    invoke-virtual/range {v27 .. v29}, Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 90
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    move-object/from16 v18, v27

    .line 91
    .local v18, "src0Rect":[F
    move-object/from16 v27, v1

    const/16 v28, 0x0

    move-object/from16 v29, v18

    move-object/from16 v30, v16

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v31, v16

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v32, v11

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v33, v12

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v34, v7

    move-object/from16 v35, v17

    invoke-virtual/range {v27 .. v35}, Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v27

    .line 97
    const/16 v27, 0x0

    move/from16 v19, v27

    .line 98
    .local v19, "dstx":I
    const/16 v27, 0x0

    move/from16 v20, v27

    .line 99
    .local v20, "dsty":I
    move-object/from16 v27, v7

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v27, v0

    move/from16 v21, v27

    .line 100
    .local v21, "dstw":I
    move-object/from16 v27, v7

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v27, v0

    move/from16 v22, v27

    .line 102
    .local v22, "dsth":I
    move-object/from16 v27, v1

    invoke-virtual/range {v27 .. v27}, Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v27

    move/from16 v28, v21

    move/from16 v29, v22

    invoke-virtual/range {v27 .. v29}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v27

    check-cast v27, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v23, v27

    .line 103
    .local v23, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v27, v1

    move-object/from16 v28, v23

    invoke-interface/range {v28 .. v28}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v28

    move-object/from16 v29, v23

    invoke-interface/range {v29 .. v29}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v29

    invoke-virtual/range {v27 .. v29}, Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;->setDestNativeBounds(II)V

    .line 104
    move-object/from16 v27, v23

    invoke-interface/range {v27 .. v27}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v27

    move/from16 v24, v27

    .line 105
    .local v24, "dstscan":I
    move-object/from16 v27, v23

    invoke-interface/range {v27 .. v27}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v27

    move-object/from16 v25, v27

    .line 107
    .local v25, "dstPixels":[I
    move-object/from16 v27, v1

    invoke-direct/range {v27 .. v27}, Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;->getLevel()F

    move-result v27

    move/from16 v26, v27

    .line 110
    .local v26, "level":F
    move-object/from16 v27, v25

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v30, v21

    move/from16 v31, v22

    move/from16 v32, v24

    move-object/from16 v33, v14

    move-object/from16 v34, v18

    const/16 v35, 0x0

    aget v34, v34, v35

    move-object/from16 v35, v18

    const/16 v36, 0x1

    aget v35, v35, v36

    move-object/from16 v36, v18

    const/16 v37, 0x2

    aget v36, v36, v37

    move-object/from16 v37, v18

    const/16 v38, 0x3

    aget v37, v37, v38

    move/from16 v38, v11

    move/from16 v39, v12

    move/from16 v40, v13

    move/from16 v41, v26

    invoke-static/range {v27 .. v41}, Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;->filter([IIIIII[IFFFFIIIF)V

    .line 117
    move-object/from16 v27, v6

    const/16 v28, 0x0

    aget-object v27, v27, v28

    move-object/from16 v28, v8

    invoke-virtual/range {v27 .. v28}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 120
    new-instance v27, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v42, v27

    move-object/from16 v27, v42

    move-object/from16 v28, v42

    move-object/from16 v29, v1

    invoke-virtual/range {v29 .. v29}, Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v29

    move-object/from16 v30, v23

    move-object/from16 v31, v7

    invoke-direct/range {v28 .. v31}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v1, v27

    .end local v1    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;
    return-object v1
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;->getEffect()Lcom/sun/scenario/effect/SepiaTone;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;
    return-object v0
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/SepiaTone;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/SepiaTone;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSESepiaTonePeer;
    return-object v0
.end method

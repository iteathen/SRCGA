.class public Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;
.super Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer;
.source "SSELinearConvolvePeer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer",
        "<",
        "Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;
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

    .line 48
    return-void
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 63

    .prologue
    .line 57
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;
    move-object/from16 v3, p1

    .local v3, "effect":Lcom/sun/scenario/effect/Effect;
    move-object/from16 v4, p2

    .local v4, "lcrstate":Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;
    move-object/from16 v5, p3

    .local v5, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v6, p4

    .local v6, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v7, p5

    .local v7, "inputs":[Lcom/sun/scenario/effect/ImageData;
    move-object/from16 v41, v2

    move-object/from16 v42, v4

    invoke-virtual/range {v41 .. v42}, Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;->setRenderState(Lcom/sun/scenario/effect/impl/state/RenderState;)V

    .line 58
    move-object/from16 v41, v7

    const/16 v42, 0x0

    aget-object v41, v41, v42

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v41

    move-object/from16 v8, v41

    .line 61
    .local v8, "inputBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v41, v4

    move-object/from16 v42, v8

    const/16 v43, 0x0

    invoke-virtual/range {v41 .. v43}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPassResultBounds(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v41

    move-object/from16 v9, v41

    .line 62
    .local v9, "dstRawBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v41, v4

    move-object/from16 v42, v8

    move-object/from16 v43, v6

    invoke-virtual/range {v41 .. v43}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPassResultBounds(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v41

    move-object/from16 v10, v41

    .line 63
    .local v10, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v41, v2

    move-object/from16 v42, v10

    invoke-virtual/range {v41 .. v42}, Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 64
    move-object/from16 v41, v10

    move-object/from16 v0, v41

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v41, v0

    move/from16 v11, v41

    .line 65
    .local v11, "dstw":I
    move-object/from16 v41, v10

    move-object/from16 v0, v41

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v41, v0

    move/from16 v12, v41

    .line 68
    .local v12, "dsth":I
    move-object/from16 v41, v7

    const/16 v42, 0x0

    aget-object v41, v41, v42

    invoke-virtual/range {v41 .. v41}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v41

    check-cast v41, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v13, v41

    .line 69
    .local v13, "src":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v41, v13

    invoke-interface/range {v41 .. v41}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v41

    move/from16 v14, v41

    .line 70
    .local v14, "srcw":I
    move-object/from16 v41, v13

    invoke-interface/range {v41 .. v41}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v41

    move/from16 v15, v41

    .line 71
    .local v15, "srch":I
    move-object/from16 v41, v13

    invoke-interface/range {v41 .. v41}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v41

    move/from16 v16, v41

    .line 72
    .local v16, "srcscan":I
    move-object/from16 v41, v13

    invoke-interface/range {v41 .. v41}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v41

    move-object/from16 v17, v41

    .line 74
    .local v17, "srcPixels":[I
    move-object/from16 v41, v7

    const/16 v42, 0x0

    aget-object v41, v41, v42

    invoke-virtual/range {v41 .. v41}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v41

    move-object/from16 v18, v41

    .line 75
    .local v18, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v41, v7

    const/16 v42, 0x0

    aget-object v41, v41, v42

    invoke-virtual/range {v41 .. v41}, Lcom/sun/scenario/effect/ImageData;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v41

    move-object/from16 v19, v41

    .line 76
    .local v19, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v41, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v62, v41

    move-object/from16 v41, v62

    move-object/from16 v42, v62

    const/16 v43, 0x0

    const/16 v44, 0x0

    move/from16 v45, v14

    move/from16 v46, v15

    invoke-direct/range {v42 .. v46}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v20, v41

    .line 78
    .local v20, "src0NativeBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v41, v2

    const/16 v42, 0x0

    move-object/from16 v43, v18

    invoke-virtual/range {v41 .. v43}, Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 79
    move-object/from16 v41, v2

    const/16 v42, 0x0

    move-object/from16 v43, v19

    invoke-virtual/range {v41 .. v43}, Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;->setInputTransform(ILcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 80
    move-object/from16 v41, v2

    const/16 v42, 0x0

    move-object/from16 v43, v20

    invoke-virtual/range {v41 .. v43}, Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 82
    move-object/from16 v41, v2

    invoke-virtual/range {v41 .. v41}, Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v41

    move/from16 v42, v11

    move/from16 v43, v12

    invoke-virtual/range {v41 .. v43}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v41

    check-cast v41, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v21, v41

    .line 83
    .local v21, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v41, v2

    move-object/from16 v42, v21

    invoke-interface/range {v42 .. v42}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v42

    move-object/from16 v43, v21

    invoke-interface/range {v43 .. v43}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v43

    invoke-virtual/range {v41 .. v43}, Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;->setDestNativeBounds(II)V

    .line 84
    move-object/from16 v41, v21

    invoke-interface/range {v41 .. v41}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v41

    move/from16 v22, v41

    .line 85
    .local v22, "dstscan":I
    move-object/from16 v41, v21

    invoke-interface/range {v41 .. v41}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v41

    move-object/from16 v23, v41

    .line 87
    .local v23, "dstPixels":[I
    move-object/from16 v41, v4

    invoke-virtual/range {v41 .. v41}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPassKernelSize()I

    move-result v41

    move/from16 v24, v41

    .line 88
    .local v24, "count":I
    move-object/from16 v41, v4

    invoke-virtual/range {v41 .. v41}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPassWeights()Ljava/nio/FloatBuffer;

    move-result-object v41

    move-object/from16 v25, v41

    .line 90
    .local v25, "weights_buf":Ljava/nio/FloatBuffer;
    move-object/from16 v41, v4

    invoke-virtual/range {v41 .. v41}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPassType()Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    move-result-object v41

    move-object/from16 v26, v41

    .line 91
    .local v26, "type":Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;
    move-object/from16 v41, v19

    invoke-virtual/range {v41 .. v41}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v41

    if-eqz v41, :cond_0

    move-object/from16 v41, v10

    move-object/from16 v42, v9

    move-object/from16 v0, v42

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v42, v0

    move-object/from16 v43, v9

    move-object/from16 v0, v43

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v43, v0

    .line 92
    invoke-virtual/range {v41 .. v43}, Lcom/sun/javafx/geom/Rectangle;->contains(II)Z

    move-result v41

    if-nez v41, :cond_1

    .line 97
    :cond_0
    sget-object v41, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->GENERAL_VECTOR:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    move-object/from16 v26, v41

    .line 99
    :cond_1
    move-object/from16 v41, v26

    sget-object v42, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->HORIZONTAL_CENTERED:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    if-ne v0, v1, :cond_2

    .line 100
    move/from16 v41, v24

    const/16 v42, 0x2

    mul-int/lit8 v41, v41, 0x2

    move/from16 v0, v41

    new-array v0, v0, [F

    move-object/from16 v41, v0

    move-object/from16 v27, v41

    .line 101
    .local v27, "weights_arr":[F
    move-object/from16 v41, v25

    move-object/from16 v42, v27

    const/16 v43, 0x0

    move/from16 v44, v24

    invoke-virtual/range {v41 .. v44}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    move-result-object v41

    .line 102
    move-object/from16 v41, v25

    invoke-virtual/range {v41 .. v41}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v41

    .line 103
    move-object/from16 v41, v25

    move-object/from16 v42, v27

    move/from16 v43, v24

    move/from16 v44, v24

    invoke-virtual/range {v41 .. v44}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    move-result-object v41

    .line 104
    move-object/from16 v41, v2

    move-object/from16 v42, v23

    move/from16 v43, v11

    move/from16 v44, v12

    const/16 v45, 0x1

    move/from16 v46, v22

    move-object/from16 v47, v17

    move/from16 v48, v14

    move/from16 v49, v15

    const/16 v50, 0x1

    move/from16 v51, v16

    move-object/from16 v52, v27

    invoke-virtual/range {v41 .. v52}, Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;->filterHV([IIIII[IIIII[F)V

    .line 107
    .line 155
    :goto_0
    new-instance v41, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v62, v41

    move-object/from16 v41, v62

    move-object/from16 v42, v62

    move-object/from16 v43, v2

    invoke-virtual/range {v43 .. v43}, Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v43

    move-object/from16 v44, v21

    move-object/from16 v45, v10

    invoke-direct/range {v42 .. v45}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v41

    .end local v2    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;
    return-object v2

    .line 107
    .end local v27    # "weights_arr":[F
    .restart local v2    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;
    :cond_2
    move-object/from16 v41, v26

    sget-object v42, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->VERTICAL_CENTERED:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    if-ne v0, v1, :cond_3

    .line 108
    move/from16 v41, v24

    const/16 v42, 0x2

    mul-int/lit8 v41, v41, 0x2

    move/from16 v0, v41

    new-array v0, v0, [F

    move-object/from16 v41, v0

    move-object/from16 v27, v41

    .line 109
    .restart local v27    # "weights_arr":[F
    move-object/from16 v41, v25

    move-object/from16 v42, v27

    const/16 v43, 0x0

    move/from16 v44, v24

    invoke-virtual/range {v41 .. v44}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    move-result-object v41

    .line 110
    move-object/from16 v41, v25

    invoke-virtual/range {v41 .. v41}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v41

    .line 111
    move-object/from16 v41, v25

    move-object/from16 v42, v27

    move/from16 v43, v24

    move/from16 v44, v24

    invoke-virtual/range {v41 .. v44}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    move-result-object v41

    .line 112
    move-object/from16 v41, v2

    move-object/from16 v42, v23

    move/from16 v43, v12

    move/from16 v44, v11

    move/from16 v45, v22

    const/16 v46, 0x1

    move-object/from16 v47, v17

    move/from16 v48, v15

    move/from16 v49, v14

    move/from16 v50, v16

    const/16 v51, 0x1

    move-object/from16 v52, v27

    invoke-virtual/range {v41 .. v52}, Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;->filterHV([IIIII[IIIII[F)V

    .line 115
    goto :goto_0

    .line 116
    .end local v27    # "weights_arr":[F
    :cond_3
    move/from16 v41, v24

    move/from16 v0, v41

    new-array v0, v0, [F

    move-object/from16 v41, v0

    move-object/from16 v27, v41

    .line 117
    .restart local v27    # "weights_arr":[F
    move-object/from16 v41, v25

    move-object/from16 v42, v27

    const/16 v43, 0x0

    move/from16 v44, v24

    invoke-virtual/range {v41 .. v44}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    move-result-object v41

    .line 119
    const/16 v41, 0x8

    move/from16 v0, v41

    new-array v0, v0, [F

    move-object/from16 v41, v0

    move-object/from16 v28, v41

    .line 120
    .local v28, "srcRect":[F
    move-object/from16 v41, v2

    const/16 v42, 0x0

    move-object/from16 v43, v28

    move-object/from16 v44, v18

    move-object/from16 v0, v44

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    move-object/from16 v45, v18

    move-object/from16 v0, v45

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v46, v20

    move-object/from16 v0, v46

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v47, v20

    move-object/from16 v0, v47

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v47, v0

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    move-object/from16 v48, v10

    move-object/from16 v49, v19

    invoke-virtual/range {v41 .. v49}, Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v41

    move/from16 v29, v41

    .line 125
    .local v29, "nCoords":I
    move-object/from16 v41, v28

    const/16 v42, 0x0

    aget v41, v41, v42

    move/from16 v42, v14

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v41, v41, v42

    move/from16 v30, v41

    .line 126
    .local v30, "srcx0":F
    move-object/from16 v41, v28

    const/16 v42, 0x1

    aget v41, v41, v42

    move/from16 v42, v15

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v41, v41, v42

    move/from16 v31, v41

    .line 128
    .local v31, "srcy0":F
    move/from16 v41, v29

    const/16 v42, 0x8

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_4

    .line 129
    move-object/from16 v41, v28

    const/16 v42, 0x2

    aget v41, v41, v42

    move-object/from16 v42, v28

    const/16 v43, 0x0

    aget v42, v42, v43

    sub-float v41, v41, v42

    move/from16 v42, v14

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v41, v41, v42

    move-object/from16 v42, v10

    move-object/from16 v0, v42

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    move/from16 v32, v41

    .line 130
    .local v32, "dxcol":F
    const/16 v41, 0x0

    move/from16 v33, v41

    .line 131
    .local v33, "dycol":F
    const/16 v41, 0x0

    move/from16 v34, v41

    .line 132
    .local v34, "dxrow":F
    move-object/from16 v41, v28

    const/16 v42, 0x3

    aget v41, v41, v42

    move-object/from16 v42, v28

    const/16 v43, 0x1

    aget v42, v42, v43

    sub-float v41, v41, v42

    move/from16 v42, v15

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v41, v41, v42

    move-object/from16 v42, v10

    move-object/from16 v0, v42

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    move/from16 v35, v41

    .line 140
    .local v35, "dyrow":F
    :goto_1
    move-object/from16 v41, v4

    invoke-virtual/range {v41 .. v41}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPassVector()[F

    move-result-object v41

    move-object/from16 v36, v41

    .line 141
    .local v36, "offset_arr":[F
    move-object/from16 v41, v36

    const/16 v42, 0x0

    aget v41, v41, v42

    move/from16 v42, v14

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v41, v41, v42

    move/from16 v37, v41

    .line 142
    .local v37, "deltax":F
    move-object/from16 v41, v36

    const/16 v42, 0x1

    aget v41, v41, v42

    move/from16 v42, v15

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v41, v41, v42

    move/from16 v38, v41

    .line 143
    .local v38, "deltay":F
    move-object/from16 v41, v36

    const/16 v42, 0x2

    aget v41, v41, v42

    move/from16 v42, v14

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v41, v41, v42

    move/from16 v39, v41

    .line 144
    .local v39, "offsetx":F
    move-object/from16 v41, v36

    const/16 v42, 0x3

    aget v41, v41, v42

    move/from16 v42, v15

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v41, v41, v42

    move/from16 v40, v41

    .line 146
    .local v40, "offsety":F
    move-object/from16 v41, v2

    move-object/from16 v42, v23

    move/from16 v43, v11

    move/from16 v44, v12

    move/from16 v45, v22

    move-object/from16 v46, v17

    move/from16 v47, v14

    move/from16 v48, v15

    move/from16 v49, v16

    move-object/from16 v50, v27

    move/from16 v51, v24

    move/from16 v52, v30

    move/from16 v53, v31

    move/from16 v54, v39

    move/from16 v55, v40

    move/from16 v56, v37

    move/from16 v57, v38

    move/from16 v58, v32

    move/from16 v59, v33

    move/from16 v60, v34

    move/from16 v61, v35

    invoke-virtual/range {v41 .. v61}, Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;->filterVector([IIII[IIII[FIFFFFFFFFFF)V

    goto/16 :goto_0

    .line 134
    .end local v32    # "dxcol":F
    .end local v33    # "dycol":F
    .end local v34    # "dxrow":F
    .end local v35    # "dyrow":F
    .end local v36    # "offset_arr":[F
    .end local v37    # "deltax":F
    .end local v38    # "deltay":F
    .end local v39    # "offsetx":F
    .end local v40    # "offsety":F
    :cond_4
    move-object/from16 v41, v28

    const/16 v42, 0x4

    aget v41, v41, v42

    move-object/from16 v42, v28

    const/16 v43, 0x0

    aget v42, v42, v43

    sub-float v41, v41, v42

    move/from16 v42, v14

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v41, v41, v42

    move-object/from16 v42, v10

    move-object/from16 v0, v42

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    move/from16 v32, v41

    .line 135
    .restart local v32    # "dxcol":F
    move-object/from16 v41, v28

    const/16 v42, 0x5

    aget v41, v41, v42

    move-object/from16 v42, v28

    const/16 v43, 0x1

    aget v42, v42, v43

    sub-float v41, v41, v42

    move/from16 v42, v15

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v41, v41, v42

    move-object/from16 v42, v10

    move-object/from16 v0, v42

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    move/from16 v33, v41

    .line 136
    .restart local v33    # "dycol":F
    move-object/from16 v41, v28

    const/16 v42, 0x6

    aget v41, v41, v42

    move-object/from16 v42, v28

    const/16 v43, 0x0

    aget v42, v42, v43

    sub-float v41, v41, v42

    move/from16 v42, v14

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v41, v41, v42

    move-object/from16 v42, v10

    move-object/from16 v0, v42

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    move/from16 v34, v41

    .line 137
    .restart local v34    # "dxrow":F
    move-object/from16 v41, v28

    const/16 v42, 0x7

    aget v41, v41, v42

    move-object/from16 v42, v28

    const/16 v43, 0x1

    aget v42, v42, v43

    sub-float v41, v41, v42

    move/from16 v42, v15

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v41, v41, v42

    move-object/from16 v42, v10

    move-object/from16 v0, v42

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    move/from16 v35, v41

    .restart local v35    # "dyrow":F
    goto/16 :goto_1
.end method

.method public bridge synthetic filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 12

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    check-cast v8, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;->filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;
    return-object v0
.end method

.method native filterHV([IIIII[IIIII[F)V
.end method

.method native filterVector([IIII[IIII[FIFFFFFFFFFF)V
.end method

.class public Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;
.super Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;
.source "JSWLinearConvolvePeer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer",
        "<",
        "Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;",
        ">;"
    }
.end annotation


# static fields
.field private static final cmax:F = 254.9375f

.field private static final cmin:F = 1.0f


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;
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

    .line 48
    return-void
.end method

.method private varargs getResultBounds(Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;
    .locals 8

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;
    move-object v1, p1

    .local v1, "lcrstate":Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;
    move-object v2, p2

    .local v2, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, p3

    .local v3, "inputDatas":[Lcom/sun/scenario/effect/ImageData;
    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    move-object v4, v5

    .line 55
    .local v4, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v5, v1

    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPassResultBounds(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    move-object v4, v5

    .line 56
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;
    return-object v0
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 62

    .prologue
    .line 66
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;
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
    move-object/from16 v40, v2

    move-object/from16 v41, v4

    invoke-virtual/range {v40 .. v41}, Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;->setRenderState(Lcom/sun/scenario/effect/impl/state/RenderState;)V

    .line 67
    move-object/from16 v40, v2

    move-object/from16 v41, v4

    const/16 v42, 0x0

    move-object/from16 v43, v7

    invoke-direct/range {v40 .. v43}, Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;->getResultBounds(Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v40

    move-object/from16 v8, v40

    .line 68
    .local v8, "dstRawBounds":Lcom/sun/javafx/geom/Rectangle;
    new-instance v40, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v61, v40

    move-object/from16 v40, v61

    move-object/from16 v41, v61

    move-object/from16 v42, v8

    invoke-direct/range {v41 .. v42}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v9, v40

    .line 69
    .local v9, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v40, v9

    move-object/from16 v41, v6

    invoke-virtual/range {v40 .. v41}, Lcom/sun/javafx/geom/Rectangle;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 70
    move-object/from16 v40, v2

    move-object/from16 v41, v9

    invoke-virtual/range {v40 .. v41}, Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 71
    move-object/from16 v40, v9

    move-object/from16 v0, v40

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v40, v0

    move/from16 v10, v40

    .line 72
    .local v10, "dstw":I
    move-object/from16 v40, v9

    move-object/from16 v0, v40

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v40, v0

    move/from16 v11, v40

    .line 75
    .local v11, "dsth":I
    move-object/from16 v40, v7

    const/16 v41, 0x0

    aget-object v40, v40, v41

    invoke-virtual/range {v40 .. v40}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v40

    check-cast v40, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v12, v40

    .line 76
    .local v12, "src":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v40, v12

    invoke-interface/range {v40 .. v40}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v40

    move/from16 v13, v40

    .line 77
    .local v13, "srcw":I
    move-object/from16 v40, v12

    invoke-interface/range {v40 .. v40}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v40

    move/from16 v14, v40

    .line 78
    .local v14, "srch":I
    move-object/from16 v40, v12

    invoke-interface/range {v40 .. v40}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v40

    move/from16 v15, v40

    .line 79
    .local v15, "srcscan":I
    move-object/from16 v40, v12

    invoke-interface/range {v40 .. v40}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v40

    move-object/from16 v16, v40

    .line 81
    .local v16, "srcPixels":[I
    move-object/from16 v40, v7

    const/16 v41, 0x0

    aget-object v40, v40, v41

    invoke-virtual/range {v40 .. v40}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v40

    move-object/from16 v17, v40

    .line 82
    .local v17, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v40, v7

    const/16 v41, 0x0

    aget-object v40, v40, v41

    invoke-virtual/range {v40 .. v40}, Lcom/sun/scenario/effect/ImageData;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v40

    move-object/from16 v18, v40

    .line 83
    .local v18, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v40, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v61, v40

    move-object/from16 v40, v61

    move-object/from16 v41, v61

    const/16 v42, 0x0

    const/16 v43, 0x0

    move/from16 v44, v13

    move/from16 v45, v14

    invoke-direct/range {v41 .. v45}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v19, v40

    .line 85
    .local v19, "src0NativeBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v40, v2

    const/16 v41, 0x0

    move-object/from16 v42, v17

    invoke-virtual/range {v40 .. v42}, Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 86
    move-object/from16 v40, v2

    const/16 v41, 0x0

    move-object/from16 v42, v18

    invoke-virtual/range {v40 .. v42}, Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;->setInputTransform(ILcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 87
    move-object/from16 v40, v2

    const/16 v41, 0x0

    move-object/from16 v42, v19

    invoke-virtual/range {v40 .. v42}, Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 89
    move-object/from16 v40, v2

    invoke-virtual/range {v40 .. v40}, Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v40

    move/from16 v41, v10

    move/from16 v42, v11

    invoke-virtual/range {v40 .. v42}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v40

    check-cast v40, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v20, v40

    .line 90
    .local v20, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v40, v2

    move-object/from16 v41, v20

    invoke-interface/range {v41 .. v41}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v41

    move-object/from16 v42, v20

    invoke-interface/range {v42 .. v42}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v42

    invoke-virtual/range {v40 .. v42}, Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;->setDestNativeBounds(II)V

    .line 91
    move-object/from16 v40, v20

    invoke-interface/range {v40 .. v40}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v40

    move/from16 v21, v40

    .line 92
    .local v21, "dstscan":I
    move-object/from16 v40, v20

    invoke-interface/range {v40 .. v40}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v40

    move-object/from16 v22, v40

    .line 94
    .local v22, "dstPixels":[I
    move-object/from16 v40, v4

    invoke-virtual/range {v40 .. v40}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPassKernelSize()I

    move-result v40

    move/from16 v23, v40

    .line 95
    .local v23, "count":I
    move-object/from16 v40, v4

    invoke-virtual/range {v40 .. v40}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPassWeights()Ljava/nio/FloatBuffer;

    move-result-object v40

    move-object/from16 v24, v40

    .line 97
    .local v24, "weights_buf":Ljava/nio/FloatBuffer;
    move-object/from16 v40, v4

    invoke-virtual/range {v40 .. v40}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPassType()Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    move-result-object v40

    move-object/from16 v25, v40

    .line 98
    .local v25, "type":Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;
    move-object/from16 v40, v18

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v40

    if-eqz v40, :cond_0

    move-object/from16 v40, v9

    move-object/from16 v41, v8

    move-object/from16 v0, v41

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v41, v0

    move-object/from16 v42, v8

    move-object/from16 v0, v42

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v42, v0

    .line 99
    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/geom/Rectangle;->contains(II)Z

    move-result v40

    if-nez v40, :cond_1

    .line 104
    :cond_0
    sget-object v40, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->GENERAL_VECTOR:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    move-object/from16 v25, v40

    .line 106
    :cond_1
    move/from16 v40, v23

    if-ltz v40, :cond_2

    .line 108
    sget-object v40, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->GENERAL_VECTOR:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    move-object/from16 v25, v40

    .line 110
    :cond_2
    move-object/from16 v40, v25

    sget-object v41, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->HORIZONTAL_CENTERED:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_3

    .line 111
    move/from16 v40, v23

    const/16 v41, 0x2

    mul-int/lit8 v40, v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [F

    move-object/from16 v40, v0

    move-object/from16 v26, v40

    .line 112
    .local v26, "weights_arr":[F
    move-object/from16 v40, v24

    move-object/from16 v41, v26

    const/16 v42, 0x0

    move/from16 v43, v23

    invoke-virtual/range {v40 .. v43}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    move-result-object v40

    .line 113
    move-object/from16 v40, v24

    invoke-virtual/range {v40 .. v40}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v40

    .line 114
    move-object/from16 v40, v24

    move-object/from16 v41, v26

    move/from16 v42, v23

    move/from16 v43, v23

    invoke-virtual/range {v40 .. v43}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    move-result-object v40

    .line 115
    move-object/from16 v40, v2

    move-object/from16 v41, v22

    move/from16 v42, v10

    move/from16 v43, v11

    const/16 v44, 0x1

    move/from16 v45, v21

    move-object/from16 v46, v16

    move/from16 v47, v13

    move/from16 v48, v14

    const/16 v49, 0x1

    move/from16 v50, v15

    move-object/from16 v51, v26

    invoke-virtual/range {v40 .. v51}, Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;->filterHV([IIIII[IIIII[F)V

    .line 118
    .line 166
    :goto_0
    new-instance v40, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v61, v40

    move-object/from16 v40, v61

    move-object/from16 v41, v61

    move-object/from16 v42, v2

    invoke-virtual/range {v42 .. v42}, Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v42

    move-object/from16 v43, v20

    move-object/from16 v44, v9

    invoke-direct/range {v41 .. v44}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v40

    .end local v2    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;
    return-object v2

    .line 118
    .end local v26    # "weights_arr":[F
    .restart local v2    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;
    :cond_3
    move-object/from16 v40, v25

    sget-object v41, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->VERTICAL_CENTERED:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_4

    .line 119
    move/from16 v40, v23

    const/16 v41, 0x2

    mul-int/lit8 v40, v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [F

    move-object/from16 v40, v0

    move-object/from16 v26, v40

    .line 120
    .restart local v26    # "weights_arr":[F
    move-object/from16 v40, v24

    move-object/from16 v41, v26

    const/16 v42, 0x0

    move/from16 v43, v23

    invoke-virtual/range {v40 .. v43}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    move-result-object v40

    .line 121
    move-object/from16 v40, v24

    invoke-virtual/range {v40 .. v40}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v40

    .line 122
    move-object/from16 v40, v24

    move-object/from16 v41, v26

    move/from16 v42, v23

    move/from16 v43, v23

    invoke-virtual/range {v40 .. v43}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    move-result-object v40

    .line 123
    move-object/from16 v40, v2

    move-object/from16 v41, v22

    move/from16 v42, v11

    move/from16 v43, v10

    move/from16 v44, v21

    const/16 v45, 0x1

    move-object/from16 v46, v16

    move/from16 v47, v14

    move/from16 v48, v13

    move/from16 v49, v15

    const/16 v50, 0x1

    move-object/from16 v51, v26

    invoke-virtual/range {v40 .. v51}, Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;->filterHV([IIIII[IIIII[F)V

    .line 126
    goto :goto_0

    .line 127
    .end local v26    # "weights_arr":[F
    :cond_4
    move/from16 v40, v23

    move/from16 v0, v40

    new-array v0, v0, [F

    move-object/from16 v40, v0

    move-object/from16 v26, v40

    .line 128
    .restart local v26    # "weights_arr":[F
    move-object/from16 v40, v24

    move-object/from16 v41, v26

    const/16 v42, 0x0

    move/from16 v43, v23

    invoke-virtual/range {v40 .. v43}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    move-result-object v40

    .line 130
    const/16 v40, 0x8

    move/from16 v0, v40

    new-array v0, v0, [F

    move-object/from16 v40, v0

    move-object/from16 v27, v40

    .line 131
    .local v27, "srcRect":[F
    move-object/from16 v40, v2

    const/16 v41, 0x0

    move-object/from16 v42, v27

    move-object/from16 v43, v17

    move-object/from16 v0, v43

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v44, v17

    move-object/from16 v0, v44

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    move-object/from16 v45, v19

    move-object/from16 v0, v45

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v46, v19

    move-object/from16 v0, v46

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v47, v9

    move-object/from16 v48, v18

    invoke-virtual/range {v40 .. v48}, Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v40

    move/from16 v28, v40

    .line 136
    .local v28, "nCoords":I
    move-object/from16 v40, v27

    const/16 v41, 0x0

    aget v40, v40, v41

    move/from16 v41, v13

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v40, v40, v41

    move/from16 v29, v40

    .line 137
    .local v29, "srcx0":F
    move-object/from16 v40, v27

    const/16 v41, 0x1

    aget v40, v40, v41

    move/from16 v41, v14

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v40, v40, v41

    move/from16 v30, v40

    .line 139
    .local v30, "srcy0":F
    move/from16 v40, v28

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_5

    .line 140
    move-object/from16 v40, v27

    const/16 v41, 0x2

    aget v40, v40, v41

    move-object/from16 v41, v27

    const/16 v42, 0x0

    aget v41, v41, v42

    sub-float v40, v40, v41

    move/from16 v41, v13

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v40, v40, v41

    move-object/from16 v41, v9

    move-object/from16 v0, v41

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    div-float v40, v40, v41

    move/from16 v31, v40

    .line 141
    .local v31, "dxcol":F
    const/16 v40, 0x0

    move/from16 v32, v40

    .line 142
    .local v32, "dycol":F
    const/16 v40, 0x0

    move/from16 v33, v40

    .line 143
    .local v33, "dxrow":F
    move-object/from16 v40, v27

    const/16 v41, 0x3

    aget v40, v40, v41

    move-object/from16 v41, v27

    const/16 v42, 0x1

    aget v41, v41, v42

    sub-float v40, v40, v41

    move/from16 v41, v14

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v40, v40, v41

    move-object/from16 v41, v9

    move-object/from16 v0, v41

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    div-float v40, v40, v41

    move/from16 v34, v40

    .line 151
    .local v34, "dyrow":F
    :goto_1
    move-object/from16 v40, v4

    invoke-virtual/range {v40 .. v40}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPassVector()[F

    move-result-object v40

    move-object/from16 v35, v40

    .line 152
    .local v35, "offset_arr":[F
    move-object/from16 v40, v35

    const/16 v41, 0x0

    aget v40, v40, v41

    move/from16 v41, v13

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v40, v40, v41

    move/from16 v36, v40

    .line 153
    .local v36, "deltax":F
    move-object/from16 v40, v35

    const/16 v41, 0x1

    aget v40, v40, v41

    move/from16 v41, v14

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v40, v40, v41

    move/from16 v37, v40

    .line 154
    .local v37, "deltay":F
    move-object/from16 v40, v35

    const/16 v41, 0x2

    aget v40, v40, v41

    move/from16 v41, v13

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v40, v40, v41

    move/from16 v38, v40

    .line 155
    .local v38, "offsetx":F
    move-object/from16 v40, v35

    const/16 v41, 0x3

    aget v40, v40, v41

    move/from16 v41, v14

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v40, v40, v41

    move/from16 v39, v40

    .line 157
    .local v39, "offsety":F
    move-object/from16 v40, v2

    move-object/from16 v41, v22

    move/from16 v42, v10

    move/from16 v43, v11

    move/from16 v44, v21

    move-object/from16 v45, v16

    move/from16 v46, v13

    move/from16 v47, v14

    move/from16 v48, v15

    move-object/from16 v49, v26

    move/from16 v50, v23

    move/from16 v51, v29

    move/from16 v52, v30

    move/from16 v53, v38

    move/from16 v54, v39

    move/from16 v55, v36

    move/from16 v56, v37

    move/from16 v57, v31

    move/from16 v58, v32

    move/from16 v59, v33

    move/from16 v60, v34

    invoke-virtual/range {v40 .. v60}, Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;->filterVector([IIII[IIII[FIFFFFFFFFFF)V

    goto/16 :goto_0

    .line 145
    .end local v31    # "dxcol":F
    .end local v32    # "dycol":F
    .end local v33    # "dxrow":F
    .end local v34    # "dyrow":F
    .end local v35    # "offset_arr":[F
    .end local v36    # "deltax":F
    .end local v37    # "deltay":F
    .end local v38    # "offsetx":F
    .end local v39    # "offsety":F
    :cond_5
    move-object/from16 v40, v27

    const/16 v41, 0x4

    aget v40, v40, v41

    move-object/from16 v41, v27

    const/16 v42, 0x0

    aget v41, v41, v42

    sub-float v40, v40, v41

    move/from16 v41, v13

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v40, v40, v41

    move-object/from16 v41, v9

    move-object/from16 v0, v41

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    div-float v40, v40, v41

    move/from16 v31, v40

    .line 146
    .restart local v31    # "dxcol":F
    move-object/from16 v40, v27

    const/16 v41, 0x5

    aget v40, v40, v41

    move-object/from16 v41, v27

    const/16 v42, 0x1

    aget v41, v41, v42

    sub-float v40, v40, v41

    move/from16 v41, v14

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v40, v40, v41

    move-object/from16 v41, v9

    move-object/from16 v0, v41

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    div-float v40, v40, v41

    move/from16 v32, v40

    .line 147
    .restart local v32    # "dycol":F
    move-object/from16 v40, v27

    const/16 v41, 0x6

    aget v40, v40, v41

    move-object/from16 v41, v27

    const/16 v42, 0x0

    aget v41, v41, v42

    sub-float v40, v40, v41

    move/from16 v41, v13

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v40, v40, v41

    move-object/from16 v41, v9

    move-object/from16 v0, v41

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    div-float v40, v40, v41

    move/from16 v33, v40

    .line 148
    .restart local v33    # "dxrow":F
    move-object/from16 v40, v27

    const/16 v41, 0x7

    aget v40, v40, v41

    move-object/from16 v41, v27

    const/16 v42, 0x1

    aget v41, v41, v42

    sub-float v40, v40, v41

    move/from16 v41, v14

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v40, v40, v41

    move-object/from16 v41, v9

    move-object/from16 v0, v41

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    div-float v40, v40, v41

    move/from16 v34, v40

    .restart local v34    # "dyrow":F
    goto/16 :goto_1
.end method

.method public bridge synthetic filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 12

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;
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

    invoke-virtual/range {v6 .. v11}, Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;->filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;
    return-object v0
.end method

.method protected filterHV([IIIII[IIIII[F)V
    .locals 35

    .prologue
    .line 227
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;
    move-object/from16 v3, p1

    .local v3, "dstPixels":[I
    move/from16 v4, p2

    .local v4, "dstcols":I
    move/from16 v5, p3

    .local v5, "dstrows":I
    move/from16 v6, p4

    .local v6, "dcolinc":I
    move/from16 v7, p5

    .local v7, "drowinc":I
    move-object/from16 v8, p6

    .local v8, "srcPixels":[I
    move/from16 v9, p7

    .local v9, "srccols":I
    move/from16 v10, p8

    .local v10, "srcrows":I
    move/from16 v11, p9

    .local v11, "scolinc":I
    move/from16 v12, p10

    .local v12, "srowinc":I
    move-object/from16 v13, p11

    .local v13, "weights":[F
    move-object/from16 v30, v13

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x2

    div-int/lit8 v30, v30, 0x2

    move/from16 v14, v30

    .line 228
    .local v14, "kernelSize":I
    move/from16 v30, v14

    const/16 v31, 0x4

    mul-int/lit8 v30, v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v30, v0

    move-object/from16 v15, v30

    .line 229
    .local v15, "cvals":[F
    const/16 v30, 0x0

    move/from16 v16, v30

    .line 230
    .local v16, "dstrow":I
    const/16 v30, 0x0

    move/from16 v17, v30

    .line 231
    .local v17, "srcrow":I
    const/16 v30, 0x0

    move/from16 v18, v30

    .local v18, "r":I
    :goto_0
    move/from16 v30, v18

    move/from16 v31, v5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_d

    .line 232
    move/from16 v30, v16

    move/from16 v19, v30

    .line 233
    .local v19, "dstoff":I
    move/from16 v30, v17

    move/from16 v20, v30

    .line 237
    .local v20, "srcoff":I
    const/16 v30, 0x0

    move/from16 v21, v30

    .local v21, "i":I
    :goto_1
    move/from16 v30, v21

    move-object/from16 v31, v15

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_0

    .line 238
    move-object/from16 v30, v15

    move/from16 v31, v21

    const/16 v32, 0x0

    aput v32, v30, v31

    .line 237
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 240
    :cond_0
    move/from16 v30, v14

    move/from16 v21, v30

    .line 241
    .local v21, "koff":I
    const/16 v30, 0x0

    move/from16 v22, v30

    .local v22, "c":I
    :goto_2
    move/from16 v30, v22

    move/from16 v31, v4

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_c

    .line 243
    move/from16 v30, v14

    move/from16 v31, v21

    sub-int v30, v30, v31

    const/16 v31, 0x4

    mul-int/lit8 v30, v30, 0x4

    move/from16 v23, v30

    .line 244
    .local v23, "i":I
    move/from16 v30, v22

    move/from16 v31, v9

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_2

    move-object/from16 v30, v8

    move/from16 v31, v20

    aget v30, v30, v31

    :goto_3
    move/from16 v24, v30

    .line 245
    .local v24, "rgb":I
    move-object/from16 v30, v15

    move/from16 v31, v23

    const/16 v32, 0x0

    add-int/lit8 v31, v31, 0x0

    move/from16 v32, v24

    const/16 v33, 0x18

    ushr-int/lit8 v32, v32, 0x18

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    aput v32, v30, v31

    .line 246
    move-object/from16 v30, v15

    move/from16 v31, v23

    const/16 v32, 0x1

    add-int/lit8 v31, v31, 0x1

    move/from16 v32, v24

    const/16 v33, 0x10

    shr-int/lit8 v32, v32, 0x10

    const/16 v33, 0xff

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    aput v32, v30, v31

    .line 247
    move-object/from16 v30, v15

    move/from16 v31, v23

    const/16 v32, 0x2

    add-int/lit8 v31, v31, 0x2

    move/from16 v32, v24

    const/16 v33, 0x8

    shr-int/lit8 v32, v32, 0x8

    const/16 v33, 0xff

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    aput v32, v30, v31

    .line 248
    move-object/from16 v30, v15

    move/from16 v31, v23

    const/16 v32, 0x3

    add-int/lit8 v31, v31, 0x3

    move/from16 v32, v24

    const/16 v33, 0xff

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    aput v32, v30, v31

    .line 250
    add-int/lit8 v21, v21, -0x1

    move/from16 v30, v21

    if-gtz v30, :cond_1

    .line 251
    move/from16 v30, v21

    move/from16 v31, v14

    add-int v30, v30, v31

    move/from16 v21, v30

    .line 253
    :cond_1
    const/16 v30, 0x0

    move/from16 v25, v30

    .line 254
    .local v25, "suma":F
    const/16 v30, 0x0

    move/from16 v26, v30

    .line 255
    .local v26, "sumr":F
    const/16 v30, 0x0

    move/from16 v27, v30

    .line 256
    .local v27, "sumg":F
    const/16 v30, 0x0

    move/from16 v28, v30

    .line 257
    .local v28, "sumb":F
    const/16 v30, 0x0

    move/from16 v23, v30

    :goto_4
    move/from16 v30, v23

    move-object/from16 v31, v15

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_3

    .line 258
    move-object/from16 v30, v13

    move/from16 v31, v21

    move/from16 v32, v23

    const/16 v33, 0x2

    shr-int/lit8 v32, v32, 0x2

    add-int v31, v31, v32

    aget v30, v30, v31

    move/from16 v29, v30

    .line 259
    .local v29, "factor":F
    move/from16 v30, v25

    move-object/from16 v31, v15

    move/from16 v32, v23

    const/16 v33, 0x0

    add-int/lit8 v32, v32, 0x0

    aget v31, v31, v32

    move/from16 v32, v29

    mul-float v31, v31, v32

    add-float v30, v30, v31

    move/from16 v25, v30

    .line 260
    move/from16 v30, v26

    move-object/from16 v31, v15

    move/from16 v32, v23

    const/16 v33, 0x1

    add-int/lit8 v32, v32, 0x1

    aget v31, v31, v32

    move/from16 v32, v29

    mul-float v31, v31, v32

    add-float v30, v30, v31

    move/from16 v26, v30

    .line 261
    move/from16 v30, v27

    move-object/from16 v31, v15

    move/from16 v32, v23

    const/16 v33, 0x2

    add-int/lit8 v32, v32, 0x2

    aget v31, v31, v32

    move/from16 v32, v29

    mul-float v31, v31, v32

    add-float v30, v30, v31

    move/from16 v27, v30

    .line 262
    move/from16 v30, v28

    move-object/from16 v31, v15

    move/from16 v32, v23

    const/16 v33, 0x3

    add-int/lit8 v32, v32, 0x3

    aget v31, v31, v32

    move/from16 v32, v29

    mul-float v31, v31, v32

    add-float v30, v30, v31

    move/from16 v28, v30

    .line 257
    add-int/lit8 v23, v23, 0x4

    goto :goto_4

    .line 244
    .end local v24    # "rgb":I
    .end local v25    # "suma":F
    .end local v26    # "sumr":F
    .end local v27    # "sumg":F
    .end local v28    # "sumb":F
    .end local v29    # "factor":F
    :cond_2
    const/16 v30, 0x0

    goto/16 :goto_3

    .line 264
    .restart local v24    # "rgb":I
    .restart local v25    # "suma":F
    .restart local v26    # "sumr":F
    .restart local v27    # "sumg":F
    .restart local v28    # "sumb":F
    :cond_3
    move-object/from16 v30, v3

    move/from16 v31, v19

    move/from16 v32, v25

    const/high16 v33, 0x3f800000    # 1.0f

    cmpg-float v32, v32, v33

    if-gez v32, :cond_4

    const/16 v32, 0x0

    :goto_5
    const/16 v33, 0x18

    shl-int/lit8 v32, v32, 0x18

    move/from16 v33, v26

    const/high16 v34, 0x3f800000    # 1.0f

    cmpg-float v33, v33, v34

    if-gez v33, :cond_6

    const/16 v33, 0x0

    :goto_6
    const/16 v34, 0x10

    shl-int/lit8 v33, v33, 0x10

    add-int v32, v32, v33

    move/from16 v33, v27

    const/high16 v34, 0x3f800000    # 1.0f

    cmpg-float v33, v33, v34

    if-gez v33, :cond_8

    const/16 v33, 0x0

    :goto_7
    const/16 v34, 0x8

    shl-int/lit8 v33, v33, 0x8

    add-int v32, v32, v33

    move/from16 v33, v28

    const/high16 v34, 0x3f800000    # 1.0f

    cmpg-float v33, v33, v34

    if-gez v33, :cond_a

    const/16 v33, 0x0

    :goto_8
    add-int v32, v32, v33

    aput v32, v30, v31

    .line 269
    move/from16 v30, v19

    move/from16 v31, v6

    add-int v30, v30, v31

    move/from16 v19, v30

    .line 270
    move/from16 v30, v20

    move/from16 v31, v11

    add-int v30, v30, v31

    move/from16 v20, v30

    .line 241
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 264
    :cond_4
    move/from16 v32, v25

    const v33, 0x437ef000    # 254.9375f

    cmpl-float v32, v32, v33

    if-lez v32, :cond_5

    const/16 v32, 0xff

    goto :goto_5

    :cond_5
    move/from16 v32, v25

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    goto :goto_5

    :cond_6
    move/from16 v33, v26

    const v34, 0x437ef000    # 254.9375f

    cmpl-float v33, v33, v34

    if-lez v33, :cond_7

    const/16 v33, 0xff

    goto :goto_6

    :cond_7
    move/from16 v33, v26

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    goto :goto_6

    :cond_8
    move/from16 v33, v27

    const v34, 0x437ef000    # 254.9375f

    cmpl-float v33, v33, v34

    if-lez v33, :cond_9

    const/16 v33, 0xff

    goto :goto_7

    :cond_9
    move/from16 v33, v27

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    goto :goto_7

    :cond_a
    move/from16 v33, v28

    const v34, 0x437ef000    # 254.9375f

    cmpl-float v33, v33, v34

    if-lez v33, :cond_b

    const/16 v33, 0xff

    goto :goto_8

    :cond_b
    move/from16 v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    goto :goto_8

    .line 272
    .end local v23    # "i":I
    .end local v24    # "rgb":I
    .end local v25    # "suma":F
    .end local v26    # "sumr":F
    .end local v27    # "sumg":F
    .end local v28    # "sumb":F
    :cond_c
    move/from16 v30, v16

    move/from16 v31, v7

    add-int v30, v30, v31

    move/from16 v16, v30

    .line 273
    move/from16 v30, v17

    move/from16 v31, v12

    add-int v30, v30, v31

    move/from16 v17, v30

    .line 231
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 275
    .end local v19    # "dstoff":I
    .end local v20    # "srcoff":I
    .end local v21    # "koff":I
    .end local v22    # "c":I
    :cond_d
    return-void
.end method

.method protected filterVector([IIII[IIII[FIFFFFFFFFFF)V
    .locals 45

    .prologue
    .line 180
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;
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
    move-object/from16 v11, p9

    .local v11, "weights":[F
    move/from16 v12, p10

    .local v12, "count":I
    move/from16 v13, p11

    .local v13, "srcx0":F
    move/from16 v14, p12

    .local v14, "srcy0":F
    move/from16 v15, p13

    .local v15, "offsetx":F
    move/from16 v16, p14

    .local v16, "offsety":F
    move/from16 v17, p15

    .local v17, "deltax":F
    move/from16 v18, p16

    .local v18, "deltay":F
    move/from16 v19, p17

    .local v19, "dxcol":F
    move/from16 v20, p18

    .local v20, "dycol":F
    move/from16 v21, p19

    .local v21, "dxrow":F
    move/from16 v22, p20

    .local v22, "dyrow":F
    const/16 v32, 0x0

    move/from16 v23, v32

    .line 181
    .local v23, "dstrow":I
    const/16 v32, 0x4

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    move-object/from16 v24, v32

    .line 183
    .local v24, "fvals":[F
    move/from16 v32, v13

    move/from16 v33, v21

    move/from16 v34, v19

    add-float v33, v33, v34

    const/high16 v34, 0x3f000000    # 0.5f

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v13, v32

    .line 184
    move/from16 v32, v14

    move/from16 v33, v22

    move/from16 v34, v20

    add-float v33, v33, v34

    const/high16 v34, 0x3f000000    # 0.5f

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v14, v32

    .line 185
    const/16 v32, 0x0

    move/from16 v25, v32

    .local v25, "dy":I
    :goto_0
    move/from16 v32, v25

    move/from16 v33, v5

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_a

    .line 186
    move/from16 v32, v13

    move/from16 v26, v32

    .line 187
    .local v26, "srcx":F
    move/from16 v32, v14

    move/from16 v27, v32

    .line 188
    .local v27, "srcy":F
    const/16 v32, 0x0

    move/from16 v28, v32

    .local v28, "dx":I
    :goto_1
    move/from16 v32, v28

    move/from16 v33, v4

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_9

    .line 189
    move-object/from16 v32, v24

    const/16 v33, 0x0

    move-object/from16 v34, v24

    const/16 v35, 0x1

    move-object/from16 v36, v24

    const/16 v37, 0x2

    move-object/from16 v38, v24

    const/16 v39, 0x3

    const/16 v40, 0x0

    move-object/from16 v42, v38

    move/from16 v43, v39

    move/from16 v44, v40

    move/from16 v38, v44

    move-object/from16 v39, v42

    move/from16 v40, v43

    move/from16 v41, v44

    aput v41, v39, v40

    move-object/from16 v42, v36

    move/from16 v43, v37

    move/from16 v44, v38

    move/from16 v36, v44

    move-object/from16 v37, v42

    move/from16 v38, v43

    move/from16 v39, v44

    aput v39, v37, v38

    move-object/from16 v42, v34

    move/from16 v43, v35

    move/from16 v44, v36

    move/from16 v34, v44

    move-object/from16 v35, v42

    move/from16 v36, v43

    move/from16 v37, v44

    aput v37, v35, v36

    aput v34, v32, v33

    .line 190
    move/from16 v32, v26

    move/from16 v33, v15

    add-float v32, v32, v33

    move/from16 v29, v32

    .line 191
    .local v29, "sampx":F
    move/from16 v32, v27

    move/from16 v33, v16

    add-float v32, v32, v33

    move/from16 v30, v32

    .line 192
    .local v30, "sampy":F
    const/16 v32, 0x0

    move/from16 v31, v32

    .local v31, "i":I
    :goto_2
    move/from16 v32, v31

    move/from16 v33, v12

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_0

    .line 193
    move-object/from16 v32, v2

    move-object/from16 v33, v7

    move/from16 v34, v29

    move/from16 v35, v30

    move/from16 v36, v8

    move/from16 v37, v9

    move/from16 v38, v10

    move-object/from16 v39, v11

    move/from16 v40, v31

    aget v39, v39, v40

    move-object/from16 v40, v24

    invoke-virtual/range {v32 .. v40}, Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;->laccumsample([IFFIIIF[F)V

    .line 196
    move/from16 v32, v29

    move/from16 v33, v17

    add-float v32, v32, v33

    move/from16 v29, v32

    .line 197
    move/from16 v32, v30

    move/from16 v33, v18

    add-float v32, v32, v33

    move/from16 v30, v32

    .line 192
    add-int/lit8 v31, v31, 0x1

    goto :goto_2

    .line 199
    :cond_0
    move-object/from16 v32, v3

    move/from16 v33, v23

    move/from16 v34, v28

    add-int v33, v33, v34

    move-object/from16 v34, v24

    const/16 v35, 0x3

    aget v34, v34, v35

    const/high16 v35, 0x3f800000    # 1.0f

    cmpg-float v34, v34, v35

    if-gez v34, :cond_1

    const/16 v34, 0x0

    :goto_3
    const/16 v35, 0x18

    shl-int/lit8 v34, v34, 0x18

    move-object/from16 v35, v24

    const/16 v36, 0x0

    aget v35, v35, v36

    const/high16 v36, 0x3f800000    # 1.0f

    cmpg-float v35, v35, v36

    if-gez v35, :cond_3

    const/16 v35, 0x0

    :goto_4
    const/16 v36, 0x10

    shl-int/lit8 v35, v35, 0x10

    add-int v34, v34, v35

    move-object/from16 v35, v24

    const/16 v36, 0x1

    aget v35, v35, v36

    const/high16 v36, 0x3f800000    # 1.0f

    cmpg-float v35, v35, v36

    if-gez v35, :cond_5

    const/16 v35, 0x0

    :goto_5
    const/16 v36, 0x8

    shl-int/lit8 v35, v35, 0x8

    add-int v34, v34, v35

    move-object/from16 v35, v24

    const/16 v36, 0x2

    aget v35, v35, v36

    const/high16 v36, 0x3f800000    # 1.0f

    cmpg-float v35, v35, v36

    if-gez v35, :cond_7

    const/16 v35, 0x0

    :goto_6
    add-int v34, v34, v35

    aput v34, v32, v33

    .line 204
    move/from16 v32, v26

    move/from16 v33, v19

    add-float v32, v32, v33

    move/from16 v26, v32

    .line 205
    move/from16 v32, v27

    move/from16 v33, v20

    add-float v32, v32, v33

    move/from16 v27, v32

    .line 188
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1

    .line 199
    :cond_1
    move-object/from16 v34, v24

    const/16 v35, 0x3

    aget v34, v34, v35

    const v35, 0x437ef000    # 254.9375f

    cmpl-float v34, v34, v35

    if-lez v34, :cond_2

    const/16 v34, 0xff

    goto :goto_3

    :cond_2
    move-object/from16 v34, v24

    const/16 v35, 0x3

    aget v34, v34, v35

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    goto :goto_3

    :cond_3
    move-object/from16 v35, v24

    const/16 v36, 0x0

    aget v35, v35, v36

    const v36, 0x437ef000    # 254.9375f

    cmpl-float v35, v35, v36

    if-lez v35, :cond_4

    const/16 v35, 0xff

    goto :goto_4

    :cond_4
    move-object/from16 v35, v24

    const/16 v36, 0x0

    aget v35, v35, v36

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    goto :goto_4

    :cond_5
    move-object/from16 v35, v24

    const/16 v36, 0x1

    aget v35, v35, v36

    const v36, 0x437ef000    # 254.9375f

    cmpl-float v35, v35, v36

    if-lez v35, :cond_6

    const/16 v35, 0xff

    goto :goto_5

    :cond_6
    move-object/from16 v35, v24

    const/16 v36, 0x1

    aget v35, v35, v36

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    goto :goto_5

    :cond_7
    move-object/from16 v35, v24

    const/16 v36, 0x2

    aget v35, v35, v36

    const v36, 0x437ef000    # 254.9375f

    cmpl-float v35, v35, v36

    if-lez v35, :cond_8

    const/16 v35, 0xff

    goto :goto_6

    :cond_8
    move-object/from16 v35, v24

    const/16 v36, 0x2

    aget v35, v35, v36

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    goto/16 :goto_6

    .line 207
    .end local v29    # "sampx":F
    .end local v30    # "sampy":F
    .end local v31    # "i":I
    :cond_9
    move/from16 v32, v13

    move/from16 v33, v21

    add-float v32, v32, v33

    move/from16 v13, v32

    .line 208
    move/from16 v32, v14

    move/from16 v33, v22

    add-float v32, v32, v33

    move/from16 v14, v32

    .line 209
    move/from16 v32, v23

    move/from16 v33, v6

    add-int v32, v32, v33

    move/from16 v23, v32

    .line 185
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    .line 211
    .end local v26    # "srcx":F
    .end local v27    # "srcy":F
    .end local v28    # "dx":I
    :cond_a
    return-void
.end method

.class public Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;
.super Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer;
.source "SSEDisplacementMapPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;
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

.method private static native filter([IIIIIIFFFF[FFFFFIII[IFFFFIIIFFFFF)V
.end method

.method private getImagetx()[F
    .locals 9

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/scenario/effect/DisplacementMap;->getWrap()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f000000    # 0.5f

    :goto_0
    move v1, v2

    .line 68
    .local v1, "inset":F
    const/4 v2, 0x4

    new-array v2, v2, [F

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x0

    move v5, v1

    move-object v6, v0

    const/4 v7, 0x0

    .line 69
    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v6

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v3, v4

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x1

    move v5, v1

    move-object v6, v0

    const/4 v7, 0x0

    .line 70
    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v6

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v3, v4

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x2

    move-object v5, v0

    const/4 v6, 0x0

    .line 71
    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getInputBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    move v7, v1

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v6

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v3, v4

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x3

    move-object v5, v0

    const/4 v6, 0x0

    .line 72
    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getInputBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    move v7, v1

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v6

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v3, v4

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;
    return-object v0

    .line 67
    .end local v1    # "inset":F
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSampletx()[F
    .locals 6

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;
    const/4 v1, 0x4

    new-array v1, v1, [F

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    move-object v4, v0

    .line 60
    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/scenario/effect/DisplacementMap;->getOffsetX()F

    move-result v4

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    move-object v4, v0

    .line 61
    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/scenario/effect/DisplacementMap;->getOffsetY()F

    move-result v4

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x2

    move-object v4, v0

    .line 62
    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/scenario/effect/DisplacementMap;->getScaleX()F

    move-result v4

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x3

    move-object v4, v0

    .line 63
    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/scenario/effect/DisplacementMap;->getScaleY()F

    move-result v4

    aput v4, v2, v3

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;
    return-object v0
.end method

.method private getWrap()F
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/DisplacementMap;->getWrap()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 69

    .prologue
    .line 105
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;
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
    move-object/from16 v37, v1

    move-object/from16 v38, v2

    invoke-virtual/range {v37 .. v38}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 106
    move-object/from16 v37, v1

    move-object/from16 v38, v4

    move-object/from16 v39, v5

    move-object/from16 v40, v6

    invoke-virtual/range {v37 .. v40}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v37

    move-object/from16 v7, v37

    .line 107
    .local v7, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v37, v1

    move-object/from16 v38, v7

    invoke-virtual/range {v37 .. v38}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 110
    move-object/from16 v37, v1

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getSamplerData(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/sun/scenario/effect/FloatMap;

    move-object/from16 v8, v37

    .line 111
    .local v8, "src1":Lcom/sun/scenario/effect/FloatMap;
    const/16 v37, 0x0

    move/from16 v9, v37

    .line 112
    .local v9, "src1x":I
    const/16 v37, 0x0

    move/from16 v10, v37

    .line 113
    .local v10, "src1y":I
    move-object/from16 v37, v8

    invoke-virtual/range {v37 .. v37}, Lcom/sun/scenario/effect/FloatMap;->getWidth()I

    move-result v37

    move/from16 v11, v37

    .line 114
    .local v11, "src1w":I
    move-object/from16 v37, v8

    invoke-virtual/range {v37 .. v37}, Lcom/sun/scenario/effect/FloatMap;->getHeight()I

    move-result v37

    move/from16 v12, v37

    .line 115
    .local v12, "src1h":I
    move-object/from16 v37, v8

    invoke-virtual/range {v37 .. v37}, Lcom/sun/scenario/effect/FloatMap;->getWidth()I

    move-result v37

    move/from16 v13, v37

    .line 116
    .local v13, "src1scan":I
    move-object/from16 v37, v8

    invoke-virtual/range {v37 .. v37}, Lcom/sun/scenario/effect/FloatMap;->getData()[F

    move-result-object v37

    move-object/from16 v14, v37

    .line 117
    .local v14, "mapImg":[F
    move-object/from16 v37, v6

    const/16 v38, 0x0

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v37

    check-cast v37, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v15, v37

    .line 118
    .local v15, "src0":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v37, 0x0

    move/from16 v16, v37

    .line 119
    .local v16, "src0x":I
    const/16 v37, 0x0

    move/from16 v17, v37

    .line 120
    .local v17, "src0y":I
    move-object/from16 v37, v15

    invoke-interface/range {v37 .. v37}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v37

    move/from16 v18, v37

    .line 121
    .local v18, "src0w":I
    move-object/from16 v37, v15

    invoke-interface/range {v37 .. v37}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v37

    move/from16 v19, v37

    .line 122
    .local v19, "src0h":I
    move-object/from16 v37, v15

    invoke-interface/range {v37 .. v37}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v37

    move/from16 v20, v37

    .line 123
    .local v20, "src0scan":I
    move-object/from16 v37, v15

    .line 124
    invoke-interface/range {v37 .. v37}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v37

    move-object/from16 v21, v37

    .line 125
    .local v21, "origImg":[I
    new-instance v37, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v68, v37

    move-object/from16 v37, v68

    move-object/from16 v38, v68

    move/from16 v39, v16

    move/from16 v40, v17

    move/from16 v41, v18

    move/from16 v42, v19

    invoke-direct/range {v38 .. v42}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v22, v37

    .line 126
    .local v22, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v37, v6

    const/16 v38, 0x0

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v37

    move-object/from16 v23, v37

    .line 127
    .local v23, "src0InputBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v37, v6

    const/16 v38, 0x0

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Lcom/sun/scenario/effect/ImageData;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v37

    move-object/from16 v24, v37

    .line 128
    .local v24, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v37, v1

    const/16 v38, 0x0

    move-object/from16 v39, v23

    invoke-virtual/range {v37 .. v39}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 129
    move-object/from16 v37, v1

    const/16 v38, 0x0

    move-object/from16 v39, v22

    invoke-virtual/range {v37 .. v39}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 132
    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [F

    move-object/from16 v37, v0

    fill-array-data v37, :array_0

    move-object/from16 v25, v37

    .line 133
    .local v25, "src1Rect":[F
    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [F

    move-object/from16 v37, v0

    move-object/from16 v26, v37

    .line 134
    .local v26, "src0Rect":[F
    move-object/from16 v37, v1

    const/16 v38, 0x0

    move-object/from16 v39, v26

    move-object/from16 v40, v23

    move-object/from16 v0, v40

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v41, v23

    move-object/from16 v0, v41

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move/from16 v42, v18

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move/from16 v43, v19

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v44, v7

    move-object/from16 v45, v24

    invoke-virtual/range {v37 .. v45}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v37

    .line 140
    const/16 v37, 0x0

    move/from16 v27, v37

    .line 141
    .local v27, "dstx":I
    const/16 v37, 0x0

    move/from16 v28, v37

    .line 142
    .local v28, "dsty":I
    move-object/from16 v37, v7

    move-object/from16 v0, v37

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v37, v0

    move/from16 v29, v37

    .line 143
    .local v29, "dstw":I
    move-object/from16 v37, v7

    move-object/from16 v0, v37

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v37, v0

    move/from16 v30, v37

    .line 145
    .local v30, "dsth":I
    move-object/from16 v37, v1

    invoke-virtual/range {v37 .. v37}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v37

    move/from16 v38, v29

    move/from16 v39, v30

    invoke-virtual/range {v37 .. v39}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v37

    check-cast v37, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v31, v37

    .line 146
    .local v31, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v37, v1

    move-object/from16 v38, v31

    invoke-interface/range {v38 .. v38}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v38

    move-object/from16 v39, v31

    invoke-interface/range {v39 .. v39}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v39

    invoke-virtual/range {v37 .. v39}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->setDestNativeBounds(II)V

    .line 147
    move-object/from16 v37, v31

    invoke-interface/range {v37 .. v37}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v37

    move/from16 v32, v37

    .line 148
    .local v32, "dstscan":I
    move-object/from16 v37, v31

    invoke-interface/range {v37 .. v37}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v37

    move-object/from16 v33, v37

    .line 150
    .local v33, "dstPixels":[I
    move-object/from16 v37, v1

    invoke-direct/range {v37 .. v37}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getImagetx()[F

    move-result-object v37

    move-object/from16 v34, v37

    .line 151
    .local v34, "imagetx_arr":[F
    move-object/from16 v37, v1

    invoke-direct/range {v37 .. v37}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getSampletx()[F

    move-result-object v37

    move-object/from16 v35, v37

    .line 152
    .local v35, "sampletx_arr":[F
    move-object/from16 v37, v1

    invoke-direct/range {v37 .. v37}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getWrap()F

    move-result v37

    move/from16 v36, v37

    .line 155
    .local v36, "wrap":F
    move-object/from16 v37, v33

    const/16 v38, 0x0

    const/16 v39, 0x0

    move/from16 v40, v29

    move/from16 v41, v30

    move/from16 v42, v32

    move-object/from16 v43, v34

    const/16 v44, 0x0

    aget v43, v43, v44

    move-object/from16 v44, v34

    const/16 v45, 0x1

    aget v44, v44, v45

    move-object/from16 v45, v34

    const/16 v46, 0x2

    aget v45, v45, v46

    move-object/from16 v46, v34

    const/16 v47, 0x3

    aget v46, v46, v47

    move-object/from16 v47, v14

    move-object/from16 v48, v25

    const/16 v49, 0x0

    aget v48, v48, v49

    move-object/from16 v49, v25

    const/16 v50, 0x1

    aget v49, v49, v50

    move-object/from16 v50, v25

    const/16 v51, 0x2

    aget v50, v50, v51

    move-object/from16 v51, v25

    const/16 v52, 0x3

    aget v51, v51, v52

    move/from16 v52, v11

    move/from16 v53, v12

    move/from16 v54, v13

    move-object/from16 v55, v21

    move-object/from16 v56, v26

    const/16 v57, 0x0

    aget v56, v56, v57

    move-object/from16 v57, v26

    const/16 v58, 0x1

    aget v57, v57, v58

    move-object/from16 v58, v26

    const/16 v59, 0x2

    aget v58, v58, v59

    move-object/from16 v59, v26

    const/16 v60, 0x3

    aget v59, v59, v60

    move/from16 v60, v18

    move/from16 v61, v19

    move/from16 v62, v20

    move-object/from16 v63, v35

    const/16 v64, 0x0

    aget v63, v63, v64

    move-object/from16 v64, v35

    const/16 v65, 0x1

    aget v64, v64, v65

    move-object/from16 v65, v35

    const/16 v66, 0x2

    aget v65, v65, v66

    move-object/from16 v66, v35

    const/16 v67, 0x3

    aget v66, v66, v67

    move/from16 v67, v36

    invoke-static/range {v37 .. v67}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->filter([IIIIIIFFFF[FFFFFIII[IFFFFIIIFFFFF)V

    .line 169
    new-instance v37, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v68, v37

    move-object/from16 v37, v68

    move-object/from16 v38, v68

    move-object/from16 v39, v1

    invoke-virtual/range {v39 .. v39}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v39

    move-object/from16 v40, v31

    move-object/from16 v41, v7

    invoke-direct/range {v38 .. v41}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v1, v37

    .end local v1    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;
    return-object v1

    .line 132
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/DisplacementMap;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/DisplacementMap;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;
    return-object v0
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;
    return-object v0
.end method

.method protected getSamplerData(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/scenario/effect/DisplacementMap;->getMapData()Lcom/sun/scenario/effect/FloatMap;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;
    return-object v0
.end method

.method public getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I
    .locals 18

    .prologue
    .line 92
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;
    move/from16 v1, p1

    .local v1, "inputIndex":I
    move-object/from16 v2, p2

    .local v2, "coords":[F
    move/from16 v3, p3

    .local v3, "srcX":F
    move/from16 v4, p4

    .local v4, "srcY":F
    move/from16 v5, p5

    .local v5, "srcNativeWidth":F
    move/from16 v6, p6

    .local v6, "srcNativeHeight":F
    move-object/from16 v7, p7

    .local v7, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v8, p8

    .local v8, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v9, v2

    const/4 v10, 0x0

    move-object v11, v2

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v15, v11

    move/from16 v16, v12

    move/from16 v17, v13

    move/from16 v11, v17

    move-object v12, v15

    move/from16 v13, v16

    move/from16 v14, v17

    aput v14, v12, v13

    aput v11, v9, v10

    .line 93
    move-object v9, v2

    const/4 v10, 0x2

    move-object v11, v2

    const/4 v12, 0x3

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v15, v11

    move/from16 v16, v12

    move/from16 v17, v13

    move/from16 v11, v17

    move-object v12, v15

    move/from16 v13, v16

    move/from16 v14, v17

    aput v14, v12, v13

    aput v11, v9, v10

    .line 94
    const/4 v9, 0x4

    move v0, v9

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEDisplacementMapPeer;
    return v0
.end method

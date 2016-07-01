.class public Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;
.super Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;
.source "JSWDisplacementMapPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;
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

    .line 50
    return-void
.end method

.method private getImagetx()[F
    .locals 9

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

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
    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

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
    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

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
    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getInputBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    move v7, v1

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

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
    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getInputBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    move v7, v1

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v6

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v3, v4

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;
    return-object v0

    .line 67
    .end local v1    # "inset":F
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSampletx()[F
    .locals 6

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;
    const/4 v1, 0x4

    new-array v1, v1, [F

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    move-object v4, v0

    .line 60
    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

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
    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

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
    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

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
    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/scenario/effect/DisplacementMap;->getScaleY()F

    move-result v4

    aput v4, v2, v3

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;
    return-object v0
.end method

.method private getWrap()F
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/DisplacementMap;->getWrap()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 90

    .prologue
    .line 105
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;
    move-object/from16 v4, p1

    .local v4, "effect":Lcom/sun/scenario/effect/Effect;
    move-object/from16 v5, p2

    .local v5, "rstate":Lcom/sun/scenario/effect/impl/state/RenderState;
    move-object/from16 v6, p3

    .local v6, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v7, p4

    .local v7, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v8, p5

    .local v8, "inputs":[Lcom/sun/scenario/effect/ImageData;
    move-object/from16 v80, v3

    move-object/from16 v81, v4

    invoke-virtual/range {v80 .. v81}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 106
    move-object/from16 v80, v3

    move-object/from16 v81, v6

    move-object/from16 v82, v7

    move-object/from16 v83, v8

    invoke-virtual/range {v80 .. v83}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v80

    move-object/from16 v9, v80

    .line 107
    .local v9, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v80, v3

    move-object/from16 v81, v9

    invoke-virtual/range {v80 .. v81}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 110
    move-object/from16 v80, v8

    const/16 v81, 0x0

    aget-object v80, v80, v81

    invoke-virtual/range {v80 .. v80}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v80

    check-cast v80, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v10, v80

    .line 111
    .local v10, "src0":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v80, 0x0

    move/from16 v11, v80

    .line 112
    .local v11, "src0x":I
    const/16 v80, 0x0

    move/from16 v12, v80

    .line 113
    .local v12, "src0y":I
    move-object/from16 v80, v10

    invoke-interface/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v80

    move/from16 v13, v80

    .line 114
    .local v13, "src0w":I
    move-object/from16 v80, v10

    invoke-interface/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v80

    move/from16 v14, v80

    .line 115
    .local v14, "src0h":I
    move-object/from16 v80, v10

    invoke-interface/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v80

    move/from16 v15, v80

    .line 116
    .local v15, "src0scan":I
    move-object/from16 v80, v10

    .line 117
    invoke-interface/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v80

    move-object/from16 v16, v80

    .line 118
    .local v16, "origImg":[I
    new-instance v80, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v89, v80

    move-object/from16 v80, v89

    move-object/from16 v81, v89

    move/from16 v82, v11

    move/from16 v83, v12

    move/from16 v84, v13

    move/from16 v85, v14

    invoke-direct/range {v81 .. v85}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v17, v80

    .line 119
    .local v17, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v80, v8

    const/16 v81, 0x0

    aget-object v80, v80, v81

    invoke-virtual/range {v80 .. v80}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v80

    move-object/from16 v18, v80

    .line 120
    .local v18, "src0InputBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v80, v8

    const/16 v81, 0x0

    aget-object v80, v80, v81

    invoke-virtual/range {v80 .. v80}, Lcom/sun/scenario/effect/ImageData;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v80

    move-object/from16 v19, v80

    .line 121
    .local v19, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v80, v3

    const/16 v81, 0x0

    move-object/from16 v82, v18

    invoke-virtual/range {v80 .. v82}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 122
    move-object/from16 v80, v3

    const/16 v81, 0x0

    move-object/from16 v82, v17

    invoke-virtual/range {v80 .. v82}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 123
    const/16 v80, 0x4

    move/from16 v0, v80

    new-array v0, v0, [F

    move-object/from16 v80, v0

    move-object/from16 v20, v80

    .line 124
    .local v20, "origImg_vals":[F
    move-object/from16 v80, v3

    const/16 v81, 0x1

    invoke-virtual/range {v80 .. v81}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getSamplerData(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Lcom/sun/scenario/effect/FloatMap;

    move-object/from16 v21, v80

    .line 125
    .local v21, "src1":Lcom/sun/scenario/effect/FloatMap;
    const/16 v80, 0x0

    move/from16 v22, v80

    .line 126
    .local v22, "src1x":I
    const/16 v80, 0x0

    move/from16 v23, v80

    .line 127
    .local v23, "src1y":I
    move-object/from16 v80, v21

    invoke-virtual/range {v80 .. v80}, Lcom/sun/scenario/effect/FloatMap;->getWidth()I

    move-result v80

    move/from16 v24, v80

    .line 128
    .local v24, "src1w":I
    move-object/from16 v80, v21

    invoke-virtual/range {v80 .. v80}, Lcom/sun/scenario/effect/FloatMap;->getHeight()I

    move-result v80

    move/from16 v25, v80

    .line 129
    .local v25, "src1h":I
    move-object/from16 v80, v21

    invoke-virtual/range {v80 .. v80}, Lcom/sun/scenario/effect/FloatMap;->getWidth()I

    move-result v80

    move/from16 v26, v80

    .line 130
    .local v26, "src1scan":I
    move-object/from16 v80, v21

    invoke-virtual/range {v80 .. v80}, Lcom/sun/scenario/effect/FloatMap;->getData()[F

    move-result-object v80

    move-object/from16 v27, v80

    .line 131
    .local v27, "mapImg":[F
    const/16 v80, 0x4

    move/from16 v0, v80

    new-array v0, v0, [F

    move-object/from16 v80, v0

    move-object/from16 v28, v80

    .line 134
    .local v28, "mapImg_vals":[F
    const/16 v80, 0x4

    move/from16 v0, v80

    new-array v0, v0, [F

    move-object/from16 v80, v0

    move-object/from16 v29, v80

    .line 135
    .local v29, "src0Rect":[F
    move-object/from16 v80, v3

    const/16 v81, 0x0

    move-object/from16 v82, v29

    move-object/from16 v83, v18

    move-object/from16 v0, v83

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v83, v0

    move/from16 v0, v83

    int-to-float v0, v0

    move/from16 v83, v0

    move-object/from16 v84, v18

    move-object/from16 v0, v84

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v84, v0

    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v84, v0

    move/from16 v85, v13

    move/from16 v0, v85

    int-to-float v0, v0

    move/from16 v85, v0

    move/from16 v86, v14

    move/from16 v0, v86

    int-to-float v0, v0

    move/from16 v86, v0

    move-object/from16 v87, v9

    move-object/from16 v88, v19

    invoke-virtual/range {v80 .. v88}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v80

    .line 139
    const/16 v80, 0x4

    move/from16 v0, v80

    new-array v0, v0, [F

    move-object/from16 v80, v0

    fill-array-data v80, :array_0

    move-object/from16 v30, v80

    .line 142
    .local v30, "src1Rect":[F
    const/16 v80, 0x0

    move/from16 v31, v80

    .line 143
    .local v31, "dstx":I
    const/16 v80, 0x0

    move/from16 v32, v80

    .line 144
    .local v32, "dsty":I
    move-object/from16 v80, v9

    move-object/from16 v0, v80

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v80, v0

    move/from16 v33, v80

    .line 145
    .local v33, "dstw":I
    move-object/from16 v80, v9

    move-object/from16 v0, v80

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v80, v0

    move/from16 v34, v80

    .line 147
    .local v34, "dsth":I
    move-object/from16 v80, v3

    invoke-virtual/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v80

    move/from16 v81, v33

    move/from16 v82, v34

    invoke-virtual/range {v80 .. v82}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v80

    check-cast v80, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v35, v80

    .line 148
    .local v35, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v80, v3

    move-object/from16 v81, v35

    invoke-interface/range {v81 .. v81}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v81

    move-object/from16 v82, v35

    invoke-interface/range {v82 .. v82}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v82

    invoke-virtual/range {v80 .. v82}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->setDestNativeBounds(II)V

    .line 149
    move-object/from16 v80, v35

    invoke-interface/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v80

    move/from16 v36, v80

    .line 150
    .local v36, "dstscan":I
    move-object/from16 v80, v35

    invoke-interface/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v80

    move-object/from16 v37, v80

    .line 155
    .local v37, "dstPixels":[I
    move-object/from16 v80, v3

    invoke-direct/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getImagetx()[F

    move-result-object v80

    move-object/from16 v43, v80

    .line 156
    .local v43, "imagetx_arr":[F
    move-object/from16 v80, v43

    const/16 v81, 0x0

    aget v80, v80, v81

    move/from16 v44, v80

    .local v44, "imagetx_x":F
    move-object/from16 v80, v43

    const/16 v81, 0x1

    aget v80, v80, v81

    move/from16 v45, v80

    .local v45, "imagetx_y":F
    move-object/from16 v80, v43

    const/16 v81, 0x2

    aget v80, v80, v81

    move/from16 v46, v80

    .local v46, "imagetx_z":F
    move-object/from16 v80, v43

    const/16 v81, 0x3

    aget v80, v80, v81

    move/from16 v47, v80

    .line 157
    .local v47, "imagetx_w":F
    move-object/from16 v80, v3

    invoke-direct/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getWrap()F

    move-result v80

    move/from16 v48, v80

    .line 158
    .local v48, "wrap":F
    move-object/from16 v80, v3

    invoke-direct/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getSampletx()[F

    move-result-object v80

    move-object/from16 v49, v80

    .line 159
    .local v49, "sampletx_arr":[F
    move-object/from16 v80, v49

    const/16 v81, 0x0

    aget v80, v80, v81

    move/from16 v50, v80

    .local v50, "sampletx_x":F
    move-object/from16 v80, v49

    const/16 v81, 0x1

    aget v80, v80, v81

    move/from16 v51, v80

    .local v51, "sampletx_y":F
    move-object/from16 v80, v49

    const/16 v81, 0x2

    aget v80, v80, v81

    move/from16 v52, v80

    .local v52, "sampletx_z":F
    move-object/from16 v80, v49

    const/16 v81, 0x3

    aget v80, v80, v81

    move/from16 v53, v80

    .line 162
    .local v53, "sampletx_w":F
    move-object/from16 v80, v29

    const/16 v81, 0x2

    aget v80, v80, v81

    move-object/from16 v81, v29

    const/16 v82, 0x0

    aget v81, v81, v82

    sub-float v80, v80, v81

    move/from16 v81, v33

    move/from16 v0, v81

    int-to-float v0, v0

    move/from16 v81, v0

    div-float v80, v80, v81

    move/from16 v54, v80

    .line 163
    .local v54, "inc0_x":F
    move-object/from16 v80, v29

    const/16 v81, 0x3

    aget v80, v80, v81

    move-object/from16 v81, v29

    const/16 v82, 0x1

    aget v81, v81, v82

    sub-float v80, v80, v81

    move/from16 v81, v34

    move/from16 v0, v81

    int-to-float v0, v0

    move/from16 v81, v0

    div-float v80, v80, v81

    move/from16 v55, v80

    .line 164
    .local v55, "inc0_y":F
    move-object/from16 v80, v30

    const/16 v81, 0x2

    aget v80, v80, v81

    move-object/from16 v81, v30

    const/16 v82, 0x0

    aget v81, v81, v82

    sub-float v80, v80, v81

    move/from16 v81, v33

    move/from16 v0, v81

    int-to-float v0, v0

    move/from16 v81, v0

    div-float v80, v80, v81

    move/from16 v56, v80

    .line 165
    .local v56, "inc1_x":F
    move-object/from16 v80, v30

    const/16 v81, 0x3

    aget v80, v80, v81

    move-object/from16 v81, v30

    const/16 v82, 0x1

    aget v81, v81, v82

    sub-float v80, v80, v81

    move/from16 v81, v34

    move/from16 v0, v81

    int-to-float v0, v0

    move/from16 v81, v0

    div-float v80, v80, v81

    move/from16 v57, v80

    .line 168
    .local v57, "inc1_y":F
    move-object/from16 v80, v29

    const/16 v81, 0x1

    aget v80, v80, v81

    move/from16 v81, v55

    const/high16 v82, 0x3f000000    # 0.5f

    mul-float v81, v81, v82

    add-float v80, v80, v81

    move/from16 v58, v80

    .line 169
    .local v58, "pos0_y":F
    move-object/from16 v80, v30

    const/16 v81, 0x1

    aget v80, v80, v81

    move/from16 v81, v57

    const/high16 v82, 0x3f000000    # 0.5f

    mul-float v81, v81, v82

    add-float v80, v80, v81

    move/from16 v59, v80

    .line 171
    .local v59, "pos1_y":F
    const/16 v80, 0x0

    move/from16 v60, v80

    .local v60, "dy":I
    :goto_0
    move/from16 v80, v60

    const/16 v81, 0x0

    move/from16 v82, v34

    add-int v81, v81, v82

    move/from16 v0, v80

    move/from16 v1, v81

    if-ge v0, v1, :cond_9

    .line 172
    move/from16 v80, v60

    move/from16 v0, v80

    int-to-float v0, v0

    move/from16 v80, v0

    move/from16 v61, v80

    .line 174
    .local v61, "pixcoord_y":F
    move/from16 v80, v60

    move/from16 v81, v36

    mul-int v80, v80, v81

    move/from16 v38, v80

    .line 176
    .local v38, "dyi":I
    move-object/from16 v80, v29

    const/16 v81, 0x0

    aget v80, v80, v81

    move/from16 v81, v54

    const/high16 v82, 0x3f000000    # 0.5f

    mul-float v81, v81, v82

    add-float v80, v80, v81

    move/from16 v62, v80

    .line 177
    .local v62, "pos0_x":F
    move-object/from16 v80, v30

    const/16 v81, 0x0

    aget v80, v80, v81

    move/from16 v81, v56

    const/high16 v82, 0x3f000000    # 0.5f

    mul-float v81, v81, v82

    add-float v80, v80, v81

    move/from16 v63, v80

    .line 179
    .local v63, "pos1_x":F
    const/16 v80, 0x0

    move/from16 v64, v80

    .local v64, "dx":I
    :goto_1
    move/from16 v80, v64

    const/16 v81, 0x0

    move/from16 v82, v33

    add-int v81, v81, v82

    move/from16 v0, v80

    move/from16 v1, v81

    if-ge v0, v1, :cond_8

    .line 180
    move/from16 v80, v64

    move/from16 v0, v80

    int-to-float v0, v0

    move/from16 v80, v0

    move/from16 v65, v80

    .line 186
    .local v65, "pixcoord_x":F
    move/from16 v80, v63

    move/from16 v70, v80

    .line 187
    .local v70, "loc_tmp_x":F
    move/from16 v80, v59

    move/from16 v71, v80

    .line 188
    .local v71, "loc_tmp_y":F
    move-object/from16 v80, v3

    move-object/from16 v81, v27

    move/from16 v82, v70

    move/from16 v83, v71

    move/from16 v84, v24

    move/from16 v85, v25

    move/from16 v86, v26

    move-object/from16 v87, v28

    invoke-virtual/range {v80 .. v87}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->fsample([FFFIII[F)V

    .line 191
    move-object/from16 v80, v28

    const/16 v81, 0x0

    aget v80, v80, v81

    move/from16 v66, v80

    .line 192
    .local v66, "sample_res_x":F
    move-object/from16 v80, v28

    const/16 v81, 0x1

    aget v80, v80, v81

    move/from16 v67, v80

    .line 193
    .local v67, "sample_res_y":F
    move-object/from16 v80, v28

    const/16 v81, 0x2

    aget v80, v80, v81

    move/from16 v68, v80

    .line 194
    .local v68, "sample_res_z":F
    move-object/from16 v80, v28

    const/16 v81, 0x3

    aget v80, v80, v81

    move/from16 v69, v80

    .line 197
    .local v69, "sample_res_w":F
    move/from16 v80, v66

    move/from16 v70, v80

    .line 198
    .local v70, "off_x":F
    move/from16 v80, v67

    move/from16 v71, v80

    .line 199
    .local v71, "off_y":F
    move/from16 v80, v68

    move/from16 v72, v80

    .line 200
    .local v72, "off_z":F
    move/from16 v80, v69

    move/from16 v73, v80

    .line 201
    .local v73, "off_w":F
    move/from16 v80, v62

    move/from16 v81, v52

    move/from16 v82, v70

    move/from16 v83, v50

    add-float v82, v82, v83

    mul-float v81, v81, v82

    add-float v80, v80, v81

    move/from16 v74, v80

    .line 202
    .local v74, "loc_x":F
    move/from16 v80, v58

    move/from16 v81, v53

    move/from16 v82, v71

    move/from16 v83, v51

    add-float v82, v82, v83

    mul-float v81, v81, v82

    add-float v80, v80, v81

    move/from16 v75, v80

    .line 205
    .local v75, "loc_y":F
    move/from16 v80, v74

    move/from16 v78, v80

    .line 206
    .local v78, "x_tmp_x":F
    move/from16 v80, v75

    move/from16 v79, v80

    .line 207
    .local v79, "x_tmp_y":F
    move/from16 v80, v78

    move/from16 v0, v80

    float-to-double v0, v0

    move-wide/from16 v80, v0

    invoke-static/range {v80 .. v81}, Ljava/lang/Math;->floor(D)D

    move-result-wide v80

    move-wide/from16 v0, v80

    double-to-float v0, v0

    move/from16 v80, v0

    move/from16 v76, v80

    .line 208
    .local v76, "floor_res_x":F
    move/from16 v80, v79

    move/from16 v0, v80

    float-to-double v0, v0

    move-wide/from16 v80, v0

    invoke-static/range {v80 .. v81}, Ljava/lang/Math;->floor(D)D

    move-result-wide v80

    move-wide/from16 v0, v80

    double-to-float v0, v0

    move/from16 v80, v0

    move/from16 v77, v80

    .line 211
    .local v77, "floor_res_y":F
    move/from16 v80, v74

    move/from16 v81, v48

    move/from16 v82, v76

    mul-float v81, v81, v82

    sub-float v80, v80, v81

    move/from16 v74, v80

    .line 212
    move/from16 v80, v75

    move/from16 v81, v48

    move/from16 v82, v77

    mul-float v81, v81, v82

    sub-float v80, v80, v81

    move/from16 v75, v80

    .line 213
    move/from16 v80, v44

    move/from16 v81, v74

    move/from16 v82, v46

    mul-float v81, v81, v82

    add-float v80, v80, v81

    move/from16 v74, v80

    .line 214
    move/from16 v80, v45

    move/from16 v81, v75

    move/from16 v82, v47

    mul-float v81, v81, v82

    add-float v80, v80, v81

    move/from16 v75, v80

    .line 216
    move/from16 v80, v74

    move/from16 v78, v80

    .line 217
    .local v78, "loc_tmp_x":F
    move/from16 v80, v75

    move/from16 v79, v80

    .line 218
    .local v79, "loc_tmp_y":F
    move-object/from16 v80, v3

    move-object/from16 v81, v16

    move/from16 v82, v78

    move/from16 v83, v79

    move/from16 v84, v13

    move/from16 v85, v14

    move/from16 v86, v15

    move-object/from16 v87, v20

    invoke-virtual/range {v80 .. v87}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->lsample([IFFIII[F)V

    .line 221
    move-object/from16 v80, v20

    const/16 v81, 0x0

    aget v80, v80, v81

    move/from16 v66, v80

    .line 222
    move-object/from16 v80, v20

    const/16 v81, 0x1

    aget v80, v80, v81

    move/from16 v67, v80

    .line 223
    move-object/from16 v80, v20

    const/16 v81, 0x2

    aget v80, v80, v81

    move/from16 v68, v80

    .line 224
    move-object/from16 v80, v20

    const/16 v81, 0x3

    aget v80, v80, v81

    move/from16 v69, v80

    .line 227
    move/from16 v80, v66

    move/from16 v39, v80

    .line 228
    .local v39, "color_x":F
    move/from16 v80, v67

    move/from16 v40, v80

    .line 229
    .local v40, "color_y":F
    move/from16 v80, v68

    move/from16 v41, v80

    .line 230
    .local v41, "color_z":F
    move/from16 v80, v69

    move/from16 v42, v80

    .line 234
    .local v42, "color_w":F
    move/from16 v80, v42

    const/16 v81, 0x0

    cmpg-float v80, v80, v81

    if-gez v80, :cond_4

    const/16 v80, 0x0

    move/from16 v42, v80

    .line 235
    :cond_0
    :goto_2
    move/from16 v80, v39

    const/16 v81, 0x0

    cmpg-float v80, v80, v81

    if-gez v80, :cond_5

    const/16 v80, 0x0

    move/from16 v39, v80

    .line 236
    :cond_1
    :goto_3
    move/from16 v80, v40

    const/16 v81, 0x0

    cmpg-float v80, v80, v81

    if-gez v80, :cond_6

    const/16 v80, 0x0

    move/from16 v40, v80

    .line 237
    :cond_2
    :goto_4
    move/from16 v80, v41

    const/16 v81, 0x0

    cmpg-float v80, v80, v81

    if-gez v80, :cond_7

    const/16 v80, 0x0

    move/from16 v41, v80

    .line 238
    :cond_3
    :goto_5
    move-object/from16 v80, v37

    move/from16 v81, v38

    move/from16 v82, v64

    add-int v81, v81, v82

    move/from16 v82, v39

    const/high16 v83, 0x437f0000    # 255.0f

    mul-float v82, v82, v83

    move/from16 v0, v82

    float-to-int v0, v0

    move/from16 v82, v0

    const/16 v83, 0x10

    shl-int/lit8 v82, v82, 0x10

    move/from16 v83, v40

    const/high16 v84, 0x437f0000    # 255.0f

    mul-float v83, v83, v84

    move/from16 v0, v83

    float-to-int v0, v0

    move/from16 v83, v0

    const/16 v84, 0x8

    shl-int/lit8 v83, v83, 0x8

    or-int v82, v82, v83

    move/from16 v83, v41

    const/high16 v84, 0x437f0000    # 255.0f

    mul-float v83, v83, v84

    move/from16 v0, v83

    float-to-int v0, v0

    move/from16 v83, v0

    const/16 v84, 0x0

    shl-int/lit8 v83, v83, 0x0

    or-int v82, v82, v83

    move/from16 v83, v42

    const/high16 v84, 0x437f0000    # 255.0f

    mul-float v83, v83, v84

    move/from16 v0, v83

    float-to-int v0, v0

    move/from16 v83, v0

    const/16 v84, 0x18

    shl-int/lit8 v83, v83, 0x18

    or-int v82, v82, v83

    aput v82, v80, v81

    .line 244
    move/from16 v80, v62

    move/from16 v81, v54

    add-float v80, v80, v81

    move/from16 v62, v80

    .line 245
    move/from16 v80, v63

    move/from16 v81, v56

    add-float v80, v80, v81

    move/from16 v63, v80

    .line 179
    add-int/lit8 v64, v64, 0x1

    goto/16 :goto_1

    .line 234
    :cond_4
    move/from16 v80, v42

    const/high16 v81, 0x3f800000    # 1.0f

    cmpl-float v80, v80, v81

    if-lez v80, :cond_0

    const/high16 v80, 0x3f800000    # 1.0f

    move/from16 v42, v80

    goto/16 :goto_2

    .line 235
    :cond_5
    move/from16 v80, v39

    move/from16 v81, v42

    cmpl-float v80, v80, v81

    if-lez v80, :cond_1

    move/from16 v80, v42

    move/from16 v39, v80

    goto/16 :goto_3

    .line 236
    :cond_6
    move/from16 v80, v40

    move/from16 v81, v42

    cmpl-float v80, v80, v81

    if-lez v80, :cond_2

    move/from16 v80, v42

    move/from16 v40, v80

    goto/16 :goto_4

    .line 237
    :cond_7
    move/from16 v80, v41

    move/from16 v81, v42

    cmpl-float v80, v80, v81

    if-lez v80, :cond_3

    move/from16 v80, v42

    move/from16 v41, v80

    goto/16 :goto_5

    .line 249
    .end local v39    # "color_x":F
    .end local v40    # "color_y":F
    .end local v41    # "color_z":F
    .end local v42    # "color_w":F
    .end local v65    # "pixcoord_x":F
    .end local v66    # "sample_res_x":F
    .end local v67    # "sample_res_y":F
    .end local v68    # "sample_res_z":F
    .end local v69    # "sample_res_w":F
    .end local v70    # "off_x":F
    .end local v71    # "off_y":F
    .end local v72    # "off_z":F
    .end local v73    # "off_w":F
    .end local v74    # "loc_x":F
    .end local v75    # "loc_y":F
    .end local v76    # "floor_res_x":F
    .end local v77    # "floor_res_y":F
    .end local v78    # "loc_tmp_x":F
    .end local v79    # "loc_tmp_y":F
    :cond_8
    move/from16 v80, v58

    move/from16 v81, v55

    add-float v80, v80, v81

    move/from16 v58, v80

    .line 250
    move/from16 v80, v59

    move/from16 v81, v57

    add-float v80, v80, v81

    move/from16 v59, v80

    .line 171
    add-int/lit8 v60, v60, 0x1

    goto/16 :goto_0

    .line 255
    .end local v38    # "dyi":I
    .end local v61    # "pixcoord_y":F
    .end local v62    # "pos0_x":F
    .end local v63    # "pos1_x":F
    .end local v64    # "dx":I
    :cond_9
    new-instance v80, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v89, v80

    move-object/from16 v80, v89

    move-object/from16 v81, v89

    move-object/from16 v82, v3

    invoke-virtual/range {v82 .. v82}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v82

    move-object/from16 v83, v35

    move-object/from16 v84, v9

    invoke-direct/range {v81 .. v84}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v3, v80

    .end local v3    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;
    return-object v3

    .line 139
    nop

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

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/DisplacementMap;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;
    return-object v0
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;
    return-object v0
.end method

.method protected getSamplerData(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/scenario/effect/DisplacementMap;->getMapData()Lcom/sun/scenario/effect/FloatMap;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;
    return-object v0
.end method

.method public getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I
    .locals 18

    .prologue
    .line 92
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;
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

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWDisplacementMapPeer;
    return v0
.end method

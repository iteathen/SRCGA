.class public Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;
.super Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;
.source "JSWColorAdjustPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;
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

.method private getBrightness()F
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;->getEffect()Lcom/sun/scenario/effect/ColorAdjust;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/ColorAdjust;->getBrightness()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;
    return v0
.end method

.method private getContrast()F
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;->getEffect()Lcom/sun/scenario/effect/ColorAdjust;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/scenario/effect/ColorAdjust;->getContrast()F

    move-result v2

    move v1, v2

    .line 72
    .local v1, "c":F
    move v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move v2, v1

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    move v1, v2

    .line 73
    :cond_0
    move v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;
    return v0
.end method

.method private getHue()F
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;->getEffect()Lcom/sun/scenario/effect/ColorAdjust;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/ColorAdjust;->getHue()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;
    return v0
.end method

.method private getSaturation()F
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;->getEffect()Lcom/sun/scenario/effect/ColorAdjust;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/ColorAdjust;->getSaturation()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;
    return v0
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 88

    .prologue
    .line 84
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;
    move-object/from16 v3, p1

    .local v3, "effect":Lcom/sun/scenario/effect/Effect;
    move-object/from16 v4, p2

    .local v4, "rstate":Lcom/sun/scenario/effect/impl/state/RenderState;
    move-object/from16 v5, p3

    .local v5, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v6, p4

    .local v6, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v7, p5

    .local v7, "inputs":[Lcom/sun/scenario/effect/ImageData;
    move-object/from16 v78, v2

    move-object/from16 v79, v3

    invoke-virtual/range {v78 .. v79}, Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 85
    move-object/from16 v78, v2

    move-object/from16 v79, v5

    move-object/from16 v80, v6

    move-object/from16 v81, v7

    invoke-virtual/range {v78 .. v81}, Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v78

    move-object/from16 v8, v78

    .line 86
    .local v8, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v78, v2

    move-object/from16 v79, v8

    invoke-virtual/range {v78 .. v79}, Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 89
    move-object/from16 v78, v7

    const/16 v79, 0x0

    aget-object v78, v78, v79

    move-object/from16 v79, v8

    invoke-virtual/range {v78 .. v79}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v78

    check-cast v78, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v9, v78

    .line 90
    .local v9, "src0":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v78, 0x0

    move/from16 v10, v78

    .line 91
    .local v10, "src0x":I
    const/16 v78, 0x0

    move/from16 v11, v78

    .line 92
    .local v11, "src0y":I
    move-object/from16 v78, v9

    invoke-interface/range {v78 .. v78}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v78

    move/from16 v12, v78

    .line 93
    .local v12, "src0w":I
    move-object/from16 v78, v9

    invoke-interface/range {v78 .. v78}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v78

    move/from16 v13, v78

    .line 94
    .local v13, "src0h":I
    move-object/from16 v78, v9

    invoke-interface/range {v78 .. v78}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v78

    move/from16 v14, v78

    .line 95
    .local v14, "src0scan":I
    move-object/from16 v78, v9

    .line 96
    invoke-interface/range {v78 .. v78}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v78

    move-object/from16 v15, v78

    .line 97
    .local v15, "baseImg":[I
    new-instance v78, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v87, v78

    move-object/from16 v78, v87

    move-object/from16 v79, v87

    move/from16 v80, v10

    move/from16 v81, v11

    move/from16 v82, v12

    move/from16 v83, v13

    invoke-direct/range {v79 .. v83}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v16, v78

    .line 98
    .local v16, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v78, v7

    const/16 v79, 0x0

    aget-object v78, v78, v79

    move-object/from16 v79, v8

    invoke-virtual/range {v78 .. v79}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v78

    move-object/from16 v17, v78

    .line 99
    .local v17, "src0InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v78, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v18, v78

    .line 100
    .local v18, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v78, v2

    const/16 v79, 0x0

    move-object/from16 v80, v17

    invoke-virtual/range {v78 .. v80}, Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 101
    move-object/from16 v78, v2

    const/16 v79, 0x0

    move-object/from16 v80, v16

    invoke-virtual/range {v78 .. v80}, Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 104
    const/16 v78, 0x4

    move/from16 v0, v78

    new-array v0, v0, [F

    move-object/from16 v78, v0

    move-object/from16 v19, v78

    .line 105
    .local v19, "src0Rect":[F
    move-object/from16 v78, v2

    const/16 v79, 0x0

    move-object/from16 v80, v19

    move-object/from16 v81, v17

    move-object/from16 v0, v81

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v81, v0

    move/from16 v0, v81

    int-to-float v0, v0

    move/from16 v81, v0

    move-object/from16 v82, v17

    move-object/from16 v0, v82

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v82, v0

    move/from16 v0, v82

    int-to-float v0, v0

    move/from16 v82, v0

    move/from16 v83, v12

    move/from16 v0, v83

    int-to-float v0, v0

    move/from16 v83, v0

    move/from16 v84, v13

    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v84, v0

    move-object/from16 v85, v8

    move-object/from16 v86, v18

    invoke-virtual/range {v78 .. v86}, Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v78

    .line 111
    const/16 v78, 0x0

    move/from16 v20, v78

    .line 112
    .local v20, "dstx":I
    const/16 v78, 0x0

    move/from16 v21, v78

    .line 113
    .local v21, "dsty":I
    move-object/from16 v78, v8

    move-object/from16 v0, v78

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v78, v0

    move/from16 v22, v78

    .line 114
    .local v22, "dstw":I
    move-object/from16 v78, v8

    move-object/from16 v0, v78

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v78, v0

    move/from16 v23, v78

    .line 116
    .local v23, "dsth":I
    move-object/from16 v78, v2

    invoke-virtual/range {v78 .. v78}, Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v78

    move/from16 v79, v22

    move/from16 v80, v23

    invoke-virtual/range {v78 .. v80}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v78

    check-cast v78, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v24, v78

    .line 117
    .local v24, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v78, v2

    move-object/from16 v79, v24

    invoke-interface/range {v79 .. v79}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v79

    move-object/from16 v80, v24

    invoke-interface/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v80

    invoke-virtual/range {v78 .. v80}, Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;->setDestNativeBounds(II)V

    .line 118
    move-object/from16 v78, v24

    invoke-interface/range {v78 .. v78}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v78

    move/from16 v25, v78

    .line 119
    .local v25, "dstscan":I
    move-object/from16 v78, v24

    invoke-interface/range {v78 .. v78}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v78

    move-object/from16 v26, v78

    .line 124
    .local v26, "dstPixels":[I
    move-object/from16 v78, v2

    invoke-direct/range {v78 .. v78}, Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;->getSaturation()F

    move-result v78

    move/from16 v32, v78

    .line 125
    .local v32, "saturation":F
    move-object/from16 v78, v2

    invoke-direct/range {v78 .. v78}, Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;->getBrightness()F

    move-result v78

    move/from16 v33, v78

    .line 126
    .local v33, "brightness":F
    move-object/from16 v78, v2

    invoke-direct/range {v78 .. v78}, Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;->getContrast()F

    move-result v78

    move/from16 v34, v78

    .line 127
    .local v34, "contrast":F
    move-object/from16 v78, v2

    invoke-direct/range {v78 .. v78}, Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;->getHue()F

    move-result v78

    move/from16 v35, v78

    .line 130
    .local v35, "hue":F
    move-object/from16 v78, v19

    const/16 v79, 0x2

    aget v78, v78, v79

    move-object/from16 v79, v19

    const/16 v80, 0x0

    aget v79, v79, v80

    sub-float v78, v78, v79

    move/from16 v79, v22

    move/from16 v0, v79

    int-to-float v0, v0

    move/from16 v79, v0

    div-float v78, v78, v79

    move/from16 v36, v78

    .line 131
    .local v36, "inc0_x":F
    move-object/from16 v78, v19

    const/16 v79, 0x3

    aget v78, v78, v79

    move-object/from16 v79, v19

    const/16 v80, 0x1

    aget v79, v79, v80

    sub-float v78, v78, v79

    move/from16 v79, v23

    move/from16 v0, v79

    int-to-float v0, v0

    move/from16 v79, v0

    div-float v78, v78, v79

    move/from16 v37, v78

    .line 134
    .local v37, "inc0_y":F
    move-object/from16 v78, v19

    const/16 v79, 0x1

    aget v78, v78, v79

    move/from16 v79, v37

    const/high16 v80, 0x3f000000    # 0.5f

    mul-float v79, v79, v80

    add-float v78, v78, v79

    move/from16 v38, v78

    .line 136
    .local v38, "pos0_y":F
    const/16 v78, 0x0

    move/from16 v39, v78

    .local v39, "dy":I
    :goto_0
    move/from16 v78, v39

    const/16 v79, 0x0

    move/from16 v80, v23

    add-int v79, v79, v80

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_23

    .line 137
    move/from16 v78, v39

    move/from16 v0, v78

    int-to-float v0, v0

    move/from16 v78, v0

    move/from16 v40, v78

    .line 139
    .local v40, "pixcoord_y":F
    move/from16 v78, v39

    move/from16 v79, v25

    mul-int v78, v78, v79

    move/from16 v27, v78

    .line 141
    .local v27, "dyi":I
    move-object/from16 v78, v19

    const/16 v79, 0x0

    aget v78, v78, v79

    move/from16 v79, v36

    const/high16 v80, 0x3f000000    # 0.5f

    mul-float v79, v79, v80

    add-float v78, v78, v79

    move/from16 v41, v78

    .line 143
    .local v41, "pos0_x":F
    const/16 v78, 0x0

    move/from16 v42, v78

    .local v42, "dx":I
    :goto_1
    move/from16 v78, v42

    const/16 v79, 0x0

    move/from16 v80, v22

    add-int v79, v79, v80

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_22

    .line 144
    move/from16 v78, v42

    move/from16 v0, v78

    int-to-float v0, v0

    move/from16 v78, v0

    move/from16 v43, v78

    .line 150
    .local v43, "pixcoord_x":F
    move/from16 v78, v41

    move/from16 v48, v78

    .line 151
    .local v48, "loc_tmp_x":F
    move/from16 v78, v38

    move/from16 v49, v78

    .line 153
    .local v49, "loc_tmp_y":F
    move/from16 v78, v48

    const/16 v79, 0x0

    cmpl-float v78, v78, v79

    if-ltz v78, :cond_a

    move/from16 v78, v49

    const/16 v79, 0x0

    cmpl-float v78, v78, v79

    if-ltz v78, :cond_a

    .line 154
    move/from16 v78, v48

    move/from16 v79, v12

    move/from16 v0, v79

    int-to-float v0, v0

    move/from16 v79, v0

    mul-float v78, v78, v79

    move/from16 v0, v78

    float-to-int v0, v0

    move/from16 v78, v0

    move/from16 v51, v78

    .line 155
    .local v51, "iloc_tmp_x":I
    move/from16 v78, v49

    move/from16 v79, v13

    move/from16 v0, v79

    int-to-float v0, v0

    move/from16 v79, v0

    mul-float v78, v78, v79

    move/from16 v0, v78

    float-to-int v0, v0

    move/from16 v78, v0

    move/from16 v52, v78

    .line 156
    .local v52, "iloc_tmp_y":I
    move/from16 v78, v51

    move/from16 v79, v12

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_0

    move/from16 v78, v52

    move/from16 v79, v13

    move/from16 v0, v78

    move/from16 v1, v79

    if-lt v0, v1, :cond_8

    :cond_0
    const/16 v78, 0x1

    :goto_2
    move/from16 v53, v78

    .line 159
    .local v53, "out":Z
    move/from16 v78, v53

    if-eqz v78, :cond_9

    const/16 v78, 0x0

    :goto_3
    move/from16 v50, v78

    .line 164
    .end local v51    # "iloc_tmp_x":I
    .end local v52    # "iloc_tmp_y":I
    .end local v53    # "out":Z
    .local v50, "baseImg_tmp":I
    :goto_4
    move/from16 v78, v50

    const/16 v79, 0x10

    shr-int/lit8 v78, v78, 0x10

    const/16 v79, 0xff

    move/from16 v0, v78

    and-int/lit16 v0, v0, 0xff

    move/from16 v78, v0

    move/from16 v0, v78

    int-to-float v0, v0

    move/from16 v78, v0

    const/high16 v79, 0x437f0000    # 255.0f

    div-float v78, v78, v79

    move/from16 v44, v78

    .line 165
    .local v44, "sample_res_x":F
    move/from16 v78, v50

    const/16 v79, 0x8

    shr-int/lit8 v78, v78, 0x8

    const/16 v79, 0xff

    move/from16 v0, v78

    and-int/lit16 v0, v0, 0xff

    move/from16 v78, v0

    move/from16 v0, v78

    int-to-float v0, v0

    move/from16 v78, v0

    const/high16 v79, 0x437f0000    # 255.0f

    div-float v78, v78, v79

    move/from16 v45, v78

    .line 166
    .local v45, "sample_res_y":F
    move/from16 v78, v50

    const/16 v79, 0xff

    move/from16 v0, v78

    and-int/lit16 v0, v0, 0xff

    move/from16 v78, v0

    move/from16 v0, v78

    int-to-float v0, v0

    move/from16 v78, v0

    const/high16 v79, 0x437f0000    # 255.0f

    div-float v78, v78, v79

    move/from16 v46, v78

    .line 167
    .local v46, "sample_res_z":F
    move/from16 v78, v50

    const/16 v79, 0x18

    ushr-int/lit8 v78, v78, 0x18

    move/from16 v0, v78

    int-to-float v0, v0

    move/from16 v78, v0

    const/high16 v79, 0x437f0000    # 255.0f

    div-float v78, v78, v79

    move/from16 v47, v78

    .line 170
    .local v47, "sample_res_w":F
    move/from16 v78, v44

    move/from16 v48, v78

    .line 171
    .local v48, "src_x":F
    move/from16 v78, v45

    move/from16 v49, v78

    .line 172
    .local v49, "src_y":F
    move/from16 v78, v46

    move/from16 v50, v78

    .line 173
    .local v50, "src_z":F
    move/from16 v78, v47

    move/from16 v51, v78

    .line 174
    .local v51, "src_w":F
    move/from16 v78, v51

    const/16 v79, 0x0

    cmpl-float v78, v78, v79

    if-lez v78, :cond_1

    .line 175
    move/from16 v78, v48

    move/from16 v79, v51

    div-float v78, v78, v79

    move/from16 v48, v78

    .line 176
    move/from16 v78, v49

    move/from16 v79, v51

    div-float v78, v78, v79

    move/from16 v49, v78

    .line 177
    move/from16 v78, v50

    move/from16 v79, v51

    div-float v78, v78, v79

    move/from16 v50, v78

    .line 179
    :cond_1
    move/from16 v78, v48

    const/high16 v79, 0x3f000000    # 0.5f

    sub-float v78, v78, v79

    move/from16 v79, v34

    mul-float v78, v78, v79

    const/high16 v79, 0x3f000000    # 0.5f

    add-float v78, v78, v79

    move/from16 v48, v78

    .line 180
    move/from16 v78, v49

    const/high16 v79, 0x3f000000    # 0.5f

    sub-float v78, v78, v79

    move/from16 v79, v34

    mul-float v78, v78, v79

    const/high16 v79, 0x3f000000    # 0.5f

    add-float v78, v78, v79

    move/from16 v49, v78

    .line 181
    move/from16 v78, v50

    const/high16 v79, 0x3f000000    # 0.5f

    sub-float v78, v78, v79

    move/from16 v79, v34

    mul-float v78, v78, v79

    const/high16 v79, 0x3f000000    # 0.5f

    add-float v78, v78, v79

    move/from16 v50, v78

    .line 184
    move/from16 v78, v48

    move/from16 v55, v78

    .line 185
    .local v55, "v_tmp_x":F
    move/from16 v78, v49

    move/from16 v56, v78

    .line 186
    .local v56, "v_tmp_y":F
    move/from16 v78, v50

    move/from16 v57, v78

    .line 193
    .local v57, "v_tmp_z":F
    move/from16 v78, v55

    move/from16 v62, v78

    .line 194
    .local v62, "x_tmp":F
    move/from16 v78, v56

    move/from16 v63, v78

    .line 195
    .local v63, "y_tmp":F
    move/from16 v78, v62

    move/from16 v79, v63

    cmpl-float v78, v78, v79

    if-lez v78, :cond_b

    move/from16 v78, v62

    :goto_5
    move/from16 v61, v78

    .line 198
    .local v61, "max_res":F
    move/from16 v78, v61

    move/from16 v62, v78

    .line 200
    .local v62, "cmax":F
    move/from16 v78, v62

    move/from16 v63, v78

    .line 201
    .local v63, "x_tmp":F
    move/from16 v78, v57

    move/from16 v64, v78

    .line 202
    .local v64, "y_tmp":F
    move/from16 v78, v63

    move/from16 v79, v64

    cmpl-float v78, v78, v79

    if-lez v78, :cond_c

    move/from16 v78, v63

    :goto_6
    move/from16 v61, v78

    .line 205
    move/from16 v78, v61

    move/from16 v62, v78

    .line 208
    move/from16 v78, v55

    move/from16 v64, v78

    .line 209
    .end local v63    # "x_tmp":F
    .local v64, "x_tmp":F
    move/from16 v78, v56

    move/from16 v65, v78

    .line 210
    .local v65, "y_tmp":F
    move/from16 v78, v64

    move/from16 v79, v65

    cmpg-float v78, v78, v79

    if-gez v78, :cond_d

    move/from16 v78, v64

    :goto_7
    move/from16 v63, v78

    .line 213
    .local v63, "min_res":F
    move/from16 v78, v63

    move/from16 v64, v78

    .line 215
    .local v64, "cmin":F
    move/from16 v78, v64

    move/from16 v65, v78

    .line 216
    .local v65, "x_tmp":F
    move/from16 v78, v57

    move/from16 v66, v78

    .line 217
    .local v66, "y_tmp":F
    move/from16 v78, v65

    move/from16 v79, v66

    cmpg-float v78, v78, v79

    if-gez v78, :cond_e

    move/from16 v78, v65

    :goto_8
    move/from16 v63, v78

    .line 220
    move/from16 v78, v63

    move/from16 v64, v78

    .line 221
    move/from16 v78, v62

    move/from16 v79, v64

    cmpl-float v78, v78, v79

    if-lez v78, :cond_11

    .line 222
    move/from16 v78, v62

    move/from16 v79, v55

    sub-float v78, v78, v79

    move/from16 v79, v62

    move/from16 v80, v64

    sub-float v79, v79, v80

    div-float v78, v78, v79

    move/from16 v65, v78

    .line 223
    .local v65, "c_x":F
    move/from16 v78, v62

    move/from16 v79, v56

    sub-float v78, v78, v79

    move/from16 v79, v62

    move/from16 v80, v64

    sub-float v79, v79, v80

    div-float v78, v78, v79

    move/from16 v66, v78

    .line 224
    .local v66, "c_y":F
    move/from16 v78, v62

    move/from16 v79, v57

    sub-float v78, v78, v79

    move/from16 v79, v62

    move/from16 v80, v64

    sub-float v79, v79, v80

    div-float v78, v78, v79

    move/from16 v67, v78

    .line 225
    .local v67, "c_z":F
    move/from16 v78, v55

    move/from16 v79, v62

    cmpl-float v78, v78, v79

    if-nez v78, :cond_f

    .line 226
    move/from16 v78, v67

    move/from16 v79, v66

    sub-float v78, v78, v79

    move/from16 v58, v78

    .line 234
    .local v58, "h":F
    :goto_9
    move/from16 v78, v58

    const/high16 v79, 0x40c00000    # 6.0f

    div-float v78, v78, v79

    move/from16 v58, v78

    .line 235
    move/from16 v78, v58

    const/16 v79, 0x0

    cmpg-float v78, v78, v79

    if-gez v78, :cond_2

    .line 236
    move/from16 v78, v58

    const/high16 v79, 0x3f800000    # 1.0f

    add-float v78, v78, v79

    move/from16 v58, v78

    .line 238
    :cond_2
    move/from16 v78, v62

    move/from16 v79, v64

    sub-float v78, v78, v79

    move/from16 v79, v62

    div-float v78, v78, v79

    move/from16 v59, v78

    .line 244
    .end local v65    # "c_x":F
    .end local v66    # "c_y":F
    .end local v67    # "c_z":F
    .local v59, "s":F
    :goto_a
    move/from16 v78, v62

    move/from16 v60, v78

    .line 245
    .local v60, "b":F
    move/from16 v78, v58

    move/from16 v52, v78

    .line 246
    .local v52, "rgb_to_hsb_res_x":F
    move/from16 v78, v59

    move/from16 v53, v78

    .line 247
    .local v53, "rgb_to_hsb_res_y":F
    move/from16 v78, v60

    move/from16 v54, v78

    .line 251
    .local v54, "rgb_to_hsb_res_z":F
    move/from16 v78, v52

    move/from16 v55, v78

    .line 252
    .local v55, "hsb_x":F
    move/from16 v78, v53

    move/from16 v56, v78

    .line 253
    .local v56, "hsb_y":F
    move/from16 v78, v54

    move/from16 v57, v78

    .line 254
    .local v57, "hsb_z":F
    move/from16 v78, v55

    move/from16 v79, v35

    add-float v78, v78, v79

    move/from16 v55, v78

    .line 255
    move/from16 v78, v55

    const/16 v79, 0x0

    cmpg-float v78, v78, v79

    if-gez v78, :cond_12

    .line 256
    move/from16 v78, v55

    const/high16 v79, 0x3f800000    # 1.0f

    add-float v78, v78, v79

    move/from16 v55, v78

    .line 261
    :cond_3
    :goto_b
    move/from16 v78, v32

    const/high16 v79, 0x3f800000    # 1.0f

    cmpl-float v78, v78, v79

    if-lez v78, :cond_13

    .line 262
    move/from16 v78, v32

    const/high16 v79, 0x3f800000    # 1.0f

    sub-float v78, v78, v79

    move/from16 v58, v78

    .line 263
    .local v58, "sat":F
    move/from16 v78, v56

    const/high16 v79, 0x3f800000    # 1.0f

    move/from16 v80, v56

    sub-float v79, v79, v80

    move/from16 v80, v58

    mul-float v79, v79, v80

    add-float v78, v78, v79

    move/from16 v56, v78

    .line 268
    .end local v58    # "sat":F
    :goto_c
    move/from16 v78, v33

    const/high16 v79, 0x3f800000    # 1.0f

    cmpl-float v78, v78, v79

    if-lez v78, :cond_14

    .line 269
    move/from16 v78, v33

    const/high16 v79, 0x3f800000    # 1.0f

    sub-float v78, v78, v79

    move/from16 v58, v78

    .line 270
    .local v58, "brt":F
    move/from16 v78, v56

    const/high16 v79, 0x3f800000    # 1.0f

    move/from16 v80, v58

    sub-float v79, v79, v80

    mul-float v78, v78, v79

    move/from16 v56, v78

    .line 271
    move/from16 v78, v57

    const/high16 v79, 0x3f800000    # 1.0f

    move/from16 v80, v57

    sub-float v79, v79, v80

    move/from16 v80, v58

    mul-float v79, v79, v80

    add-float v78, v78, v79

    move/from16 v57, v78

    .line 278
    .end local v58    # "brt":F
    :goto_d
    move/from16 v78, v56

    move/from16 v60, v78

    .line 279
    .local v60, "val_tmp_x":F
    move/from16 v78, v57

    move/from16 v61, v78

    .line 280
    .local v61, "val_tmp_y":F
    const/16 v78, 0x0

    move/from16 v62, v78

    .line 281
    .local v62, "min_tmp":F
    const/high16 v78, 0x3f800000    # 1.0f

    move/from16 v63, v78

    .line 282
    .local v63, "max_tmp":F
    move/from16 v78, v60

    move/from16 v79, v62

    cmpg-float v78, v78, v79

    if-gez v78, :cond_15

    move/from16 v78, v62

    :goto_e
    move/from16 v58, v78

    .line 284
    .local v58, "clamp_res_x":F
    move/from16 v78, v61

    move/from16 v79, v62

    cmpg-float v78, v78, v79

    if-gez v78, :cond_17

    move/from16 v78, v62

    :goto_f
    move/from16 v59, v78

    .line 288
    .local v59, "clamp_res_y":F
    move/from16 v78, v58

    move/from16 v56, v78

    .line 289
    move/from16 v78, v59

    move/from16 v57, v78

    .line 292
    move/from16 v78, v55

    move/from16 v63, v78

    .line 293
    .local v63, "v_tmp_x":F
    move/from16 v78, v56

    move/from16 v64, v78

    .line 294
    .local v64, "v_tmp_y":F
    move/from16 v78, v57

    move/from16 v65, v78

    .line 296
    .local v65, "v_tmp_z":F
    const/16 v78, 0x0

    move/from16 v66, v78

    .line 297
    .local v66, "res_x":F
    const/16 v78, 0x0

    move/from16 v67, v78

    .line 298
    .local v67, "res_y":F
    const/16 v78, 0x0

    move/from16 v68, v78

    .line 299
    .local v68, "res_z":F
    move/from16 v78, v63

    move/from16 v69, v78

    .line 300
    .local v69, "h":F
    move/from16 v78, v64

    move/from16 v70, v78

    .line 301
    .local v70, "s":F
    move/from16 v78, v65

    move/from16 v71, v78

    .line 304
    .local v71, "b":F
    move/from16 v78, v69

    move/from16 v73, v78

    .line 305
    .local v73, "x_tmp":F
    move/from16 v78, v73

    move/from16 v0, v78

    float-to-double v0, v0

    move-wide/from16 v78, v0

    invoke-static/range {v78 .. v79}, Ljava/lang/Math;->floor(D)D

    move-result-wide v78

    move-wide/from16 v0, v78

    double-to-float v0, v0

    move/from16 v78, v0

    move/from16 v72, v78

    .line 308
    .local v72, "floor_res":F
    move/from16 v78, v69

    move/from16 v79, v72

    sub-float v78, v78, v79

    const/high16 v79, 0x40c00000    # 6.0f

    mul-float v78, v78, v79

    move/from16 v69, v78

    .line 310
    move/from16 v78, v69

    move/from16 v73, v78

    .line 311
    move/from16 v78, v73

    move/from16 v0, v78

    float-to-double v0, v0

    move-wide/from16 v78, v0

    invoke-static/range {v78 .. v79}, Ljava/lang/Math;->floor(D)D

    move-result-wide v78

    move-wide/from16 v0, v78

    double-to-float v0, v0

    move/from16 v78, v0

    move/from16 v72, v78

    .line 314
    move/from16 v78, v69

    move/from16 v79, v72

    sub-float v78, v78, v79

    move/from16 v73, v78

    .line 315
    .local v73, "f":F
    move/from16 v78, v71

    const/high16 v79, 0x3f800000    # 1.0f

    move/from16 v80, v70

    sub-float v79, v79, v80

    mul-float v78, v78, v79

    move/from16 v74, v78

    .line 316
    .local v74, "p":F
    move/from16 v78, v71

    const/high16 v79, 0x3f800000    # 1.0f

    move/from16 v80, v70

    move/from16 v81, v73

    mul-float v80, v80, v81

    sub-float v79, v79, v80

    mul-float v78, v78, v79

    move/from16 v75, v78

    .line 317
    .local v75, "q":F
    move/from16 v78, v71

    const/high16 v79, 0x3f800000    # 1.0f

    move/from16 v80, v70

    const/high16 v81, 0x3f800000    # 1.0f

    move/from16 v82, v73

    sub-float v81, v81, v82

    mul-float v80, v80, v81

    sub-float v79, v79, v80

    mul-float v78, v78, v79

    move/from16 v76, v78

    .line 319
    .local v76, "t":F
    move/from16 v78, v69

    move/from16 v77, v78

    .line 320
    .local v77, "x_tmp":F
    move/from16 v78, v77

    move/from16 v0, v78

    float-to-double v0, v0

    move-wide/from16 v78, v0

    invoke-static/range {v78 .. v79}, Ljava/lang/Math;->floor(D)D

    move-result-wide v78

    move-wide/from16 v0, v78

    double-to-float v0, v0

    move/from16 v78, v0

    move/from16 v72, v78

    .line 323
    move/from16 v78, v72

    move/from16 v69, v78

    .line 324
    move/from16 v78, v69

    const/high16 v79, 0x3f800000    # 1.0f

    cmpg-float v78, v78, v79

    if-gez v78, :cond_19

    .line 325
    move/from16 v78, v71

    move/from16 v66, v78

    .line 326
    move/from16 v78, v76

    move/from16 v67, v78

    .line 327
    move/from16 v78, v74

    move/from16 v68, v78

    .line 354
    :goto_10
    move/from16 v78, v66

    move/from16 v60, v78

    .line 355
    .local v60, "hsb_to_rgb_res_x":F
    move/from16 v78, v67

    move/from16 v61, v78

    .line 356
    .local v61, "hsb_to_rgb_res_y":F
    move/from16 v78, v68

    move/from16 v62, v78

    .line 360
    .local v62, "hsb_to_rgb_res_z":F
    move/from16 v78, v51

    move/from16 v79, v60

    mul-float v78, v78, v79

    move/from16 v28, v78

    .line 361
    .local v28, "color_x":F
    move/from16 v78, v51

    move/from16 v79, v61

    mul-float v78, v78, v79

    move/from16 v29, v78

    .line 362
    .local v29, "color_y":F
    move/from16 v78, v51

    move/from16 v79, v62

    mul-float v78, v78, v79

    move/from16 v30, v78

    .line 363
    .local v30, "color_z":F
    move/from16 v78, v51

    move/from16 v31, v78

    .line 367
    .local v31, "color_w":F
    move/from16 v78, v31

    const/16 v79, 0x0

    cmpg-float v78, v78, v79

    if-gez v78, :cond_1e

    const/16 v78, 0x0

    move/from16 v31, v78

    .line 368
    :cond_4
    :goto_11
    move/from16 v78, v28

    const/16 v79, 0x0

    cmpg-float v78, v78, v79

    if-gez v78, :cond_1f

    const/16 v78, 0x0

    move/from16 v28, v78

    .line 369
    :cond_5
    :goto_12
    move/from16 v78, v29

    const/16 v79, 0x0

    cmpg-float v78, v78, v79

    if-gez v78, :cond_20

    const/16 v78, 0x0

    move/from16 v29, v78

    .line 370
    :cond_6
    :goto_13
    move/from16 v78, v30

    const/16 v79, 0x0

    cmpg-float v78, v78, v79

    if-gez v78, :cond_21

    const/16 v78, 0x0

    move/from16 v30, v78

    .line 371
    :cond_7
    :goto_14
    move-object/from16 v78, v26

    move/from16 v79, v27

    move/from16 v80, v42

    add-int v79, v79, v80

    move/from16 v80, v28

    const/high16 v81, 0x437f0000    # 255.0f

    mul-float v80, v80, v81

    move/from16 v0, v80

    float-to-int v0, v0

    move/from16 v80, v0

    const/16 v81, 0x10

    shl-int/lit8 v80, v80, 0x10

    move/from16 v81, v29

    const/high16 v82, 0x437f0000    # 255.0f

    mul-float v81, v81, v82

    move/from16 v0, v81

    float-to-int v0, v0

    move/from16 v81, v0

    const/16 v82, 0x8

    shl-int/lit8 v81, v81, 0x8

    or-int v80, v80, v81

    move/from16 v81, v30

    const/high16 v82, 0x437f0000    # 255.0f

    mul-float v81, v81, v82

    move/from16 v0, v81

    float-to-int v0, v0

    move/from16 v81, v0

    const/16 v82, 0x0

    shl-int/lit8 v81, v81, 0x0

    or-int v80, v80, v81

    move/from16 v81, v31

    const/high16 v82, 0x437f0000    # 255.0f

    mul-float v81, v81, v82

    move/from16 v0, v81

    float-to-int v0, v0

    move/from16 v81, v0

    const/16 v82, 0x18

    shl-int/lit8 v81, v81, 0x18

    or-int v80, v80, v81

    aput v80, v78, v79

    .line 377
    move/from16 v78, v41

    move/from16 v79, v36

    add-float v78, v78, v79

    move/from16 v41, v78

    .line 143
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_1

    .line 156
    .end local v28    # "color_x":F
    .end local v29    # "color_y":F
    .end local v30    # "color_z":F
    .end local v31    # "color_w":F
    .end local v44    # "sample_res_x":F
    .end local v45    # "sample_res_y":F
    .end local v46    # "sample_res_z":F
    .end local v47    # "sample_res_w":F
    .end local v50    # "src_z":F
    .end local v53    # "rgb_to_hsb_res_y":F
    .end local v54    # "rgb_to_hsb_res_z":F
    .end local v55    # "hsb_x":F
    .end local v56    # "hsb_y":F
    .end local v57    # "hsb_z":F
    .end local v58    # "clamp_res_x":F
    .end local v59    # "clamp_res_y":F
    .end local v60    # "hsb_to_rgb_res_x":F
    .end local v61    # "hsb_to_rgb_res_y":F
    .end local v62    # "hsb_to_rgb_res_z":F
    .end local v63    # "v_tmp_x":F
    .end local v64    # "v_tmp_y":F
    .end local v65    # "v_tmp_z":F
    .end local v66    # "res_x":F
    .end local v67    # "res_y":F
    .end local v68    # "res_z":F
    .end local v69    # "h":F
    .end local v70    # "s":F
    .end local v71    # "b":F
    .end local v72    # "floor_res":F
    .end local v73    # "f":F
    .end local v74    # "p":F
    .end local v75    # "q":F
    .end local v76    # "t":F
    .end local v77    # "x_tmp":F
    .local v48, "loc_tmp_x":F
    .local v49, "loc_tmp_y":F
    .local v51, "iloc_tmp_x":I
    .local v52, "iloc_tmp_y":I
    :cond_8
    const/16 v78, 0x0

    goto/16 :goto_2

    .line 159
    .local v53, "out":Z
    :cond_9
    move-object/from16 v78, v15

    move/from16 v79, v52

    move/from16 v80, v14

    mul-int v79, v79, v80

    move/from16 v80, v51

    add-int v79, v79, v80

    aget v78, v78, v79

    goto/16 :goto_3

    .line 162
    .end local v51    # "iloc_tmp_x":I
    .end local v52    # "iloc_tmp_y":I
    .end local v53    # "out":Z
    :cond_a
    const/16 v78, 0x0

    move/from16 v50, v78

    .local v50, "baseImg_tmp":I
    goto/16 :goto_4

    .line 195
    .restart local v44    # "sample_res_x":F
    .restart local v45    # "sample_res_y":F
    .restart local v46    # "sample_res_z":F
    .restart local v47    # "sample_res_w":F
    .local v48, "src_x":F
    .local v49, "src_y":F
    .local v50, "src_z":F
    .local v51, "src_w":F
    .local v55, "v_tmp_x":F
    .local v56, "v_tmp_y":F
    .local v57, "v_tmp_z":F
    .local v62, "x_tmp":F
    .local v63, "y_tmp":F
    :cond_b
    move/from16 v78, v63

    goto/16 :goto_5

    .line 202
    .local v61, "max_res":F
    .local v62, "cmax":F
    .local v63, "x_tmp":F
    .local v64, "y_tmp":F
    :cond_c
    move/from16 v78, v64

    goto/16 :goto_6

    .line 210
    .end local v63    # "x_tmp":F
    .local v64, "x_tmp":F
    .local v65, "y_tmp":F
    :cond_d
    move/from16 v78, v65

    goto/16 :goto_7

    .line 217
    .local v63, "min_res":F
    .local v64, "cmin":F
    .local v65, "x_tmp":F
    .local v66, "y_tmp":F
    :cond_e
    move/from16 v78, v66

    goto/16 :goto_8

    .line 228
    .local v65, "c_x":F
    .local v66, "c_y":F
    .local v67, "c_z":F
    :cond_f
    move/from16 v78, v56

    move/from16 v79, v62

    cmpl-float v78, v78, v79

    if-nez v78, :cond_10

    .line 229
    const/high16 v78, 0x40000000    # 2.0f

    move/from16 v79, v65

    add-float v78, v78, v79

    move/from16 v79, v67

    sub-float v78, v78, v79

    move/from16 v58, v78

    .local v58, "h":F
    goto/16 :goto_9

    .line 232
    .end local v58    # "h":F
    :cond_10
    const/high16 v78, 0x40800000    # 4.0f

    move/from16 v79, v66

    add-float v78, v78, v79

    move/from16 v79, v65

    sub-float v78, v78, v79

    move/from16 v58, v78

    .restart local v58    # "h":F
    goto/16 :goto_9

    .line 241
    .end local v58    # "h":F
    .end local v67    # "c_z":F
    .local v65, "x_tmp":F
    .local v66, "y_tmp":F
    :cond_11
    const/16 v78, 0x0

    move/from16 v58, v78

    .line 242
    .restart local v58    # "h":F
    const/16 v78, 0x0

    move/from16 v59, v78

    .local v59, "s":F
    goto/16 :goto_a

    .line 258
    .end local v65    # "x_tmp":F
    .end local v66    # "y_tmp":F
    .local v52, "rgb_to_hsb_res_x":F
    .local v53, "rgb_to_hsb_res_y":F
    .restart local v54    # "rgb_to_hsb_res_z":F
    .local v55, "hsb_x":F
    .local v56, "hsb_y":F
    .local v57, "hsb_z":F
    .local v60, "b":F
    :cond_12
    move/from16 v78, v55

    const/high16 v79, 0x3f800000    # 1.0f

    cmpl-float v78, v78, v79

    if-lez v78, :cond_3

    .line 259
    move/from16 v78, v55

    const/high16 v79, 0x3f800000    # 1.0f

    sub-float v78, v78, v79

    move/from16 v55, v78

    goto/16 :goto_b

    .line 266
    :cond_13
    move/from16 v78, v56

    move/from16 v79, v32

    mul-float v78, v78, v79

    move/from16 v56, v78

    goto/16 :goto_c

    .line 274
    .end local v58    # "h":F
    :cond_14
    move/from16 v78, v57

    move/from16 v79, v33

    mul-float v78, v78, v79

    move/from16 v57, v78

    goto/16 :goto_d

    .line 282
    .local v60, "val_tmp_x":F
    .local v61, "val_tmp_y":F
    .local v62, "min_tmp":F
    .local v63, "max_tmp":F
    :cond_15
    move/from16 v78, v60

    move/from16 v79, v63

    cmpl-float v78, v78, v79

    if-lez v78, :cond_16

    move/from16 v78, v63

    goto/16 :goto_e

    :cond_16
    move/from16 v78, v60

    goto/16 :goto_e

    .line 284
    .local v58, "clamp_res_x":F
    :cond_17
    move/from16 v78, v61

    move/from16 v79, v63

    cmpl-float v78, v78, v79

    if-lez v78, :cond_18

    move/from16 v78, v63

    goto/16 :goto_f

    :cond_18
    move/from16 v78, v61

    goto/16 :goto_f

    .line 329
    .local v59, "clamp_res_y":F
    .local v63, "v_tmp_x":F
    .local v64, "v_tmp_y":F
    .local v65, "v_tmp_z":F
    .local v66, "res_x":F
    .local v67, "res_y":F
    .restart local v68    # "res_z":F
    .restart local v69    # "h":F
    .restart local v70    # "s":F
    .restart local v71    # "b":F
    .restart local v72    # "floor_res":F
    .restart local v73    # "f":F
    .restart local v74    # "p":F
    .restart local v75    # "q":F
    .restart local v76    # "t":F
    .restart local v77    # "x_tmp":F
    :cond_19
    move/from16 v78, v69

    const/high16 v79, 0x40000000    # 2.0f

    cmpg-float v78, v78, v79

    if-gez v78, :cond_1a

    .line 330
    move/from16 v78, v75

    move/from16 v66, v78

    .line 331
    move/from16 v78, v71

    move/from16 v67, v78

    .line 332
    move/from16 v78, v74

    move/from16 v68, v78

    goto/16 :goto_10

    .line 334
    :cond_1a
    move/from16 v78, v69

    const/high16 v79, 0x40400000    # 3.0f

    cmpg-float v78, v78, v79

    if-gez v78, :cond_1b

    .line 335
    move/from16 v78, v74

    move/from16 v66, v78

    .line 336
    move/from16 v78, v71

    move/from16 v67, v78

    .line 337
    move/from16 v78, v76

    move/from16 v68, v78

    goto/16 :goto_10

    .line 339
    :cond_1b
    move/from16 v78, v69

    const/high16 v79, 0x40800000    # 4.0f

    cmpg-float v78, v78, v79

    if-gez v78, :cond_1c

    .line 340
    move/from16 v78, v74

    move/from16 v66, v78

    .line 341
    move/from16 v78, v75

    move/from16 v67, v78

    .line 342
    move/from16 v78, v71

    move/from16 v68, v78

    goto/16 :goto_10

    .line 344
    :cond_1c
    move/from16 v78, v69

    const/high16 v79, 0x40a00000    # 5.0f

    cmpg-float v78, v78, v79

    if-gez v78, :cond_1d

    .line 345
    move/from16 v78, v76

    move/from16 v66, v78

    .line 346
    move/from16 v78, v74

    move/from16 v67, v78

    .line 347
    move/from16 v78, v71

    move/from16 v68, v78

    goto/16 :goto_10

    .line 350
    :cond_1d
    move/from16 v78, v71

    move/from16 v66, v78

    .line 351
    move/from16 v78, v74

    move/from16 v67, v78

    .line 352
    move/from16 v78, v75

    move/from16 v68, v78

    goto/16 :goto_10

    .line 367
    .restart local v28    # "color_x":F
    .restart local v29    # "color_y":F
    .restart local v30    # "color_z":F
    .restart local v31    # "color_w":F
    .local v60, "hsb_to_rgb_res_x":F
    .local v61, "hsb_to_rgb_res_y":F
    .local v62, "hsb_to_rgb_res_z":F
    :cond_1e
    move/from16 v78, v31

    const/high16 v79, 0x3f800000    # 1.0f

    cmpl-float v78, v78, v79

    if-lez v78, :cond_4

    const/high16 v78, 0x3f800000    # 1.0f

    move/from16 v31, v78

    goto/16 :goto_11

    .line 368
    :cond_1f
    move/from16 v78, v28

    move/from16 v79, v31

    cmpl-float v78, v78, v79

    if-lez v78, :cond_5

    move/from16 v78, v31

    move/from16 v28, v78

    goto/16 :goto_12

    .line 369
    :cond_20
    move/from16 v78, v29

    move/from16 v79, v31

    cmpl-float v78, v78, v79

    if-lez v78, :cond_6

    move/from16 v78, v31

    move/from16 v29, v78

    goto/16 :goto_13

    .line 370
    :cond_21
    move/from16 v78, v30

    move/from16 v79, v31

    cmpl-float v78, v78, v79

    if-lez v78, :cond_7

    move/from16 v78, v31

    move/from16 v30, v78

    goto/16 :goto_14

    .line 381
    .end local v28    # "color_x":F
    .end local v29    # "color_y":F
    .end local v30    # "color_z":F
    .end local v31    # "color_w":F
    .end local v43    # "pixcoord_x":F
    .end local v44    # "sample_res_x":F
    .end local v45    # "sample_res_y":F
    .end local v46    # "sample_res_z":F
    .end local v47    # "sample_res_w":F
    .end local v48    # "src_x":F
    .end local v49    # "src_y":F
    .end local v50    # "src_z":F
    .end local v51    # "src_w":F
    .end local v52    # "rgb_to_hsb_res_x":F
    .end local v53    # "rgb_to_hsb_res_y":F
    .end local v54    # "rgb_to_hsb_res_z":F
    .end local v55    # "hsb_x":F
    .end local v56    # "hsb_y":F
    .end local v57    # "hsb_z":F
    .end local v58    # "clamp_res_x":F
    .end local v59    # "clamp_res_y":F
    .end local v60    # "hsb_to_rgb_res_x":F
    .end local v61    # "hsb_to_rgb_res_y":F
    .end local v62    # "hsb_to_rgb_res_z":F
    .end local v63    # "v_tmp_x":F
    .end local v64    # "v_tmp_y":F
    .end local v65    # "v_tmp_z":F
    .end local v66    # "res_x":F
    .end local v67    # "res_y":F
    .end local v68    # "res_z":F
    .end local v69    # "h":F
    .end local v70    # "s":F
    .end local v71    # "b":F
    .end local v72    # "floor_res":F
    .end local v73    # "f":F
    .end local v74    # "p":F
    .end local v75    # "q":F
    .end local v76    # "t":F
    .end local v77    # "x_tmp":F
    :cond_22
    move/from16 v78, v38

    move/from16 v79, v37

    add-float v78, v78, v79

    move/from16 v38, v78

    .line 136
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_0

    .line 385
    .end local v27    # "dyi":I
    .end local v40    # "pixcoord_y":F
    .end local v41    # "pos0_x":F
    .end local v42    # "dx":I
    :cond_23
    move-object/from16 v78, v7

    const/16 v79, 0x0

    aget-object v78, v78, v79

    move-object/from16 v79, v9

    invoke-virtual/range {v78 .. v79}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 388
    new-instance v78, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v87, v78

    move-object/from16 v78, v87

    move-object/from16 v79, v87

    move-object/from16 v80, v2

    invoke-virtual/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v80

    move-object/from16 v81, v24

    move-object/from16 v82, v8

    invoke-direct/range {v79 .. v82}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v78

    .end local v2    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;
    return-object v2
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/ColorAdjust;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/ColorAdjust;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;
    return-object v0
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;->getEffect()Lcom/sun/scenario/effect/ColorAdjust;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWColorAdjustPeer;
    return-object v0
.end method

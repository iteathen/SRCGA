.class public Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;
.super Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;
.source "JSWInvertMaskPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;
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

.method private getOffset()[F
    .locals 13

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;->getEffect()Lcom/sun/scenario/effect/InvertMask;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/scenario/effect/InvertMask;->getOffsetX()I

    move-result v5

    int-to-float v5, v5

    move v1, v5

    .line 60
    .local v1, "xoff":F
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;->getEffect()Lcom/sun/scenario/effect/InvertMask;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/scenario/effect/InvertMask;->getOffsetY()I

    move-result v5

    int-to-float v5, v5

    move v2, v5

    .line 61
    .local v2, "yoff":F
    const/4 v5, 0x2

    new-array v5, v5, [F

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    move v8, v1

    aput v8, v6, v7

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x1

    move v8, v2

    aput v8, v6, v7

    move-object v3, v5

    .line 63
    .local v3, "offsets":[F
    move-object v5, v0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;->getInputTransform(I)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v5

    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->inverseDeltaTransform([FI[FII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    :goto_0
    move-object v5, v3

    const/4 v6, 0x0

    move-object v11, v5

    move v12, v6

    move-object v5, v11

    move v6, v12

    move-object v7, v11

    move v8, v12

    aget v7, v7, v8

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v8

    iget v8, v8, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    aput v7, v5, v6

    .line 67
    move-object v5, v3

    const/4 v6, 0x1

    move-object v11, v5

    move v12, v6

    move-object v5, v11

    move v6, v12

    move-object v7, v11

    move v8, v12

    aget v7, v7, v8

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v8

    iget v8, v8, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    aput v7, v5, v6

    .line 68
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;
    return-object v0

    .line 64
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;
    :catch_0
    move-exception v5

    move-object v4, v5

    goto :goto_0
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 60

    .prologue
    .line 79
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;
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
    move-object/from16 v50, v2

    move-object/from16 v51, v3

    invoke-virtual/range {v50 .. v51}, Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 80
    move-object/from16 v50, v2

    move-object/from16 v51, v5

    move-object/from16 v52, v6

    move-object/from16 v53, v7

    invoke-virtual/range {v50 .. v53}, Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v50

    move-object/from16 v8, v50

    .line 81
    .local v8, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v50, v2

    move-object/from16 v51, v8

    invoke-virtual/range {v50 .. v51}, Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 84
    move-object/from16 v50, v7

    const/16 v51, 0x0

    aget-object v50, v50, v51

    move-object/from16 v51, v8

    invoke-virtual/range {v50 .. v51}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v50

    check-cast v50, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v9, v50

    .line 85
    .local v9, "src0":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v50, 0x0

    move/from16 v10, v50

    .line 86
    .local v10, "src0x":I
    const/16 v50, 0x0

    move/from16 v11, v50

    .line 87
    .local v11, "src0y":I
    move-object/from16 v50, v9

    invoke-interface/range {v50 .. v50}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v50

    move/from16 v12, v50

    .line 88
    .local v12, "src0w":I
    move-object/from16 v50, v9

    invoke-interface/range {v50 .. v50}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v50

    move/from16 v13, v50

    .line 89
    .local v13, "src0h":I
    move-object/from16 v50, v9

    invoke-interface/range {v50 .. v50}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v50

    move/from16 v14, v50

    .line 90
    .local v14, "src0scan":I
    move-object/from16 v50, v9

    .line 91
    invoke-interface/range {v50 .. v50}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v50

    move-object/from16 v15, v50

    .line 92
    .local v15, "baseImg":[I
    new-instance v50, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v59, v50

    move-object/from16 v50, v59

    move-object/from16 v51, v59

    move/from16 v52, v10

    move/from16 v53, v11

    move/from16 v54, v12

    move/from16 v55, v13

    invoke-direct/range {v51 .. v55}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v16, v50

    .line 93
    .local v16, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v50, v7

    const/16 v51, 0x0

    aget-object v50, v50, v51

    move-object/from16 v51, v8

    invoke-virtual/range {v50 .. v51}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v50

    move-object/from16 v17, v50

    .line 94
    .local v17, "src0InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v50, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v18, v50

    .line 95
    .local v18, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v50, v2

    const/16 v51, 0x0

    move-object/from16 v52, v17

    invoke-virtual/range {v50 .. v52}, Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 96
    move-object/from16 v50, v2

    const/16 v51, 0x0

    move-object/from16 v52, v16

    invoke-virtual/range {v50 .. v52}, Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 99
    const/16 v50, 0x4

    move/from16 v0, v50

    new-array v0, v0, [F

    move-object/from16 v50, v0

    move-object/from16 v19, v50

    .line 100
    .local v19, "src0Rect":[F
    move-object/from16 v50, v2

    const/16 v51, 0x0

    move-object/from16 v52, v19

    move-object/from16 v53, v17

    move-object/from16 v0, v53

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v53, v0

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move-object/from16 v54, v17

    move-object/from16 v0, v54

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v54, v0

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    move/from16 v55, v12

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    move/from16 v56, v13

    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v56, v0

    move-object/from16 v57, v8

    move-object/from16 v58, v18

    invoke-virtual/range {v50 .. v58}, Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v50

    .line 106
    const/16 v50, 0x0

    move/from16 v20, v50

    .line 107
    .local v20, "dstx":I
    const/16 v50, 0x0

    move/from16 v21, v50

    .line 108
    .local v21, "dsty":I
    move-object/from16 v50, v8

    move-object/from16 v0, v50

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v50, v0

    move/from16 v22, v50

    .line 109
    .local v22, "dstw":I
    move-object/from16 v50, v8

    move-object/from16 v0, v50

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v50, v0

    move/from16 v23, v50

    .line 111
    .local v23, "dsth":I
    move-object/from16 v50, v2

    invoke-virtual/range {v50 .. v50}, Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v50

    move/from16 v51, v22

    move/from16 v52, v23

    invoke-virtual/range {v50 .. v52}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v50

    check-cast v50, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v24, v50

    .line 112
    .local v24, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v50, v2

    move-object/from16 v51, v24

    invoke-interface/range {v51 .. v51}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v51

    move-object/from16 v52, v24

    invoke-interface/range {v52 .. v52}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v52

    invoke-virtual/range {v50 .. v52}, Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;->setDestNativeBounds(II)V

    .line 113
    move-object/from16 v50, v24

    invoke-interface/range {v50 .. v50}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v50

    move/from16 v25, v50

    .line 114
    .local v25, "dstscan":I
    move-object/from16 v50, v24

    invoke-interface/range {v50 .. v50}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v50

    move-object/from16 v26, v50

    .line 119
    .local v26, "dstPixels":[I
    move-object/from16 v50, v2

    invoke-direct/range {v50 .. v50}, Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;->getOffset()[F

    move-result-object v50

    move-object/from16 v32, v50

    .line 120
    .local v32, "offset_arr":[F
    move-object/from16 v50, v32

    const/16 v51, 0x0

    aget v50, v50, v51

    move/from16 v33, v50

    .local v33, "offset_x":F
    move-object/from16 v50, v32

    const/16 v51, 0x1

    aget v50, v50, v51

    move/from16 v34, v50

    .line 123
    .local v34, "offset_y":F
    move-object/from16 v50, v19

    const/16 v51, 0x2

    aget v50, v50, v51

    move-object/from16 v51, v19

    const/16 v52, 0x0

    aget v51, v51, v52

    sub-float v50, v50, v51

    move/from16 v51, v22

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    div-float v50, v50, v51

    move/from16 v35, v50

    .line 124
    .local v35, "inc0_x":F
    move-object/from16 v50, v19

    const/16 v51, 0x3

    aget v50, v50, v51

    move-object/from16 v51, v19

    const/16 v52, 0x1

    aget v51, v51, v52

    sub-float v50, v50, v51

    move/from16 v51, v23

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    div-float v50, v50, v51

    move/from16 v36, v50

    .line 127
    .local v36, "inc0_y":F
    move-object/from16 v50, v19

    const/16 v51, 0x1

    aget v50, v50, v51

    move/from16 v51, v36

    const/high16 v52, 0x3f000000    # 0.5f

    mul-float v51, v51, v52

    add-float v50, v50, v51

    move/from16 v37, v50

    .line 129
    .local v37, "pos0_y":F
    const/16 v50, 0x0

    move/from16 v38, v50

    .local v38, "dy":I
    :goto_0
    move/from16 v50, v38

    const/16 v51, 0x0

    move/from16 v52, v23

    add-int v51, v51, v52

    move/from16 v0, v50

    move/from16 v1, v51

    if-ge v0, v1, :cond_d

    .line 130
    move/from16 v50, v38

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    move/from16 v39, v50

    .line 132
    .local v39, "pixcoord_y":F
    move/from16 v50, v38

    move/from16 v51, v25

    mul-int v50, v50, v51

    move/from16 v27, v50

    .line 134
    .local v27, "dyi":I
    move-object/from16 v50, v19

    const/16 v51, 0x0

    aget v50, v50, v51

    move/from16 v51, v35

    const/high16 v52, 0x3f000000    # 0.5f

    mul-float v51, v51, v52

    add-float v50, v50, v51

    move/from16 v40, v50

    .line 136
    .local v40, "pos0_x":F
    const/16 v50, 0x0

    move/from16 v41, v50

    .local v41, "dx":I
    :goto_1
    move/from16 v50, v41

    const/16 v51, 0x0

    move/from16 v52, v22

    add-int v51, v51, v52

    move/from16 v0, v50

    move/from16 v1, v51

    if-ge v0, v1, :cond_c

    .line 137
    move/from16 v50, v41

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    move/from16 v42, v50

    .line 143
    .local v42, "pixcoord_x":F
    move/from16 v50, v40

    move/from16 v51, v33

    sub-float v50, v50, v51

    move/from16 v44, v50

    .line 144
    .local v44, "loc_tmp_x":F
    move/from16 v50, v37

    move/from16 v51, v34

    sub-float v50, v50, v51

    move/from16 v45, v50

    .line 146
    .local v45, "loc_tmp_y":F
    move/from16 v50, v44

    const/16 v51, 0x0

    cmpl-float v50, v50, v51

    if-ltz v50, :cond_7

    move/from16 v50, v45

    const/16 v51, 0x0

    cmpl-float v50, v50, v51

    if-ltz v50, :cond_7

    .line 147
    move/from16 v50, v44

    move/from16 v51, v12

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    mul-float v50, v50, v51

    move/from16 v0, v50

    float-to-int v0, v0

    move/from16 v50, v0

    move/from16 v47, v50

    .line 148
    .local v47, "iloc_tmp_x":I
    move/from16 v50, v45

    move/from16 v51, v13

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    mul-float v50, v50, v51

    move/from16 v0, v50

    float-to-int v0, v0

    move/from16 v50, v0

    move/from16 v48, v50

    .line 149
    .local v48, "iloc_tmp_y":I
    move/from16 v50, v47

    move/from16 v51, v12

    move/from16 v0, v50

    move/from16 v1, v51

    if-ge v0, v1, :cond_0

    move/from16 v50, v48

    move/from16 v51, v13

    move/from16 v0, v50

    move/from16 v1, v51

    if-lt v0, v1, :cond_5

    :cond_0
    const/16 v50, 0x1

    :goto_2
    move/from16 v49, v50

    .line 152
    .local v49, "out":Z
    move/from16 v50, v49

    if-eqz v50, :cond_6

    const/16 v50, 0x0

    :goto_3
    move/from16 v46, v50

    .line 157
    .end local v47    # "iloc_tmp_x":I
    .end local v48    # "iloc_tmp_y":I
    .end local v49    # "out":Z
    .local v46, "baseImg_tmp":I
    :goto_4
    move/from16 v50, v46

    const/16 v51, 0x18

    ushr-int/lit8 v50, v50, 0x18

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    const/high16 v51, 0x437f0000    # 255.0f

    div-float v50, v50, v51

    move/from16 v43, v50

    .line 160
    .local v43, "sample_res_w":F
    move/from16 v50, v43

    move/from16 v44, v50

    .line 161
    .local v44, "val":F
    const/high16 v50, 0x3f800000    # 1.0f

    move/from16 v51, v44

    sub-float v50, v50, v51

    move/from16 v45, v50

    .line 162
    .local v45, "inv":F
    move/from16 v50, v45

    move/from16 v28, v50

    .line 163
    .local v28, "color_x":F
    move/from16 v50, v45

    move/from16 v29, v50

    .line 164
    .local v29, "color_y":F
    move/from16 v50, v45

    move/from16 v30, v50

    .line 165
    .local v30, "color_z":F
    move/from16 v50, v45

    move/from16 v31, v50

    .line 169
    .local v31, "color_w":F
    move/from16 v50, v31

    const/16 v51, 0x0

    cmpg-float v50, v50, v51

    if-gez v50, :cond_8

    const/16 v50, 0x0

    move/from16 v31, v50

    .line 170
    :cond_1
    :goto_5
    move/from16 v50, v28

    const/16 v51, 0x0

    cmpg-float v50, v50, v51

    if-gez v50, :cond_9

    const/16 v50, 0x0

    move/from16 v28, v50

    .line 171
    :cond_2
    :goto_6
    move/from16 v50, v29

    const/16 v51, 0x0

    cmpg-float v50, v50, v51

    if-gez v50, :cond_a

    const/16 v50, 0x0

    move/from16 v29, v50

    .line 172
    :cond_3
    :goto_7
    move/from16 v50, v30

    const/16 v51, 0x0

    cmpg-float v50, v50, v51

    if-gez v50, :cond_b

    const/16 v50, 0x0

    move/from16 v30, v50

    .line 173
    :cond_4
    :goto_8
    move-object/from16 v50, v26

    move/from16 v51, v27

    move/from16 v52, v41

    add-int v51, v51, v52

    move/from16 v52, v28

    const/high16 v53, 0x437f0000    # 255.0f

    mul-float v52, v52, v53

    move/from16 v0, v52

    float-to-int v0, v0

    move/from16 v52, v0

    const/16 v53, 0x10

    shl-int/lit8 v52, v52, 0x10

    move/from16 v53, v29

    const/high16 v54, 0x437f0000    # 255.0f

    mul-float v53, v53, v54

    move/from16 v0, v53

    float-to-int v0, v0

    move/from16 v53, v0

    const/16 v54, 0x8

    shl-int/lit8 v53, v53, 0x8

    or-int v52, v52, v53

    move/from16 v53, v30

    const/high16 v54, 0x437f0000    # 255.0f

    mul-float v53, v53, v54

    move/from16 v0, v53

    float-to-int v0, v0

    move/from16 v53, v0

    const/16 v54, 0x0

    shl-int/lit8 v53, v53, 0x0

    or-int v52, v52, v53

    move/from16 v53, v31

    const/high16 v54, 0x437f0000    # 255.0f

    mul-float v53, v53, v54

    move/from16 v0, v53

    float-to-int v0, v0

    move/from16 v53, v0

    const/16 v54, 0x18

    shl-int/lit8 v53, v53, 0x18

    or-int v52, v52, v53

    aput v52, v50, v51

    .line 179
    move/from16 v50, v40

    move/from16 v51, v35

    add-float v50, v50, v51

    move/from16 v40, v50

    .line 136
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_1

    .line 149
    .end local v28    # "color_x":F
    .end local v29    # "color_y":F
    .end local v30    # "color_z":F
    .end local v31    # "color_w":F
    .end local v43    # "sample_res_w":F
    .end local v46    # "baseImg_tmp":I
    .local v44, "loc_tmp_x":F
    .local v45, "loc_tmp_y":F
    .restart local v47    # "iloc_tmp_x":I
    .restart local v48    # "iloc_tmp_y":I
    :cond_5
    const/16 v50, 0x0

    goto/16 :goto_2

    .line 152
    .restart local v49    # "out":Z
    :cond_6
    move-object/from16 v50, v15

    move/from16 v51, v48

    move/from16 v52, v14

    mul-int v51, v51, v52

    move/from16 v52, v47

    add-int v51, v51, v52

    aget v50, v50, v51

    goto/16 :goto_3

    .line 155
    .end local v47    # "iloc_tmp_x":I
    .end local v48    # "iloc_tmp_y":I
    .end local v49    # "out":Z
    :cond_7
    const/16 v50, 0x0

    move/from16 v46, v50

    .restart local v46    # "baseImg_tmp":I
    goto/16 :goto_4

    .line 169
    .restart local v28    # "color_x":F
    .restart local v29    # "color_y":F
    .restart local v30    # "color_z":F
    .restart local v31    # "color_w":F
    .restart local v43    # "sample_res_w":F
    .local v44, "val":F
    .local v45, "inv":F
    :cond_8
    move/from16 v50, v31

    const/high16 v51, 0x3f800000    # 1.0f

    cmpl-float v50, v50, v51

    if-lez v50, :cond_1

    const/high16 v50, 0x3f800000    # 1.0f

    move/from16 v31, v50

    goto/16 :goto_5

    .line 170
    :cond_9
    move/from16 v50, v28

    move/from16 v51, v31

    cmpl-float v50, v50, v51

    if-lez v50, :cond_2

    move/from16 v50, v31

    move/from16 v28, v50

    goto/16 :goto_6

    .line 171
    :cond_a
    move/from16 v50, v29

    move/from16 v51, v31

    cmpl-float v50, v50, v51

    if-lez v50, :cond_3

    move/from16 v50, v31

    move/from16 v29, v50

    goto/16 :goto_7

    .line 172
    :cond_b
    move/from16 v50, v30

    move/from16 v51, v31

    cmpl-float v50, v50, v51

    if-lez v50, :cond_4

    move/from16 v50, v31

    move/from16 v30, v50

    goto/16 :goto_8

    .line 183
    .end local v28    # "color_x":F
    .end local v29    # "color_y":F
    .end local v30    # "color_z":F
    .end local v31    # "color_w":F
    .end local v42    # "pixcoord_x":F
    .end local v43    # "sample_res_w":F
    .end local v44    # "val":F
    .end local v45    # "inv":F
    .end local v46    # "baseImg_tmp":I
    :cond_c
    move/from16 v50, v37

    move/from16 v51, v36

    add-float v50, v50, v51

    move/from16 v37, v50

    .line 129
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_0

    .line 187
    .end local v27    # "dyi":I
    .end local v39    # "pixcoord_y":F
    .end local v40    # "pos0_x":F
    .end local v41    # "dx":I
    :cond_d
    move-object/from16 v50, v7

    const/16 v51, 0x0

    aget-object v50, v50, v51

    move-object/from16 v51, v9

    invoke-virtual/range {v50 .. v51}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 190
    new-instance v50, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v59, v50

    move-object/from16 v50, v59

    move-object/from16 v51, v59

    move-object/from16 v52, v2

    invoke-virtual/range {v52 .. v52}, Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v52

    move-object/from16 v53, v24

    move-object/from16 v54, v8

    invoke-direct/range {v51 .. v54}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v50

    .end local v2    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;
    return-object v2
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;->getEffect()Lcom/sun/scenario/effect/InvertMask;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;
    return-object v0
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/InvertMask;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/InvertMask;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWInvertMaskPeer;
    return-object v0
.end method

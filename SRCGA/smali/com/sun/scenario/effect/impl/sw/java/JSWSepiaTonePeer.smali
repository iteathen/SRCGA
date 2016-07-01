.class public Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;
.super Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;
.source "JSWSepiaTonePeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;
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

.method private getLevel()F
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;->getEffect()Lcom/sun/scenario/effect/SepiaTone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/SepiaTone;->getLevel()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;
    return v0
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 83

    .prologue
    .line 70
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;
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
    move-object/from16 v73, v2

    move-object/from16 v74, v3

    invoke-virtual/range {v73 .. v74}, Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 71
    move-object/from16 v73, v2

    move-object/from16 v74, v5

    move-object/from16 v75, v6

    move-object/from16 v76, v7

    invoke-virtual/range {v73 .. v76}, Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v73

    move-object/from16 v8, v73

    .line 72
    .local v8, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v73, v2

    move-object/from16 v74, v8

    invoke-virtual/range {v73 .. v74}, Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 75
    move-object/from16 v73, v7

    const/16 v74, 0x0

    aget-object v73, v73, v74

    move-object/from16 v74, v8

    invoke-virtual/range {v73 .. v74}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v73

    check-cast v73, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v9, v73

    .line 76
    .local v9, "src0":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v73, 0x0

    move/from16 v10, v73

    .line 77
    .local v10, "src0x":I
    const/16 v73, 0x0

    move/from16 v11, v73

    .line 78
    .local v11, "src0y":I
    move-object/from16 v73, v9

    invoke-interface/range {v73 .. v73}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v73

    move/from16 v12, v73

    .line 79
    .local v12, "src0w":I
    move-object/from16 v73, v9

    invoke-interface/range {v73 .. v73}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v73

    move/from16 v13, v73

    .line 80
    .local v13, "src0h":I
    move-object/from16 v73, v9

    invoke-interface/range {v73 .. v73}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v73

    move/from16 v14, v73

    .line 81
    .local v14, "src0scan":I
    move-object/from16 v73, v9

    .line 82
    invoke-interface/range {v73 .. v73}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v73

    move-object/from16 v15, v73

    .line 83
    .local v15, "baseImg":[I
    new-instance v73, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v82, v73

    move-object/from16 v73, v82

    move-object/from16 v74, v82

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    invoke-direct/range {v74 .. v78}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v16, v73

    .line 84
    .local v16, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v73, v7

    const/16 v74, 0x0

    aget-object v73, v73, v74

    move-object/from16 v74, v8

    invoke-virtual/range {v73 .. v74}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v73

    move-object/from16 v17, v73

    .line 85
    .local v17, "src0InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v73, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v18, v73

    .line 86
    .local v18, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v73, v2

    const/16 v74, 0x0

    move-object/from16 v75, v17

    invoke-virtual/range {v73 .. v75}, Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 87
    move-object/from16 v73, v2

    const/16 v74, 0x0

    move-object/from16 v75, v16

    invoke-virtual/range {v73 .. v75}, Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 90
    const/16 v73, 0x4

    move/from16 v0, v73

    new-array v0, v0, [F

    move-object/from16 v73, v0

    move-object/from16 v19, v73

    .line 91
    .local v19, "src0Rect":[F
    move-object/from16 v73, v2

    const/16 v74, 0x0

    move-object/from16 v75, v19

    move-object/from16 v76, v17

    move-object/from16 v0, v76

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v76, v0

    move/from16 v0, v76

    int-to-float v0, v0

    move/from16 v76, v0

    move-object/from16 v77, v17

    move-object/from16 v0, v77

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v77, v0

    move/from16 v0, v77

    int-to-float v0, v0

    move/from16 v77, v0

    move/from16 v78, v12

    move/from16 v0, v78

    int-to-float v0, v0

    move/from16 v78, v0

    move/from16 v79, v13

    move/from16 v0, v79

    int-to-float v0, v0

    move/from16 v79, v0

    move-object/from16 v80, v8

    move-object/from16 v81, v18

    invoke-virtual/range {v73 .. v81}, Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v73

    .line 97
    const/16 v73, 0x0

    move/from16 v20, v73

    .line 98
    .local v20, "dstx":I
    const/16 v73, 0x0

    move/from16 v21, v73

    .line 99
    .local v21, "dsty":I
    move-object/from16 v73, v8

    move-object/from16 v0, v73

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v73, v0

    move/from16 v22, v73

    .line 100
    .local v22, "dstw":I
    move-object/from16 v73, v8

    move-object/from16 v0, v73

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v73, v0

    move/from16 v23, v73

    .line 102
    .local v23, "dsth":I
    move-object/from16 v73, v2

    invoke-virtual/range {v73 .. v73}, Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v73

    move/from16 v74, v22

    move/from16 v75, v23

    invoke-virtual/range {v73 .. v75}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v73

    check-cast v73, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v24, v73

    .line 103
    .local v24, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v73, v2

    move-object/from16 v74, v24

    invoke-interface/range {v74 .. v74}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v74

    move-object/from16 v75, v24

    invoke-interface/range {v75 .. v75}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v75

    invoke-virtual/range {v73 .. v75}, Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;->setDestNativeBounds(II)V

    .line 104
    move-object/from16 v73, v24

    invoke-interface/range {v73 .. v73}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v73

    move/from16 v25, v73

    .line 105
    .local v25, "dstscan":I
    move-object/from16 v73, v24

    invoke-interface/range {v73 .. v73}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v73

    move-object/from16 v26, v73

    .line 110
    .local v26, "dstPixels":[I
    move-object/from16 v73, v2

    invoke-direct/range {v73 .. v73}, Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;->getLevel()F

    move-result v73

    move/from16 v32, v73

    .line 113
    .local v32, "level":F
    move-object/from16 v73, v19

    const/16 v74, 0x2

    aget v73, v73, v74

    move-object/from16 v74, v19

    const/16 v75, 0x0

    aget v74, v74, v75

    sub-float v73, v73, v74

    move/from16 v74, v22

    move/from16 v0, v74

    int-to-float v0, v0

    move/from16 v74, v0

    div-float v73, v73, v74

    move/from16 v33, v73

    .line 114
    .local v33, "inc0_x":F
    move-object/from16 v73, v19

    const/16 v74, 0x3

    aget v73, v73, v74

    move-object/from16 v74, v19

    const/16 v75, 0x1

    aget v74, v74, v75

    sub-float v73, v73, v74

    move/from16 v74, v23

    move/from16 v0, v74

    int-to-float v0, v0

    move/from16 v74, v0

    div-float v73, v73, v74

    move/from16 v34, v73

    .line 117
    .local v34, "inc0_y":F
    move-object/from16 v73, v19

    const/16 v74, 0x1

    aget v73, v73, v74

    move/from16 v74, v34

    const/high16 v75, 0x3f000000    # 0.5f

    mul-float v74, v74, v75

    add-float v73, v73, v74

    move/from16 v35, v73

    .line 119
    .local v35, "pos0_y":F
    const/16 v73, 0x0

    move/from16 v36, v73

    .local v36, "dy":I
    :goto_0
    move/from16 v73, v36

    const/16 v74, 0x0

    move/from16 v75, v23

    add-int v74, v74, v75

    move/from16 v0, v73

    move/from16 v1, v74

    if-ge v0, v1, :cond_d

    .line 120
    move/from16 v73, v36

    move/from16 v0, v73

    int-to-float v0, v0

    move/from16 v73, v0

    move/from16 v37, v73

    .line 122
    .local v37, "pixcoord_y":F
    move/from16 v73, v36

    move/from16 v74, v25

    mul-int v73, v73, v74

    move/from16 v27, v73

    .line 124
    .local v27, "dyi":I
    move-object/from16 v73, v19

    const/16 v74, 0x0

    aget v73, v73, v74

    move/from16 v74, v33

    const/high16 v75, 0x3f000000    # 0.5f

    mul-float v74, v74, v75

    add-float v73, v73, v74

    move/from16 v38, v73

    .line 126
    .local v38, "pos0_x":F
    const/16 v73, 0x0

    move/from16 v39, v73

    .local v39, "dx":I
    :goto_1
    move/from16 v73, v39

    const/16 v74, 0x0

    move/from16 v75, v22

    add-int v74, v74, v75

    move/from16 v0, v73

    move/from16 v1, v74

    if-ge v0, v1, :cond_c

    .line 127
    move/from16 v73, v39

    move/from16 v0, v73

    int-to-float v0, v0

    move/from16 v73, v0

    move/from16 v40, v73

    .line 131
    .local v40, "pixcoord_x":F
    const v73, 0x3e99999a    # 0.3f

    move/from16 v41, v73

    .line 132
    .local v41, "weightBW_x":F
    const v73, 0x3f170a3d    # 0.59f

    move/from16 v42, v73

    .line 133
    .local v42, "weightBW_y":F
    const v73, 0x3de147ae    # 0.11f

    move/from16 v43, v73

    .line 134
    .local v43, "weightBW_z":F
    const v73, 0x3fcccccd    # 1.6f

    move/from16 v44, v73

    .line 135
    .local v44, "weightSep_x":F
    const v73, 0x3f99999a    # 1.2f

    move/from16 v45, v73

    .line 136
    .local v45, "weightSep_y":F
    const v73, 0x3f666666    # 0.9f

    move/from16 v46, v73

    .line 139
    .local v46, "weightSep_z":F
    move/from16 v73, v38

    move/from16 v51, v73

    .line 140
    .local v51, "loc_tmp_x":F
    move/from16 v73, v35

    move/from16 v52, v73

    .line 142
    .local v52, "loc_tmp_y":F
    move/from16 v73, v51

    const/16 v74, 0x0

    cmpl-float v73, v73, v74

    if-ltz v73, :cond_7

    move/from16 v73, v52

    const/16 v74, 0x0

    cmpl-float v73, v73, v74

    if-ltz v73, :cond_7

    .line 143
    move/from16 v73, v51

    move/from16 v74, v12

    move/from16 v0, v74

    int-to-float v0, v0

    move/from16 v74, v0

    mul-float v73, v73, v74

    move/from16 v0, v73

    float-to-int v0, v0

    move/from16 v73, v0

    move/from16 v54, v73

    .line 144
    .local v54, "iloc_tmp_x":I
    move/from16 v73, v52

    move/from16 v74, v13

    move/from16 v0, v74

    int-to-float v0, v0

    move/from16 v74, v0

    mul-float v73, v73, v74

    move/from16 v0, v73

    float-to-int v0, v0

    move/from16 v73, v0

    move/from16 v55, v73

    .line 145
    .local v55, "iloc_tmp_y":I
    move/from16 v73, v54

    move/from16 v74, v12

    move/from16 v0, v73

    move/from16 v1, v74

    if-ge v0, v1, :cond_0

    move/from16 v73, v55

    move/from16 v74, v13

    move/from16 v0, v73

    move/from16 v1, v74

    if-lt v0, v1, :cond_5

    :cond_0
    const/16 v73, 0x1

    :goto_2
    move/from16 v56, v73

    .line 148
    .local v56, "out":Z
    move/from16 v73, v56

    if-eqz v73, :cond_6

    const/16 v73, 0x0

    :goto_3
    move/from16 v53, v73

    .line 153
    .end local v54    # "iloc_tmp_x":I
    .end local v55    # "iloc_tmp_y":I
    .end local v56    # "out":Z
    .local v53, "baseImg_tmp":I
    :goto_4
    move/from16 v73, v53

    const/16 v74, 0x10

    shr-int/lit8 v73, v73, 0x10

    const/16 v74, 0xff

    move/from16 v0, v73

    and-int/lit16 v0, v0, 0xff

    move/from16 v73, v0

    move/from16 v0, v73

    int-to-float v0, v0

    move/from16 v73, v0

    const/high16 v74, 0x437f0000    # 255.0f

    div-float v73, v73, v74

    move/from16 v47, v73

    .line 154
    .local v47, "sample_res_x":F
    move/from16 v73, v53

    const/16 v74, 0x8

    shr-int/lit8 v73, v73, 0x8

    const/16 v74, 0xff

    move/from16 v0, v73

    and-int/lit16 v0, v0, 0xff

    move/from16 v73, v0

    move/from16 v0, v73

    int-to-float v0, v0

    move/from16 v73, v0

    const/high16 v74, 0x437f0000    # 255.0f

    div-float v73, v73, v74

    move/from16 v48, v73

    .line 155
    .local v48, "sample_res_y":F
    move/from16 v73, v53

    const/16 v74, 0xff

    move/from16 v0, v73

    and-int/lit16 v0, v0, 0xff

    move/from16 v73, v0

    move/from16 v0, v73

    int-to-float v0, v0

    move/from16 v73, v0

    const/high16 v74, 0x437f0000    # 255.0f

    div-float v73, v73, v74

    move/from16 v49, v73

    .line 156
    .local v49, "sample_res_z":F
    move/from16 v73, v53

    const/16 v74, 0x18

    ushr-int/lit8 v73, v73, 0x18

    move/from16 v0, v73

    int-to-float v0, v0

    move/from16 v73, v0

    const/high16 v74, 0x437f0000    # 255.0f

    div-float v73, v73, v74

    move/from16 v50, v73

    .line 159
    .local v50, "sample_res_w":F
    move/from16 v73, v47

    move/from16 v51, v73

    .line 160
    .local v51, "srcClr_x":F
    move/from16 v73, v48

    move/from16 v52, v73

    .line 161
    .local v52, "srcClr_y":F
    move/from16 v73, v49

    move/from16 v53, v73

    .line 162
    .local v53, "srcClr_z":F
    move/from16 v73, v50

    move/from16 v54, v73

    .line 165
    .local v54, "srcClr_w":F
    move/from16 v73, v51

    move/from16 v56, v73

    .line 166
    .local v56, "x_tmp_x":F
    move/from16 v73, v52

    move/from16 v57, v73

    .line 167
    .local v57, "x_tmp_y":F
    move/from16 v73, v53

    move/from16 v58, v73

    .line 168
    .local v58, "x_tmp_z":F
    move/from16 v73, v41

    move/from16 v59, v73

    .line 169
    .local v59, "y_tmp_x":F
    move/from16 v73, v42

    move/from16 v60, v73

    .line 170
    .local v60, "y_tmp_y":F
    move/from16 v73, v43

    move/from16 v61, v73

    .line 171
    .local v61, "y_tmp_z":F
    move/from16 v73, v56

    move/from16 v74, v59

    mul-float v73, v73, v74

    move/from16 v74, v57

    move/from16 v75, v60

    mul-float v74, v74, v75

    add-float v73, v73, v74

    move/from16 v74, v58

    move/from16 v75, v61

    mul-float v74, v74, v75

    add-float v73, v73, v74

    move/from16 v55, v73

    .line 176
    .local v55, "dot_res":F
    move/from16 v73, v55

    move/from16 v56, v73

    .line 177
    .local v56, "l":F
    move/from16 v73, v56

    move/from16 v57, v73

    .line 178
    .local v57, "lum_x":F
    move/from16 v73, v56

    move/from16 v58, v73

    .line 179
    .local v58, "lum_y":F
    move/from16 v73, v56

    move/from16 v59, v73

    .line 180
    .local v59, "lum_z":F
    move/from16 v73, v57

    move/from16 v74, v44

    mul-float v73, v73, v74

    move/from16 v60, v73

    .line 181
    .local v60, "sep_x":F
    move/from16 v73, v58

    move/from16 v74, v45

    mul-float v73, v73, v74

    move/from16 v61, v73

    .line 182
    .local v61, "sep_y":F
    move/from16 v73, v59

    move/from16 v74, v46

    mul-float v73, v73, v74

    move/from16 v62, v73

    .line 185
    .local v62, "sep_z":F
    move/from16 v73, v60

    move/from16 v66, v73

    .line 186
    .local v66, "x_tmp_x":F
    move/from16 v73, v61

    move/from16 v67, v73

    .line 187
    .local v67, "x_tmp_y":F
    move/from16 v73, v62

    move/from16 v68, v73

    .line 188
    .local v68, "x_tmp_z":F
    move/from16 v73, v51

    move/from16 v69, v73

    .line 189
    .local v69, "y_tmp_x":F
    move/from16 v73, v52

    move/from16 v70, v73

    .line 190
    .local v70, "y_tmp_y":F
    move/from16 v73, v53

    move/from16 v71, v73

    .line 191
    .local v71, "y_tmp_z":F
    const/high16 v73, 0x3f800000    # 1.0f

    move/from16 v74, v32

    sub-float v73, v73, v74

    move/from16 v72, v73

    .line 192
    .local v72, "a_tmp":F
    move/from16 v73, v66

    const/high16 v74, 0x3f800000    # 1.0f

    move/from16 v75, v72

    sub-float v74, v74, v75

    mul-float v73, v73, v74

    move/from16 v74, v69

    move/from16 v75, v72

    mul-float v74, v74, v75

    add-float v73, v73, v74

    move/from16 v63, v73

    .line 193
    .local v63, "mix_res_x":F
    move/from16 v73, v67

    const/high16 v74, 0x3f800000    # 1.0f

    move/from16 v75, v72

    sub-float v74, v74, v75

    mul-float v73, v73, v74

    move/from16 v74, v70

    move/from16 v75, v72

    mul-float v74, v74, v75

    add-float v73, v73, v74

    move/from16 v64, v73

    .line 194
    .local v64, "mix_res_y":F
    move/from16 v73, v68

    const/high16 v74, 0x3f800000    # 1.0f

    move/from16 v75, v72

    sub-float v74, v74, v75

    mul-float v73, v73, v74

    move/from16 v74, v71

    move/from16 v75, v72

    mul-float v74, v74, v75

    add-float v73, v73, v74

    move/from16 v65, v73

    .line 197
    .local v65, "mix_res_z":F
    move/from16 v73, v63

    move/from16 v28, v73

    .line 198
    .local v28, "color_x":F
    move/from16 v73, v64

    move/from16 v29, v73

    .line 199
    .local v29, "color_y":F
    move/from16 v73, v65

    move/from16 v30, v73

    .line 200
    .local v30, "color_z":F
    move/from16 v73, v54

    move/from16 v31, v73

    .line 204
    .local v31, "color_w":F
    move/from16 v73, v31

    const/16 v74, 0x0

    cmpg-float v73, v73, v74

    if-gez v73, :cond_8

    const/16 v73, 0x0

    move/from16 v31, v73

    .line 205
    :cond_1
    :goto_5
    move/from16 v73, v28

    const/16 v74, 0x0

    cmpg-float v73, v73, v74

    if-gez v73, :cond_9

    const/16 v73, 0x0

    move/from16 v28, v73

    .line 206
    :cond_2
    :goto_6
    move/from16 v73, v29

    const/16 v74, 0x0

    cmpg-float v73, v73, v74

    if-gez v73, :cond_a

    const/16 v73, 0x0

    move/from16 v29, v73

    .line 207
    :cond_3
    :goto_7
    move/from16 v73, v30

    const/16 v74, 0x0

    cmpg-float v73, v73, v74

    if-gez v73, :cond_b

    const/16 v73, 0x0

    move/from16 v30, v73

    .line 208
    :cond_4
    :goto_8
    move-object/from16 v73, v26

    move/from16 v74, v27

    move/from16 v75, v39

    add-int v74, v74, v75

    move/from16 v75, v28

    const/high16 v76, 0x437f0000    # 255.0f

    mul-float v75, v75, v76

    move/from16 v0, v75

    float-to-int v0, v0

    move/from16 v75, v0

    const/16 v76, 0x10

    shl-int/lit8 v75, v75, 0x10

    move/from16 v76, v29

    const/high16 v77, 0x437f0000    # 255.0f

    mul-float v76, v76, v77

    move/from16 v0, v76

    float-to-int v0, v0

    move/from16 v76, v0

    const/16 v77, 0x8

    shl-int/lit8 v76, v76, 0x8

    or-int v75, v75, v76

    move/from16 v76, v30

    const/high16 v77, 0x437f0000    # 255.0f

    mul-float v76, v76, v77

    move/from16 v0, v76

    float-to-int v0, v0

    move/from16 v76, v0

    const/16 v77, 0x0

    shl-int/lit8 v76, v76, 0x0

    or-int v75, v75, v76

    move/from16 v76, v31

    const/high16 v77, 0x437f0000    # 255.0f

    mul-float v76, v76, v77

    move/from16 v0, v76

    float-to-int v0, v0

    move/from16 v76, v0

    const/16 v77, 0x18

    shl-int/lit8 v76, v76, 0x18

    or-int v75, v75, v76

    aput v75, v73, v74

    .line 214
    move/from16 v73, v38

    move/from16 v74, v33

    add-float v73, v73, v74

    move/from16 v38, v73

    .line 126
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_1

    .line 145
    .end local v28    # "color_x":F
    .end local v29    # "color_y":F
    .end local v30    # "color_z":F
    .end local v31    # "color_w":F
    .end local v47    # "sample_res_x":F
    .end local v48    # "sample_res_y":F
    .end local v49    # "sample_res_z":F
    .end local v50    # "sample_res_w":F
    .end local v53    # "srcClr_z":F
    .end local v56    # "l":F
    .end local v57    # "lum_x":F
    .end local v58    # "lum_y":F
    .end local v59    # "lum_z":F
    .end local v60    # "sep_x":F
    .end local v61    # "sep_y":F
    .end local v62    # "sep_z":F
    .end local v63    # "mix_res_x":F
    .end local v64    # "mix_res_y":F
    .end local v65    # "mix_res_z":F
    .end local v66    # "x_tmp_x":F
    .end local v67    # "x_tmp_y":F
    .end local v68    # "x_tmp_z":F
    .end local v69    # "y_tmp_x":F
    .end local v70    # "y_tmp_y":F
    .end local v71    # "y_tmp_z":F
    .end local v72    # "a_tmp":F
    .local v51, "loc_tmp_x":F
    .local v52, "loc_tmp_y":F
    .local v54, "iloc_tmp_x":I
    .local v55, "iloc_tmp_y":I
    :cond_5
    const/16 v73, 0x0

    goto/16 :goto_2

    .line 148
    .local v56, "out":Z
    :cond_6
    move-object/from16 v73, v15

    move/from16 v74, v55

    move/from16 v75, v14

    mul-int v74, v74, v75

    move/from16 v75, v54

    add-int v74, v74, v75

    aget v73, v73, v74

    goto/16 :goto_3

    .line 151
    .end local v54    # "iloc_tmp_x":I
    .end local v55    # "iloc_tmp_y":I
    .end local v56    # "out":Z
    :cond_7
    const/16 v73, 0x0

    move/from16 v53, v73

    .local v53, "baseImg_tmp":I
    goto/16 :goto_4

    .line 204
    .restart local v28    # "color_x":F
    .restart local v29    # "color_y":F
    .restart local v30    # "color_z":F
    .restart local v31    # "color_w":F
    .restart local v47    # "sample_res_x":F
    .restart local v48    # "sample_res_y":F
    .restart local v49    # "sample_res_z":F
    .restart local v50    # "sample_res_w":F
    .local v51, "srcClr_x":F
    .local v52, "srcClr_y":F
    .local v53, "srcClr_z":F
    .local v54, "srcClr_w":F
    .local v55, "dot_res":F
    .local v56, "l":F
    .restart local v57    # "lum_x":F
    .restart local v58    # "lum_y":F
    .restart local v59    # "lum_z":F
    .restart local v60    # "sep_x":F
    .restart local v61    # "sep_y":F
    .restart local v62    # "sep_z":F
    .restart local v63    # "mix_res_x":F
    .restart local v64    # "mix_res_y":F
    .restart local v65    # "mix_res_z":F
    .restart local v66    # "x_tmp_x":F
    .restart local v67    # "x_tmp_y":F
    .restart local v68    # "x_tmp_z":F
    .restart local v69    # "y_tmp_x":F
    .restart local v70    # "y_tmp_y":F
    .restart local v71    # "y_tmp_z":F
    .restart local v72    # "a_tmp":F
    :cond_8
    move/from16 v73, v31

    const/high16 v74, 0x3f800000    # 1.0f

    cmpl-float v73, v73, v74

    if-lez v73, :cond_1

    const/high16 v73, 0x3f800000    # 1.0f

    move/from16 v31, v73

    goto/16 :goto_5

    .line 205
    :cond_9
    move/from16 v73, v28

    move/from16 v74, v31

    cmpl-float v73, v73, v74

    if-lez v73, :cond_2

    move/from16 v73, v31

    move/from16 v28, v73

    goto/16 :goto_6

    .line 206
    :cond_a
    move/from16 v73, v29

    move/from16 v74, v31

    cmpl-float v73, v73, v74

    if-lez v73, :cond_3

    move/from16 v73, v31

    move/from16 v29, v73

    goto/16 :goto_7

    .line 207
    :cond_b
    move/from16 v73, v30

    move/from16 v74, v31

    cmpl-float v73, v73, v74

    if-lez v73, :cond_4

    move/from16 v73, v31

    move/from16 v30, v73

    goto/16 :goto_8

    .line 218
    .end local v28    # "color_x":F
    .end local v29    # "color_y":F
    .end local v30    # "color_z":F
    .end local v31    # "color_w":F
    .end local v40    # "pixcoord_x":F
    .end local v41    # "weightBW_x":F
    .end local v42    # "weightBW_y":F
    .end local v43    # "weightBW_z":F
    .end local v44    # "weightSep_x":F
    .end local v45    # "weightSep_y":F
    .end local v46    # "weightSep_z":F
    .end local v47    # "sample_res_x":F
    .end local v48    # "sample_res_y":F
    .end local v49    # "sample_res_z":F
    .end local v50    # "sample_res_w":F
    .end local v51    # "srcClr_x":F
    .end local v52    # "srcClr_y":F
    .end local v53    # "srcClr_z":F
    .end local v54    # "srcClr_w":F
    .end local v55    # "dot_res":F
    .end local v56    # "l":F
    .end local v57    # "lum_x":F
    .end local v58    # "lum_y":F
    .end local v59    # "lum_z":F
    .end local v60    # "sep_x":F
    .end local v61    # "sep_y":F
    .end local v62    # "sep_z":F
    .end local v63    # "mix_res_x":F
    .end local v64    # "mix_res_y":F
    .end local v65    # "mix_res_z":F
    .end local v66    # "x_tmp_x":F
    .end local v67    # "x_tmp_y":F
    .end local v68    # "x_tmp_z":F
    .end local v69    # "y_tmp_x":F
    .end local v70    # "y_tmp_y":F
    .end local v71    # "y_tmp_z":F
    .end local v72    # "a_tmp":F
    :cond_c
    move/from16 v73, v35

    move/from16 v74, v34

    add-float v73, v73, v74

    move/from16 v35, v73

    .line 119
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_0

    .line 222
    .end local v27    # "dyi":I
    .end local v37    # "pixcoord_y":F
    .end local v38    # "pos0_x":F
    .end local v39    # "dx":I
    :cond_d
    move-object/from16 v73, v7

    const/16 v74, 0x0

    aget-object v73, v73, v74

    move-object/from16 v74, v9

    invoke-virtual/range {v73 .. v74}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 225
    new-instance v73, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v82, v73

    move-object/from16 v73, v82

    move-object/from16 v74, v82

    move-object/from16 v75, v2

    invoke-virtual/range {v75 .. v75}, Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v75

    move-object/from16 v76, v24

    move-object/from16 v77, v8

    invoke-direct/range {v74 .. v77}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v73

    .end local v2    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;
    return-object v2
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;->getEffect()Lcom/sun/scenario/effect/SepiaTone;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;
    return-object v0
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/SepiaTone;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/SepiaTone;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWSepiaTonePeer;
    return-object v0
.end method

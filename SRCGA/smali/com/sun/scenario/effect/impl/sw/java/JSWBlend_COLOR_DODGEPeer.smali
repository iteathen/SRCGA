.class public Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;
.super Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;
.source "JSWBlend_COLOR_DODGEPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;
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

.method private getOpacity()F
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;->getEffect()Lcom/sun/scenario/effect/Blend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Blend;->getOpacity()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;
    return v0
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 98

    .prologue
    .line 70
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;
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
    move-object/from16 v88, v2

    move-object/from16 v89, v3

    invoke-virtual/range {v88 .. v89}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 71
    move-object/from16 v88, v2

    move-object/from16 v89, v5

    move-object/from16 v90, v6

    move-object/from16 v91, v7

    invoke-virtual/range {v88 .. v91}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v88

    move-object/from16 v8, v88

    .line 72
    .local v8, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v88, v2

    move-object/from16 v89, v8

    invoke-virtual/range {v88 .. v89}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 75
    move-object/from16 v88, v7

    const/16 v89, 0x0

    aget-object v88, v88, v89

    move-object/from16 v89, v8

    invoke-virtual/range {v88 .. v89}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v88

    check-cast v88, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v9, v88

    .line 76
    .local v9, "src0":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v88, 0x0

    move/from16 v10, v88

    .line 77
    .local v10, "src0x":I
    const/16 v88, 0x0

    move/from16 v11, v88

    .line 78
    .local v11, "src0y":I
    move-object/from16 v88, v9

    invoke-interface/range {v88 .. v88}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v88

    move/from16 v12, v88

    .line 79
    .local v12, "src0w":I
    move-object/from16 v88, v9

    invoke-interface/range {v88 .. v88}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v88

    move/from16 v13, v88

    .line 80
    .local v13, "src0h":I
    move-object/from16 v88, v9

    invoke-interface/range {v88 .. v88}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v88

    move/from16 v14, v88

    .line 81
    .local v14, "src0scan":I
    move-object/from16 v88, v9

    .line 82
    invoke-interface/range {v88 .. v88}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v88

    move-object/from16 v15, v88

    .line 83
    .local v15, "botImg":[I
    new-instance v88, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v97, v88

    move-object/from16 v88, v97

    move-object/from16 v89, v97

    move/from16 v90, v10

    move/from16 v91, v11

    move/from16 v92, v12

    move/from16 v93, v13

    invoke-direct/range {v89 .. v93}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v16, v88

    .line 84
    .local v16, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v88, v7

    const/16 v89, 0x0

    aget-object v88, v88, v89

    move-object/from16 v89, v8

    invoke-virtual/range {v88 .. v89}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v88

    move-object/from16 v17, v88

    .line 85
    .local v17, "src0InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v88, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v18, v88

    .line 86
    .local v18, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v88, v2

    const/16 v89, 0x0

    move-object/from16 v90, v17

    invoke-virtual/range {v88 .. v90}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 87
    move-object/from16 v88, v2

    const/16 v89, 0x0

    move-object/from16 v90, v16

    invoke-virtual/range {v88 .. v90}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 88
    move-object/from16 v88, v7

    const/16 v89, 0x1

    aget-object v88, v88, v89

    move-object/from16 v89, v8

    invoke-virtual/range {v88 .. v89}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v88

    check-cast v88, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v19, v88

    .line 89
    .local v19, "src1":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v88, 0x0

    move/from16 v20, v88

    .line 90
    .local v20, "src1x":I
    const/16 v88, 0x0

    move/from16 v21, v88

    .line 91
    .local v21, "src1y":I
    move-object/from16 v88, v19

    invoke-interface/range {v88 .. v88}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v88

    move/from16 v22, v88

    .line 92
    .local v22, "src1w":I
    move-object/from16 v88, v19

    invoke-interface/range {v88 .. v88}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v88

    move/from16 v23, v88

    .line 93
    .local v23, "src1h":I
    move-object/from16 v88, v19

    invoke-interface/range {v88 .. v88}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v88

    move/from16 v24, v88

    .line 94
    .local v24, "src1scan":I
    move-object/from16 v88, v19

    .line 95
    invoke-interface/range {v88 .. v88}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v88

    move-object/from16 v25, v88

    .line 96
    .local v25, "topImg":[I
    new-instance v88, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v97, v88

    move-object/from16 v88, v97

    move-object/from16 v89, v97

    move/from16 v90, v20

    move/from16 v91, v21

    move/from16 v92, v22

    move/from16 v93, v23

    invoke-direct/range {v89 .. v93}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v26, v88

    .line 97
    .local v26, "src1Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v88, v7

    const/16 v89, 0x1

    aget-object v88, v88, v89

    move-object/from16 v89, v8

    invoke-virtual/range {v88 .. v89}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v88

    move-object/from16 v27, v88

    .line 98
    .local v27, "src1InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v88, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v28, v88

    .line 99
    .local v28, "src1Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v88, v2

    const/16 v89, 0x1

    move-object/from16 v90, v27

    invoke-virtual/range {v88 .. v90}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 100
    move-object/from16 v88, v2

    const/16 v89, 0x1

    move-object/from16 v90, v26

    invoke-virtual/range {v88 .. v90}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 103
    const/16 v88, 0x4

    move/from16 v0, v88

    new-array v0, v0, [F

    move-object/from16 v88, v0

    move-object/from16 v29, v88

    .line 104
    .local v29, "src0Rect":[F
    move-object/from16 v88, v2

    const/16 v89, 0x0

    move-object/from16 v90, v29

    move-object/from16 v91, v17

    move-object/from16 v0, v91

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v91, v0

    move/from16 v0, v91

    int-to-float v0, v0

    move/from16 v91, v0

    move-object/from16 v92, v17

    move-object/from16 v0, v92

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v92, v0

    move/from16 v0, v92

    int-to-float v0, v0

    move/from16 v92, v0

    move/from16 v93, v12

    move/from16 v0, v93

    int-to-float v0, v0

    move/from16 v93, v0

    move/from16 v94, v13

    move/from16 v0, v94

    int-to-float v0, v0

    move/from16 v94, v0

    move-object/from16 v95, v8

    move-object/from16 v96, v18

    invoke-virtual/range {v88 .. v96}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v88

    .line 108
    const/16 v88, 0x4

    move/from16 v0, v88

    new-array v0, v0, [F

    move-object/from16 v88, v0

    move-object/from16 v30, v88

    .line 109
    .local v30, "src1Rect":[F
    move-object/from16 v88, v2

    const/16 v89, 0x1

    move-object/from16 v90, v30

    move-object/from16 v91, v27

    move-object/from16 v0, v91

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v91, v0

    move/from16 v0, v91

    int-to-float v0, v0

    move/from16 v91, v0

    move-object/from16 v92, v27

    move-object/from16 v0, v92

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v92, v0

    move/from16 v0, v92

    int-to-float v0, v0

    move/from16 v92, v0

    move/from16 v93, v22

    move/from16 v0, v93

    int-to-float v0, v0

    move/from16 v93, v0

    move/from16 v94, v23

    move/from16 v0, v94

    int-to-float v0, v0

    move/from16 v94, v0

    move-object/from16 v95, v8

    move-object/from16 v96, v28

    invoke-virtual/range {v88 .. v96}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v88

    .line 115
    const/16 v88, 0x0

    move/from16 v31, v88

    .line 116
    .local v31, "dstx":I
    const/16 v88, 0x0

    move/from16 v32, v88

    .line 117
    .local v32, "dsty":I
    move-object/from16 v88, v8

    move-object/from16 v0, v88

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v88, v0

    move/from16 v33, v88

    .line 118
    .local v33, "dstw":I
    move-object/from16 v88, v8

    move-object/from16 v0, v88

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v88, v0

    move/from16 v34, v88

    .line 120
    .local v34, "dsth":I
    move-object/from16 v88, v2

    invoke-virtual/range {v88 .. v88}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v88

    move/from16 v89, v33

    move/from16 v90, v34

    invoke-virtual/range {v88 .. v90}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v88

    check-cast v88, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v35, v88

    .line 121
    .local v35, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v88, v2

    move-object/from16 v89, v35

    invoke-interface/range {v89 .. v89}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v89

    move-object/from16 v90, v35

    invoke-interface/range {v90 .. v90}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v90

    invoke-virtual/range {v88 .. v90}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;->setDestNativeBounds(II)V

    .line 122
    move-object/from16 v88, v35

    invoke-interface/range {v88 .. v88}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v88

    move/from16 v36, v88

    .line 123
    .local v36, "dstscan":I
    move-object/from16 v88, v35

    invoke-interface/range {v88 .. v88}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v88

    move-object/from16 v37, v88

    .line 128
    .local v37, "dstPixels":[I
    move-object/from16 v88, v2

    invoke-direct/range {v88 .. v88}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;->getOpacity()F

    move-result v88

    move/from16 v43, v88

    .line 131
    .local v43, "opacity":F
    move-object/from16 v88, v29

    const/16 v89, 0x2

    aget v88, v88, v89

    move-object/from16 v89, v29

    const/16 v90, 0x0

    aget v89, v89, v90

    sub-float v88, v88, v89

    move/from16 v89, v33

    move/from16 v0, v89

    int-to-float v0, v0

    move/from16 v89, v0

    div-float v88, v88, v89

    move/from16 v44, v88

    .line 132
    .local v44, "inc0_x":F
    move-object/from16 v88, v29

    const/16 v89, 0x3

    aget v88, v88, v89

    move-object/from16 v89, v29

    const/16 v90, 0x1

    aget v89, v89, v90

    sub-float v88, v88, v89

    move/from16 v89, v34

    move/from16 v0, v89

    int-to-float v0, v0

    move/from16 v89, v0

    div-float v88, v88, v89

    move/from16 v45, v88

    .line 133
    .local v45, "inc0_y":F
    move-object/from16 v88, v30

    const/16 v89, 0x2

    aget v88, v88, v89

    move-object/from16 v89, v30

    const/16 v90, 0x0

    aget v89, v89, v90

    sub-float v88, v88, v89

    move/from16 v89, v33

    move/from16 v0, v89

    int-to-float v0, v0

    move/from16 v89, v0

    div-float v88, v88, v89

    move/from16 v46, v88

    .line 134
    .local v46, "inc1_x":F
    move-object/from16 v88, v30

    const/16 v89, 0x3

    aget v88, v88, v89

    move-object/from16 v89, v30

    const/16 v90, 0x1

    aget v89, v89, v90

    sub-float v88, v88, v89

    move/from16 v89, v34

    move/from16 v0, v89

    int-to-float v0, v0

    move/from16 v89, v0

    div-float v88, v88, v89

    move/from16 v47, v88

    .line 137
    .local v47, "inc1_y":F
    move-object/from16 v88, v29

    const/16 v89, 0x1

    aget v88, v88, v89

    move/from16 v89, v45

    const/high16 v90, 0x3f000000    # 0.5f

    mul-float v89, v89, v90

    add-float v88, v88, v89

    move/from16 v48, v88

    .line 138
    .local v48, "pos0_y":F
    move-object/from16 v88, v30

    const/16 v89, 0x1

    aget v88, v88, v89

    move/from16 v89, v47

    const/high16 v90, 0x3f000000    # 0.5f

    mul-float v89, v89, v90

    add-float v88, v88, v89

    move/from16 v49, v88

    .line 140
    .local v49, "pos1_y":F
    const/16 v88, 0x0

    move/from16 v50, v88

    .local v50, "dy":I
    :goto_0
    move/from16 v88, v50

    const/16 v89, 0x0

    move/from16 v90, v34

    add-int v89, v89, v90

    move/from16 v0, v88

    move/from16 v1, v89

    if-ge v0, v1, :cond_1a

    .line 141
    move/from16 v88, v50

    move/from16 v0, v88

    int-to-float v0, v0

    move/from16 v88, v0

    move/from16 v51, v88

    .line 143
    .local v51, "pixcoord_y":F
    move/from16 v88, v50

    move/from16 v89, v36

    mul-int v88, v88, v89

    move/from16 v38, v88

    .line 145
    .local v38, "dyi":I
    move-object/from16 v88, v29

    const/16 v89, 0x0

    aget v88, v88, v89

    move/from16 v89, v44

    const/high16 v90, 0x3f000000    # 0.5f

    mul-float v89, v89, v90

    add-float v88, v88, v89

    move/from16 v52, v88

    .line 146
    .local v52, "pos0_x":F
    move-object/from16 v88, v30

    const/16 v89, 0x0

    aget v88, v88, v89

    move/from16 v89, v46

    const/high16 v90, 0x3f000000    # 0.5f

    mul-float v89, v89, v90

    add-float v88, v88, v89

    move/from16 v53, v88

    .line 148
    .local v53, "pos1_x":F
    const/16 v88, 0x0

    move/from16 v54, v88

    .local v54, "dx":I
    :goto_1
    move/from16 v88, v54

    const/16 v89, 0x0

    move/from16 v90, v33

    add-int v89, v89, v90

    move/from16 v0, v88

    move/from16 v1, v89

    if-ge v0, v1, :cond_19

    .line 149
    move/from16 v88, v54

    move/from16 v0, v88

    int-to-float v0, v0

    move/from16 v88, v0

    move/from16 v55, v88

    .line 155
    .local v55, "pixcoord_x":F
    move/from16 v88, v52

    move/from16 v60, v88

    .line 156
    .local v60, "loc_tmp_x":F
    move/from16 v88, v48

    move/from16 v61, v88

    .line 158
    .local v61, "loc_tmp_y":F
    move/from16 v88, v60

    const/16 v89, 0x0

    cmpl-float v88, v88, v89

    if-ltz v88, :cond_b

    move/from16 v88, v61

    const/16 v89, 0x0

    cmpl-float v88, v88, v89

    if-ltz v88, :cond_b

    .line 159
    move/from16 v88, v60

    move/from16 v89, v12

    move/from16 v0, v89

    int-to-float v0, v0

    move/from16 v89, v0

    mul-float v88, v88, v89

    move/from16 v0, v88

    float-to-int v0, v0

    move/from16 v88, v0

    move/from16 v63, v88

    .line 160
    .local v63, "iloc_tmp_x":I
    move/from16 v88, v61

    move/from16 v89, v13

    move/from16 v0, v89

    int-to-float v0, v0

    move/from16 v89, v0

    mul-float v88, v88, v89

    move/from16 v0, v88

    float-to-int v0, v0

    move/from16 v88, v0

    move/from16 v64, v88

    .line 161
    .local v64, "iloc_tmp_y":I
    move/from16 v88, v63

    move/from16 v89, v12

    move/from16 v0, v88

    move/from16 v1, v89

    if-ge v0, v1, :cond_0

    move/from16 v88, v64

    move/from16 v89, v13

    move/from16 v0, v88

    move/from16 v1, v89

    if-lt v0, v1, :cond_9

    :cond_0
    const/16 v88, 0x1

    :goto_2
    move/from16 v65, v88

    .line 164
    .local v65, "out":Z
    move/from16 v88, v65

    if-eqz v88, :cond_a

    const/16 v88, 0x0

    :goto_3
    move/from16 v62, v88

    .line 169
    .end local v63    # "iloc_tmp_x":I
    .end local v64    # "iloc_tmp_y":I
    .end local v65    # "out":Z
    .local v62, "botImg_tmp":I
    :goto_4
    move/from16 v88, v62

    const/16 v89, 0x10

    shr-int/lit8 v88, v88, 0x10

    const/16 v89, 0xff

    move/from16 v0, v88

    and-int/lit16 v0, v0, 0xff

    move/from16 v88, v0

    move/from16 v0, v88

    int-to-float v0, v0

    move/from16 v88, v0

    const/high16 v89, 0x437f0000    # 255.0f

    div-float v88, v88, v89

    move/from16 v56, v88

    .line 170
    .local v56, "sample_res_x":F
    move/from16 v88, v62

    const/16 v89, 0x8

    shr-int/lit8 v88, v88, 0x8

    const/16 v89, 0xff

    move/from16 v0, v88

    and-int/lit16 v0, v0, 0xff

    move/from16 v88, v0

    move/from16 v0, v88

    int-to-float v0, v0

    move/from16 v88, v0

    const/high16 v89, 0x437f0000    # 255.0f

    div-float v88, v88, v89

    move/from16 v57, v88

    .line 171
    .local v57, "sample_res_y":F
    move/from16 v88, v62

    const/16 v89, 0xff

    move/from16 v0, v88

    and-int/lit16 v0, v0, 0xff

    move/from16 v88, v0

    move/from16 v0, v88

    int-to-float v0, v0

    move/from16 v88, v0

    const/high16 v89, 0x437f0000    # 255.0f

    div-float v88, v88, v89

    move/from16 v58, v88

    .line 172
    .local v58, "sample_res_z":F
    move/from16 v88, v62

    const/16 v89, 0x18

    ushr-int/lit8 v88, v88, 0x18

    move/from16 v0, v88

    int-to-float v0, v0

    move/from16 v88, v0

    const/high16 v89, 0x437f0000    # 255.0f

    div-float v88, v88, v89

    move/from16 v59, v88

    .line 175
    .local v59, "sample_res_w":F
    move/from16 v88, v56

    move/from16 v60, v88

    .line 176
    .local v60, "bot_x":F
    move/from16 v88, v57

    move/from16 v61, v88

    .line 177
    .local v61, "bot_y":F
    move/from16 v88, v58

    move/from16 v62, v88

    .line 178
    .local v62, "bot_z":F
    move/from16 v88, v59

    move/from16 v63, v88

    .line 180
    .local v63, "bot_w":F
    move/from16 v88, v53

    move/from16 v64, v88

    .line 181
    .local v64, "loc_tmp_x":F
    move/from16 v88, v49

    move/from16 v65, v88

    .line 183
    .local v65, "loc_tmp_y":F
    move/from16 v88, v64

    const/16 v89, 0x0

    cmpl-float v88, v88, v89

    if-ltz v88, :cond_e

    move/from16 v88, v65

    const/16 v89, 0x0

    cmpl-float v88, v88, v89

    if-ltz v88, :cond_e

    .line 184
    move/from16 v88, v64

    move/from16 v89, v22

    move/from16 v0, v89

    int-to-float v0, v0

    move/from16 v89, v0

    mul-float v88, v88, v89

    move/from16 v0, v88

    float-to-int v0, v0

    move/from16 v88, v0

    move/from16 v67, v88

    .line 185
    .local v67, "iloc_tmp_x":I
    move/from16 v88, v65

    move/from16 v89, v23

    move/from16 v0, v89

    int-to-float v0, v0

    move/from16 v89, v0

    mul-float v88, v88, v89

    move/from16 v0, v88

    float-to-int v0, v0

    move/from16 v88, v0

    move/from16 v68, v88

    .line 186
    .local v68, "iloc_tmp_y":I
    move/from16 v88, v67

    move/from16 v89, v22

    move/from16 v0, v88

    move/from16 v1, v89

    if-ge v0, v1, :cond_1

    move/from16 v88, v68

    move/from16 v89, v23

    move/from16 v0, v88

    move/from16 v1, v89

    if-lt v0, v1, :cond_c

    :cond_1
    const/16 v88, 0x1

    :goto_5
    move/from16 v69, v88

    .line 189
    .local v69, "out":Z
    move/from16 v88, v69

    if-eqz v88, :cond_d

    const/16 v88, 0x0

    :goto_6
    move/from16 v66, v88

    .line 194
    .end local v67    # "iloc_tmp_x":I
    .end local v68    # "iloc_tmp_y":I
    .end local v69    # "out":Z
    .local v66, "topImg_tmp":I
    :goto_7
    move/from16 v88, v66

    const/16 v89, 0x10

    shr-int/lit8 v88, v88, 0x10

    const/16 v89, 0xff

    move/from16 v0, v88

    and-int/lit16 v0, v0, 0xff

    move/from16 v88, v0

    move/from16 v0, v88

    int-to-float v0, v0

    move/from16 v88, v0

    const/high16 v89, 0x437f0000    # 255.0f

    div-float v88, v88, v89

    move/from16 v56, v88

    .line 195
    move/from16 v88, v66

    const/16 v89, 0x8

    shr-int/lit8 v88, v88, 0x8

    const/16 v89, 0xff

    move/from16 v0, v88

    and-int/lit16 v0, v0, 0xff

    move/from16 v88, v0

    move/from16 v0, v88

    int-to-float v0, v0

    move/from16 v88, v0

    const/high16 v89, 0x437f0000    # 255.0f

    div-float v88, v88, v89

    move/from16 v57, v88

    .line 196
    move/from16 v88, v66

    const/16 v89, 0xff

    move/from16 v0, v88

    and-int/lit16 v0, v0, 0xff

    move/from16 v88, v0

    move/from16 v0, v88

    int-to-float v0, v0

    move/from16 v88, v0

    const/high16 v89, 0x437f0000    # 255.0f

    div-float v88, v88, v89

    move/from16 v58, v88

    .line 197
    move/from16 v88, v66

    const/16 v89, 0x18

    ushr-int/lit8 v88, v88, 0x18

    move/from16 v0, v88

    int-to-float v0, v0

    move/from16 v88, v0

    const/high16 v89, 0x437f0000    # 255.0f

    div-float v88, v88, v89

    move/from16 v59, v88

    .line 200
    move/from16 v88, v56

    move/from16 v89, v43

    mul-float v88, v88, v89

    move/from16 v64, v88

    .line 201
    .local v64, "top_x":F
    move/from16 v88, v57

    move/from16 v89, v43

    mul-float v88, v88, v89

    move/from16 v65, v88

    .line 202
    .local v65, "top_y":F
    move/from16 v88, v58

    move/from16 v89, v43

    mul-float v88, v88, v89

    move/from16 v66, v88

    .line 203
    .local v66, "top_z":F
    move/from16 v88, v59

    move/from16 v89, v43

    mul-float v88, v88, v89

    move/from16 v67, v88

    .line 206
    .local v67, "top_w":F
    move/from16 v88, v60

    move/from16 v72, v88

    .line 207
    .local v72, "bot_tmp_x":F
    move/from16 v88, v61

    move/from16 v73, v88

    .line 208
    .local v73, "bot_tmp_y":F
    move/from16 v88, v62

    move/from16 v74, v88

    .line 209
    .local v74, "bot_tmp_z":F
    move/from16 v88, v63

    move/from16 v75, v88

    .line 210
    .local v75, "bot_tmp_w":F
    move/from16 v88, v64

    move/from16 v76, v88

    .line 211
    .local v76, "top_tmp_x":F
    move/from16 v88, v65

    move/from16 v77, v88

    .line 212
    .local v77, "top_tmp_y":F
    move/from16 v88, v66

    move/from16 v78, v88

    .line 213
    .local v78, "top_tmp_z":F
    move/from16 v88, v67

    move/from16 v79, v88

    .line 219
    .local v79, "top_tmp_w":F
    move/from16 v88, v75

    move/from16 v89, v79

    add-float v88, v88, v89

    move/from16 v89, v75

    move/from16 v90, v79

    mul-float v89, v89, v90

    sub-float v88, v88, v89

    move/from16 v83, v88

    .line 220
    .local v83, "res_w":F
    const/high16 v88, 0x3f800000    # 1.0f

    move/from16 v89, v79

    sub-float v88, v88, v89

    move/from16 v89, v72

    mul-float v88, v88, v89

    const/high16 v89, 0x3f800000    # 1.0f

    move/from16 v90, v75

    sub-float v89, v89, v90

    move/from16 v90, v76

    mul-float v89, v89, v90

    add-float v88, v88, v89

    move/from16 v80, v88

    .line 221
    .local v80, "res_x":F
    const/high16 v88, 0x3f800000    # 1.0f

    move/from16 v89, v79

    sub-float v88, v88, v89

    move/from16 v89, v73

    mul-float v88, v88, v89

    const/high16 v89, 0x3f800000    # 1.0f

    move/from16 v90, v75

    sub-float v89, v89, v90

    move/from16 v90, v77

    mul-float v89, v89, v90

    add-float v88, v88, v89

    move/from16 v81, v88

    .line 222
    .local v81, "res_y":F
    const/high16 v88, 0x3f800000    # 1.0f

    move/from16 v89, v79

    sub-float v88, v88, v89

    move/from16 v89, v74

    mul-float v88, v88, v89

    const/high16 v89, 0x3f800000    # 1.0f

    move/from16 v90, v75

    sub-float v89, v89, v90

    move/from16 v90, v78

    mul-float v89, v89, v90

    add-float v88, v88, v89

    move/from16 v82, v88

    .line 223
    .local v82, "res_z":F
    move/from16 v88, v75

    move/from16 v89, v79

    mul-float v88, v88, v89

    move/from16 v84, v88

    .line 227
    .local v84, "proda":F
    move/from16 v88, v72

    const/16 v89, 0x0

    cmpl-float v88, v88, v89

    if-nez v88, :cond_f

    .line 228
    const/16 v88, 0x0

    move/from16 v85, v88

    .line 239
    .local v85, "tmp_x":F
    :cond_2
    :goto_8
    move/from16 v88, v73

    const/16 v89, 0x0

    cmpl-float v88, v88, v89

    if-nez v88, :cond_11

    .line 240
    const/16 v88, 0x0

    move/from16 v86, v88

    .line 251
    .local v86, "tmp_y":F
    :cond_3
    :goto_9
    move/from16 v88, v74

    const/16 v89, 0x0

    cmpl-float v88, v88, v89

    if-nez v88, :cond_13

    .line 252
    const/16 v88, 0x0

    move/from16 v87, v88

    .line 263
    .local v87, "tmp_z":F
    :cond_4
    :goto_a
    move/from16 v88, v80

    move/from16 v89, v85

    add-float v88, v88, v89

    move/from16 v80, v88

    .line 264
    move/from16 v88, v81

    move/from16 v89, v86

    add-float v88, v88, v89

    move/from16 v81, v88

    .line 265
    move/from16 v88, v82

    move/from16 v89, v87

    add-float v88, v88, v89

    move/from16 v82, v88

    .line 266
    move/from16 v88, v80

    move/from16 v68, v88

    .line 267
    .local v68, "blend_color_dodge_res_x":F
    move/from16 v88, v81

    move/from16 v69, v88

    .line 268
    .local v69, "blend_color_dodge_res_y":F
    move/from16 v88, v82

    move/from16 v70, v88

    .line 269
    .local v70, "blend_color_dodge_res_z":F
    move/from16 v88, v83

    move/from16 v71, v88

    .line 273
    .local v71, "blend_color_dodge_res_w":F
    move/from16 v88, v68

    move/from16 v39, v88

    .line 274
    .local v39, "color_x":F
    move/from16 v88, v69

    move/from16 v40, v88

    .line 275
    .local v40, "color_y":F
    move/from16 v88, v70

    move/from16 v41, v88

    .line 276
    .local v41, "color_z":F
    move/from16 v88, v71

    move/from16 v42, v88

    .line 280
    .local v42, "color_w":F
    move/from16 v88, v42

    const/16 v89, 0x0

    cmpg-float v88, v88, v89

    if-gez v88, :cond_15

    const/16 v88, 0x0

    move/from16 v42, v88

    .line 281
    :cond_5
    :goto_b
    move/from16 v88, v39

    const/16 v89, 0x0

    cmpg-float v88, v88, v89

    if-gez v88, :cond_16

    const/16 v88, 0x0

    move/from16 v39, v88

    .line 282
    :cond_6
    :goto_c
    move/from16 v88, v40

    const/16 v89, 0x0

    cmpg-float v88, v88, v89

    if-gez v88, :cond_17

    const/16 v88, 0x0

    move/from16 v40, v88

    .line 283
    :cond_7
    :goto_d
    move/from16 v88, v41

    const/16 v89, 0x0

    cmpg-float v88, v88, v89

    if-gez v88, :cond_18

    const/16 v88, 0x0

    move/from16 v41, v88

    .line 284
    :cond_8
    :goto_e
    move-object/from16 v88, v37

    move/from16 v89, v38

    move/from16 v90, v54

    add-int v89, v89, v90

    move/from16 v90, v39

    const/high16 v91, 0x437f0000    # 255.0f

    mul-float v90, v90, v91

    move/from16 v0, v90

    float-to-int v0, v0

    move/from16 v90, v0

    const/16 v91, 0x10

    shl-int/lit8 v90, v90, 0x10

    move/from16 v91, v40

    const/high16 v92, 0x437f0000    # 255.0f

    mul-float v91, v91, v92

    move/from16 v0, v91

    float-to-int v0, v0

    move/from16 v91, v0

    const/16 v92, 0x8

    shl-int/lit8 v91, v91, 0x8

    or-int v90, v90, v91

    move/from16 v91, v41

    const/high16 v92, 0x437f0000    # 255.0f

    mul-float v91, v91, v92

    move/from16 v0, v91

    float-to-int v0, v0

    move/from16 v91, v0

    const/16 v92, 0x0

    shl-int/lit8 v91, v91, 0x0

    or-int v90, v90, v91

    move/from16 v91, v42

    const/high16 v92, 0x437f0000    # 255.0f

    mul-float v91, v91, v92

    move/from16 v0, v91

    float-to-int v0, v0

    move/from16 v91, v0

    const/16 v92, 0x18

    shl-int/lit8 v91, v91, 0x18

    or-int v90, v90, v91

    aput v90, v88, v89

    .line 290
    move/from16 v88, v52

    move/from16 v89, v44

    add-float v88, v88, v89

    move/from16 v52, v88

    .line 291
    move/from16 v88, v53

    move/from16 v89, v46

    add-float v88, v88, v89

    move/from16 v53, v88

    .line 148
    add-int/lit8 v54, v54, 0x1

    goto/16 :goto_1

    .line 161
    .end local v39    # "color_x":F
    .end local v40    # "color_y":F
    .end local v41    # "color_z":F
    .end local v42    # "color_w":F
    .end local v56    # "sample_res_x":F
    .end local v57    # "sample_res_y":F
    .end local v58    # "sample_res_z":F
    .end local v59    # "sample_res_w":F
    .end local v62    # "bot_z":F
    .end local v65    # "top_y":F
    .end local v66    # "top_z":F
    .end local v67    # "top_w":F
    .end local v68    # "blend_color_dodge_res_x":F
    .end local v69    # "blend_color_dodge_res_y":F
    .end local v70    # "blend_color_dodge_res_z":F
    .end local v71    # "blend_color_dodge_res_w":F
    .end local v72    # "bot_tmp_x":F
    .end local v73    # "bot_tmp_y":F
    .end local v74    # "bot_tmp_z":F
    .end local v75    # "bot_tmp_w":F
    .end local v76    # "top_tmp_x":F
    .end local v77    # "top_tmp_y":F
    .end local v78    # "top_tmp_z":F
    .end local v79    # "top_tmp_w":F
    .end local v80    # "res_x":F
    .end local v81    # "res_y":F
    .end local v82    # "res_z":F
    .end local v83    # "res_w":F
    .end local v84    # "proda":F
    .end local v85    # "tmp_x":F
    .end local v86    # "tmp_y":F
    .end local v87    # "tmp_z":F
    .local v60, "loc_tmp_x":F
    .local v61, "loc_tmp_y":F
    .local v63, "iloc_tmp_x":I
    .local v64, "iloc_tmp_y":I
    :cond_9
    const/16 v88, 0x0

    goto/16 :goto_2

    .line 164
    .local v65, "out":Z
    :cond_a
    move-object/from16 v88, v15

    move/from16 v89, v64

    move/from16 v90, v14

    mul-int v89, v89, v90

    move/from16 v90, v63

    add-int v89, v89, v90

    aget v88, v88, v89

    goto/16 :goto_3

    .line 167
    .end local v63    # "iloc_tmp_x":I
    .end local v64    # "iloc_tmp_y":I
    .end local v65    # "out":Z
    :cond_b
    const/16 v88, 0x0

    move/from16 v62, v88

    .local v62, "botImg_tmp":I
    goto/16 :goto_4

    .line 186
    .restart local v56    # "sample_res_x":F
    .restart local v57    # "sample_res_y":F
    .restart local v58    # "sample_res_z":F
    .restart local v59    # "sample_res_w":F
    .local v60, "bot_x":F
    .local v61, "bot_y":F
    .local v62, "bot_z":F
    .local v63, "bot_w":F
    .local v64, "loc_tmp_x":F
    .local v65, "loc_tmp_y":F
    .local v67, "iloc_tmp_x":I
    .local v68, "iloc_tmp_y":I
    :cond_c
    const/16 v88, 0x0

    goto/16 :goto_5

    .line 189
    .local v69, "out":Z
    :cond_d
    move-object/from16 v88, v25

    move/from16 v89, v68

    move/from16 v90, v24

    mul-int v89, v89, v90

    move/from16 v90, v67

    add-int v89, v89, v90

    aget v88, v88, v89

    goto/16 :goto_6

    .line 192
    .end local v67    # "iloc_tmp_x":I
    .end local v68    # "iloc_tmp_y":I
    .end local v69    # "out":Z
    :cond_e
    const/16 v88, 0x0

    move/from16 v66, v88

    .local v66, "topImg_tmp":I
    goto/16 :goto_7

    .line 230
    .local v64, "top_x":F
    .local v65, "top_y":F
    .local v66, "top_z":F
    .local v67, "top_w":F
    .restart local v72    # "bot_tmp_x":F
    .restart local v73    # "bot_tmp_y":F
    .restart local v74    # "bot_tmp_z":F
    .restart local v75    # "bot_tmp_w":F
    .restart local v76    # "top_tmp_x":F
    .restart local v77    # "top_tmp_y":F
    .restart local v78    # "top_tmp_z":F
    .restart local v79    # "top_tmp_w":F
    .restart local v80    # "res_x":F
    .restart local v81    # "res_y":F
    .restart local v82    # "res_z":F
    .restart local v83    # "res_w":F
    .restart local v84    # "proda":F
    :cond_f
    move/from16 v88, v79

    move/from16 v89, v76

    cmpl-float v88, v88, v89

    if-nez v88, :cond_10

    .line 231
    move/from16 v88, v84

    move/from16 v85, v88

    .restart local v85    # "tmp_x":F
    goto/16 :goto_8

    .line 234
    .end local v85    # "tmp_x":F
    :cond_10
    move/from16 v88, v79

    move/from16 v89, v79

    mul-float v88, v88, v89

    move/from16 v89, v72

    mul-float v88, v88, v89

    move/from16 v89, v79

    move/from16 v90, v76

    sub-float v89, v89, v90

    div-float v88, v88, v89

    move/from16 v85, v88

    .line 235
    .restart local v85    # "tmp_x":F
    move/from16 v88, v85

    move/from16 v89, v84

    cmpl-float v88, v88, v89

    if-lez v88, :cond_2

    .line 236
    move/from16 v88, v84

    move/from16 v85, v88

    goto/16 :goto_8

    .line 242
    :cond_11
    move/from16 v88, v79

    move/from16 v89, v77

    cmpl-float v88, v88, v89

    if-nez v88, :cond_12

    .line 243
    move/from16 v88, v84

    move/from16 v86, v88

    .restart local v86    # "tmp_y":F
    goto/16 :goto_9

    .line 246
    .end local v86    # "tmp_y":F
    :cond_12
    move/from16 v88, v79

    move/from16 v89, v79

    mul-float v88, v88, v89

    move/from16 v89, v73

    mul-float v88, v88, v89

    move/from16 v89, v79

    move/from16 v90, v77

    sub-float v89, v89, v90

    div-float v88, v88, v89

    move/from16 v86, v88

    .line 247
    .restart local v86    # "tmp_y":F
    move/from16 v88, v86

    move/from16 v89, v84

    cmpl-float v88, v88, v89

    if-lez v88, :cond_3

    .line 248
    move/from16 v88, v84

    move/from16 v86, v88

    goto/16 :goto_9

    .line 254
    :cond_13
    move/from16 v88, v79

    move/from16 v89, v78

    cmpl-float v88, v88, v89

    if-nez v88, :cond_14

    .line 255
    move/from16 v88, v84

    move/from16 v87, v88

    .restart local v87    # "tmp_z":F
    goto/16 :goto_a

    .line 258
    .end local v87    # "tmp_z":F
    :cond_14
    move/from16 v88, v79

    move/from16 v89, v79

    mul-float v88, v88, v89

    move/from16 v89, v74

    mul-float v88, v88, v89

    move/from16 v89, v79

    move/from16 v90, v78

    sub-float v89, v89, v90

    div-float v88, v88, v89

    move/from16 v87, v88

    .line 259
    .restart local v87    # "tmp_z":F
    move/from16 v88, v87

    move/from16 v89, v84

    cmpl-float v88, v88, v89

    if-lez v88, :cond_4

    .line 260
    move/from16 v88, v84

    move/from16 v87, v88

    goto/16 :goto_a

    .line 280
    .restart local v39    # "color_x":F
    .restart local v40    # "color_y":F
    .restart local v41    # "color_z":F
    .restart local v42    # "color_w":F
    .local v68, "blend_color_dodge_res_x":F
    .local v69, "blend_color_dodge_res_y":F
    .restart local v70    # "blend_color_dodge_res_z":F
    .restart local v71    # "blend_color_dodge_res_w":F
    :cond_15
    move/from16 v88, v42

    const/high16 v89, 0x3f800000    # 1.0f

    cmpl-float v88, v88, v89

    if-lez v88, :cond_5

    const/high16 v88, 0x3f800000    # 1.0f

    move/from16 v42, v88

    goto/16 :goto_b

    .line 281
    :cond_16
    move/from16 v88, v39

    move/from16 v89, v42

    cmpl-float v88, v88, v89

    if-lez v88, :cond_6

    move/from16 v88, v42

    move/from16 v39, v88

    goto/16 :goto_c

    .line 282
    :cond_17
    move/from16 v88, v40

    move/from16 v89, v42

    cmpl-float v88, v88, v89

    if-lez v88, :cond_7

    move/from16 v88, v42

    move/from16 v40, v88

    goto/16 :goto_d

    .line 283
    :cond_18
    move/from16 v88, v41

    move/from16 v89, v42

    cmpl-float v88, v88, v89

    if-lez v88, :cond_8

    move/from16 v88, v42

    move/from16 v41, v88

    goto/16 :goto_e

    .line 295
    .end local v39    # "color_x":F
    .end local v40    # "color_y":F
    .end local v41    # "color_z":F
    .end local v42    # "color_w":F
    .end local v55    # "pixcoord_x":F
    .end local v56    # "sample_res_x":F
    .end local v57    # "sample_res_y":F
    .end local v58    # "sample_res_z":F
    .end local v59    # "sample_res_w":F
    .end local v60    # "bot_x":F
    .end local v61    # "bot_y":F
    .end local v62    # "bot_z":F
    .end local v63    # "bot_w":F
    .end local v64    # "top_x":F
    .end local v65    # "top_y":F
    .end local v66    # "top_z":F
    .end local v67    # "top_w":F
    .end local v68    # "blend_color_dodge_res_x":F
    .end local v69    # "blend_color_dodge_res_y":F
    .end local v70    # "blend_color_dodge_res_z":F
    .end local v71    # "blend_color_dodge_res_w":F
    .end local v72    # "bot_tmp_x":F
    .end local v73    # "bot_tmp_y":F
    .end local v74    # "bot_tmp_z":F
    .end local v75    # "bot_tmp_w":F
    .end local v76    # "top_tmp_x":F
    .end local v77    # "top_tmp_y":F
    .end local v78    # "top_tmp_z":F
    .end local v79    # "top_tmp_w":F
    .end local v80    # "res_x":F
    .end local v81    # "res_y":F
    .end local v82    # "res_z":F
    .end local v83    # "res_w":F
    .end local v84    # "proda":F
    .end local v85    # "tmp_x":F
    .end local v86    # "tmp_y":F
    .end local v87    # "tmp_z":F
    :cond_19
    move/from16 v88, v48

    move/from16 v89, v45

    add-float v88, v88, v89

    move/from16 v48, v88

    .line 296
    move/from16 v88, v49

    move/from16 v89, v47

    add-float v88, v88, v89

    move/from16 v49, v88

    .line 140
    add-int/lit8 v50, v50, 0x1

    goto/16 :goto_0

    .line 300
    .end local v38    # "dyi":I
    .end local v51    # "pixcoord_y":F
    .end local v52    # "pos0_x":F
    .end local v53    # "pos1_x":F
    .end local v54    # "dx":I
    :cond_1a
    move-object/from16 v88, v7

    const/16 v89, 0x0

    aget-object v88, v88, v89

    move-object/from16 v89, v9

    invoke-virtual/range {v88 .. v89}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 301
    move-object/from16 v88, v7

    const/16 v89, 0x1

    aget-object v88, v88, v89

    move-object/from16 v89, v19

    invoke-virtual/range {v88 .. v89}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 304
    new-instance v88, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v97, v88

    move-object/from16 v88, v97

    move-object/from16 v89, v97

    move-object/from16 v90, v2

    invoke-virtual/range {v90 .. v90}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v90

    move-object/from16 v91, v35

    move-object/from16 v92, v8

    invoke-direct/range {v89 .. v92}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v88

    .end local v2    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;
    return-object v2
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/Blend;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Blend;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;
    return-object v0
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;->getEffect()Lcom/sun/scenario/effect/Blend;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_COLOR_DODGEPeer;
    return-object v0
.end method

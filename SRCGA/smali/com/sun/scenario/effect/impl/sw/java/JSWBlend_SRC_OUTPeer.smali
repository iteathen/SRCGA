.class public Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;
.super Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;
.source "JSWBlend_SRC_OUTPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;
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

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;->getEffect()Lcom/sun/scenario/effect/Blend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Blend;->getOpacity()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;
    return v0
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 90

    .prologue
    .line 70
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;
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
    move-object/from16 v80, v2

    move-object/from16 v81, v3

    invoke-virtual/range {v80 .. v81}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 71
    move-object/from16 v80, v2

    move-object/from16 v81, v5

    move-object/from16 v82, v6

    move-object/from16 v83, v7

    invoke-virtual/range {v80 .. v83}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v80

    move-object/from16 v8, v80

    .line 72
    .local v8, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v80, v2

    move-object/from16 v81, v8

    invoke-virtual/range {v80 .. v81}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 75
    move-object/from16 v80, v7

    const/16 v81, 0x0

    aget-object v80, v80, v81

    move-object/from16 v81, v8

    invoke-virtual/range {v80 .. v81}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v80

    check-cast v80, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v9, v80

    .line 76
    .local v9, "src0":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v80, 0x0

    move/from16 v10, v80

    .line 77
    .local v10, "src0x":I
    const/16 v80, 0x0

    move/from16 v11, v80

    .line 78
    .local v11, "src0y":I
    move-object/from16 v80, v9

    invoke-interface/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v80

    move/from16 v12, v80

    .line 79
    .local v12, "src0w":I
    move-object/from16 v80, v9

    invoke-interface/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v80

    move/from16 v13, v80

    .line 80
    .local v13, "src0h":I
    move-object/from16 v80, v9

    invoke-interface/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v80

    move/from16 v14, v80

    .line 81
    .local v14, "src0scan":I
    move-object/from16 v80, v9

    .line 82
    invoke-interface/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v80

    move-object/from16 v15, v80

    .line 83
    .local v15, "botImg":[I
    new-instance v80, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v89, v80

    move-object/from16 v80, v89

    move-object/from16 v81, v89

    move/from16 v82, v10

    move/from16 v83, v11

    move/from16 v84, v12

    move/from16 v85, v13

    invoke-direct/range {v81 .. v85}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v16, v80

    .line 84
    .local v16, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v80, v7

    const/16 v81, 0x0

    aget-object v80, v80, v81

    move-object/from16 v81, v8

    invoke-virtual/range {v80 .. v81}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v80

    move-object/from16 v17, v80

    .line 85
    .local v17, "src0InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v80, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v18, v80

    .line 86
    .local v18, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v80, v2

    const/16 v81, 0x0

    move-object/from16 v82, v17

    invoke-virtual/range {v80 .. v82}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 87
    move-object/from16 v80, v2

    const/16 v81, 0x0

    move-object/from16 v82, v16

    invoke-virtual/range {v80 .. v82}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 88
    move-object/from16 v80, v7

    const/16 v81, 0x1

    aget-object v80, v80, v81

    move-object/from16 v81, v8

    invoke-virtual/range {v80 .. v81}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v80

    check-cast v80, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v19, v80

    .line 89
    .local v19, "src1":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v80, 0x0

    move/from16 v20, v80

    .line 90
    .local v20, "src1x":I
    const/16 v80, 0x0

    move/from16 v21, v80

    .line 91
    .local v21, "src1y":I
    move-object/from16 v80, v19

    invoke-interface/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v80

    move/from16 v22, v80

    .line 92
    .local v22, "src1w":I
    move-object/from16 v80, v19

    invoke-interface/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v80

    move/from16 v23, v80

    .line 93
    .local v23, "src1h":I
    move-object/from16 v80, v19

    invoke-interface/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v80

    move/from16 v24, v80

    .line 94
    .local v24, "src1scan":I
    move-object/from16 v80, v19

    .line 95
    invoke-interface/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v80

    move-object/from16 v25, v80

    .line 96
    .local v25, "topImg":[I
    new-instance v80, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v89, v80

    move-object/from16 v80, v89

    move-object/from16 v81, v89

    move/from16 v82, v20

    move/from16 v83, v21

    move/from16 v84, v22

    move/from16 v85, v23

    invoke-direct/range {v81 .. v85}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v26, v80

    .line 97
    .local v26, "src1Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v80, v7

    const/16 v81, 0x1

    aget-object v80, v80, v81

    move-object/from16 v81, v8

    invoke-virtual/range {v80 .. v81}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v80

    move-object/from16 v27, v80

    .line 98
    .local v27, "src1InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v80, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v28, v80

    .line 99
    .local v28, "src1Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v80, v2

    const/16 v81, 0x1

    move-object/from16 v82, v27

    invoke-virtual/range {v80 .. v82}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 100
    move-object/from16 v80, v2

    const/16 v81, 0x1

    move-object/from16 v82, v26

    invoke-virtual/range {v80 .. v82}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 103
    const/16 v80, 0x4

    move/from16 v0, v80

    new-array v0, v0, [F

    move-object/from16 v80, v0

    move-object/from16 v29, v80

    .line 104
    .local v29, "src0Rect":[F
    move-object/from16 v80, v2

    const/16 v81, 0x0

    move-object/from16 v82, v29

    move-object/from16 v83, v17

    move-object/from16 v0, v83

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v83, v0

    move/from16 v0, v83

    int-to-float v0, v0

    move/from16 v83, v0

    move-object/from16 v84, v17

    move-object/from16 v0, v84

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v84, v0

    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v84, v0

    move/from16 v85, v12

    move/from16 v0, v85

    int-to-float v0, v0

    move/from16 v85, v0

    move/from16 v86, v13

    move/from16 v0, v86

    int-to-float v0, v0

    move/from16 v86, v0

    move-object/from16 v87, v8

    move-object/from16 v88, v18

    invoke-virtual/range {v80 .. v88}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v80

    .line 108
    const/16 v80, 0x4

    move/from16 v0, v80

    new-array v0, v0, [F

    move-object/from16 v80, v0

    move-object/from16 v30, v80

    .line 109
    .local v30, "src1Rect":[F
    move-object/from16 v80, v2

    const/16 v81, 0x1

    move-object/from16 v82, v30

    move-object/from16 v83, v27

    move-object/from16 v0, v83

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v83, v0

    move/from16 v0, v83

    int-to-float v0, v0

    move/from16 v83, v0

    move-object/from16 v84, v27

    move-object/from16 v0, v84

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v84, v0

    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v84, v0

    move/from16 v85, v22

    move/from16 v0, v85

    int-to-float v0, v0

    move/from16 v85, v0

    move/from16 v86, v23

    move/from16 v0, v86

    int-to-float v0, v0

    move/from16 v86, v0

    move-object/from16 v87, v8

    move-object/from16 v88, v28

    invoke-virtual/range {v80 .. v88}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v80

    .line 115
    const/16 v80, 0x0

    move/from16 v31, v80

    .line 116
    .local v31, "dstx":I
    const/16 v80, 0x0

    move/from16 v32, v80

    .line 117
    .local v32, "dsty":I
    move-object/from16 v80, v8

    move-object/from16 v0, v80

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v80, v0

    move/from16 v33, v80

    .line 118
    .local v33, "dstw":I
    move-object/from16 v80, v8

    move-object/from16 v0, v80

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v80, v0

    move/from16 v34, v80

    .line 120
    .local v34, "dsth":I
    move-object/from16 v80, v2

    invoke-virtual/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v80

    move/from16 v81, v33

    move/from16 v82, v34

    invoke-virtual/range {v80 .. v82}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v80

    check-cast v80, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v35, v80

    .line 121
    .local v35, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v80, v2

    move-object/from16 v81, v35

    invoke-interface/range {v81 .. v81}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v81

    move-object/from16 v82, v35

    invoke-interface/range {v82 .. v82}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v82

    invoke-virtual/range {v80 .. v82}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;->setDestNativeBounds(II)V

    .line 122
    move-object/from16 v80, v35

    invoke-interface/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v80

    move/from16 v36, v80

    .line 123
    .local v36, "dstscan":I
    move-object/from16 v80, v35

    invoke-interface/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v80

    move-object/from16 v37, v80

    .line 128
    .local v37, "dstPixels":[I
    move-object/from16 v80, v2

    invoke-direct/range {v80 .. v80}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;->getOpacity()F

    move-result v80

    move/from16 v43, v80

    .line 131
    .local v43, "opacity":F
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

    move/from16 v44, v80

    .line 132
    .local v44, "inc0_x":F
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

    move/from16 v45, v80

    .line 133
    .local v45, "inc0_y":F
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

    move/from16 v46, v80

    .line 134
    .local v46, "inc1_x":F
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

    move/from16 v47, v80

    .line 137
    .local v47, "inc1_y":F
    move-object/from16 v80, v29

    const/16 v81, 0x1

    aget v80, v80, v81

    move/from16 v81, v45

    const/high16 v82, 0x3f000000    # 0.5f

    mul-float v81, v81, v82

    add-float v80, v80, v81

    move/from16 v48, v80

    .line 138
    .local v48, "pos0_y":F
    move-object/from16 v80, v30

    const/16 v81, 0x1

    aget v80, v80, v81

    move/from16 v81, v47

    const/high16 v82, 0x3f000000    # 0.5f

    mul-float v81, v81, v82

    add-float v80, v80, v81

    move/from16 v49, v80

    .line 140
    .local v49, "pos1_y":F
    const/16 v80, 0x0

    move/from16 v50, v80

    .local v50, "dy":I
    :goto_0
    move/from16 v80, v50

    const/16 v81, 0x0

    move/from16 v82, v34

    add-int v81, v81, v82

    move/from16 v0, v80

    move/from16 v1, v81

    if-ge v0, v1, :cond_11

    .line 141
    move/from16 v80, v50

    move/from16 v0, v80

    int-to-float v0, v0

    move/from16 v80, v0

    move/from16 v51, v80

    .line 143
    .local v51, "pixcoord_y":F
    move/from16 v80, v50

    move/from16 v81, v36

    mul-int v80, v80, v81

    move/from16 v38, v80

    .line 145
    .local v38, "dyi":I
    move-object/from16 v80, v29

    const/16 v81, 0x0

    aget v80, v80, v81

    move/from16 v81, v44

    const/high16 v82, 0x3f000000    # 0.5f

    mul-float v81, v81, v82

    add-float v80, v80, v81

    move/from16 v52, v80

    .line 146
    .local v52, "pos0_x":F
    move-object/from16 v80, v30

    const/16 v81, 0x0

    aget v80, v80, v81

    move/from16 v81, v46

    const/high16 v82, 0x3f000000    # 0.5f

    mul-float v81, v81, v82

    add-float v80, v80, v81

    move/from16 v53, v80

    .line 148
    .local v53, "pos1_x":F
    const/16 v80, 0x0

    move/from16 v54, v80

    .local v54, "dx":I
    :goto_1
    move/from16 v80, v54

    const/16 v81, 0x0

    move/from16 v82, v33

    add-int v81, v81, v82

    move/from16 v0, v80

    move/from16 v1, v81

    if-ge v0, v1, :cond_10

    .line 149
    move/from16 v80, v54

    move/from16 v0, v80

    int-to-float v0, v0

    move/from16 v80, v0

    move/from16 v55, v80

    .line 155
    .local v55, "pixcoord_x":F
    move/from16 v80, v52

    move/from16 v60, v80

    .line 156
    .local v60, "loc_tmp_x":F
    move/from16 v80, v48

    move/from16 v61, v80

    .line 158
    .local v61, "loc_tmp_y":F
    move/from16 v80, v60

    const/16 v81, 0x0

    cmpl-float v80, v80, v81

    if-ltz v80, :cond_8

    move/from16 v80, v61

    const/16 v81, 0x0

    cmpl-float v80, v80, v81

    if-ltz v80, :cond_8

    .line 159
    move/from16 v80, v60

    move/from16 v81, v12

    move/from16 v0, v81

    int-to-float v0, v0

    move/from16 v81, v0

    mul-float v80, v80, v81

    move/from16 v0, v80

    float-to-int v0, v0

    move/from16 v80, v0

    move/from16 v63, v80

    .line 160
    .local v63, "iloc_tmp_x":I
    move/from16 v80, v61

    move/from16 v81, v13

    move/from16 v0, v81

    int-to-float v0, v0

    move/from16 v81, v0

    mul-float v80, v80, v81

    move/from16 v0, v80

    float-to-int v0, v0

    move/from16 v80, v0

    move/from16 v64, v80

    .line 161
    .local v64, "iloc_tmp_y":I
    move/from16 v80, v63

    move/from16 v81, v12

    move/from16 v0, v80

    move/from16 v1, v81

    if-ge v0, v1, :cond_0

    move/from16 v80, v64

    move/from16 v81, v13

    move/from16 v0, v80

    move/from16 v1, v81

    if-lt v0, v1, :cond_6

    :cond_0
    const/16 v80, 0x1

    :goto_2
    move/from16 v65, v80

    .line 164
    .local v65, "out":Z
    move/from16 v80, v65

    if-eqz v80, :cond_7

    const/16 v80, 0x0

    :goto_3
    move/from16 v62, v80

    .line 169
    .end local v63    # "iloc_tmp_x":I
    .end local v64    # "iloc_tmp_y":I
    .end local v65    # "out":Z
    .local v62, "botImg_tmp":I
    :goto_4
    move/from16 v80, v62

    const/16 v81, 0x10

    shr-int/lit8 v80, v80, 0x10

    const/16 v81, 0xff

    move/from16 v0, v80

    and-int/lit16 v0, v0, 0xff

    move/from16 v80, v0

    move/from16 v0, v80

    int-to-float v0, v0

    move/from16 v80, v0

    const/high16 v81, 0x437f0000    # 255.0f

    div-float v80, v80, v81

    move/from16 v56, v80

    .line 170
    .local v56, "sample_res_x":F
    move/from16 v80, v62

    const/16 v81, 0x8

    shr-int/lit8 v80, v80, 0x8

    const/16 v81, 0xff

    move/from16 v0, v80

    and-int/lit16 v0, v0, 0xff

    move/from16 v80, v0

    move/from16 v0, v80

    int-to-float v0, v0

    move/from16 v80, v0

    const/high16 v81, 0x437f0000    # 255.0f

    div-float v80, v80, v81

    move/from16 v57, v80

    .line 171
    .local v57, "sample_res_y":F
    move/from16 v80, v62

    const/16 v81, 0xff

    move/from16 v0, v80

    and-int/lit16 v0, v0, 0xff

    move/from16 v80, v0

    move/from16 v0, v80

    int-to-float v0, v0

    move/from16 v80, v0

    const/high16 v81, 0x437f0000    # 255.0f

    div-float v80, v80, v81

    move/from16 v58, v80

    .line 172
    .local v58, "sample_res_z":F
    move/from16 v80, v62

    const/16 v81, 0x18

    ushr-int/lit8 v80, v80, 0x18

    move/from16 v0, v80

    int-to-float v0, v0

    move/from16 v80, v0

    const/high16 v81, 0x437f0000    # 255.0f

    div-float v80, v80, v81

    move/from16 v59, v80

    .line 175
    .local v59, "sample_res_w":F
    move/from16 v80, v56

    move/from16 v60, v80

    .line 176
    .local v60, "bot_x":F
    move/from16 v80, v57

    move/from16 v61, v80

    .line 177
    .local v61, "bot_y":F
    move/from16 v80, v58

    move/from16 v62, v80

    .line 178
    .local v62, "bot_z":F
    move/from16 v80, v59

    move/from16 v63, v80

    .line 180
    .local v63, "bot_w":F
    move/from16 v80, v53

    move/from16 v64, v80

    .line 181
    .local v64, "loc_tmp_x":F
    move/from16 v80, v49

    move/from16 v65, v80

    .line 183
    .local v65, "loc_tmp_y":F
    move/from16 v80, v64

    const/16 v81, 0x0

    cmpl-float v80, v80, v81

    if-ltz v80, :cond_b

    move/from16 v80, v65

    const/16 v81, 0x0

    cmpl-float v80, v80, v81

    if-ltz v80, :cond_b

    .line 184
    move/from16 v80, v64

    move/from16 v81, v22

    move/from16 v0, v81

    int-to-float v0, v0

    move/from16 v81, v0

    mul-float v80, v80, v81

    move/from16 v0, v80

    float-to-int v0, v0

    move/from16 v80, v0

    move/from16 v67, v80

    .line 185
    .local v67, "iloc_tmp_x":I
    move/from16 v80, v65

    move/from16 v81, v23

    move/from16 v0, v81

    int-to-float v0, v0

    move/from16 v81, v0

    mul-float v80, v80, v81

    move/from16 v0, v80

    float-to-int v0, v0

    move/from16 v80, v0

    move/from16 v68, v80

    .line 186
    .local v68, "iloc_tmp_y":I
    move/from16 v80, v67

    move/from16 v81, v22

    move/from16 v0, v80

    move/from16 v1, v81

    if-ge v0, v1, :cond_1

    move/from16 v80, v68

    move/from16 v81, v23

    move/from16 v0, v80

    move/from16 v1, v81

    if-lt v0, v1, :cond_9

    :cond_1
    const/16 v80, 0x1

    :goto_5
    move/from16 v69, v80

    .line 189
    .local v69, "out":Z
    move/from16 v80, v69

    if-eqz v80, :cond_a

    const/16 v80, 0x0

    :goto_6
    move/from16 v66, v80

    .line 194
    .end local v67    # "iloc_tmp_x":I
    .end local v68    # "iloc_tmp_y":I
    .end local v69    # "out":Z
    .local v66, "topImg_tmp":I
    :goto_7
    move/from16 v80, v66

    const/16 v81, 0x10

    shr-int/lit8 v80, v80, 0x10

    const/16 v81, 0xff

    move/from16 v0, v80

    and-int/lit16 v0, v0, 0xff

    move/from16 v80, v0

    move/from16 v0, v80

    int-to-float v0, v0

    move/from16 v80, v0

    const/high16 v81, 0x437f0000    # 255.0f

    div-float v80, v80, v81

    move/from16 v56, v80

    .line 195
    move/from16 v80, v66

    const/16 v81, 0x8

    shr-int/lit8 v80, v80, 0x8

    const/16 v81, 0xff

    move/from16 v0, v80

    and-int/lit16 v0, v0, 0xff

    move/from16 v80, v0

    move/from16 v0, v80

    int-to-float v0, v0

    move/from16 v80, v0

    const/high16 v81, 0x437f0000    # 255.0f

    div-float v80, v80, v81

    move/from16 v57, v80

    .line 196
    move/from16 v80, v66

    const/16 v81, 0xff

    move/from16 v0, v80

    and-int/lit16 v0, v0, 0xff

    move/from16 v80, v0

    move/from16 v0, v80

    int-to-float v0, v0

    move/from16 v80, v0

    const/high16 v81, 0x437f0000    # 255.0f

    div-float v80, v80, v81

    move/from16 v58, v80

    .line 197
    move/from16 v80, v66

    const/16 v81, 0x18

    ushr-int/lit8 v80, v80, 0x18

    move/from16 v0, v80

    int-to-float v0, v0

    move/from16 v80, v0

    const/high16 v81, 0x437f0000    # 255.0f

    div-float v80, v80, v81

    move/from16 v59, v80

    .line 200
    move/from16 v80, v56

    move/from16 v81, v43

    mul-float v80, v80, v81

    move/from16 v64, v80

    .line 201
    .local v64, "top_x":F
    move/from16 v80, v57

    move/from16 v81, v43

    mul-float v80, v80, v81

    move/from16 v65, v80

    .line 202
    .local v65, "top_y":F
    move/from16 v80, v58

    move/from16 v81, v43

    mul-float v80, v80, v81

    move/from16 v66, v80

    .line 203
    .local v66, "top_z":F
    move/from16 v80, v59

    move/from16 v81, v43

    mul-float v80, v80, v81

    move/from16 v67, v80

    .line 206
    .local v67, "top_w":F
    move/from16 v80, v60

    move/from16 v72, v80

    .line 207
    .local v72, "bot_tmp_x":F
    move/from16 v80, v61

    move/from16 v73, v80

    .line 208
    .local v73, "bot_tmp_y":F
    move/from16 v80, v62

    move/from16 v74, v80

    .line 209
    .local v74, "bot_tmp_z":F
    move/from16 v80, v63

    move/from16 v75, v80

    .line 210
    .local v75, "bot_tmp_w":F
    move/from16 v80, v64

    move/from16 v76, v80

    .line 211
    .local v76, "top_tmp_x":F
    move/from16 v80, v65

    move/from16 v77, v80

    .line 212
    .local v77, "top_tmp_y":F
    move/from16 v80, v66

    move/from16 v78, v80

    .line 213
    .local v78, "top_tmp_z":F
    move/from16 v80, v67

    move/from16 v79, v80

    .line 215
    .local v79, "top_tmp_w":F
    move/from16 v80, v76

    const/high16 v81, 0x3f800000    # 1.0f

    move/from16 v82, v75

    sub-float v81, v81, v82

    mul-float v80, v80, v81

    move/from16 v68, v80

    .line 216
    .local v68, "blend_src_out_res_x":F
    move/from16 v80, v77

    const/high16 v81, 0x3f800000    # 1.0f

    move/from16 v82, v75

    sub-float v81, v81, v82

    mul-float v80, v80, v81

    move/from16 v69, v80

    .line 217
    .local v69, "blend_src_out_res_y":F
    move/from16 v80, v78

    const/high16 v81, 0x3f800000    # 1.0f

    move/from16 v82, v75

    sub-float v81, v81, v82

    mul-float v80, v80, v81

    move/from16 v70, v80

    .line 218
    .local v70, "blend_src_out_res_z":F
    move/from16 v80, v79

    const/high16 v81, 0x3f800000    # 1.0f

    move/from16 v82, v75

    sub-float v81, v81, v82

    mul-float v80, v80, v81

    move/from16 v71, v80

    .line 222
    .local v71, "blend_src_out_res_w":F
    move/from16 v80, v68

    move/from16 v39, v80

    .line 223
    .local v39, "color_x":F
    move/from16 v80, v69

    move/from16 v40, v80

    .line 224
    .local v40, "color_y":F
    move/from16 v80, v70

    move/from16 v41, v80

    .line 225
    .local v41, "color_z":F
    move/from16 v80, v71

    move/from16 v42, v80

    .line 229
    .local v42, "color_w":F
    move/from16 v80, v42

    const/16 v81, 0x0

    cmpg-float v80, v80, v81

    if-gez v80, :cond_c

    const/16 v80, 0x0

    move/from16 v42, v80

    .line 230
    :cond_2
    :goto_8
    move/from16 v80, v39

    const/16 v81, 0x0

    cmpg-float v80, v80, v81

    if-gez v80, :cond_d

    const/16 v80, 0x0

    move/from16 v39, v80

    .line 231
    :cond_3
    :goto_9
    move/from16 v80, v40

    const/16 v81, 0x0

    cmpg-float v80, v80, v81

    if-gez v80, :cond_e

    const/16 v80, 0x0

    move/from16 v40, v80

    .line 232
    :cond_4
    :goto_a
    move/from16 v80, v41

    const/16 v81, 0x0

    cmpg-float v80, v80, v81

    if-gez v80, :cond_f

    const/16 v80, 0x0

    move/from16 v41, v80

    .line 233
    :cond_5
    :goto_b
    move-object/from16 v80, v37

    move/from16 v81, v38

    move/from16 v82, v54

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

    .line 239
    move/from16 v80, v52

    move/from16 v81, v44

    add-float v80, v80, v81

    move/from16 v52, v80

    .line 240
    move/from16 v80, v53

    move/from16 v81, v46

    add-float v80, v80, v81

    move/from16 v53, v80

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
    .end local v68    # "blend_src_out_res_x":F
    .end local v69    # "blend_src_out_res_y":F
    .end local v70    # "blend_src_out_res_z":F
    .end local v71    # "blend_src_out_res_w":F
    .end local v72    # "bot_tmp_x":F
    .end local v73    # "bot_tmp_y":F
    .end local v74    # "bot_tmp_z":F
    .end local v75    # "bot_tmp_w":F
    .end local v76    # "top_tmp_x":F
    .end local v77    # "top_tmp_y":F
    .end local v78    # "top_tmp_z":F
    .end local v79    # "top_tmp_w":F
    .local v60, "loc_tmp_x":F
    .local v61, "loc_tmp_y":F
    .local v63, "iloc_tmp_x":I
    .local v64, "iloc_tmp_y":I
    :cond_6
    const/16 v80, 0x0

    goto/16 :goto_2

    .line 164
    .local v65, "out":Z
    :cond_7
    move-object/from16 v80, v15

    move/from16 v81, v64

    move/from16 v82, v14

    mul-int v81, v81, v82

    move/from16 v82, v63

    add-int v81, v81, v82

    aget v80, v80, v81

    goto/16 :goto_3

    .line 167
    .end local v63    # "iloc_tmp_x":I
    .end local v64    # "iloc_tmp_y":I
    .end local v65    # "out":Z
    :cond_8
    const/16 v80, 0x0

    move/from16 v62, v80

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
    :cond_9
    const/16 v80, 0x0

    goto/16 :goto_5

    .line 189
    .local v69, "out":Z
    :cond_a
    move-object/from16 v80, v25

    move/from16 v81, v68

    move/from16 v82, v24

    mul-int v81, v81, v82

    move/from16 v82, v67

    add-int v81, v81, v82

    aget v80, v80, v81

    goto/16 :goto_6

    .line 192
    .end local v67    # "iloc_tmp_x":I
    .end local v68    # "iloc_tmp_y":I
    .end local v69    # "out":Z
    :cond_b
    const/16 v80, 0x0

    move/from16 v66, v80

    .local v66, "topImg_tmp":I
    goto/16 :goto_7

    .line 229
    .restart local v39    # "color_x":F
    .restart local v40    # "color_y":F
    .restart local v41    # "color_z":F
    .restart local v42    # "color_w":F
    .local v64, "top_x":F
    .local v65, "top_y":F
    .local v66, "top_z":F
    .local v67, "top_w":F
    .local v68, "blend_src_out_res_x":F
    .local v69, "blend_src_out_res_y":F
    .restart local v70    # "blend_src_out_res_z":F
    .restart local v71    # "blend_src_out_res_w":F
    .restart local v72    # "bot_tmp_x":F
    .restart local v73    # "bot_tmp_y":F
    .restart local v74    # "bot_tmp_z":F
    .restart local v75    # "bot_tmp_w":F
    .restart local v76    # "top_tmp_x":F
    .restart local v77    # "top_tmp_y":F
    .restart local v78    # "top_tmp_z":F
    .restart local v79    # "top_tmp_w":F
    :cond_c
    move/from16 v80, v42

    const/high16 v81, 0x3f800000    # 1.0f

    cmpl-float v80, v80, v81

    if-lez v80, :cond_2

    const/high16 v80, 0x3f800000    # 1.0f

    move/from16 v42, v80

    goto/16 :goto_8

    .line 230
    :cond_d
    move/from16 v80, v39

    move/from16 v81, v42

    cmpl-float v80, v80, v81

    if-lez v80, :cond_3

    move/from16 v80, v42

    move/from16 v39, v80

    goto/16 :goto_9

    .line 231
    :cond_e
    move/from16 v80, v40

    move/from16 v81, v42

    cmpl-float v80, v80, v81

    if-lez v80, :cond_4

    move/from16 v80, v42

    move/from16 v40, v80

    goto/16 :goto_a

    .line 232
    :cond_f
    move/from16 v80, v41

    move/from16 v81, v42

    cmpl-float v80, v80, v81

    if-lez v80, :cond_5

    move/from16 v80, v42

    move/from16 v41, v80

    goto/16 :goto_b

    .line 244
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
    .end local v68    # "blend_src_out_res_x":F
    .end local v69    # "blend_src_out_res_y":F
    .end local v70    # "blend_src_out_res_z":F
    .end local v71    # "blend_src_out_res_w":F
    .end local v72    # "bot_tmp_x":F
    .end local v73    # "bot_tmp_y":F
    .end local v74    # "bot_tmp_z":F
    .end local v75    # "bot_tmp_w":F
    .end local v76    # "top_tmp_x":F
    .end local v77    # "top_tmp_y":F
    .end local v78    # "top_tmp_z":F
    .end local v79    # "top_tmp_w":F
    :cond_10
    move/from16 v80, v48

    move/from16 v81, v45

    add-float v80, v80, v81

    move/from16 v48, v80

    .line 245
    move/from16 v80, v49

    move/from16 v81, v47

    add-float v80, v80, v81

    move/from16 v49, v80

    .line 140
    add-int/lit8 v50, v50, 0x1

    goto/16 :goto_0

    .line 249
    .end local v38    # "dyi":I
    .end local v51    # "pixcoord_y":F
    .end local v52    # "pos0_x":F
    .end local v53    # "pos1_x":F
    .end local v54    # "dx":I
    :cond_11
    move-object/from16 v80, v7

    const/16 v81, 0x0

    aget-object v80, v80, v81

    move-object/from16 v81, v9

    invoke-virtual/range {v80 .. v81}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 250
    move-object/from16 v80, v7

    const/16 v81, 0x1

    aget-object v80, v80, v81

    move-object/from16 v81, v19

    invoke-virtual/range {v80 .. v81}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 253
    new-instance v80, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v89, v80

    move-object/from16 v80, v89

    move-object/from16 v81, v89

    move-object/from16 v82, v2

    invoke-virtual/range {v82 .. v82}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v82

    move-object/from16 v83, v35

    move-object/from16 v84, v8

    invoke-direct/range {v81 .. v84}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v80

    .end local v2    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;
    return-object v2
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/Blend;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Blend;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;
    return-object v0
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;->getEffect()Lcom/sun/scenario/effect/Blend;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SRC_OUTPeer;
    return-object v0
.end method

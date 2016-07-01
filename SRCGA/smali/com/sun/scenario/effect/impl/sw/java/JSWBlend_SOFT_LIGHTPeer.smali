.class public Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;
.super Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;
.source "JSWBlend_SOFT_LIGHTPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;
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

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;->getEffect()Lcom/sun/scenario/effect/Blend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Blend;->getOpacity()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;
    return v0
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 108

    .prologue
    .line 70
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;
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
    move-object/from16 v98, v2

    move-object/from16 v99, v3

    invoke-virtual/range {v98 .. v99}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 71
    move-object/from16 v98, v2

    move-object/from16 v99, v5

    move-object/from16 v100, v6

    move-object/from16 v101, v7

    invoke-virtual/range {v98 .. v101}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v98

    move-object/from16 v8, v98

    .line 72
    .local v8, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v98, v2

    move-object/from16 v99, v8

    invoke-virtual/range {v98 .. v99}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 75
    move-object/from16 v98, v7

    const/16 v99, 0x0

    aget-object v98, v98, v99

    move-object/from16 v99, v8

    invoke-virtual/range {v98 .. v99}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v98

    check-cast v98, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v9, v98

    .line 76
    .local v9, "src0":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v98, 0x0

    move/from16 v10, v98

    .line 77
    .local v10, "src0x":I
    const/16 v98, 0x0

    move/from16 v11, v98

    .line 78
    .local v11, "src0y":I
    move-object/from16 v98, v9

    invoke-interface/range {v98 .. v98}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v98

    move/from16 v12, v98

    .line 79
    .local v12, "src0w":I
    move-object/from16 v98, v9

    invoke-interface/range {v98 .. v98}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v98

    move/from16 v13, v98

    .line 80
    .local v13, "src0h":I
    move-object/from16 v98, v9

    invoke-interface/range {v98 .. v98}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v98

    move/from16 v14, v98

    .line 81
    .local v14, "src0scan":I
    move-object/from16 v98, v9

    .line 82
    invoke-interface/range {v98 .. v98}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v98

    move-object/from16 v15, v98

    .line 83
    .local v15, "botImg":[I
    new-instance v98, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v107, v98

    move-object/from16 v98, v107

    move-object/from16 v99, v107

    move/from16 v100, v10

    move/from16 v101, v11

    move/from16 v102, v12

    move/from16 v103, v13

    invoke-direct/range {v99 .. v103}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v16, v98

    .line 84
    .local v16, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v98, v7

    const/16 v99, 0x0

    aget-object v98, v98, v99

    move-object/from16 v99, v8

    invoke-virtual/range {v98 .. v99}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v98

    move-object/from16 v17, v98

    .line 85
    .local v17, "src0InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v98, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v18, v98

    .line 86
    .local v18, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v98, v2

    const/16 v99, 0x0

    move-object/from16 v100, v17

    invoke-virtual/range {v98 .. v100}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 87
    move-object/from16 v98, v2

    const/16 v99, 0x0

    move-object/from16 v100, v16

    invoke-virtual/range {v98 .. v100}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 88
    move-object/from16 v98, v7

    const/16 v99, 0x1

    aget-object v98, v98, v99

    move-object/from16 v99, v8

    invoke-virtual/range {v98 .. v99}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v98

    check-cast v98, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v19, v98

    .line 89
    .local v19, "src1":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v98, 0x0

    move/from16 v20, v98

    .line 90
    .local v20, "src1x":I
    const/16 v98, 0x0

    move/from16 v21, v98

    .line 91
    .local v21, "src1y":I
    move-object/from16 v98, v19

    invoke-interface/range {v98 .. v98}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v98

    move/from16 v22, v98

    .line 92
    .local v22, "src1w":I
    move-object/from16 v98, v19

    invoke-interface/range {v98 .. v98}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v98

    move/from16 v23, v98

    .line 93
    .local v23, "src1h":I
    move-object/from16 v98, v19

    invoke-interface/range {v98 .. v98}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v98

    move/from16 v24, v98

    .line 94
    .local v24, "src1scan":I
    move-object/from16 v98, v19

    .line 95
    invoke-interface/range {v98 .. v98}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v98

    move-object/from16 v25, v98

    .line 96
    .local v25, "topImg":[I
    new-instance v98, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v107, v98

    move-object/from16 v98, v107

    move-object/from16 v99, v107

    move/from16 v100, v20

    move/from16 v101, v21

    move/from16 v102, v22

    move/from16 v103, v23

    invoke-direct/range {v99 .. v103}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v26, v98

    .line 97
    .local v26, "src1Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v98, v7

    const/16 v99, 0x1

    aget-object v98, v98, v99

    move-object/from16 v99, v8

    invoke-virtual/range {v98 .. v99}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v98

    move-object/from16 v27, v98

    .line 98
    .local v27, "src1InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v98, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v28, v98

    .line 99
    .local v28, "src1Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v98, v2

    const/16 v99, 0x1

    move-object/from16 v100, v27

    invoke-virtual/range {v98 .. v100}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 100
    move-object/from16 v98, v2

    const/16 v99, 0x1

    move-object/from16 v100, v26

    invoke-virtual/range {v98 .. v100}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 103
    const/16 v98, 0x4

    move/from16 v0, v98

    new-array v0, v0, [F

    move-object/from16 v98, v0

    move-object/from16 v29, v98

    .line 104
    .local v29, "src0Rect":[F
    move-object/from16 v98, v2

    const/16 v99, 0x0

    move-object/from16 v100, v29

    move-object/from16 v101, v17

    move-object/from16 v0, v101

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v101, v0

    move/from16 v0, v101

    int-to-float v0, v0

    move/from16 v101, v0

    move-object/from16 v102, v17

    move-object/from16 v0, v102

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v102, v0

    move/from16 v0, v102

    int-to-float v0, v0

    move/from16 v102, v0

    move/from16 v103, v12

    move/from16 v0, v103

    int-to-float v0, v0

    move/from16 v103, v0

    move/from16 v104, v13

    move/from16 v0, v104

    int-to-float v0, v0

    move/from16 v104, v0

    move-object/from16 v105, v8

    move-object/from16 v106, v18

    invoke-virtual/range {v98 .. v106}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v98

    .line 108
    const/16 v98, 0x4

    move/from16 v0, v98

    new-array v0, v0, [F

    move-object/from16 v98, v0

    move-object/from16 v30, v98

    .line 109
    .local v30, "src1Rect":[F
    move-object/from16 v98, v2

    const/16 v99, 0x1

    move-object/from16 v100, v30

    move-object/from16 v101, v27

    move-object/from16 v0, v101

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v101, v0

    move/from16 v0, v101

    int-to-float v0, v0

    move/from16 v101, v0

    move-object/from16 v102, v27

    move-object/from16 v0, v102

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v102, v0

    move/from16 v0, v102

    int-to-float v0, v0

    move/from16 v102, v0

    move/from16 v103, v22

    move/from16 v0, v103

    int-to-float v0, v0

    move/from16 v103, v0

    move/from16 v104, v23

    move/from16 v0, v104

    int-to-float v0, v0

    move/from16 v104, v0

    move-object/from16 v105, v8

    move-object/from16 v106, v28

    invoke-virtual/range {v98 .. v106}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v98

    .line 115
    const/16 v98, 0x0

    move/from16 v31, v98

    .line 116
    .local v31, "dstx":I
    const/16 v98, 0x0

    move/from16 v32, v98

    .line 117
    .local v32, "dsty":I
    move-object/from16 v98, v8

    move-object/from16 v0, v98

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v98, v0

    move/from16 v33, v98

    .line 118
    .local v33, "dstw":I
    move-object/from16 v98, v8

    move-object/from16 v0, v98

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v98, v0

    move/from16 v34, v98

    .line 120
    .local v34, "dsth":I
    move-object/from16 v98, v2

    invoke-virtual/range {v98 .. v98}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v98

    move/from16 v99, v33

    move/from16 v100, v34

    invoke-virtual/range {v98 .. v100}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v98

    check-cast v98, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v35, v98

    .line 121
    .local v35, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v98, v2

    move-object/from16 v99, v35

    invoke-interface/range {v99 .. v99}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v99

    move-object/from16 v100, v35

    invoke-interface/range {v100 .. v100}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v100

    invoke-virtual/range {v98 .. v100}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;->setDestNativeBounds(II)V

    .line 122
    move-object/from16 v98, v35

    invoke-interface/range {v98 .. v98}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v98

    move/from16 v36, v98

    .line 123
    .local v36, "dstscan":I
    move-object/from16 v98, v35

    invoke-interface/range {v98 .. v98}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v98

    move-object/from16 v37, v98

    .line 128
    .local v37, "dstPixels":[I
    move-object/from16 v98, v2

    invoke-direct/range {v98 .. v98}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;->getOpacity()F

    move-result v98

    move/from16 v43, v98

    .line 131
    .local v43, "opacity":F
    move-object/from16 v98, v29

    const/16 v99, 0x2

    aget v98, v98, v99

    move-object/from16 v99, v29

    const/16 v100, 0x0

    aget v99, v99, v100

    sub-float v98, v98, v99

    move/from16 v99, v33

    move/from16 v0, v99

    int-to-float v0, v0

    move/from16 v99, v0

    div-float v98, v98, v99

    move/from16 v44, v98

    .line 132
    .local v44, "inc0_x":F
    move-object/from16 v98, v29

    const/16 v99, 0x3

    aget v98, v98, v99

    move-object/from16 v99, v29

    const/16 v100, 0x1

    aget v99, v99, v100

    sub-float v98, v98, v99

    move/from16 v99, v34

    move/from16 v0, v99

    int-to-float v0, v0

    move/from16 v99, v0

    div-float v98, v98, v99

    move/from16 v45, v98

    .line 133
    .local v45, "inc0_y":F
    move-object/from16 v98, v30

    const/16 v99, 0x2

    aget v98, v98, v99

    move-object/from16 v99, v30

    const/16 v100, 0x0

    aget v99, v99, v100

    sub-float v98, v98, v99

    move/from16 v99, v33

    move/from16 v0, v99

    int-to-float v0, v0

    move/from16 v99, v0

    div-float v98, v98, v99

    move/from16 v46, v98

    .line 134
    .local v46, "inc1_x":F
    move-object/from16 v98, v30

    const/16 v99, 0x3

    aget v98, v98, v99

    move-object/from16 v99, v30

    const/16 v100, 0x1

    aget v99, v99, v100

    sub-float v98, v98, v99

    move/from16 v99, v34

    move/from16 v0, v99

    int-to-float v0, v0

    move/from16 v99, v0

    div-float v98, v98, v99

    move/from16 v47, v98

    .line 137
    .local v47, "inc1_y":F
    move-object/from16 v98, v29

    const/16 v99, 0x1

    aget v98, v98, v99

    move/from16 v99, v45

    const/high16 v100, 0x3f000000    # 0.5f

    mul-float v99, v99, v100

    add-float v98, v98, v99

    move/from16 v48, v98

    .line 138
    .local v48, "pos0_y":F
    move-object/from16 v98, v30

    const/16 v99, 0x1

    aget v98, v98, v99

    move/from16 v99, v47

    const/high16 v100, 0x3f000000    # 0.5f

    mul-float v99, v99, v100

    add-float v98, v98, v99

    move/from16 v49, v98

    .line 140
    .local v49, "pos1_y":F
    const/16 v98, 0x0

    move/from16 v50, v98

    .local v50, "dy":I
    :goto_0
    move/from16 v98, v50

    const/16 v99, 0x0

    move/from16 v100, v34

    add-int v99, v99, v100

    move/from16 v0, v98

    move/from16 v1, v99

    if-ge v0, v1, :cond_1d

    .line 141
    move/from16 v98, v50

    move/from16 v0, v98

    int-to-float v0, v0

    move/from16 v98, v0

    move/from16 v51, v98

    .line 143
    .local v51, "pixcoord_y":F
    move/from16 v98, v50

    move/from16 v99, v36

    mul-int v98, v98, v99

    move/from16 v38, v98

    .line 145
    .local v38, "dyi":I
    move-object/from16 v98, v29

    const/16 v99, 0x0

    aget v98, v98, v99

    move/from16 v99, v44

    const/high16 v100, 0x3f000000    # 0.5f

    mul-float v99, v99, v100

    add-float v98, v98, v99

    move/from16 v52, v98

    .line 146
    .local v52, "pos0_x":F
    move-object/from16 v98, v30

    const/16 v99, 0x0

    aget v98, v98, v99

    move/from16 v99, v46

    const/high16 v100, 0x3f000000    # 0.5f

    mul-float v99, v99, v100

    add-float v98, v98, v99

    move/from16 v53, v98

    .line 148
    .local v53, "pos1_x":F
    const/16 v98, 0x0

    move/from16 v54, v98

    .local v54, "dx":I
    :goto_1
    move/from16 v98, v54

    const/16 v99, 0x0

    move/from16 v100, v33

    add-int v99, v99, v100

    move/from16 v0, v98

    move/from16 v1, v99

    if-ge v0, v1, :cond_1c

    .line 149
    move/from16 v98, v54

    move/from16 v0, v98

    int-to-float v0, v0

    move/from16 v98, v0

    move/from16 v55, v98

    .line 155
    .local v55, "pixcoord_x":F
    move/from16 v98, v52

    move/from16 v60, v98

    .line 156
    .local v60, "loc_tmp_x":F
    move/from16 v98, v48

    move/from16 v61, v98

    .line 158
    .local v61, "loc_tmp_y":F
    move/from16 v98, v60

    const/16 v99, 0x0

    cmpl-float v98, v98, v99

    if-ltz v98, :cond_8

    move/from16 v98, v61

    const/16 v99, 0x0

    cmpl-float v98, v98, v99

    if-ltz v98, :cond_8

    .line 159
    move/from16 v98, v60

    move/from16 v99, v12

    move/from16 v0, v99

    int-to-float v0, v0

    move/from16 v99, v0

    mul-float v98, v98, v99

    move/from16 v0, v98

    float-to-int v0, v0

    move/from16 v98, v0

    move/from16 v63, v98

    .line 160
    .local v63, "iloc_tmp_x":I
    move/from16 v98, v61

    move/from16 v99, v13

    move/from16 v0, v99

    int-to-float v0, v0

    move/from16 v99, v0

    mul-float v98, v98, v99

    move/from16 v0, v98

    float-to-int v0, v0

    move/from16 v98, v0

    move/from16 v64, v98

    .line 161
    .local v64, "iloc_tmp_y":I
    move/from16 v98, v63

    move/from16 v99, v12

    move/from16 v0, v98

    move/from16 v1, v99

    if-ge v0, v1, :cond_0

    move/from16 v98, v64

    move/from16 v99, v13

    move/from16 v0, v98

    move/from16 v1, v99

    if-lt v0, v1, :cond_6

    :cond_0
    const/16 v98, 0x1

    :goto_2
    move/from16 v65, v98

    .line 164
    .local v65, "out":Z
    move/from16 v98, v65

    if-eqz v98, :cond_7

    const/16 v98, 0x0

    :goto_3
    move/from16 v62, v98

    .line 169
    .end local v63    # "iloc_tmp_x":I
    .end local v64    # "iloc_tmp_y":I
    .end local v65    # "out":Z
    .local v62, "botImg_tmp":I
    :goto_4
    move/from16 v98, v62

    const/16 v99, 0x10

    shr-int/lit8 v98, v98, 0x10

    const/16 v99, 0xff

    move/from16 v0, v98

    and-int/lit16 v0, v0, 0xff

    move/from16 v98, v0

    move/from16 v0, v98

    int-to-float v0, v0

    move/from16 v98, v0

    const/high16 v99, 0x437f0000    # 255.0f

    div-float v98, v98, v99

    move/from16 v56, v98

    .line 170
    .local v56, "sample_res_x":F
    move/from16 v98, v62

    const/16 v99, 0x8

    shr-int/lit8 v98, v98, 0x8

    const/16 v99, 0xff

    move/from16 v0, v98

    and-int/lit16 v0, v0, 0xff

    move/from16 v98, v0

    move/from16 v0, v98

    int-to-float v0, v0

    move/from16 v98, v0

    const/high16 v99, 0x437f0000    # 255.0f

    div-float v98, v98, v99

    move/from16 v57, v98

    .line 171
    .local v57, "sample_res_y":F
    move/from16 v98, v62

    const/16 v99, 0xff

    move/from16 v0, v98

    and-int/lit16 v0, v0, 0xff

    move/from16 v98, v0

    move/from16 v0, v98

    int-to-float v0, v0

    move/from16 v98, v0

    const/high16 v99, 0x437f0000    # 255.0f

    div-float v98, v98, v99

    move/from16 v58, v98

    .line 172
    .local v58, "sample_res_z":F
    move/from16 v98, v62

    const/16 v99, 0x18

    ushr-int/lit8 v98, v98, 0x18

    move/from16 v0, v98

    int-to-float v0, v0

    move/from16 v98, v0

    const/high16 v99, 0x437f0000    # 255.0f

    div-float v98, v98, v99

    move/from16 v59, v98

    .line 175
    .local v59, "sample_res_w":F
    move/from16 v98, v56

    move/from16 v60, v98

    .line 176
    .local v60, "bot_x":F
    move/from16 v98, v57

    move/from16 v61, v98

    .line 177
    .local v61, "bot_y":F
    move/from16 v98, v58

    move/from16 v62, v98

    .line 178
    .local v62, "bot_z":F
    move/from16 v98, v59

    move/from16 v63, v98

    .line 180
    .local v63, "bot_w":F
    move/from16 v98, v53

    move/from16 v64, v98

    .line 181
    .local v64, "loc_tmp_x":F
    move/from16 v98, v49

    move/from16 v65, v98

    .line 183
    .local v65, "loc_tmp_y":F
    move/from16 v98, v64

    const/16 v99, 0x0

    cmpl-float v98, v98, v99

    if-ltz v98, :cond_b

    move/from16 v98, v65

    const/16 v99, 0x0

    cmpl-float v98, v98, v99

    if-ltz v98, :cond_b

    .line 184
    move/from16 v98, v64

    move/from16 v99, v22

    move/from16 v0, v99

    int-to-float v0, v0

    move/from16 v99, v0

    mul-float v98, v98, v99

    move/from16 v0, v98

    float-to-int v0, v0

    move/from16 v98, v0

    move/from16 v67, v98

    .line 185
    .local v67, "iloc_tmp_x":I
    move/from16 v98, v65

    move/from16 v99, v23

    move/from16 v0, v99

    int-to-float v0, v0

    move/from16 v99, v0

    mul-float v98, v98, v99

    move/from16 v0, v98

    float-to-int v0, v0

    move/from16 v98, v0

    move/from16 v68, v98

    .line 186
    .local v68, "iloc_tmp_y":I
    move/from16 v98, v67

    move/from16 v99, v22

    move/from16 v0, v98

    move/from16 v1, v99

    if-ge v0, v1, :cond_1

    move/from16 v98, v68

    move/from16 v99, v23

    move/from16 v0, v98

    move/from16 v1, v99

    if-lt v0, v1, :cond_9

    :cond_1
    const/16 v98, 0x1

    :goto_5
    move/from16 v69, v98

    .line 189
    .local v69, "out":Z
    move/from16 v98, v69

    if-eqz v98, :cond_a

    const/16 v98, 0x0

    :goto_6
    move/from16 v66, v98

    .line 194
    .end local v67    # "iloc_tmp_x":I
    .end local v68    # "iloc_tmp_y":I
    .end local v69    # "out":Z
    .local v66, "topImg_tmp":I
    :goto_7
    move/from16 v98, v66

    const/16 v99, 0x10

    shr-int/lit8 v98, v98, 0x10

    const/16 v99, 0xff

    move/from16 v0, v98

    and-int/lit16 v0, v0, 0xff

    move/from16 v98, v0

    move/from16 v0, v98

    int-to-float v0, v0

    move/from16 v98, v0

    const/high16 v99, 0x437f0000    # 255.0f

    div-float v98, v98, v99

    move/from16 v56, v98

    .line 195
    move/from16 v98, v66

    const/16 v99, 0x8

    shr-int/lit8 v98, v98, 0x8

    const/16 v99, 0xff

    move/from16 v0, v98

    and-int/lit16 v0, v0, 0xff

    move/from16 v98, v0

    move/from16 v0, v98

    int-to-float v0, v0

    move/from16 v98, v0

    const/high16 v99, 0x437f0000    # 255.0f

    div-float v98, v98, v99

    move/from16 v57, v98

    .line 196
    move/from16 v98, v66

    const/16 v99, 0xff

    move/from16 v0, v98

    and-int/lit16 v0, v0, 0xff

    move/from16 v98, v0

    move/from16 v0, v98

    int-to-float v0, v0

    move/from16 v98, v0

    const/high16 v99, 0x437f0000    # 255.0f

    div-float v98, v98, v99

    move/from16 v58, v98

    .line 197
    move/from16 v98, v66

    const/16 v99, 0x18

    ushr-int/lit8 v98, v98, 0x18

    move/from16 v0, v98

    int-to-float v0, v0

    move/from16 v98, v0

    const/high16 v99, 0x437f0000    # 255.0f

    div-float v98, v98, v99

    move/from16 v59, v98

    .line 200
    move/from16 v98, v56

    move/from16 v99, v43

    mul-float v98, v98, v99

    move/from16 v64, v98

    .line 201
    .local v64, "top_x":F
    move/from16 v98, v57

    move/from16 v99, v43

    mul-float v98, v98, v99

    move/from16 v65, v98

    .line 202
    .local v65, "top_y":F
    move/from16 v98, v58

    move/from16 v99, v43

    mul-float v98, v98, v99

    move/from16 v66, v98

    .line 203
    .local v66, "top_z":F
    move/from16 v98, v59

    move/from16 v99, v43

    mul-float v98, v98, v99

    move/from16 v67, v98

    .line 206
    .local v67, "top_w":F
    move/from16 v98, v60

    move/from16 v72, v98

    .line 207
    .local v72, "bot_tmp_x":F
    move/from16 v98, v61

    move/from16 v73, v98

    .line 208
    .local v73, "bot_tmp_y":F
    move/from16 v98, v62

    move/from16 v74, v98

    .line 209
    .local v74, "bot_tmp_z":F
    move/from16 v98, v63

    move/from16 v75, v98

    .line 210
    .local v75, "bot_tmp_w":F
    move/from16 v98, v64

    move/from16 v76, v98

    .line 211
    .local v76, "top_tmp_x":F
    move/from16 v98, v65

    move/from16 v77, v98

    .line 212
    .local v77, "top_tmp_y":F
    move/from16 v98, v66

    move/from16 v78, v98

    .line 213
    .local v78, "top_tmp_z":F
    move/from16 v98, v67

    move/from16 v79, v98

    .line 219
    .local v79, "top_tmp_w":F
    move/from16 v98, v75

    move/from16 v99, v79

    add-float v98, v98, v99

    move/from16 v99, v75

    move/from16 v100, v79

    mul-float v99, v99, v100

    sub-float v98, v98, v99

    move/from16 v83, v98

    .line 220
    .local v83, "res_w":F
    move/from16 v98, v72

    move/from16 v99, v75

    div-float v98, v98, v99

    move/from16 v84, v98

    .line 221
    .local v84, "bot_np_x":F
    move/from16 v98, v73

    move/from16 v99, v75

    div-float v98, v98, v99

    move/from16 v85, v98

    .line 222
    .local v85, "bot_np_y":F
    move/from16 v98, v74

    move/from16 v99, v75

    div-float v98, v98, v99

    move/from16 v86, v98

    .line 223
    .local v86, "bot_np_z":F
    move/from16 v98, v76

    move/from16 v99, v79

    div-float v98, v98, v99

    move/from16 v87, v98

    .line 224
    .local v87, "top_np_x":F
    move/from16 v98, v77

    move/from16 v99, v79

    div-float v98, v98, v99

    move/from16 v88, v98

    .line 225
    .local v88, "top_np_y":F
    move/from16 v98, v78

    move/from16 v99, v79

    div-float v98, v98, v99

    move/from16 v89, v98

    .line 228
    .local v89, "top_np_z":F
    move/from16 v98, v84

    move/from16 v91, v98

    .line 229
    .local v91, "x_tmp":F
    move/from16 v98, v91

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    invoke-static/range {v98 .. v99}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v98

    move-wide/from16 v0, v98

    double-to-float v0, v0

    move/from16 v98, v0

    move/from16 v90, v98

    .line 232
    .local v90, "sqrt_res":F
    move/from16 v98, v90

    move/from16 v91, v98

    .line 235
    .local v91, "sqrtf":F
    move/from16 v98, v84

    move/from16 v93, v98

    .line 236
    .local v93, "f_tmp":F
    move/from16 v98, v91

    move/from16 v94, v98

    .line 239
    .local v94, "sqrtf_tmp":F
    move/from16 v98, v93

    const/high16 v99, 0x3e800000    # 0.25f

    cmpg-float v98, v98, v99

    if-gtz v98, :cond_c

    .line 240
    const/high16 v98, 0x41800000    # 16.0f

    move/from16 v99, v93

    mul-float v98, v98, v99

    const/high16 v99, 0x41400000    # 12.0f

    sub-float v98, v98, v99

    move/from16 v99, v93

    mul-float v98, v98, v99

    const/high16 v99, 0x40800000    # 4.0f

    add-float v98, v98, v99

    move/from16 v99, v93

    mul-float v98, v98, v99

    move/from16 v95, v98

    .line 245
    .local v95, "d":F
    :goto_8
    move/from16 v98, v95

    move/from16 v92, v98

    .line 249
    .local v92, "dofx_res":F
    move/from16 v98, v92

    move/from16 v93, v98

    .line 251
    .local v93, "dr":F
    move/from16 v98, v85

    move/from16 v94, v98

    .line 252
    .local v94, "x_tmp":F
    move/from16 v98, v94

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    invoke-static/range {v98 .. v99}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v98

    move-wide/from16 v0, v98

    double-to-float v0, v0

    move/from16 v98, v0

    move/from16 v90, v98

    .line 255
    move/from16 v98, v90

    move/from16 v91, v98

    .line 257
    move/from16 v98, v85

    move/from16 v94, v98

    .line 258
    .local v94, "f_tmp":F
    move/from16 v98, v91

    move/from16 v95, v98

    .line 261
    .local v95, "sqrtf_tmp":F
    move/from16 v98, v94

    const/high16 v99, 0x3e800000    # 0.25f

    cmpg-float v98, v98, v99

    if-gtz v98, :cond_d

    .line 262
    const/high16 v98, 0x41800000    # 16.0f

    move/from16 v99, v94

    mul-float v98, v98, v99

    const/high16 v99, 0x41400000    # 12.0f

    sub-float v98, v98, v99

    move/from16 v99, v94

    mul-float v98, v98, v99

    const/high16 v99, 0x40800000    # 4.0f

    add-float v98, v98, v99

    move/from16 v99, v94

    mul-float v98, v98, v99

    move/from16 v96, v98

    .line 267
    .local v96, "d":F
    :goto_9
    move/from16 v98, v96

    move/from16 v92, v98

    .line 271
    move/from16 v98, v92

    move/from16 v94, v98

    .line 273
    .local v94, "dg":F
    move/from16 v98, v86

    move/from16 v95, v98

    .line 274
    .local v95, "x_tmp":F
    move/from16 v98, v95

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    invoke-static/range {v98 .. v99}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v98

    move-wide/from16 v0, v98

    double-to-float v0, v0

    move/from16 v98, v0

    move/from16 v90, v98

    .line 277
    move/from16 v98, v90

    move/from16 v91, v98

    .line 279
    move/from16 v98, v86

    move/from16 v95, v98

    .line 280
    .local v95, "f_tmp":F
    move/from16 v98, v91

    move/from16 v96, v98

    .line 283
    .local v96, "sqrtf_tmp":F
    move/from16 v98, v95

    const/high16 v99, 0x3e800000    # 0.25f

    cmpg-float v98, v98, v99

    if-gtz v98, :cond_e

    .line 284
    const/high16 v98, 0x41800000    # 16.0f

    move/from16 v99, v95

    mul-float v98, v98, v99

    const/high16 v99, 0x41400000    # 12.0f

    sub-float v98, v98, v99

    move/from16 v99, v95

    mul-float v98, v98, v99

    const/high16 v99, 0x40800000    # 4.0f

    add-float v98, v98, v99

    move/from16 v99, v95

    mul-float v98, v98, v99

    move/from16 v97, v98

    .line 289
    .local v97, "d":F
    :goto_a
    move/from16 v98, v97

    move/from16 v92, v98

    .line 293
    move/from16 v98, v92

    move/from16 v95, v98

    .line 294
    .local v95, "db":F
    move/from16 v98, v75

    const/16 v99, 0x0

    cmpl-float v98, v98, v99

    if-nez v98, :cond_f

    .line 295
    move/from16 v98, v76

    move/from16 v80, v98

    .line 306
    .local v80, "res_x":F
    :goto_b
    move/from16 v98, v75

    const/16 v99, 0x0

    cmpl-float v98, v98, v99

    if-nez v98, :cond_12

    .line 307
    move/from16 v98, v77

    move/from16 v81, v98

    .line 318
    .local v81, "res_y":F
    :goto_c
    move/from16 v98, v75

    const/16 v99, 0x0

    cmpl-float v98, v98, v99

    if-nez v98, :cond_15

    .line 319
    move/from16 v98, v78

    move/from16 v82, v98

    .line 330
    .local v82, "res_z":F
    :goto_d
    move/from16 v98, v80

    move/from16 v68, v98

    .line 331
    .local v68, "blend_soft_light_res_x":F
    move/from16 v98, v81

    move/from16 v69, v98

    .line 332
    .local v69, "blend_soft_light_res_y":F
    move/from16 v98, v82

    move/from16 v70, v98

    .line 333
    .local v70, "blend_soft_light_res_z":F
    move/from16 v98, v83

    move/from16 v71, v98

    .line 337
    .local v71, "blend_soft_light_res_w":F
    move/from16 v98, v68

    move/from16 v39, v98

    .line 338
    .local v39, "color_x":F
    move/from16 v98, v69

    move/from16 v40, v98

    .line 339
    .local v40, "color_y":F
    move/from16 v98, v70

    move/from16 v41, v98

    .line 340
    .local v41, "color_z":F
    move/from16 v98, v71

    move/from16 v42, v98

    .line 344
    .local v42, "color_w":F
    move/from16 v98, v42

    const/16 v99, 0x0

    cmpg-float v98, v98, v99

    if-gez v98, :cond_18

    const/16 v98, 0x0

    move/from16 v42, v98

    .line 345
    :cond_2
    :goto_e
    move/from16 v98, v39

    const/16 v99, 0x0

    cmpg-float v98, v98, v99

    if-gez v98, :cond_19

    const/16 v98, 0x0

    move/from16 v39, v98

    .line 346
    :cond_3
    :goto_f
    move/from16 v98, v40

    const/16 v99, 0x0

    cmpg-float v98, v98, v99

    if-gez v98, :cond_1a

    const/16 v98, 0x0

    move/from16 v40, v98

    .line 347
    :cond_4
    :goto_10
    move/from16 v98, v41

    const/16 v99, 0x0

    cmpg-float v98, v98, v99

    if-gez v98, :cond_1b

    const/16 v98, 0x0

    move/from16 v41, v98

    .line 348
    :cond_5
    :goto_11
    move-object/from16 v98, v37

    move/from16 v99, v38

    move/from16 v100, v54

    add-int v99, v99, v100

    move/from16 v100, v39

    const/high16 v101, 0x437f0000    # 255.0f

    mul-float v100, v100, v101

    move/from16 v0, v100

    float-to-int v0, v0

    move/from16 v100, v0

    const/16 v101, 0x10

    shl-int/lit8 v100, v100, 0x10

    move/from16 v101, v40

    const/high16 v102, 0x437f0000    # 255.0f

    mul-float v101, v101, v102

    move/from16 v0, v101

    float-to-int v0, v0

    move/from16 v101, v0

    const/16 v102, 0x8

    shl-int/lit8 v101, v101, 0x8

    or-int v100, v100, v101

    move/from16 v101, v41

    const/high16 v102, 0x437f0000    # 255.0f

    mul-float v101, v101, v102

    move/from16 v0, v101

    float-to-int v0, v0

    move/from16 v101, v0

    const/16 v102, 0x0

    shl-int/lit8 v101, v101, 0x0

    or-int v100, v100, v101

    move/from16 v101, v42

    const/high16 v102, 0x437f0000    # 255.0f

    mul-float v101, v101, v102

    move/from16 v0, v101

    float-to-int v0, v0

    move/from16 v101, v0

    const/16 v102, 0x18

    shl-int/lit8 v101, v101, 0x18

    or-int v100, v100, v101

    aput v100, v98, v99

    .line 354
    move/from16 v98, v52

    move/from16 v99, v44

    add-float v98, v98, v99

    move/from16 v52, v98

    .line 355
    move/from16 v98, v53

    move/from16 v99, v46

    add-float v98, v98, v99

    move/from16 v53, v98

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
    .end local v68    # "blend_soft_light_res_x":F
    .end local v69    # "blend_soft_light_res_y":F
    .end local v70    # "blend_soft_light_res_z":F
    .end local v71    # "blend_soft_light_res_w":F
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
    .end local v84    # "bot_np_x":F
    .end local v85    # "bot_np_y":F
    .end local v86    # "bot_np_z":F
    .end local v87    # "top_np_x":F
    .end local v88    # "top_np_y":F
    .end local v89    # "top_np_z":F
    .end local v90    # "sqrt_res":F
    .end local v91    # "sqrtf":F
    .end local v92    # "dofx_res":F
    .end local v93    # "dr":F
    .end local v94    # "dg":F
    .end local v95    # "db":F
    .end local v96    # "sqrtf_tmp":F
    .end local v97    # "d":F
    .local v60, "loc_tmp_x":F
    .local v61, "loc_tmp_y":F
    .local v63, "iloc_tmp_x":I
    .local v64, "iloc_tmp_y":I
    :cond_6
    const/16 v98, 0x0

    goto/16 :goto_2

    .line 164
    .local v65, "out":Z
    :cond_7
    move-object/from16 v98, v15

    move/from16 v99, v64

    move/from16 v100, v14

    mul-int v99, v99, v100

    move/from16 v100, v63

    add-int v99, v99, v100

    aget v98, v98, v99

    goto/16 :goto_3

    .line 167
    .end local v63    # "iloc_tmp_x":I
    .end local v64    # "iloc_tmp_y":I
    .end local v65    # "out":Z
    :cond_8
    const/16 v98, 0x0

    move/from16 v62, v98

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
    const/16 v98, 0x0

    goto/16 :goto_5

    .line 189
    .local v69, "out":Z
    :cond_a
    move-object/from16 v98, v25

    move/from16 v99, v68

    move/from16 v100, v24

    mul-int v99, v99, v100

    move/from16 v100, v67

    add-int v99, v99, v100

    aget v98, v98, v99

    goto/16 :goto_6

    .line 192
    .end local v67    # "iloc_tmp_x":I
    .end local v68    # "iloc_tmp_y":I
    .end local v69    # "out":Z
    :cond_b
    const/16 v98, 0x0

    move/from16 v66, v98

    .local v66, "topImg_tmp":I
    goto/16 :goto_7

    .line 243
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
    .restart local v83    # "res_w":F
    .restart local v84    # "bot_np_x":F
    .restart local v85    # "bot_np_y":F
    .restart local v86    # "bot_np_z":F
    .restart local v87    # "top_np_x":F
    .restart local v88    # "top_np_y":F
    .restart local v89    # "top_np_z":F
    .restart local v90    # "sqrt_res":F
    .restart local v91    # "sqrtf":F
    .local v93, "f_tmp":F
    .local v94, "sqrtf_tmp":F
    :cond_c
    move/from16 v98, v94

    move/from16 v95, v98

    .local v95, "d":F
    goto/16 :goto_8

    .line 265
    .restart local v92    # "dofx_res":F
    .local v93, "dr":F
    .local v94, "f_tmp":F
    .local v95, "sqrtf_tmp":F
    :cond_d
    move/from16 v98, v95

    move/from16 v96, v98

    .local v96, "d":F
    goto/16 :goto_9

    .line 287
    .local v94, "dg":F
    .local v95, "f_tmp":F
    .local v96, "sqrtf_tmp":F
    :cond_e
    move/from16 v98, v96

    move/from16 v97, v98

    .restart local v97    # "d":F
    goto/16 :goto_a

    .line 297
    .local v95, "db":F
    :cond_f
    move/from16 v98, v79

    const/16 v99, 0x0

    cmpl-float v98, v98, v99

    if-nez v98, :cond_10

    .line 298
    move/from16 v98, v72

    move/from16 v80, v98

    .restart local v80    # "res_x":F
    goto/16 :goto_b

    .line 300
    .end local v80    # "res_x":F
    :cond_10
    move/from16 v98, v87

    const/high16 v99, 0x3f000000    # 0.5f

    cmpg-float v98, v98, v99

    if-gtz v98, :cond_11

    .line 301
    move/from16 v98, v72

    const/high16 v99, 0x3f800000    # 1.0f

    move/from16 v100, v75

    sub-float v99, v99, v100

    move/from16 v100, v76

    mul-float v99, v99, v100

    add-float v98, v98, v99

    move/from16 v99, v79

    move/from16 v100, v72

    mul-float v99, v99, v100

    const/high16 v100, 0x3f800000    # 1.0f

    const/high16 v101, 0x40000000    # 2.0f

    move/from16 v102, v87

    mul-float v101, v101, v102

    sub-float v100, v100, v101

    mul-float v99, v99, v100

    const/high16 v100, 0x3f800000    # 1.0f

    move/from16 v101, v84

    sub-float v100, v100, v101

    mul-float v99, v99, v100

    sub-float v98, v98, v99

    move/from16 v80, v98

    .restart local v80    # "res_x":F
    goto/16 :goto_b

    .line 304
    .end local v80    # "res_x":F
    :cond_11
    move/from16 v98, v72

    const/high16 v99, 0x3f800000    # 1.0f

    move/from16 v100, v75

    sub-float v99, v99, v100

    move/from16 v100, v76

    mul-float v99, v99, v100

    add-float v98, v98, v99

    const/high16 v99, 0x40000000    # 2.0f

    move/from16 v100, v76

    mul-float v99, v99, v100

    move/from16 v100, v79

    sub-float v99, v99, v100

    move/from16 v100, v75

    move/from16 v101, v93

    mul-float v100, v100, v101

    move/from16 v101, v72

    sub-float v100, v100, v101

    mul-float v99, v99, v100

    add-float v98, v98, v99

    move/from16 v80, v98

    .restart local v80    # "res_x":F
    goto/16 :goto_b

    .line 309
    :cond_12
    move/from16 v98, v79

    const/16 v99, 0x0

    cmpl-float v98, v98, v99

    if-nez v98, :cond_13

    .line 310
    move/from16 v98, v73

    move/from16 v81, v98

    .restart local v81    # "res_y":F
    goto/16 :goto_c

    .line 312
    .end local v81    # "res_y":F
    :cond_13
    move/from16 v98, v88

    const/high16 v99, 0x3f000000    # 0.5f

    cmpg-float v98, v98, v99

    if-gtz v98, :cond_14

    .line 313
    move/from16 v98, v73

    const/high16 v99, 0x3f800000    # 1.0f

    move/from16 v100, v75

    sub-float v99, v99, v100

    move/from16 v100, v77

    mul-float v99, v99, v100

    add-float v98, v98, v99

    move/from16 v99, v79

    move/from16 v100, v73

    mul-float v99, v99, v100

    const/high16 v100, 0x3f800000    # 1.0f

    const/high16 v101, 0x40000000    # 2.0f

    move/from16 v102, v88

    mul-float v101, v101, v102

    sub-float v100, v100, v101

    mul-float v99, v99, v100

    const/high16 v100, 0x3f800000    # 1.0f

    move/from16 v101, v85

    sub-float v100, v100, v101

    mul-float v99, v99, v100

    sub-float v98, v98, v99

    move/from16 v81, v98

    .restart local v81    # "res_y":F
    goto/16 :goto_c

    .line 316
    .end local v81    # "res_y":F
    :cond_14
    move/from16 v98, v73

    const/high16 v99, 0x3f800000    # 1.0f

    move/from16 v100, v75

    sub-float v99, v99, v100

    move/from16 v100, v77

    mul-float v99, v99, v100

    add-float v98, v98, v99

    const/high16 v99, 0x40000000    # 2.0f

    move/from16 v100, v77

    mul-float v99, v99, v100

    move/from16 v100, v79

    sub-float v99, v99, v100

    move/from16 v100, v75

    move/from16 v101, v94

    mul-float v100, v100, v101

    move/from16 v101, v73

    sub-float v100, v100, v101

    mul-float v99, v99, v100

    add-float v98, v98, v99

    move/from16 v81, v98

    .restart local v81    # "res_y":F
    goto/16 :goto_c

    .line 321
    :cond_15
    move/from16 v98, v79

    const/16 v99, 0x0

    cmpl-float v98, v98, v99

    if-nez v98, :cond_16

    .line 322
    move/from16 v98, v74

    move/from16 v82, v98

    .restart local v82    # "res_z":F
    goto/16 :goto_d

    .line 324
    .end local v82    # "res_z":F
    :cond_16
    move/from16 v98, v89

    const/high16 v99, 0x3f000000    # 0.5f

    cmpg-float v98, v98, v99

    if-gtz v98, :cond_17

    .line 325
    move/from16 v98, v74

    const/high16 v99, 0x3f800000    # 1.0f

    move/from16 v100, v75

    sub-float v99, v99, v100

    move/from16 v100, v78

    mul-float v99, v99, v100

    add-float v98, v98, v99

    move/from16 v99, v79

    move/from16 v100, v74

    mul-float v99, v99, v100

    const/high16 v100, 0x3f800000    # 1.0f

    const/high16 v101, 0x40000000    # 2.0f

    move/from16 v102, v89

    mul-float v101, v101, v102

    sub-float v100, v100, v101

    mul-float v99, v99, v100

    const/high16 v100, 0x3f800000    # 1.0f

    move/from16 v101, v86

    sub-float v100, v100, v101

    mul-float v99, v99, v100

    sub-float v98, v98, v99

    move/from16 v82, v98

    .restart local v82    # "res_z":F
    goto/16 :goto_d

    .line 328
    .end local v82    # "res_z":F
    :cond_17
    move/from16 v98, v74

    const/high16 v99, 0x3f800000    # 1.0f

    move/from16 v100, v75

    sub-float v99, v99, v100

    move/from16 v100, v78

    mul-float v99, v99, v100

    add-float v98, v98, v99

    const/high16 v99, 0x40000000    # 2.0f

    move/from16 v100, v78

    mul-float v99, v99, v100

    move/from16 v100, v79

    sub-float v99, v99, v100

    move/from16 v100, v75

    move/from16 v101, v95

    mul-float v100, v100, v101

    move/from16 v101, v74

    sub-float v100, v100, v101

    mul-float v99, v99, v100

    add-float v98, v98, v99

    move/from16 v82, v98

    .restart local v82    # "res_z":F
    goto/16 :goto_d

    .line 344
    .restart local v39    # "color_x":F
    .restart local v40    # "color_y":F
    .restart local v41    # "color_z":F
    .restart local v42    # "color_w":F
    .local v68, "blend_soft_light_res_x":F
    .local v69, "blend_soft_light_res_y":F
    .restart local v70    # "blend_soft_light_res_z":F
    .restart local v71    # "blend_soft_light_res_w":F
    :cond_18
    move/from16 v98, v42

    const/high16 v99, 0x3f800000    # 1.0f

    cmpl-float v98, v98, v99

    if-lez v98, :cond_2

    const/high16 v98, 0x3f800000    # 1.0f

    move/from16 v42, v98

    goto/16 :goto_e

    .line 345
    :cond_19
    move/from16 v98, v39

    move/from16 v99, v42

    cmpl-float v98, v98, v99

    if-lez v98, :cond_3

    move/from16 v98, v42

    move/from16 v39, v98

    goto/16 :goto_f

    .line 346
    :cond_1a
    move/from16 v98, v40

    move/from16 v99, v42

    cmpl-float v98, v98, v99

    if-lez v98, :cond_4

    move/from16 v98, v42

    move/from16 v40, v98

    goto/16 :goto_10

    .line 347
    :cond_1b
    move/from16 v98, v41

    move/from16 v99, v42

    cmpl-float v98, v98, v99

    if-lez v98, :cond_5

    move/from16 v98, v42

    move/from16 v41, v98

    goto/16 :goto_11

    .line 359
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
    .end local v68    # "blend_soft_light_res_x":F
    .end local v69    # "blend_soft_light_res_y":F
    .end local v70    # "blend_soft_light_res_z":F
    .end local v71    # "blend_soft_light_res_w":F
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
    .end local v84    # "bot_np_x":F
    .end local v85    # "bot_np_y":F
    .end local v86    # "bot_np_z":F
    .end local v87    # "top_np_x":F
    .end local v88    # "top_np_y":F
    .end local v89    # "top_np_z":F
    .end local v90    # "sqrt_res":F
    .end local v91    # "sqrtf":F
    .end local v92    # "dofx_res":F
    .end local v93    # "dr":F
    .end local v94    # "dg":F
    .end local v95    # "db":F
    .end local v96    # "sqrtf_tmp":F
    .end local v97    # "d":F
    :cond_1c
    move/from16 v98, v48

    move/from16 v99, v45

    add-float v98, v98, v99

    move/from16 v48, v98

    .line 360
    move/from16 v98, v49

    move/from16 v99, v47

    add-float v98, v98, v99

    move/from16 v49, v98

    .line 140
    add-int/lit8 v50, v50, 0x1

    goto/16 :goto_0

    .line 364
    .end local v38    # "dyi":I
    .end local v51    # "pixcoord_y":F
    .end local v52    # "pos0_x":F
    .end local v53    # "pos1_x":F
    .end local v54    # "dx":I
    :cond_1d
    move-object/from16 v98, v7

    const/16 v99, 0x0

    aget-object v98, v98, v99

    move-object/from16 v99, v9

    invoke-virtual/range {v98 .. v99}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 365
    move-object/from16 v98, v7

    const/16 v99, 0x1

    aget-object v98, v98, v99

    move-object/from16 v99, v19

    invoke-virtual/range {v98 .. v99}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 368
    new-instance v98, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v107, v98

    move-object/from16 v98, v107

    move-object/from16 v99, v107

    move-object/from16 v100, v2

    invoke-virtual/range {v100 .. v100}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v100

    move-object/from16 v101, v35

    move-object/from16 v102, v8

    invoke-direct/range {v99 .. v102}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v98

    .end local v2    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;
    return-object v2
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/Blend;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Blend;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;
    return-object v0
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;->getEffect()Lcom/sun/scenario/effect/Blend;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_SOFT_LIGHTPeer;
    return-object v0
.end method

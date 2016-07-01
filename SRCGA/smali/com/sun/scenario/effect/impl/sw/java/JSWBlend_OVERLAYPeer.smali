.class public Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;
.super Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;
.source "JSWBlend_OVERLAYPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;
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

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;->getEffect()Lcom/sun/scenario/effect/Blend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Blend;->getOpacity()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;
    return v0
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 112

    .prologue
    .line 70
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;
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
    move-object/from16 v102, v2

    move-object/from16 v103, v3

    invoke-virtual/range {v102 .. v103}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 71
    move-object/from16 v102, v2

    move-object/from16 v103, v5

    move-object/from16 v104, v6

    move-object/from16 v105, v7

    invoke-virtual/range {v102 .. v105}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v102

    move-object/from16 v8, v102

    .line 72
    .local v8, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v102, v2

    move-object/from16 v103, v8

    invoke-virtual/range {v102 .. v103}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 75
    move-object/from16 v102, v7

    const/16 v103, 0x0

    aget-object v102, v102, v103

    move-object/from16 v103, v8

    invoke-virtual/range {v102 .. v103}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v102

    check-cast v102, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v9, v102

    .line 76
    .local v9, "src0":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v102, 0x0

    move/from16 v10, v102

    .line 77
    .local v10, "src0x":I
    const/16 v102, 0x0

    move/from16 v11, v102

    .line 78
    .local v11, "src0y":I
    move-object/from16 v102, v9

    invoke-interface/range {v102 .. v102}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v102

    move/from16 v12, v102

    .line 79
    .local v12, "src0w":I
    move-object/from16 v102, v9

    invoke-interface/range {v102 .. v102}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v102

    move/from16 v13, v102

    .line 80
    .local v13, "src0h":I
    move-object/from16 v102, v9

    invoke-interface/range {v102 .. v102}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v102

    move/from16 v14, v102

    .line 81
    .local v14, "src0scan":I
    move-object/from16 v102, v9

    .line 82
    invoke-interface/range {v102 .. v102}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v102

    move-object/from16 v15, v102

    .line 83
    .local v15, "botImg":[I
    new-instance v102, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v111, v102

    move-object/from16 v102, v111

    move-object/from16 v103, v111

    move/from16 v104, v10

    move/from16 v105, v11

    move/from16 v106, v12

    move/from16 v107, v13

    invoke-direct/range {v103 .. v107}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v16, v102

    .line 84
    .local v16, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v102, v7

    const/16 v103, 0x0

    aget-object v102, v102, v103

    move-object/from16 v103, v8

    invoke-virtual/range {v102 .. v103}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v102

    move-object/from16 v17, v102

    .line 85
    .local v17, "src0InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v102, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v18, v102

    .line 86
    .local v18, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v102, v2

    const/16 v103, 0x0

    move-object/from16 v104, v17

    invoke-virtual/range {v102 .. v104}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 87
    move-object/from16 v102, v2

    const/16 v103, 0x0

    move-object/from16 v104, v16

    invoke-virtual/range {v102 .. v104}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 88
    move-object/from16 v102, v7

    const/16 v103, 0x1

    aget-object v102, v102, v103

    move-object/from16 v103, v8

    invoke-virtual/range {v102 .. v103}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v102

    check-cast v102, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v19, v102

    .line 89
    .local v19, "src1":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v102, 0x0

    move/from16 v20, v102

    .line 90
    .local v20, "src1x":I
    const/16 v102, 0x0

    move/from16 v21, v102

    .line 91
    .local v21, "src1y":I
    move-object/from16 v102, v19

    invoke-interface/range {v102 .. v102}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v102

    move/from16 v22, v102

    .line 92
    .local v22, "src1w":I
    move-object/from16 v102, v19

    invoke-interface/range {v102 .. v102}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v102

    move/from16 v23, v102

    .line 93
    .local v23, "src1h":I
    move-object/from16 v102, v19

    invoke-interface/range {v102 .. v102}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v102

    move/from16 v24, v102

    .line 94
    .local v24, "src1scan":I
    move-object/from16 v102, v19

    .line 95
    invoke-interface/range {v102 .. v102}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v102

    move-object/from16 v25, v102

    .line 96
    .local v25, "topImg":[I
    new-instance v102, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v111, v102

    move-object/from16 v102, v111

    move-object/from16 v103, v111

    move/from16 v104, v20

    move/from16 v105, v21

    move/from16 v106, v22

    move/from16 v107, v23

    invoke-direct/range {v103 .. v107}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v26, v102

    .line 97
    .local v26, "src1Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v102, v7

    const/16 v103, 0x1

    aget-object v102, v102, v103

    move-object/from16 v103, v8

    invoke-virtual/range {v102 .. v103}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v102

    move-object/from16 v27, v102

    .line 98
    .local v27, "src1InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v102, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v28, v102

    .line 99
    .local v28, "src1Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v102, v2

    const/16 v103, 0x1

    move-object/from16 v104, v27

    invoke-virtual/range {v102 .. v104}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 100
    move-object/from16 v102, v2

    const/16 v103, 0x1

    move-object/from16 v104, v26

    invoke-virtual/range {v102 .. v104}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 103
    const/16 v102, 0x4

    move/from16 v0, v102

    new-array v0, v0, [F

    move-object/from16 v102, v0

    move-object/from16 v29, v102

    .line 104
    .local v29, "src0Rect":[F
    move-object/from16 v102, v2

    const/16 v103, 0x0

    move-object/from16 v104, v29

    move-object/from16 v105, v17

    move-object/from16 v0, v105

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v105, v0

    move/from16 v0, v105

    int-to-float v0, v0

    move/from16 v105, v0

    move-object/from16 v106, v17

    move-object/from16 v0, v106

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v106, v0

    move/from16 v0, v106

    int-to-float v0, v0

    move/from16 v106, v0

    move/from16 v107, v12

    move/from16 v0, v107

    int-to-float v0, v0

    move/from16 v107, v0

    move/from16 v108, v13

    move/from16 v0, v108

    int-to-float v0, v0

    move/from16 v108, v0

    move-object/from16 v109, v8

    move-object/from16 v110, v18

    invoke-virtual/range {v102 .. v110}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v102

    .line 108
    const/16 v102, 0x4

    move/from16 v0, v102

    new-array v0, v0, [F

    move-object/from16 v102, v0

    move-object/from16 v30, v102

    .line 109
    .local v30, "src1Rect":[F
    move-object/from16 v102, v2

    const/16 v103, 0x1

    move-object/from16 v104, v30

    move-object/from16 v105, v27

    move-object/from16 v0, v105

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v105, v0

    move/from16 v0, v105

    int-to-float v0, v0

    move/from16 v105, v0

    move-object/from16 v106, v27

    move-object/from16 v0, v106

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v106, v0

    move/from16 v0, v106

    int-to-float v0, v0

    move/from16 v106, v0

    move/from16 v107, v22

    move/from16 v0, v107

    int-to-float v0, v0

    move/from16 v107, v0

    move/from16 v108, v23

    move/from16 v0, v108

    int-to-float v0, v0

    move/from16 v108, v0

    move-object/from16 v109, v8

    move-object/from16 v110, v28

    invoke-virtual/range {v102 .. v110}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v102

    .line 115
    const/16 v102, 0x0

    move/from16 v31, v102

    .line 116
    .local v31, "dstx":I
    const/16 v102, 0x0

    move/from16 v32, v102

    .line 117
    .local v32, "dsty":I
    move-object/from16 v102, v8

    move-object/from16 v0, v102

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v102, v0

    move/from16 v33, v102

    .line 118
    .local v33, "dstw":I
    move-object/from16 v102, v8

    move-object/from16 v0, v102

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v102, v0

    move/from16 v34, v102

    .line 120
    .local v34, "dsth":I
    move-object/from16 v102, v2

    invoke-virtual/range {v102 .. v102}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v102

    move/from16 v103, v33

    move/from16 v104, v34

    invoke-virtual/range {v102 .. v104}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v102

    check-cast v102, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v35, v102

    .line 121
    .local v35, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v102, v2

    move-object/from16 v103, v35

    invoke-interface/range {v103 .. v103}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v103

    move-object/from16 v104, v35

    invoke-interface/range {v104 .. v104}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v104

    invoke-virtual/range {v102 .. v104}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;->setDestNativeBounds(II)V

    .line 122
    move-object/from16 v102, v35

    invoke-interface/range {v102 .. v102}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v102

    move/from16 v36, v102

    .line 123
    .local v36, "dstscan":I
    move-object/from16 v102, v35

    invoke-interface/range {v102 .. v102}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v102

    move-object/from16 v37, v102

    .line 128
    .local v37, "dstPixels":[I
    move-object/from16 v102, v2

    invoke-direct/range {v102 .. v102}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;->getOpacity()F

    move-result v102

    move/from16 v43, v102

    .line 131
    .local v43, "opacity":F
    move-object/from16 v102, v29

    const/16 v103, 0x2

    aget v102, v102, v103

    move-object/from16 v103, v29

    const/16 v104, 0x0

    aget v103, v103, v104

    sub-float v102, v102, v103

    move/from16 v103, v33

    move/from16 v0, v103

    int-to-float v0, v0

    move/from16 v103, v0

    div-float v102, v102, v103

    move/from16 v44, v102

    .line 132
    .local v44, "inc0_x":F
    move-object/from16 v102, v29

    const/16 v103, 0x3

    aget v102, v102, v103

    move-object/from16 v103, v29

    const/16 v104, 0x1

    aget v103, v103, v104

    sub-float v102, v102, v103

    move/from16 v103, v34

    move/from16 v0, v103

    int-to-float v0, v0

    move/from16 v103, v0

    div-float v102, v102, v103

    move/from16 v45, v102

    .line 133
    .local v45, "inc0_y":F
    move-object/from16 v102, v30

    const/16 v103, 0x2

    aget v102, v102, v103

    move-object/from16 v103, v30

    const/16 v104, 0x0

    aget v103, v103, v104

    sub-float v102, v102, v103

    move/from16 v103, v33

    move/from16 v0, v103

    int-to-float v0, v0

    move/from16 v103, v0

    div-float v102, v102, v103

    move/from16 v46, v102

    .line 134
    .local v46, "inc1_x":F
    move-object/from16 v102, v30

    const/16 v103, 0x3

    aget v102, v102, v103

    move-object/from16 v103, v30

    const/16 v104, 0x1

    aget v103, v103, v104

    sub-float v102, v102, v103

    move/from16 v103, v34

    move/from16 v0, v103

    int-to-float v0, v0

    move/from16 v103, v0

    div-float v102, v102, v103

    move/from16 v47, v102

    .line 137
    .local v47, "inc1_y":F
    move-object/from16 v102, v29

    const/16 v103, 0x1

    aget v102, v102, v103

    move/from16 v103, v45

    const/high16 v104, 0x3f000000    # 0.5f

    mul-float v103, v103, v104

    add-float v102, v102, v103

    move/from16 v48, v102

    .line 138
    .local v48, "pos0_y":F
    move-object/from16 v102, v30

    const/16 v103, 0x1

    aget v102, v102, v103

    move/from16 v103, v47

    const/high16 v104, 0x3f000000    # 0.5f

    mul-float v103, v103, v104

    add-float v102, v102, v103

    move/from16 v49, v102

    .line 140
    .local v49, "pos1_y":F
    const/16 v102, 0x0

    move/from16 v50, v102

    .local v50, "dy":I
    :goto_0
    move/from16 v102, v50

    const/16 v103, 0x0

    move/from16 v104, v34

    add-int v103, v103, v104

    move/from16 v0, v102

    move/from16 v1, v103

    if-ge v0, v1, :cond_11

    .line 141
    move/from16 v102, v50

    move/from16 v0, v102

    int-to-float v0, v0

    move/from16 v102, v0

    move/from16 v51, v102

    .line 143
    .local v51, "pixcoord_y":F
    move/from16 v102, v50

    move/from16 v103, v36

    mul-int v102, v102, v103

    move/from16 v38, v102

    .line 145
    .local v38, "dyi":I
    move-object/from16 v102, v29

    const/16 v103, 0x0

    aget v102, v102, v103

    move/from16 v103, v44

    const/high16 v104, 0x3f000000    # 0.5f

    mul-float v103, v103, v104

    add-float v102, v102, v103

    move/from16 v52, v102

    .line 146
    .local v52, "pos0_x":F
    move-object/from16 v102, v30

    const/16 v103, 0x0

    aget v102, v102, v103

    move/from16 v103, v46

    const/high16 v104, 0x3f000000    # 0.5f

    mul-float v103, v103, v104

    add-float v102, v102, v103

    move/from16 v53, v102

    .line 148
    .local v53, "pos1_x":F
    const/16 v102, 0x0

    move/from16 v54, v102

    .local v54, "dx":I
    :goto_1
    move/from16 v102, v54

    const/16 v103, 0x0

    move/from16 v104, v33

    add-int v103, v103, v104

    move/from16 v0, v102

    move/from16 v1, v103

    if-ge v0, v1, :cond_10

    .line 149
    move/from16 v102, v54

    move/from16 v0, v102

    int-to-float v0, v0

    move/from16 v102, v0

    move/from16 v55, v102

    .line 155
    .local v55, "pixcoord_x":F
    move/from16 v102, v52

    move/from16 v60, v102

    .line 156
    .local v60, "loc_tmp_x":F
    move/from16 v102, v48

    move/from16 v61, v102

    .line 158
    .local v61, "loc_tmp_y":F
    move/from16 v102, v60

    const/16 v103, 0x0

    cmpl-float v102, v102, v103

    if-ltz v102, :cond_8

    move/from16 v102, v61

    const/16 v103, 0x0

    cmpl-float v102, v102, v103

    if-ltz v102, :cond_8

    .line 159
    move/from16 v102, v60

    move/from16 v103, v12

    move/from16 v0, v103

    int-to-float v0, v0

    move/from16 v103, v0

    mul-float v102, v102, v103

    move/from16 v0, v102

    float-to-int v0, v0

    move/from16 v102, v0

    move/from16 v63, v102

    .line 160
    .local v63, "iloc_tmp_x":I
    move/from16 v102, v61

    move/from16 v103, v13

    move/from16 v0, v103

    int-to-float v0, v0

    move/from16 v103, v0

    mul-float v102, v102, v103

    move/from16 v0, v102

    float-to-int v0, v0

    move/from16 v102, v0

    move/from16 v64, v102

    .line 161
    .local v64, "iloc_tmp_y":I
    move/from16 v102, v63

    move/from16 v103, v12

    move/from16 v0, v102

    move/from16 v1, v103

    if-ge v0, v1, :cond_0

    move/from16 v102, v64

    move/from16 v103, v13

    move/from16 v0, v102

    move/from16 v1, v103

    if-lt v0, v1, :cond_6

    :cond_0
    const/16 v102, 0x1

    :goto_2
    move/from16 v65, v102

    .line 164
    .local v65, "out":Z
    move/from16 v102, v65

    if-eqz v102, :cond_7

    const/16 v102, 0x0

    :goto_3
    move/from16 v62, v102

    .line 169
    .end local v63    # "iloc_tmp_x":I
    .end local v64    # "iloc_tmp_y":I
    .end local v65    # "out":Z
    .local v62, "botImg_tmp":I
    :goto_4
    move/from16 v102, v62

    const/16 v103, 0x10

    shr-int/lit8 v102, v102, 0x10

    const/16 v103, 0xff

    move/from16 v0, v102

    and-int/lit16 v0, v0, 0xff

    move/from16 v102, v0

    move/from16 v0, v102

    int-to-float v0, v0

    move/from16 v102, v0

    const/high16 v103, 0x437f0000    # 255.0f

    div-float v102, v102, v103

    move/from16 v56, v102

    .line 170
    .local v56, "sample_res_x":F
    move/from16 v102, v62

    const/16 v103, 0x8

    shr-int/lit8 v102, v102, 0x8

    const/16 v103, 0xff

    move/from16 v0, v102

    and-int/lit16 v0, v0, 0xff

    move/from16 v102, v0

    move/from16 v0, v102

    int-to-float v0, v0

    move/from16 v102, v0

    const/high16 v103, 0x437f0000    # 255.0f

    div-float v102, v102, v103

    move/from16 v57, v102

    .line 171
    .local v57, "sample_res_y":F
    move/from16 v102, v62

    const/16 v103, 0xff

    move/from16 v0, v102

    and-int/lit16 v0, v0, 0xff

    move/from16 v102, v0

    move/from16 v0, v102

    int-to-float v0, v0

    move/from16 v102, v0

    const/high16 v103, 0x437f0000    # 255.0f

    div-float v102, v102, v103

    move/from16 v58, v102

    .line 172
    .local v58, "sample_res_z":F
    move/from16 v102, v62

    const/16 v103, 0x18

    ushr-int/lit8 v102, v102, 0x18

    move/from16 v0, v102

    int-to-float v0, v0

    move/from16 v102, v0

    const/high16 v103, 0x437f0000    # 255.0f

    div-float v102, v102, v103

    move/from16 v59, v102

    .line 175
    .local v59, "sample_res_w":F
    move/from16 v102, v56

    move/from16 v60, v102

    .line 176
    .local v60, "bot_x":F
    move/from16 v102, v57

    move/from16 v61, v102

    .line 177
    .local v61, "bot_y":F
    move/from16 v102, v58

    move/from16 v62, v102

    .line 178
    .local v62, "bot_z":F
    move/from16 v102, v59

    move/from16 v63, v102

    .line 180
    .local v63, "bot_w":F
    move/from16 v102, v53

    move/from16 v64, v102

    .line 181
    .local v64, "loc_tmp_x":F
    move/from16 v102, v49

    move/from16 v65, v102

    .line 183
    .local v65, "loc_tmp_y":F
    move/from16 v102, v64

    const/16 v103, 0x0

    cmpl-float v102, v102, v103

    if-ltz v102, :cond_b

    move/from16 v102, v65

    const/16 v103, 0x0

    cmpl-float v102, v102, v103

    if-ltz v102, :cond_b

    .line 184
    move/from16 v102, v64

    move/from16 v103, v22

    move/from16 v0, v103

    int-to-float v0, v0

    move/from16 v103, v0

    mul-float v102, v102, v103

    move/from16 v0, v102

    float-to-int v0, v0

    move/from16 v102, v0

    move/from16 v67, v102

    .line 185
    .local v67, "iloc_tmp_x":I
    move/from16 v102, v65

    move/from16 v103, v23

    move/from16 v0, v103

    int-to-float v0, v0

    move/from16 v103, v0

    mul-float v102, v102, v103

    move/from16 v0, v102

    float-to-int v0, v0

    move/from16 v102, v0

    move/from16 v68, v102

    .line 186
    .local v68, "iloc_tmp_y":I
    move/from16 v102, v67

    move/from16 v103, v22

    move/from16 v0, v102

    move/from16 v1, v103

    if-ge v0, v1, :cond_1

    move/from16 v102, v68

    move/from16 v103, v23

    move/from16 v0, v102

    move/from16 v1, v103

    if-lt v0, v1, :cond_9

    :cond_1
    const/16 v102, 0x1

    :goto_5
    move/from16 v69, v102

    .line 189
    .local v69, "out":Z
    move/from16 v102, v69

    if-eqz v102, :cond_a

    const/16 v102, 0x0

    :goto_6
    move/from16 v66, v102

    .line 194
    .end local v67    # "iloc_tmp_x":I
    .end local v68    # "iloc_tmp_y":I
    .end local v69    # "out":Z
    .local v66, "topImg_tmp":I
    :goto_7
    move/from16 v102, v66

    const/16 v103, 0x10

    shr-int/lit8 v102, v102, 0x10

    const/16 v103, 0xff

    move/from16 v0, v102

    and-int/lit16 v0, v0, 0xff

    move/from16 v102, v0

    move/from16 v0, v102

    int-to-float v0, v0

    move/from16 v102, v0

    const/high16 v103, 0x437f0000    # 255.0f

    div-float v102, v102, v103

    move/from16 v56, v102

    .line 195
    move/from16 v102, v66

    const/16 v103, 0x8

    shr-int/lit8 v102, v102, 0x8

    const/16 v103, 0xff

    move/from16 v0, v102

    and-int/lit16 v0, v0, 0xff

    move/from16 v102, v0

    move/from16 v0, v102

    int-to-float v0, v0

    move/from16 v102, v0

    const/high16 v103, 0x437f0000    # 255.0f

    div-float v102, v102, v103

    move/from16 v57, v102

    .line 196
    move/from16 v102, v66

    const/16 v103, 0xff

    move/from16 v0, v102

    and-int/lit16 v0, v0, 0xff

    move/from16 v102, v0

    move/from16 v0, v102

    int-to-float v0, v0

    move/from16 v102, v0

    const/high16 v103, 0x437f0000    # 255.0f

    div-float v102, v102, v103

    move/from16 v58, v102

    .line 197
    move/from16 v102, v66

    const/16 v103, 0x18

    ushr-int/lit8 v102, v102, 0x18

    move/from16 v0, v102

    int-to-float v0, v0

    move/from16 v102, v0

    const/high16 v103, 0x437f0000    # 255.0f

    div-float v102, v102, v103

    move/from16 v59, v102

    .line 200
    move/from16 v102, v56

    move/from16 v103, v43

    mul-float v102, v102, v103

    move/from16 v64, v102

    .line 201
    .local v64, "top_x":F
    move/from16 v102, v57

    move/from16 v103, v43

    mul-float v102, v102, v103

    move/from16 v65, v102

    .line 202
    .local v65, "top_y":F
    move/from16 v102, v58

    move/from16 v103, v43

    mul-float v102, v102, v103

    move/from16 v66, v102

    .line 203
    .local v66, "top_z":F
    move/from16 v102, v59

    move/from16 v103, v43

    mul-float v102, v102, v103

    move/from16 v67, v102

    .line 206
    .local v67, "top_w":F
    move/from16 v102, v60

    move/from16 v72, v102

    .line 207
    .local v72, "bot_tmp_x":F
    move/from16 v102, v61

    move/from16 v73, v102

    .line 208
    .local v73, "bot_tmp_y":F
    move/from16 v102, v62

    move/from16 v74, v102

    .line 209
    .local v74, "bot_tmp_z":F
    move/from16 v102, v63

    move/from16 v75, v102

    .line 210
    .local v75, "bot_tmp_w":F
    move/from16 v102, v64

    move/from16 v76, v102

    .line 211
    .local v76, "top_tmp_x":F
    move/from16 v102, v65

    move/from16 v77, v102

    .line 212
    .local v77, "top_tmp_y":F
    move/from16 v102, v66

    move/from16 v78, v102

    .line 213
    .local v78, "top_tmp_z":F
    move/from16 v102, v67

    move/from16 v79, v102

    .line 219
    .local v79, "top_tmp_w":F
    move/from16 v102, v75

    move/from16 v103, v79

    add-float v102, v102, v103

    move/from16 v103, v75

    move/from16 v104, v79

    mul-float v103, v103, v104

    sub-float v102, v102, v103

    move/from16 v83, v102

    .line 222
    .local v83, "res_w":F
    move/from16 v102, v72

    move/from16 v103, v75

    const/high16 v104, 0x3f000000    # 0.5f

    mul-float v103, v103, v104

    sub-float v102, v102, v103

    move/from16 v87, v102

    .line 223
    .local v87, "x_tmp_x":F
    move/from16 v102, v73

    move/from16 v103, v75

    const/high16 v104, 0x3f000000    # 0.5f

    mul-float v103, v103, v104

    sub-float v102, v102, v103

    move/from16 v88, v102

    .line 224
    .local v88, "x_tmp_y":F
    move/from16 v102, v74

    move/from16 v103, v75

    const/high16 v104, 0x3f000000    # 0.5f

    mul-float v103, v103, v104

    sub-float v102, v102, v103

    move/from16 v89, v102

    .line 225
    .local v89, "x_tmp_z":F
    move/from16 v102, v87

    move/from16 v0, v102

    float-to-double v0, v0

    move-wide/from16 v102, v0

    invoke-static/range {v102 .. v103}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v102

    move-wide/from16 v0, v102

    double-to-float v0, v0

    move/from16 v102, v0

    move/from16 v84, v102

    .line 226
    .local v84, "ceil_res_x":F
    move/from16 v102, v88

    move/from16 v0, v102

    float-to-double v0, v0

    move-wide/from16 v102, v0

    invoke-static/range {v102 .. v103}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v102

    move-wide/from16 v0, v102

    double-to-float v0, v0

    move/from16 v102, v0

    move/from16 v85, v102

    .line 227
    .local v85, "ceil_res_y":F
    move/from16 v102, v89

    move/from16 v0, v102

    float-to-double v0, v0

    move-wide/from16 v102, v0

    invoke-static/range {v102 .. v103}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v102

    move-wide/from16 v0, v102

    double-to-float v0, v0

    move/from16 v102, v0

    move/from16 v86, v102

    .line 230
    .local v86, "ceil_res_z":F
    move/from16 v102, v84

    move/from16 v87, v102

    .line 231
    .local v87, "mask_x":F
    move/from16 v102, v85

    move/from16 v88, v102

    .line 232
    .local v88, "mask_y":F
    move/from16 v102, v86

    move/from16 v89, v102

    .line 235
    .local v89, "mask_z":F
    move/from16 v102, v72

    move/from16 v103, v87

    move/from16 v104, v75

    mul-float v103, v103, v104

    sub-float v102, v102, v103

    move/from16 v93, v102

    .line 236
    .local v93, "x_tmp_x":F
    move/from16 v102, v73

    move/from16 v103, v88

    move/from16 v104, v75

    mul-float v103, v103, v104

    sub-float v102, v102, v103

    move/from16 v94, v102

    .line 237
    .local v94, "x_tmp_y":F
    move/from16 v102, v74

    move/from16 v103, v89

    move/from16 v104, v75

    mul-float v103, v103, v104

    sub-float v102, v102, v103

    move/from16 v95, v102

    .line 238
    .local v95, "x_tmp_z":F
    move/from16 v102, v93

    invoke-static/range {v102 .. v102}, Ljava/lang/Math;->abs(F)F

    move-result v102

    move/from16 v90, v102

    .line 239
    .local v90, "abs_res_x":F
    move/from16 v102, v94

    invoke-static/range {v102 .. v102}, Ljava/lang/Math;->abs(F)F

    move-result v102

    move/from16 v91, v102

    .line 240
    .local v91, "abs_res_y":F
    move/from16 v102, v95

    invoke-static/range {v102 .. v102}, Ljava/lang/Math;->abs(F)F

    move-result v102

    move/from16 v92, v102

    .line 243
    .local v92, "abs_res_z":F
    move/from16 v102, v90

    move/from16 v93, v102

    .line 244
    .local v93, "adjbot_x":F
    move/from16 v102, v91

    move/from16 v94, v102

    .line 245
    .local v94, "adjbot_y":F
    move/from16 v102, v92

    move/from16 v95, v102

    .line 247
    .local v95, "adjbot_z":F
    move/from16 v102, v76

    move/from16 v103, v87

    move/from16 v104, v79

    mul-float v103, v103, v104

    sub-float v102, v102, v103

    move/from16 v96, v102

    .line 248
    .local v96, "x_tmp_x":F
    move/from16 v102, v77

    move/from16 v103, v88

    move/from16 v104, v79

    mul-float v103, v103, v104

    sub-float v102, v102, v103

    move/from16 v97, v102

    .line 249
    .local v97, "x_tmp_y":F
    move/from16 v102, v78

    move/from16 v103, v89

    move/from16 v104, v79

    mul-float v103, v103, v104

    sub-float v102, v102, v103

    move/from16 v98, v102

    .line 250
    .local v98, "x_tmp_z":F
    move/from16 v102, v96

    invoke-static/range {v102 .. v102}, Ljava/lang/Math;->abs(F)F

    move-result v102

    move/from16 v90, v102

    .line 251
    move/from16 v102, v97

    invoke-static/range {v102 .. v102}, Ljava/lang/Math;->abs(F)F

    move-result v102

    move/from16 v91, v102

    .line 252
    move/from16 v102, v98

    invoke-static/range {v102 .. v102}, Ljava/lang/Math;->abs(F)F

    move-result v102

    move/from16 v92, v102

    .line 255
    move/from16 v102, v90

    move/from16 v96, v102

    .line 256
    .local v96, "adjtop_x":F
    move/from16 v102, v91

    move/from16 v97, v102

    .line 257
    .local v97, "adjtop_y":F
    move/from16 v102, v92

    move/from16 v98, v102

    .line 258
    .local v98, "adjtop_z":F
    const/high16 v102, 0x40000000    # 2.0f

    move/from16 v103, v93

    mul-float v102, v102, v103

    const/high16 v103, 0x3f800000    # 1.0f

    add-float v102, v102, v103

    move/from16 v103, v75

    sub-float v102, v102, v103

    move/from16 v103, v96

    mul-float v102, v102, v103

    const/high16 v103, 0x3f800000    # 1.0f

    move/from16 v104, v79

    sub-float v103, v103, v104

    move/from16 v104, v93

    mul-float v103, v103, v104

    add-float v102, v102, v103

    move/from16 v80, v102

    .line 259
    .local v80, "res_x":F
    const/high16 v102, 0x40000000    # 2.0f

    move/from16 v103, v94

    mul-float v102, v102, v103

    const/high16 v103, 0x3f800000    # 1.0f

    add-float v102, v102, v103

    move/from16 v103, v75

    sub-float v102, v102, v103

    move/from16 v103, v97

    mul-float v102, v102, v103

    const/high16 v103, 0x3f800000    # 1.0f

    move/from16 v104, v79

    sub-float v103, v103, v104

    move/from16 v104, v94

    mul-float v103, v103, v104

    add-float v102, v102, v103

    move/from16 v81, v102

    .line 260
    .local v81, "res_y":F
    const/high16 v102, 0x40000000    # 2.0f

    move/from16 v103, v95

    mul-float v102, v102, v103

    const/high16 v103, 0x3f800000    # 1.0f

    add-float v102, v102, v103

    move/from16 v103, v75

    sub-float v102, v102, v103

    move/from16 v103, v98

    mul-float v102, v102, v103

    const/high16 v103, 0x3f800000    # 1.0f

    move/from16 v104, v79

    sub-float v103, v103, v104

    move/from16 v104, v95

    mul-float v103, v103, v104

    add-float v102, v102, v103

    move/from16 v82, v102

    .line 262
    .local v82, "res_z":F
    move/from16 v102, v80

    move/from16 v103, v87

    move/from16 v104, v83

    mul-float v103, v103, v104

    sub-float v102, v102, v103

    move/from16 v99, v102

    .line 263
    .local v99, "x_tmp_x":F
    move/from16 v102, v81

    move/from16 v103, v88

    move/from16 v104, v83

    mul-float v103, v103, v104

    sub-float v102, v102, v103

    move/from16 v100, v102

    .line 264
    .local v100, "x_tmp_y":F
    move/from16 v102, v82

    move/from16 v103, v89

    move/from16 v104, v83

    mul-float v103, v103, v104

    sub-float v102, v102, v103

    move/from16 v101, v102

    .line 265
    .local v101, "x_tmp_z":F
    move/from16 v102, v99

    invoke-static/range {v102 .. v102}, Ljava/lang/Math;->abs(F)F

    move-result v102

    move/from16 v90, v102

    .line 266
    move/from16 v102, v100

    invoke-static/range {v102 .. v102}, Ljava/lang/Math;->abs(F)F

    move-result v102

    move/from16 v91, v102

    .line 267
    move/from16 v102, v101

    invoke-static/range {v102 .. v102}, Ljava/lang/Math;->abs(F)F

    move-result v102

    move/from16 v92, v102

    .line 270
    move/from16 v102, v90

    move/from16 v80, v102

    .line 271
    move/from16 v102, v91

    move/from16 v81, v102

    .line 272
    move/from16 v102, v92

    move/from16 v82, v102

    .line 273
    move/from16 v102, v80

    move/from16 v68, v102

    .line 274
    .local v68, "blend_overlay_res_x":F
    move/from16 v102, v81

    move/from16 v69, v102

    .line 275
    .local v69, "blend_overlay_res_y":F
    move/from16 v102, v82

    move/from16 v70, v102

    .line 276
    .local v70, "blend_overlay_res_z":F
    move/from16 v102, v83

    move/from16 v71, v102

    .line 280
    .local v71, "blend_overlay_res_w":F
    move/from16 v102, v68

    move/from16 v39, v102

    .line 281
    .local v39, "color_x":F
    move/from16 v102, v69

    move/from16 v40, v102

    .line 282
    .local v40, "color_y":F
    move/from16 v102, v70

    move/from16 v41, v102

    .line 283
    .local v41, "color_z":F
    move/from16 v102, v71

    move/from16 v42, v102

    .line 287
    .local v42, "color_w":F
    move/from16 v102, v42

    const/16 v103, 0x0

    cmpg-float v102, v102, v103

    if-gez v102, :cond_c

    const/16 v102, 0x0

    move/from16 v42, v102

    .line 288
    :cond_2
    :goto_8
    move/from16 v102, v39

    const/16 v103, 0x0

    cmpg-float v102, v102, v103

    if-gez v102, :cond_d

    const/16 v102, 0x0

    move/from16 v39, v102

    .line 289
    :cond_3
    :goto_9
    move/from16 v102, v40

    const/16 v103, 0x0

    cmpg-float v102, v102, v103

    if-gez v102, :cond_e

    const/16 v102, 0x0

    move/from16 v40, v102

    .line 290
    :cond_4
    :goto_a
    move/from16 v102, v41

    const/16 v103, 0x0

    cmpg-float v102, v102, v103

    if-gez v102, :cond_f

    const/16 v102, 0x0

    move/from16 v41, v102

    .line 291
    :cond_5
    :goto_b
    move-object/from16 v102, v37

    move/from16 v103, v38

    move/from16 v104, v54

    add-int v103, v103, v104

    move/from16 v104, v39

    const/high16 v105, 0x437f0000    # 255.0f

    mul-float v104, v104, v105

    move/from16 v0, v104

    float-to-int v0, v0

    move/from16 v104, v0

    const/16 v105, 0x10

    shl-int/lit8 v104, v104, 0x10

    move/from16 v105, v40

    const/high16 v106, 0x437f0000    # 255.0f

    mul-float v105, v105, v106

    move/from16 v0, v105

    float-to-int v0, v0

    move/from16 v105, v0

    const/16 v106, 0x8

    shl-int/lit8 v105, v105, 0x8

    or-int v104, v104, v105

    move/from16 v105, v41

    const/high16 v106, 0x437f0000    # 255.0f

    mul-float v105, v105, v106

    move/from16 v0, v105

    float-to-int v0, v0

    move/from16 v105, v0

    const/16 v106, 0x0

    shl-int/lit8 v105, v105, 0x0

    or-int v104, v104, v105

    move/from16 v105, v42

    const/high16 v106, 0x437f0000    # 255.0f

    mul-float v105, v105, v106

    move/from16 v0, v105

    float-to-int v0, v0

    move/from16 v105, v0

    const/16 v106, 0x18

    shl-int/lit8 v105, v105, 0x18

    or-int v104, v104, v105

    aput v104, v102, v103

    .line 297
    move/from16 v102, v52

    move/from16 v103, v44

    add-float v102, v102, v103

    move/from16 v52, v102

    .line 298
    move/from16 v102, v53

    move/from16 v103, v46

    add-float v102, v102, v103

    move/from16 v53, v102

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
    .end local v68    # "blend_overlay_res_x":F
    .end local v69    # "blend_overlay_res_y":F
    .end local v70    # "blend_overlay_res_z":F
    .end local v71    # "blend_overlay_res_w":F
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
    .end local v84    # "ceil_res_x":F
    .end local v85    # "ceil_res_y":F
    .end local v86    # "ceil_res_z":F
    .end local v87    # "mask_x":F
    .end local v88    # "mask_y":F
    .end local v89    # "mask_z":F
    .end local v90    # "abs_res_x":F
    .end local v91    # "abs_res_y":F
    .end local v92    # "abs_res_z":F
    .end local v93    # "adjbot_x":F
    .end local v94    # "adjbot_y":F
    .end local v95    # "adjbot_z":F
    .end local v96    # "adjtop_x":F
    .end local v97    # "adjtop_y":F
    .end local v98    # "adjtop_z":F
    .end local v99    # "x_tmp_x":F
    .end local v100    # "x_tmp_y":F
    .end local v101    # "x_tmp_z":F
    .local v60, "loc_tmp_x":F
    .local v61, "loc_tmp_y":F
    .local v63, "iloc_tmp_x":I
    .local v64, "iloc_tmp_y":I
    :cond_6
    const/16 v102, 0x0

    goto/16 :goto_2

    .line 164
    .local v65, "out":Z
    :cond_7
    move-object/from16 v102, v15

    move/from16 v103, v64

    move/from16 v104, v14

    mul-int v103, v103, v104

    move/from16 v104, v63

    add-int v103, v103, v104

    aget v102, v102, v103

    goto/16 :goto_3

    .line 167
    .end local v63    # "iloc_tmp_x":I
    .end local v64    # "iloc_tmp_y":I
    .end local v65    # "out":Z
    :cond_8
    const/16 v102, 0x0

    move/from16 v62, v102

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
    const/16 v102, 0x0

    goto/16 :goto_5

    .line 189
    .local v69, "out":Z
    :cond_a
    move-object/from16 v102, v25

    move/from16 v103, v68

    move/from16 v104, v24

    mul-int v103, v103, v104

    move/from16 v104, v67

    add-int v103, v103, v104

    aget v102, v102, v103

    goto/16 :goto_6

    .line 192
    .end local v67    # "iloc_tmp_x":I
    .end local v68    # "iloc_tmp_y":I
    .end local v69    # "out":Z
    :cond_b
    const/16 v102, 0x0

    move/from16 v66, v102

    .local v66, "topImg_tmp":I
    goto/16 :goto_7

    .line 287
    .restart local v39    # "color_x":F
    .restart local v40    # "color_y":F
    .restart local v41    # "color_z":F
    .restart local v42    # "color_w":F
    .local v64, "top_x":F
    .local v65, "top_y":F
    .local v66, "top_z":F
    .local v67, "top_w":F
    .local v68, "blend_overlay_res_x":F
    .local v69, "blend_overlay_res_y":F
    .restart local v70    # "blend_overlay_res_z":F
    .restart local v71    # "blend_overlay_res_w":F
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
    .restart local v84    # "ceil_res_x":F
    .restart local v85    # "ceil_res_y":F
    .restart local v86    # "ceil_res_z":F
    .restart local v87    # "mask_x":F
    .restart local v88    # "mask_y":F
    .restart local v89    # "mask_z":F
    .restart local v90    # "abs_res_x":F
    .restart local v91    # "abs_res_y":F
    .restart local v92    # "abs_res_z":F
    .restart local v93    # "adjbot_x":F
    .restart local v94    # "adjbot_y":F
    .restart local v95    # "adjbot_z":F
    .restart local v96    # "adjtop_x":F
    .restart local v97    # "adjtop_y":F
    .restart local v98    # "adjtop_z":F
    .restart local v99    # "x_tmp_x":F
    .restart local v100    # "x_tmp_y":F
    .restart local v101    # "x_tmp_z":F
    :cond_c
    move/from16 v102, v42

    const/high16 v103, 0x3f800000    # 1.0f

    cmpl-float v102, v102, v103

    if-lez v102, :cond_2

    const/high16 v102, 0x3f800000    # 1.0f

    move/from16 v42, v102

    goto/16 :goto_8

    .line 288
    :cond_d
    move/from16 v102, v39

    move/from16 v103, v42

    cmpl-float v102, v102, v103

    if-lez v102, :cond_3

    move/from16 v102, v42

    move/from16 v39, v102

    goto/16 :goto_9

    .line 289
    :cond_e
    move/from16 v102, v40

    move/from16 v103, v42

    cmpl-float v102, v102, v103

    if-lez v102, :cond_4

    move/from16 v102, v42

    move/from16 v40, v102

    goto/16 :goto_a

    .line 290
    :cond_f
    move/from16 v102, v41

    move/from16 v103, v42

    cmpl-float v102, v102, v103

    if-lez v102, :cond_5

    move/from16 v102, v42

    move/from16 v41, v102

    goto/16 :goto_b

    .line 302
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
    .end local v68    # "blend_overlay_res_x":F
    .end local v69    # "blend_overlay_res_y":F
    .end local v70    # "blend_overlay_res_z":F
    .end local v71    # "blend_overlay_res_w":F
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
    .end local v84    # "ceil_res_x":F
    .end local v85    # "ceil_res_y":F
    .end local v86    # "ceil_res_z":F
    .end local v87    # "mask_x":F
    .end local v88    # "mask_y":F
    .end local v89    # "mask_z":F
    .end local v90    # "abs_res_x":F
    .end local v91    # "abs_res_y":F
    .end local v92    # "abs_res_z":F
    .end local v93    # "adjbot_x":F
    .end local v94    # "adjbot_y":F
    .end local v95    # "adjbot_z":F
    .end local v96    # "adjtop_x":F
    .end local v97    # "adjtop_y":F
    .end local v98    # "adjtop_z":F
    .end local v99    # "x_tmp_x":F
    .end local v100    # "x_tmp_y":F
    .end local v101    # "x_tmp_z":F
    :cond_10
    move/from16 v102, v48

    move/from16 v103, v45

    add-float v102, v102, v103

    move/from16 v48, v102

    .line 303
    move/from16 v102, v49

    move/from16 v103, v47

    add-float v102, v102, v103

    move/from16 v49, v102

    .line 140
    add-int/lit8 v50, v50, 0x1

    goto/16 :goto_0

    .line 307
    .end local v38    # "dyi":I
    .end local v51    # "pixcoord_y":F
    .end local v52    # "pos0_x":F
    .end local v53    # "pos1_x":F
    .end local v54    # "dx":I
    :cond_11
    move-object/from16 v102, v7

    const/16 v103, 0x0

    aget-object v102, v102, v103

    move-object/from16 v103, v9

    invoke-virtual/range {v102 .. v103}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 308
    move-object/from16 v102, v7

    const/16 v103, 0x1

    aget-object v102, v102, v103

    move-object/from16 v103, v19

    invoke-virtual/range {v102 .. v103}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 311
    new-instance v102, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v111, v102

    move-object/from16 v102, v111

    move-object/from16 v103, v111

    move-object/from16 v104, v2

    invoke-virtual/range {v104 .. v104}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v104

    move-object/from16 v105, v35

    move-object/from16 v106, v8

    invoke-direct/range {v103 .. v106}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v102

    .end local v2    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;
    return-object v2
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/Blend;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Blend;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;
    return-object v0
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;->getEffect()Lcom/sun/scenario/effect/Blend;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBlend_OVERLAYPeer;
    return-object v0
.end method

.class public Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;
.super Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;
.source "JSWPerspectiveTransformPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;
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

.method private getITX()[[F
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;
    move-object v2, v0

    .line 60
    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->getEffect()Lcom/sun/scenario/effect/PerspectiveTransform;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/scenario/effect/impl/state/AccessHelper;->getState(Lcom/sun/scenario/effect/Effect;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;

    move-object v1, v2

    .line 61
    .local v1, "state":Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->getITX()[[F

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;
    return-object v0
.end method

.method private getTx0()[F
    .locals 11

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->getInputBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    move-object v1, v5

    .line 66
    .local v1, "ib":Lcom/sun/javafx/geom/Rectangle;
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    move-object v2, v5

    .line 67
    .local v2, "nb":Lcom/sun/javafx/geom/Rectangle;
    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v5, v5

    move-object v6, v2

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v3, v5

    .line 68
    .local v3, "scalex":F
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->getITX()[[F

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v4, v5

    .line 69
    .local v4, "itx0":[F
    const/4 v5, 0x3

    new-array v5, v5, [F

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move-object v8, v4

    const/4 v9, 0x0

    aget v8, v8, v9

    move v9, v3

    mul-float/2addr v8, v9

    aput v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    move-object v8, v4

    const/4 v9, 0x1

    aget v8, v8, v9

    move v9, v3

    mul-float/2addr v8, v9

    aput v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x2

    move-object v8, v4

    const/4 v9, 0x2

    aget v8, v8, v9

    move v9, v3

    mul-float/2addr v8, v9

    aput v8, v6, v7

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;
    return-object v0
.end method

.method private getTx1()[F
    .locals 11

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->getInputBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    move-object v1, v5

    .line 73
    .local v1, "ib":Lcom/sun/javafx/geom/Rectangle;
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    move-object v2, v5

    .line 74
    .local v2, "nb":Lcom/sun/javafx/geom/Rectangle;
    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v5, v5

    move-object v6, v2

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v3, v5

    .line 75
    .local v3, "scaley":F
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->getITX()[[F

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object v4, v5

    .line 76
    .local v4, "itx1":[F
    const/4 v5, 0x3

    new-array v5, v5, [F

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move-object v8, v4

    const/4 v9, 0x0

    aget v8, v8, v9

    move v9, v3

    mul-float/2addr v8, v9

    aput v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    move-object v8, v4

    const/4 v9, 0x1

    aget v8, v8, v9

    move v9, v3

    mul-float/2addr v8, v9

    aput v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x2

    move-object v8, v4

    const/4 v9, 0x2

    aget v8, v8, v9

    move v9, v3

    mul-float/2addr v8, v9

    aput v8, v6, v7

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;
    return-object v0
.end method

.method private getTx2()[F
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->getITX()[[F

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;
    return-object v0
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 76

    .prologue
    .line 105
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;
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
    move-object/from16 v66, v2

    move-object/from16 v67, v3

    invoke-virtual/range {v66 .. v67}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 106
    move-object/from16 v66, v2

    move-object/from16 v67, v5

    move-object/from16 v68, v6

    move-object/from16 v69, v7

    invoke-virtual/range {v66 .. v69}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v66

    move-object/from16 v8, v66

    .line 107
    .local v8, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v66, v2

    move-object/from16 v67, v8

    invoke-virtual/range {v66 .. v67}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 110
    move-object/from16 v66, v7

    const/16 v67, 0x0

    aget-object v66, v66, v67

    invoke-virtual/range {v66 .. v66}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v66

    check-cast v66, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v9, v66

    .line 111
    .local v9, "src0":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v66, 0x0

    move/from16 v10, v66

    .line 112
    .local v10, "src0x":I
    const/16 v66, 0x0

    move/from16 v11, v66

    .line 113
    .local v11, "src0y":I
    move-object/from16 v66, v9

    invoke-interface/range {v66 .. v66}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v66

    move/from16 v12, v66

    .line 114
    .local v12, "src0w":I
    move-object/from16 v66, v9

    invoke-interface/range {v66 .. v66}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v66

    move/from16 v13, v66

    .line 115
    .local v13, "src0h":I
    move-object/from16 v66, v9

    invoke-interface/range {v66 .. v66}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v66

    move/from16 v14, v66

    .line 116
    .local v14, "src0scan":I
    move-object/from16 v66, v9

    .line 117
    invoke-interface/range {v66 .. v66}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v66

    move-object/from16 v15, v66

    .line 118
    .local v15, "baseImg":[I
    new-instance v66, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v75, v66

    move-object/from16 v66, v75

    move-object/from16 v67, v75

    move/from16 v68, v10

    move/from16 v69, v11

    move/from16 v70, v12

    move/from16 v71, v13

    invoke-direct/range {v67 .. v71}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v16, v66

    .line 119
    .local v16, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v66, v7

    const/16 v67, 0x0

    aget-object v66, v66, v67

    invoke-virtual/range {v66 .. v66}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v66

    move-object/from16 v17, v66

    .line 120
    .local v17, "src0InputBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v66, v7

    const/16 v67, 0x0

    aget-object v66, v66, v67

    invoke-virtual/range {v66 .. v66}, Lcom/sun/scenario/effect/ImageData;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v66

    move-object/from16 v18, v66

    .line 121
    .local v18, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v66, v2

    const/16 v67, 0x0

    move-object/from16 v68, v17

    invoke-virtual/range {v66 .. v68}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 122
    move-object/from16 v66, v2

    const/16 v67, 0x0

    move-object/from16 v68, v16

    invoke-virtual/range {v66 .. v68}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 123
    const/16 v66, 0x4

    move/from16 v0, v66

    new-array v0, v0, [F

    move-object/from16 v66, v0

    move-object/from16 v19, v66

    .line 126
    .local v19, "baseImg_vals":[F
    const/16 v66, 0x4

    move/from16 v0, v66

    new-array v0, v0, [F

    move-object/from16 v66, v0

    move-object/from16 v20, v66

    .line 127
    .local v20, "src0Rect":[F
    move-object/from16 v66, v2

    const/16 v67, 0x0

    move-object/from16 v68, v20

    move-object/from16 v69, v17

    move-object/from16 v0, v69

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v69, v0

    move/from16 v0, v69

    int-to-float v0, v0

    move/from16 v69, v0

    move-object/from16 v70, v17

    move-object/from16 v0, v70

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v70, v0

    move/from16 v0, v70

    int-to-float v0, v0

    move/from16 v70, v0

    move/from16 v71, v12

    move/from16 v0, v71

    int-to-float v0, v0

    move/from16 v71, v0

    move/from16 v72, v13

    move/from16 v0, v72

    int-to-float v0, v0

    move/from16 v72, v0

    move-object/from16 v73, v8

    move-object/from16 v74, v18

    invoke-virtual/range {v66 .. v74}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v66

    .line 133
    const/16 v66, 0x0

    move/from16 v21, v66

    .line 134
    .local v21, "dstx":I
    const/16 v66, 0x0

    move/from16 v22, v66

    .line 135
    .local v22, "dsty":I
    move-object/from16 v66, v8

    move-object/from16 v0, v66

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v66, v0

    move/from16 v23, v66

    .line 136
    .local v23, "dstw":I
    move-object/from16 v66, v8

    move-object/from16 v0, v66

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v66, v0

    move/from16 v24, v66

    .line 138
    .local v24, "dsth":I
    move-object/from16 v66, v2

    invoke-virtual/range {v66 .. v66}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v66

    move/from16 v67, v23

    move/from16 v68, v24

    invoke-virtual/range {v66 .. v68}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v66

    check-cast v66, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v25, v66

    .line 139
    .local v25, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v66, v2

    move-object/from16 v67, v25

    invoke-interface/range {v67 .. v67}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v67

    move-object/from16 v68, v25

    invoke-interface/range {v68 .. v68}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v68

    invoke-virtual/range {v66 .. v68}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->setDestNativeBounds(II)V

    .line 140
    move-object/from16 v66, v25

    invoke-interface/range {v66 .. v66}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v66

    move/from16 v26, v66

    .line 141
    .local v26, "dstscan":I
    move-object/from16 v66, v25

    invoke-interface/range {v66 .. v66}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v66

    move-object/from16 v27, v66

    .line 146
    .local v27, "dstPixels":[I
    move-object/from16 v66, v2

    invoke-direct/range {v66 .. v66}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->getTx1()[F

    move-result-object v66

    move-object/from16 v33, v66

    .line 147
    .local v33, "tx1_arr":[F
    move-object/from16 v66, v33

    const/16 v67, 0x0

    aget v66, v66, v67

    move/from16 v34, v66

    .local v34, "tx1_x":F
    move-object/from16 v66, v33

    const/16 v67, 0x1

    aget v66, v66, v67

    move/from16 v35, v66

    .local v35, "tx1_y":F
    move-object/from16 v66, v33

    const/16 v67, 0x2

    aget v66, v66, v67

    move/from16 v36, v66

    .line 148
    .local v36, "tx1_z":F
    move-object/from16 v66, v2

    invoke-direct/range {v66 .. v66}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->getTx0()[F

    move-result-object v66

    move-object/from16 v37, v66

    .line 149
    .local v37, "tx0_arr":[F
    move-object/from16 v66, v37

    const/16 v67, 0x0

    aget v66, v66, v67

    move/from16 v38, v66

    .local v38, "tx0_x":F
    move-object/from16 v66, v37

    const/16 v67, 0x1

    aget v66, v66, v67

    move/from16 v39, v66

    .local v39, "tx0_y":F
    move-object/from16 v66, v37

    const/16 v67, 0x2

    aget v66, v66, v67

    move/from16 v40, v66

    .line 150
    .local v40, "tx0_z":F
    move-object/from16 v66, v2

    invoke-direct/range {v66 .. v66}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->getTx2()[F

    move-result-object v66

    move-object/from16 v41, v66

    .line 151
    .local v41, "tx2_arr":[F
    move-object/from16 v66, v41

    const/16 v67, 0x0

    aget v66, v66, v67

    move/from16 v42, v66

    .local v42, "tx2_x":F
    move-object/from16 v66, v41

    const/16 v67, 0x1

    aget v66, v66, v67

    move/from16 v43, v66

    .local v43, "tx2_y":F
    move-object/from16 v66, v41

    const/16 v67, 0x2

    aget v66, v66, v67

    move/from16 v44, v66

    .line 154
    .local v44, "tx2_z":F
    move-object/from16 v66, v20

    const/16 v67, 0x2

    aget v66, v66, v67

    move-object/from16 v67, v20

    const/16 v68, 0x0

    aget v67, v67, v68

    sub-float v66, v66, v67

    move/from16 v67, v23

    move/from16 v0, v67

    int-to-float v0, v0

    move/from16 v67, v0

    div-float v66, v66, v67

    move/from16 v45, v66

    .line 155
    .local v45, "inc0_x":F
    move-object/from16 v66, v20

    const/16 v67, 0x3

    aget v66, v66, v67

    move-object/from16 v67, v20

    const/16 v68, 0x1

    aget v67, v67, v68

    sub-float v66, v66, v67

    move/from16 v67, v24

    move/from16 v0, v67

    int-to-float v0, v0

    move/from16 v67, v0

    div-float v66, v66, v67

    move/from16 v46, v66

    .line 158
    .local v46, "inc0_y":F
    move-object/from16 v66, v20

    const/16 v67, 0x1

    aget v66, v66, v67

    move/from16 v67, v46

    const/high16 v68, 0x3f000000    # 0.5f

    mul-float v67, v67, v68

    add-float v66, v66, v67

    move/from16 v47, v66

    .line 160
    .local v47, "pos0_y":F
    const/16 v66, 0x0

    move/from16 v48, v66

    .local v48, "dy":I
    :goto_0
    move/from16 v66, v48

    const/16 v67, 0x0

    move/from16 v68, v24

    add-int v67, v67, v68

    move/from16 v0, v66

    move/from16 v1, v67

    if-ge v0, v1, :cond_9

    .line 161
    move/from16 v66, v48

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v49, v66

    .line 163
    .local v49, "pixcoord_y":F
    move/from16 v66, v48

    move/from16 v67, v26

    mul-int v66, v66, v67

    move/from16 v28, v66

    .line 165
    .local v28, "dyi":I
    move-object/from16 v66, v20

    const/16 v67, 0x0

    aget v66, v66, v67

    move/from16 v67, v45

    const/high16 v68, 0x3f000000    # 0.5f

    mul-float v67, v67, v68

    add-float v66, v66, v67

    move/from16 v50, v66

    .line 167
    .local v50, "pos0_x":F
    const/16 v66, 0x0

    move/from16 v51, v66

    .local v51, "dx":I
    :goto_1
    move/from16 v66, v51

    const/16 v67, 0x0

    move/from16 v68, v23

    add-int v67, v67, v68

    move/from16 v0, v66

    move/from16 v1, v67

    if-ge v0, v1, :cond_8

    .line 168
    move/from16 v66, v51

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v52, v66

    .line 178
    .local v52, "pixcoord_x":F
    move/from16 v66, v50

    move/from16 v53, v66

    .line 179
    .local v53, "p1_x":F
    move/from16 v66, v47

    move/from16 v54, v66

    .line 180
    .local v54, "p1_y":F
    const/high16 v66, 0x3f800000    # 1.0f

    move/from16 v55, v66

    .line 183
    .local v55, "p1_z":F
    move/from16 v66, v53

    move/from16 v60, v66

    .line 184
    .local v60, "x_tmp_x":F
    move/from16 v66, v54

    move/from16 v61, v66

    .line 185
    .local v61, "x_tmp_y":F
    move/from16 v66, v55

    move/from16 v62, v66

    .line 186
    .local v62, "x_tmp_z":F
    move/from16 v66, v42

    move/from16 v63, v66

    .line 187
    .local v63, "y_tmp_x":F
    move/from16 v66, v43

    move/from16 v64, v66

    .line 188
    .local v64, "y_tmp_y":F
    move/from16 v66, v44

    move/from16 v65, v66

    .line 189
    .local v65, "y_tmp_z":F
    move/from16 v66, v60

    move/from16 v67, v63

    mul-float v66, v66, v67

    move/from16 v67, v61

    move/from16 v68, v64

    mul-float v67, v67, v68

    add-float v66, v66, v67

    move/from16 v67, v62

    move/from16 v68, v65

    mul-float v67, v67, v68

    add-float v66, v66, v67

    move/from16 v59, v66

    .line 194
    .local v59, "dot_res":F
    move/from16 v66, v59

    move/from16 v58, v66

    .line 196
    .local v58, "p2_z":F
    move/from16 v66, v53

    move/from16 v60, v66

    .line 197
    move/from16 v66, v54

    move/from16 v61, v66

    .line 198
    move/from16 v66, v55

    move/from16 v62, v66

    .line 199
    move/from16 v66, v38

    move/from16 v63, v66

    .line 200
    move/from16 v66, v39

    move/from16 v64, v66

    .line 201
    move/from16 v66, v40

    move/from16 v65, v66

    .line 202
    move/from16 v66, v60

    move/from16 v67, v63

    mul-float v66, v66, v67

    move/from16 v67, v61

    move/from16 v68, v64

    mul-float v67, v67, v68

    add-float v66, v66, v67

    move/from16 v67, v62

    move/from16 v68, v65

    mul-float v67, v67, v68

    add-float v66, v66, v67

    move/from16 v59, v66

    .line 207
    move/from16 v66, v59

    move/from16 v67, v58

    div-float v66, v66, v67

    move/from16 v56, v66

    .line 209
    .local v56, "p2_x":F
    move/from16 v66, v53

    move/from16 v60, v66

    .line 210
    move/from16 v66, v54

    move/from16 v61, v66

    .line 211
    move/from16 v66, v55

    move/from16 v62, v66

    .line 212
    move/from16 v66, v34

    move/from16 v63, v66

    .line 213
    move/from16 v66, v35

    move/from16 v64, v66

    .line 214
    move/from16 v66, v36

    move/from16 v65, v66

    .line 215
    move/from16 v66, v60

    move/from16 v67, v63

    mul-float v66, v66, v67

    move/from16 v67, v61

    move/from16 v68, v64

    mul-float v67, v67, v68

    add-float v66, v66, v67

    move/from16 v67, v62

    move/from16 v68, v65

    mul-float v67, v67, v68

    add-float v66, v66, v67

    move/from16 v59, v66

    .line 220
    move/from16 v66, v59

    move/from16 v67, v58

    div-float v66, v66, v67

    move/from16 v57, v66

    .line 223
    .local v57, "p2_y":F
    move/from16 v66, v56

    move/from16 v64, v66

    .line 224
    .local v64, "loc_tmp_x":F
    move/from16 v66, v57

    move/from16 v65, v66

    .line 225
    .local v65, "loc_tmp_y":F
    move-object/from16 v66, v2

    move-object/from16 v67, v15

    move/from16 v68, v64

    move/from16 v69, v65

    move/from16 v70, v12

    move/from16 v71, v13

    move/from16 v72, v14

    move-object/from16 v73, v19

    invoke-virtual/range {v66 .. v73}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->lsample([IFFIII[F)V

    .line 228
    move-object/from16 v66, v19

    const/16 v67, 0x0

    aget v66, v66, v67

    move/from16 v60, v66

    .line 229
    .local v60, "sample_res_x":F
    move-object/from16 v66, v19

    const/16 v67, 0x1

    aget v66, v66, v67

    move/from16 v61, v66

    .line 230
    .local v61, "sample_res_y":F
    move-object/from16 v66, v19

    const/16 v67, 0x2

    aget v66, v66, v67

    move/from16 v62, v66

    .line 231
    .local v62, "sample_res_z":F
    move-object/from16 v66, v19

    const/16 v67, 0x3

    aget v66, v66, v67

    move/from16 v63, v66

    .line 234
    .local v63, "sample_res_w":F
    move/from16 v66, v60

    move/from16 v29, v66

    .line 235
    .local v29, "color_x":F
    move/from16 v66, v61

    move/from16 v30, v66

    .line 236
    .local v30, "color_y":F
    move/from16 v66, v62

    move/from16 v31, v66

    .line 237
    .local v31, "color_z":F
    move/from16 v66, v63

    move/from16 v32, v66

    .line 241
    .local v32, "color_w":F
    move/from16 v66, v32

    const/16 v67, 0x0

    cmpg-float v66, v66, v67

    if-gez v66, :cond_4

    const/16 v66, 0x0

    move/from16 v32, v66

    .line 242
    :cond_0
    :goto_2
    move/from16 v66, v29

    const/16 v67, 0x0

    cmpg-float v66, v66, v67

    if-gez v66, :cond_5

    const/16 v66, 0x0

    move/from16 v29, v66

    .line 243
    :cond_1
    :goto_3
    move/from16 v66, v30

    const/16 v67, 0x0

    cmpg-float v66, v66, v67

    if-gez v66, :cond_6

    const/16 v66, 0x0

    move/from16 v30, v66

    .line 244
    :cond_2
    :goto_4
    move/from16 v66, v31

    const/16 v67, 0x0

    cmpg-float v66, v66, v67

    if-gez v66, :cond_7

    const/16 v66, 0x0

    move/from16 v31, v66

    .line 245
    :cond_3
    :goto_5
    move-object/from16 v66, v27

    move/from16 v67, v28

    move/from16 v68, v51

    add-int v67, v67, v68

    move/from16 v68, v29

    const/high16 v69, 0x437f0000    # 255.0f

    mul-float v68, v68, v69

    move/from16 v0, v68

    float-to-int v0, v0

    move/from16 v68, v0

    const/16 v69, 0x10

    shl-int/lit8 v68, v68, 0x10

    move/from16 v69, v30

    const/high16 v70, 0x437f0000    # 255.0f

    mul-float v69, v69, v70

    move/from16 v0, v69

    float-to-int v0, v0

    move/from16 v69, v0

    const/16 v70, 0x8

    shl-int/lit8 v69, v69, 0x8

    or-int v68, v68, v69

    move/from16 v69, v31

    const/high16 v70, 0x437f0000    # 255.0f

    mul-float v69, v69, v70

    move/from16 v0, v69

    float-to-int v0, v0

    move/from16 v69, v0

    const/16 v70, 0x0

    shl-int/lit8 v69, v69, 0x0

    or-int v68, v68, v69

    move/from16 v69, v32

    const/high16 v70, 0x437f0000    # 255.0f

    mul-float v69, v69, v70

    move/from16 v0, v69

    float-to-int v0, v0

    move/from16 v69, v0

    const/16 v70, 0x18

    shl-int/lit8 v69, v69, 0x18

    or-int v68, v68, v69

    aput v68, v66, v67

    .line 251
    move/from16 v66, v50

    move/from16 v67, v45

    add-float v66, v66, v67

    move/from16 v50, v66

    .line 167
    add-int/lit8 v51, v51, 0x1

    goto/16 :goto_1

    .line 241
    :cond_4
    move/from16 v66, v32

    const/high16 v67, 0x3f800000    # 1.0f

    cmpl-float v66, v66, v67

    if-lez v66, :cond_0

    const/high16 v66, 0x3f800000    # 1.0f

    move/from16 v32, v66

    goto/16 :goto_2

    .line 242
    :cond_5
    move/from16 v66, v29

    move/from16 v67, v32

    cmpl-float v66, v66, v67

    if-lez v66, :cond_1

    move/from16 v66, v32

    move/from16 v29, v66

    goto/16 :goto_3

    .line 243
    :cond_6
    move/from16 v66, v30

    move/from16 v67, v32

    cmpl-float v66, v66, v67

    if-lez v66, :cond_2

    move/from16 v66, v32

    move/from16 v30, v66

    goto/16 :goto_4

    .line 244
    :cond_7
    move/from16 v66, v31

    move/from16 v67, v32

    cmpl-float v66, v66, v67

    if-lez v66, :cond_3

    move/from16 v66, v32

    move/from16 v31, v66

    goto/16 :goto_5

    .line 255
    .end local v29    # "color_x":F
    .end local v30    # "color_y":F
    .end local v31    # "color_z":F
    .end local v32    # "color_w":F
    .end local v52    # "pixcoord_x":F
    .end local v53    # "p1_x":F
    .end local v54    # "p1_y":F
    .end local v55    # "p1_z":F
    .end local v56    # "p2_x":F
    .end local v57    # "p2_y":F
    .end local v58    # "p2_z":F
    .end local v59    # "dot_res":F
    .end local v60    # "sample_res_x":F
    .end local v61    # "sample_res_y":F
    .end local v62    # "sample_res_z":F
    .end local v63    # "sample_res_w":F
    .end local v64    # "loc_tmp_x":F
    .end local v65    # "loc_tmp_y":F
    :cond_8
    move/from16 v66, v47

    move/from16 v67, v46

    add-float v66, v66, v67

    move/from16 v47, v66

    .line 160
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_0

    .line 260
    .end local v28    # "dyi":I
    .end local v49    # "pixcoord_y":F
    .end local v50    # "pos0_x":F
    .end local v51    # "dx":I
    :cond_9
    new-instance v66, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v75, v66

    move-object/from16 v66, v75

    move-object/from16 v67, v75

    move-object/from16 v68, v2

    invoke-virtual/range {v68 .. v68}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v68

    move-object/from16 v69, v25

    move-object/from16 v70, v8

    invoke-direct/range {v67 .. v70}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v66

    .end local v2    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;
    return-object v2
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;->getEffect()Lcom/sun/scenario/effect/PerspectiveTransform;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;
    return-object v0
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/PerspectiveTransform;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/PerspectiveTransform;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;
    return-object v0
.end method

.method public getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I
    .locals 13

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;
    move v1, p1

    .local v1, "inputIndex":I
    move-object v2, p2

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

    move-object v11, v7

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v11, v11

    aput v11, v9, v10

    .line 91
    move-object v9, v2

    const/4 v10, 0x1

    move-object v11, v7

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v11, v11

    aput v11, v9, v10

    .line 92
    move-object v9, v2

    const/4 v10, 0x2

    move-object v11, v7

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->x:I

    move-object v12, v7

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->width:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    aput v11, v9, v10

    .line 93
    move-object v9, v2

    const/4 v10, 0x3

    move-object v11, v7

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->y:I

    move-object v12, v7

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->height:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    aput v11, v9, v10

    .line 94
    const/4 v9, 0x4

    move v0, v9

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPerspectiveTransformPeer;
    return v0
.end method

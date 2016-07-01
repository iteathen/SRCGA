.class public Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;
.super Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer;
.source "SSEPerspectiveTransformPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;
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

.method private static native filter([IIIIII[IFFFFIIIFFFFFFFFF)V
.end method

.method private getITX()[[F
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;
    move-object v2, v0

    .line 60
    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->getEffect()Lcom/sun/scenario/effect/PerspectiveTransform;

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

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;
    return-object v0
.end method

.method private getTx0()[F
    .locals 11

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->getInputBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    move-object v1, v5

    .line 66
    .local v1, "ib":Lcom/sun/javafx/geom/Rectangle;
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

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

    invoke-direct {v5}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->getITX()[[F

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

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;
    return-object v0
.end method

.method private getTx1()[F
    .locals 11

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->getInputBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    move-object v1, v5

    .line 73
    .local v1, "ib":Lcom/sun/javafx/geom/Rectangle;
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

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

    invoke-direct {v5}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->getITX()[[F

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

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;
    return-object v0
.end method

.method private getTx2()[F
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->getITX()[[F

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;
    return-object v0
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 54

    .prologue
    .line 105
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;
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
    move-object/from16 v29, v1

    move-object/from16 v30, v2

    invoke-virtual/range {v29 .. v30}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 106
    move-object/from16 v29, v1

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    invoke-virtual/range {v29 .. v32}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v29

    move-object/from16 v7, v29

    .line 107
    .local v7, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v29, v1

    move-object/from16 v30, v7

    invoke-virtual/range {v29 .. v30}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 110
    move-object/from16 v29, v6

    const/16 v30, 0x0

    aget-object v29, v29, v30

    invoke-virtual/range {v29 .. v29}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v29

    check-cast v29, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v8, v29

    .line 111
    .local v8, "src0":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v29, 0x0

    move/from16 v9, v29

    .line 112
    .local v9, "src0x":I
    const/16 v29, 0x0

    move/from16 v10, v29

    .line 113
    .local v10, "src0y":I
    move-object/from16 v29, v8

    invoke-interface/range {v29 .. v29}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v29

    move/from16 v11, v29

    .line 114
    .local v11, "src0w":I
    move-object/from16 v29, v8

    invoke-interface/range {v29 .. v29}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v29

    move/from16 v12, v29

    .line 115
    .local v12, "src0h":I
    move-object/from16 v29, v8

    invoke-interface/range {v29 .. v29}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v29

    move/from16 v13, v29

    .line 116
    .local v13, "src0scan":I
    move-object/from16 v29, v8

    .line 117
    invoke-interface/range {v29 .. v29}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v29

    move-object/from16 v14, v29

    .line 118
    .local v14, "baseImg":[I
    new-instance v29, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v53, v29

    move-object/from16 v29, v53

    move-object/from16 v30, v53

    move/from16 v31, v9

    move/from16 v32, v10

    move/from16 v33, v11

    move/from16 v34, v12

    invoke-direct/range {v30 .. v34}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v15, v29

    .line 119
    .local v15, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v29, v6

    const/16 v30, 0x0

    aget-object v29, v29, v30

    invoke-virtual/range {v29 .. v29}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v29

    move-object/from16 v16, v29

    .line 120
    .local v16, "src0InputBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v29, v6

    const/16 v30, 0x0

    aget-object v29, v29, v30

    invoke-virtual/range {v29 .. v29}, Lcom/sun/scenario/effect/ImageData;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v29

    move-object/from16 v17, v29

    .line 121
    .local v17, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v29, v1

    const/16 v30, 0x0

    move-object/from16 v31, v16

    invoke-virtual/range {v29 .. v31}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 122
    move-object/from16 v29, v1

    const/16 v30, 0x0

    move-object/from16 v31, v15

    invoke-virtual/range {v29 .. v31}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 125
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    move-object/from16 v18, v29

    .line 126
    .local v18, "src0Rect":[F
    move-object/from16 v29, v1

    const/16 v30, 0x0

    move-object/from16 v31, v18

    move-object/from16 v32, v16

    move-object/from16 v0, v32

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v33, v16

    move-object/from16 v0, v33

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v34, v11

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v35, v12

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v36, v7

    move-object/from16 v37, v17

    invoke-virtual/range {v29 .. v37}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v29

    .line 132
    const/16 v29, 0x0

    move/from16 v19, v29

    .line 133
    .local v19, "dstx":I
    const/16 v29, 0x0

    move/from16 v20, v29

    .line 134
    .local v20, "dsty":I
    move-object/from16 v29, v7

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v29, v0

    move/from16 v21, v29

    .line 135
    .local v21, "dstw":I
    move-object/from16 v29, v7

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v29, v0

    move/from16 v22, v29

    .line 137
    .local v22, "dsth":I
    move-object/from16 v29, v1

    invoke-virtual/range {v29 .. v29}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v29

    move/from16 v30, v21

    move/from16 v31, v22

    invoke-virtual/range {v29 .. v31}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v29

    check-cast v29, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v23, v29

    .line 138
    .local v23, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v29, v1

    move-object/from16 v30, v23

    invoke-interface/range {v30 .. v30}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v30

    move-object/from16 v31, v23

    invoke-interface/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->setDestNativeBounds(II)V

    .line 139
    move-object/from16 v29, v23

    invoke-interface/range {v29 .. v29}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v29

    move/from16 v24, v29

    .line 140
    .local v24, "dstscan":I
    move-object/from16 v29, v23

    invoke-interface/range {v29 .. v29}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v29

    move-object/from16 v25, v29

    .line 142
    .local v25, "dstPixels":[I
    move-object/from16 v29, v1

    invoke-direct/range {v29 .. v29}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->getTx0()[F

    move-result-object v29

    move-object/from16 v26, v29

    .line 143
    .local v26, "tx0_arr":[F
    move-object/from16 v29, v1

    invoke-direct/range {v29 .. v29}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->getTx1()[F

    move-result-object v29

    move-object/from16 v27, v29

    .line 144
    .local v27, "tx1_arr":[F
    move-object/from16 v29, v1

    invoke-direct/range {v29 .. v29}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->getTx2()[F

    move-result-object v29

    move-object/from16 v28, v29

    .line 147
    .local v28, "tx2_arr":[F
    move-object/from16 v29, v25

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v32, v21

    move/from16 v33, v22

    move/from16 v34, v24

    move-object/from16 v35, v14

    move-object/from16 v36, v18

    const/16 v37, 0x0

    aget v36, v36, v37

    move-object/from16 v37, v18

    const/16 v38, 0x1

    aget v37, v37, v38

    move-object/from16 v38, v18

    const/16 v39, 0x2

    aget v38, v38, v39

    move-object/from16 v39, v18

    const/16 v40, 0x3

    aget v39, v39, v40

    move/from16 v40, v11

    move/from16 v41, v12

    move/from16 v42, v13

    move-object/from16 v43, v26

    const/16 v44, 0x0

    aget v43, v43, v44

    move-object/from16 v44, v26

    const/16 v45, 0x1

    aget v44, v44, v45

    move-object/from16 v45, v26

    const/16 v46, 0x2

    aget v45, v45, v46

    move-object/from16 v46, v27

    const/16 v47, 0x0

    aget v46, v46, v47

    move-object/from16 v47, v27

    const/16 v48, 0x1

    aget v47, v47, v48

    move-object/from16 v48, v27

    const/16 v49, 0x2

    aget v48, v48, v49

    move-object/from16 v49, v28

    const/16 v50, 0x0

    aget v49, v49, v50

    move-object/from16 v50, v28

    const/16 v51, 0x1

    aget v50, v50, v51

    move-object/from16 v51, v28

    const/16 v52, 0x2

    aget v51, v51, v52

    invoke-static/range {v29 .. v51}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->filter([IIIIII[IFFFFIIIFFFFFFFFF)V

    .line 157
    new-instance v29, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v53, v29

    move-object/from16 v29, v53

    move-object/from16 v30, v53

    move-object/from16 v31, v1

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v31

    move-object/from16 v32, v23

    move-object/from16 v33, v7

    invoke-direct/range {v30 .. v33}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v1, v29

    .end local v1    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;
    return-object v1
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;->getEffect()Lcom/sun/scenario/effect/PerspectiveTransform;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;
    return-object v0
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/PerspectiveTransform;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/PerspectiveTransform;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;
    return-object v0
.end method

.method public getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I
    .locals 13

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;
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

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPerspectiveTransformPeer;
    return v0
.end method

.class public Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;
.super Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer;
.source "SSEBlend_COLOR_DODGEPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;
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

.method private static native filter([IIIIII[IFFFFIIIF[IFFFFIII)V
.end method

.method private getOpacity()F
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;->getEffect()Lcom/sun/scenario/effect/Blend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Blend;->getOpacity()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;
    return v0
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 62

    .prologue
    .line 70
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;
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
    move-object/from16 v38, v1

    move-object/from16 v39, v2

    invoke-virtual/range {v38 .. v39}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 71
    move-object/from16 v38, v1

    move-object/from16 v39, v4

    move-object/from16 v40, v5

    move-object/from16 v41, v6

    invoke-virtual/range {v38 .. v41}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v38

    move-object/from16 v7, v38

    .line 72
    .local v7, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v38, v1

    move-object/from16 v39, v7

    invoke-virtual/range {v38 .. v39}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 75
    move-object/from16 v38, v6

    const/16 v39, 0x0

    aget-object v38, v38, v39

    move-object/from16 v39, v7

    invoke-virtual/range {v38 .. v39}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v38

    check-cast v38, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v8, v38

    .line 76
    .local v8, "src0":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v38, 0x0

    move/from16 v9, v38

    .line 77
    .local v9, "src0x":I
    const/16 v38, 0x0

    move/from16 v10, v38

    .line 78
    .local v10, "src0y":I
    move-object/from16 v38, v8

    invoke-interface/range {v38 .. v38}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v38

    move/from16 v11, v38

    .line 79
    .local v11, "src0w":I
    move-object/from16 v38, v8

    invoke-interface/range {v38 .. v38}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v38

    move/from16 v12, v38

    .line 80
    .local v12, "src0h":I
    move-object/from16 v38, v8

    invoke-interface/range {v38 .. v38}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v38

    move/from16 v13, v38

    .line 81
    .local v13, "src0scan":I
    move-object/from16 v38, v8

    .line 82
    invoke-interface/range {v38 .. v38}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v38

    move-object/from16 v14, v38

    .line 83
    .local v14, "botImg":[I
    new-instance v38, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v61, v38

    move-object/from16 v38, v61

    move-object/from16 v39, v61

    move/from16 v40, v9

    move/from16 v41, v10

    move/from16 v42, v11

    move/from16 v43, v12

    invoke-direct/range {v39 .. v43}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v15, v38

    .line 84
    .local v15, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v38, v6

    const/16 v39, 0x0

    aget-object v38, v38, v39

    move-object/from16 v39, v7

    invoke-virtual/range {v38 .. v39}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v38

    move-object/from16 v16, v38

    .line 85
    .local v16, "src0InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v38, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v17, v38

    .line 86
    .local v17, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v38, v1

    const/16 v39, 0x0

    move-object/from16 v40, v16

    invoke-virtual/range {v38 .. v40}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 87
    move-object/from16 v38, v1

    const/16 v39, 0x0

    move-object/from16 v40, v15

    invoke-virtual/range {v38 .. v40}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 88
    move-object/from16 v38, v6

    const/16 v39, 0x1

    aget-object v38, v38, v39

    move-object/from16 v39, v7

    invoke-virtual/range {v38 .. v39}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v38

    check-cast v38, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v18, v38

    .line 89
    .local v18, "src1":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v38, 0x0

    move/from16 v19, v38

    .line 90
    .local v19, "src1x":I
    const/16 v38, 0x0

    move/from16 v20, v38

    .line 91
    .local v20, "src1y":I
    move-object/from16 v38, v18

    invoke-interface/range {v38 .. v38}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v38

    move/from16 v21, v38

    .line 92
    .local v21, "src1w":I
    move-object/from16 v38, v18

    invoke-interface/range {v38 .. v38}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v38

    move/from16 v22, v38

    .line 93
    .local v22, "src1h":I
    move-object/from16 v38, v18

    invoke-interface/range {v38 .. v38}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v38

    move/from16 v23, v38

    .line 94
    .local v23, "src1scan":I
    move-object/from16 v38, v18

    .line 95
    invoke-interface/range {v38 .. v38}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v38

    move-object/from16 v24, v38

    .line 96
    .local v24, "topImg":[I
    new-instance v38, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v61, v38

    move-object/from16 v38, v61

    move-object/from16 v39, v61

    move/from16 v40, v19

    move/from16 v41, v20

    move/from16 v42, v21

    move/from16 v43, v22

    invoke-direct/range {v39 .. v43}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v25, v38

    .line 97
    .local v25, "src1Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v38, v6

    const/16 v39, 0x1

    aget-object v38, v38, v39

    move-object/from16 v39, v7

    invoke-virtual/range {v38 .. v39}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v38

    move-object/from16 v26, v38

    .line 98
    .local v26, "src1InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v38, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v27, v38

    .line 99
    .local v27, "src1Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v38, v1

    const/16 v39, 0x1

    move-object/from16 v40, v26

    invoke-virtual/range {v38 .. v40}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 100
    move-object/from16 v38, v1

    const/16 v39, 0x1

    move-object/from16 v40, v25

    invoke-virtual/range {v38 .. v40}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 103
    const/16 v38, 0x4

    move/from16 v0, v38

    new-array v0, v0, [F

    move-object/from16 v38, v0

    move-object/from16 v28, v38

    .line 104
    .local v28, "src0Rect":[F
    move-object/from16 v38, v1

    const/16 v39, 0x0

    move-object/from16 v40, v28

    move-object/from16 v41, v16

    move-object/from16 v0, v41

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move-object/from16 v42, v16

    move-object/from16 v0, v42

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move/from16 v43, v11

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move/from16 v44, v12

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    move-object/from16 v45, v7

    move-object/from16 v46, v17

    invoke-virtual/range {v38 .. v46}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v38

    .line 108
    const/16 v38, 0x4

    move/from16 v0, v38

    new-array v0, v0, [F

    move-object/from16 v38, v0

    move-object/from16 v29, v38

    .line 109
    .local v29, "src1Rect":[F
    move-object/from16 v38, v1

    const/16 v39, 0x1

    move-object/from16 v40, v29

    move-object/from16 v41, v26

    move-object/from16 v0, v41

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move-object/from16 v42, v26

    move-object/from16 v0, v42

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move/from16 v43, v21

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move/from16 v44, v22

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    move-object/from16 v45, v7

    move-object/from16 v46, v27

    invoke-virtual/range {v38 .. v46}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v38

    .line 115
    const/16 v38, 0x0

    move/from16 v30, v38

    .line 116
    .local v30, "dstx":I
    const/16 v38, 0x0

    move/from16 v31, v38

    .line 117
    .local v31, "dsty":I
    move-object/from16 v38, v7

    move-object/from16 v0, v38

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v38, v0

    move/from16 v32, v38

    .line 118
    .local v32, "dstw":I
    move-object/from16 v38, v7

    move-object/from16 v0, v38

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v38, v0

    move/from16 v33, v38

    .line 120
    .local v33, "dsth":I
    move-object/from16 v38, v1

    invoke-virtual/range {v38 .. v38}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v38

    move/from16 v39, v32

    move/from16 v40, v33

    invoke-virtual/range {v38 .. v40}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v38

    check-cast v38, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v34, v38

    .line 121
    .local v34, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v38, v1

    move-object/from16 v39, v34

    invoke-interface/range {v39 .. v39}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v39

    move-object/from16 v40, v34

    invoke-interface/range {v40 .. v40}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v40

    invoke-virtual/range {v38 .. v40}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;->setDestNativeBounds(II)V

    .line 122
    move-object/from16 v38, v34

    invoke-interface/range {v38 .. v38}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v38

    move/from16 v35, v38

    .line 123
    .local v35, "dstscan":I
    move-object/from16 v38, v34

    invoke-interface/range {v38 .. v38}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v38

    move-object/from16 v36, v38

    .line 125
    .local v36, "dstPixels":[I
    move-object/from16 v38, v1

    invoke-direct/range {v38 .. v38}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;->getOpacity()F

    move-result v38

    move/from16 v37, v38

    .line 128
    .local v37, "opacity":F
    move-object/from16 v38, v36

    const/16 v39, 0x0

    const/16 v40, 0x0

    move/from16 v41, v32

    move/from16 v42, v33

    move/from16 v43, v35

    move-object/from16 v44, v14

    move-object/from16 v45, v28

    const/16 v46, 0x0

    aget v45, v45, v46

    move-object/from16 v46, v28

    const/16 v47, 0x1

    aget v46, v46, v47

    move-object/from16 v47, v28

    const/16 v48, 0x2

    aget v47, v47, v48

    move-object/from16 v48, v28

    const/16 v49, 0x3

    aget v48, v48, v49

    move/from16 v49, v11

    move/from16 v50, v12

    move/from16 v51, v13

    move/from16 v52, v37

    move-object/from16 v53, v24

    move-object/from16 v54, v29

    const/16 v55, 0x0

    aget v54, v54, v55

    move-object/from16 v55, v29

    const/16 v56, 0x1

    aget v55, v55, v56

    move-object/from16 v56, v29

    const/16 v57, 0x2

    aget v56, v56, v57

    move-object/from16 v57, v29

    const/16 v58, 0x3

    aget v57, v57, v58

    move/from16 v58, v21

    move/from16 v59, v22

    move/from16 v60, v23

    invoke-static/range {v38 .. v60}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;->filter([IIIIII[IFFFFIIIF[IFFFFIII)V

    .line 139
    move-object/from16 v38, v6

    const/16 v39, 0x0

    aget-object v38, v38, v39

    move-object/from16 v39, v8

    invoke-virtual/range {v38 .. v39}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 140
    move-object/from16 v38, v6

    const/16 v39, 0x1

    aget-object v38, v38, v39

    move-object/from16 v39, v18

    invoke-virtual/range {v38 .. v39}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 143
    new-instance v38, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v61, v38

    move-object/from16 v38, v61

    move-object/from16 v39, v61

    move-object/from16 v40, v1

    invoke-virtual/range {v40 .. v40}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v40

    move-object/from16 v41, v34

    move-object/from16 v42, v7

    invoke-direct/range {v39 .. v42}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v1, v38

    .end local v1    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;
    return-object v1
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/Blend;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Blend;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;
    return-object v0
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;->getEffect()Lcom/sun/scenario/effect/Blend;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEBlend_COLOR_DODGEPeer;
    return-object v0
.end method

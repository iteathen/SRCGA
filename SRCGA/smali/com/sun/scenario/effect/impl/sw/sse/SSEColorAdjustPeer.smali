.class public Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;
.super Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer;
.source "SSEColorAdjustPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;
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

.method private static native filter([IIIIII[IFFFFIIIFFFF)V
.end method

.method private getBrightness()F
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;->getEffect()Lcom/sun/scenario/effect/ColorAdjust;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/ColorAdjust;->getBrightness()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;
    return v0
.end method

.method private getContrast()F
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;->getEffect()Lcom/sun/scenario/effect/ColorAdjust;

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

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;
    return v0
.end method

.method private getHue()F
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;->getEffect()Lcom/sun/scenario/effect/ColorAdjust;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/ColorAdjust;->getHue()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;
    return v0
.end method

.method private getSaturation()F
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;->getEffect()Lcom/sun/scenario/effect/ColorAdjust;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/ColorAdjust;->getSaturation()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;
    return v0
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 49

    .prologue
    .line 84
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;
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
    move-object/from16 v30, v1

    move-object/from16 v31, v2

    invoke-virtual/range {v30 .. v31}, Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 85
    move-object/from16 v30, v1

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    invoke-virtual/range {v30 .. v33}, Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v30

    move-object/from16 v7, v30

    .line 86
    .local v7, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v30, v1

    move-object/from16 v31, v7

    invoke-virtual/range {v30 .. v31}, Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 89
    move-object/from16 v30, v6

    const/16 v31, 0x0

    aget-object v30, v30, v31

    move-object/from16 v31, v7

    invoke-virtual/range {v30 .. v31}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v30

    check-cast v30, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v8, v30

    .line 90
    .local v8, "src0":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v30, 0x0

    move/from16 v9, v30

    .line 91
    .local v9, "src0x":I
    const/16 v30, 0x0

    move/from16 v10, v30

    .line 92
    .local v10, "src0y":I
    move-object/from16 v30, v8

    invoke-interface/range {v30 .. v30}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v30

    move/from16 v11, v30

    .line 93
    .local v11, "src0w":I
    move-object/from16 v30, v8

    invoke-interface/range {v30 .. v30}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v30

    move/from16 v12, v30

    .line 94
    .local v12, "src0h":I
    move-object/from16 v30, v8

    invoke-interface/range {v30 .. v30}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v30

    move/from16 v13, v30

    .line 95
    .local v13, "src0scan":I
    move-object/from16 v30, v8

    .line 96
    invoke-interface/range {v30 .. v30}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v30

    move-object/from16 v14, v30

    .line 97
    .local v14, "baseImg":[I
    new-instance v30, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v48, v30

    move-object/from16 v30, v48

    move-object/from16 v31, v48

    move/from16 v32, v9

    move/from16 v33, v10

    move/from16 v34, v11

    move/from16 v35, v12

    invoke-direct/range {v31 .. v35}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v15, v30

    .line 98
    .local v15, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v30, v6

    const/16 v31, 0x0

    aget-object v30, v30, v31

    move-object/from16 v31, v7

    invoke-virtual/range {v30 .. v31}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v30

    move-object/from16 v16, v30

    .line 99
    .local v16, "src0InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v30, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v17, v30

    .line 100
    .local v17, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v30, v1

    const/16 v31, 0x0

    move-object/from16 v32, v16

    invoke-virtual/range {v30 .. v32}, Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 101
    move-object/from16 v30, v1

    const/16 v31, 0x0

    move-object/from16 v32, v15

    invoke-virtual/range {v30 .. v32}, Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 104
    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v30, v0

    move-object/from16 v18, v30

    .line 105
    .local v18, "src0Rect":[F
    move-object/from16 v30, v1

    const/16 v31, 0x0

    move-object/from16 v32, v18

    move-object/from16 v33, v16

    move-object/from16 v0, v33

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v34, v16

    move-object/from16 v0, v34

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v35, v11

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v36, v12

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v37, v7

    move-object/from16 v38, v17

    invoke-virtual/range {v30 .. v38}, Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v30

    .line 111
    const/16 v30, 0x0

    move/from16 v19, v30

    .line 112
    .local v19, "dstx":I
    const/16 v30, 0x0

    move/from16 v20, v30

    .line 113
    .local v20, "dsty":I
    move-object/from16 v30, v7

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v30, v0

    move/from16 v21, v30

    .line 114
    .local v21, "dstw":I
    move-object/from16 v30, v7

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v30, v0

    move/from16 v22, v30

    .line 116
    .local v22, "dsth":I
    move-object/from16 v30, v1

    invoke-virtual/range {v30 .. v30}, Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v30

    move/from16 v31, v21

    move/from16 v32, v22

    invoke-virtual/range {v30 .. v32}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v30

    check-cast v30, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v23, v30

    .line 117
    .local v23, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v30, v1

    move-object/from16 v31, v23

    invoke-interface/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v31

    move-object/from16 v32, v23

    invoke-interface/range {v32 .. v32}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v32

    invoke-virtual/range {v30 .. v32}, Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;->setDestNativeBounds(II)V

    .line 118
    move-object/from16 v30, v23

    invoke-interface/range {v30 .. v30}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v30

    move/from16 v24, v30

    .line 119
    .local v24, "dstscan":I
    move-object/from16 v30, v23

    invoke-interface/range {v30 .. v30}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v30

    move-object/from16 v25, v30

    .line 121
    .local v25, "dstPixels":[I
    move-object/from16 v30, v1

    invoke-direct/range {v30 .. v30}, Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;->getBrightness()F

    move-result v30

    move/from16 v26, v30

    .line 122
    .local v26, "brightness":F
    move-object/from16 v30, v1

    invoke-direct/range {v30 .. v30}, Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;->getContrast()F

    move-result v30

    move/from16 v27, v30

    .line 123
    .local v27, "contrast":F
    move-object/from16 v30, v1

    invoke-direct/range {v30 .. v30}, Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;->getHue()F

    move-result v30

    move/from16 v28, v30

    .line 124
    .local v28, "hue":F
    move-object/from16 v30, v1

    invoke-direct/range {v30 .. v30}, Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;->getSaturation()F

    move-result v30

    move/from16 v29, v30

    .line 127
    .local v29, "saturation":F
    move-object/from16 v30, v25

    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v33, v21

    move/from16 v34, v22

    move/from16 v35, v24

    move-object/from16 v36, v14

    move-object/from16 v37, v18

    const/16 v38, 0x0

    aget v37, v37, v38

    move-object/from16 v38, v18

    const/16 v39, 0x1

    aget v38, v38, v39

    move-object/from16 v39, v18

    const/16 v40, 0x2

    aget v39, v39, v40

    move-object/from16 v40, v18

    const/16 v41, 0x3

    aget v40, v40, v41

    move/from16 v41, v11

    move/from16 v42, v12

    move/from16 v43, v13

    move/from16 v44, v26

    move/from16 v45, v27

    move/from16 v46, v28

    move/from16 v47, v29

    invoke-static/range {v30 .. v47}, Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;->filter([IIIIII[IFFFFIIIFFFF)V

    .line 137
    move-object/from16 v30, v6

    const/16 v31, 0x0

    aget-object v30, v30, v31

    move-object/from16 v31, v8

    invoke-virtual/range {v30 .. v31}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 140
    new-instance v30, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v48, v30

    move-object/from16 v30, v48

    move-object/from16 v31, v48

    move-object/from16 v32, v1

    invoke-virtual/range {v32 .. v32}, Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v32

    move-object/from16 v33, v23

    move-object/from16 v34, v7

    invoke-direct/range {v31 .. v34}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v1, v30

    .end local v1    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;
    return-object v1
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/ColorAdjust;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/ColorAdjust;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;
    return-object v0
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;->getEffect()Lcom/sun/scenario/effect/ColorAdjust;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEColorAdjustPeer;
    return-object v0
.end method

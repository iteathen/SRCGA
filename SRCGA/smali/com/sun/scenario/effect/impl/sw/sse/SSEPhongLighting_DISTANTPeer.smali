.class public Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
.super Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer;
.source "SSEPhongLighting_DISTANTPeer.java"


# instance fields
.field private kvals:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
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

.method private static native filter([IIIIII[IFFFFIIIF[FFFFFFF[IFFFFIIIFF)V
.end method

.method private getDiffuseConstant()F
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getDiffuseConstant()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    return v0
.end method

.method private getKvals()Ljava/nio/FloatBuffer;
    .locals 13

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v10

    move-object v1, v10

    .line 100
    .local v1, "bumpImgBounds":Lcom/sun/javafx/geom/Rectangle;
    const/high16 v10, 0x3f800000    # 1.0f

    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    move v2, v10

    .line 101
    .local v2, "xoff":F
    const/high16 v10, 0x3f800000    # 1.0f

    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    move v3, v10

    .line 103
    .local v3, "yoff":F
    const/16 v10, 0x9

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    move-object v4, v10

    .line 108
    .local v4, "kx":[F
    const/16 v10, 0x9

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    move-object v5, v10

    .line 113
    .local v5, "ky":[F
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->kvals:Ljava/nio/FloatBuffer;

    if-nez v10, :cond_0

    .line 114
    move-object v10, v0

    const/16 v11, 0x20

    invoke-static {v11}, Lcom/sun/scenario/effect/impl/BufferUtil;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->kvals:Ljava/nio/FloatBuffer;

    .line 116
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->kvals:Ljava/nio/FloatBuffer;

    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v10

    .line 117
    const/4 v10, 0x0

    move v6, v10

    .line 118
    .local v6, "kidx":I
    move-object v10, v0

    invoke-direct {v10}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getSurfaceScale()F

    move-result v10

    neg-float v10, v10

    const/high16 v11, 0x3e800000    # 0.25f

    mul-float/2addr v10, v11

    move v7, v10

    .line 119
    .local v7, "factor":F
    const/4 v10, -0x1

    move v8, v10

    .local v8, "i":I
    :goto_0
    move v10, v8

    const/4 v11, 0x1

    if-gt v10, v11, :cond_4

    .line 120
    const/4 v10, -0x1

    move v9, v10

    .local v9, "j":I
    :goto_1
    move v10, v9

    const/4 v11, 0x1

    if-gt v10, v11, :cond_3

    .line 121
    move v10, v8

    if-nez v10, :cond_1

    move v10, v9

    if-eqz v10, :cond_2

    .line 122
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->kvals:Ljava/nio/FloatBuffer;

    move v11, v9

    int-to-float v11, v11

    move v12, v2

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 123
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->kvals:Ljava/nio/FloatBuffer;

    move v11, v8

    int-to-float v11, v11

    move v12, v3

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 124
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->kvals:Ljava/nio/FloatBuffer;

    move-object v11, v4

    move v12, v6

    aget v11, v11, v12

    move v12, v7

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 125
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->kvals:Ljava/nio/FloatBuffer;

    move-object v11, v5

    move v12, v6

    aget v11, v11, v12

    move v12, v7

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 127
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 120
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 119
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 130
    .end local v9    # "j":I
    :cond_4
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->kvals:Ljava/nio/FloatBuffer;

    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v10

    .line 131
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->kvals:Ljava/nio/FloatBuffer;

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    return-object v0

    .line 103
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40000000    # -2.0f
        0x0
        0x40000000    # 2.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 108
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40000000    # -2.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getKvalsArrayLength()I
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    const/16 v1, 0x8

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    return v0
.end method

.method private getLightColor()[F
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/Light;->getColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Color4f;->getPremultipliedRGBComponents()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    return-object v0
.end method

.method private getLightPosition()[F
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    move-object v2, v0

    .line 82
    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v2

    check-cast v2, Lcom/sun/scenario/effect/light/PointLight;

    move-object v1, v2

    .line 83
    .local v1, "plight":Lcom/sun/scenario/effect/light/PointLight;
    const/4 v2, 0x3

    new-array v2, v2, [F

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/scenario/effect/light/PointLight;->getX()F

    move-result v5

    aput v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/scenario/effect/light/PointLight;->getY()F

    move-result v5

    aput v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/scenario/effect/light/PointLight;->getZ()F

    move-result v5

    aput v5, v3, v4

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    return-object v0
.end method

.method private getLightSpecularExponent()F
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/light/SpotLight;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/SpotLight;->getSpecularExponent()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    return v0
.end method

.method private getNormalizedLightDirection()[F
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/light/SpotLight;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/SpotLight;->getNormalizedLightDirection()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    return-object v0
.end method

.method private getNormalizedLightPosition()[F
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/Light;->getNormalizedLightPosition()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    return-object v0
.end method

.method private getSpecularConstant()F
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getSpecularConstant()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    return v0
.end method

.method private getSpecularExponent()F
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getSpecularExponent()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    return v0
.end method

.method private getSurfaceScale()F
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getSurfaceScale()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    return v0
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 77

    .prologue
    .line 146
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
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
    move-object/from16 v44, v1

    move-object/from16 v45, v2

    invoke-virtual/range {v44 .. v45}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 147
    move-object/from16 v44, v1

    move-object/from16 v45, v4

    move-object/from16 v46, v5

    move-object/from16 v47, v6

    invoke-virtual/range {v44 .. v47}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v44

    move-object/from16 v7, v44

    .line 148
    .local v7, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v44, v1

    move-object/from16 v45, v7

    invoke-virtual/range {v44 .. v45}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 151
    move-object/from16 v44, v6

    const/16 v45, 0x0

    aget-object v44, v44, v45

    move-object/from16 v45, v7

    invoke-virtual/range {v44 .. v45}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v44

    check-cast v44, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v8, v44

    .line 152
    .local v8, "src0":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v44, 0x0

    move/from16 v9, v44

    .line 153
    .local v9, "src0x":I
    const/16 v44, 0x0

    move/from16 v10, v44

    .line 154
    .local v10, "src0y":I
    move-object/from16 v44, v8

    invoke-interface/range {v44 .. v44}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v44

    move/from16 v11, v44

    .line 155
    .local v11, "src0w":I
    move-object/from16 v44, v8

    invoke-interface/range {v44 .. v44}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v44

    move/from16 v12, v44

    .line 156
    .local v12, "src0h":I
    move-object/from16 v44, v8

    invoke-interface/range {v44 .. v44}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v44

    move/from16 v13, v44

    .line 157
    .local v13, "src0scan":I
    move-object/from16 v44, v8

    .line 158
    invoke-interface/range {v44 .. v44}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v44

    move-object/from16 v14, v44

    .line 159
    .local v14, "bumpImg":[I
    new-instance v44, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v76, v44

    move-object/from16 v44, v76

    move-object/from16 v45, v76

    move/from16 v46, v9

    move/from16 v47, v10

    move/from16 v48, v11

    move/from16 v49, v12

    invoke-direct/range {v45 .. v49}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v15, v44

    .line 160
    .local v15, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v44, v6

    const/16 v45, 0x0

    aget-object v44, v44, v45

    move-object/from16 v45, v7

    invoke-virtual/range {v44 .. v45}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v44

    move-object/from16 v16, v44

    .line 161
    .local v16, "src0InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v44, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v17, v44

    .line 162
    .local v17, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v44, v1

    const/16 v45, 0x0

    move-object/from16 v46, v16

    invoke-virtual/range {v44 .. v46}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 163
    move-object/from16 v44, v1

    const/16 v45, 0x0

    move-object/from16 v46, v15

    invoke-virtual/range {v44 .. v46}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 164
    move-object/from16 v44, v6

    const/16 v45, 0x1

    aget-object v44, v44, v45

    move-object/from16 v45, v7

    invoke-virtual/range {v44 .. v45}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v44

    check-cast v44, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v18, v44

    .line 165
    .local v18, "src1":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v44, 0x0

    move/from16 v19, v44

    .line 166
    .local v19, "src1x":I
    const/16 v44, 0x0

    move/from16 v20, v44

    .line 167
    .local v20, "src1y":I
    move-object/from16 v44, v18

    invoke-interface/range {v44 .. v44}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v44

    move/from16 v21, v44

    .line 168
    .local v21, "src1w":I
    move-object/from16 v44, v18

    invoke-interface/range {v44 .. v44}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v44

    move/from16 v22, v44

    .line 169
    .local v22, "src1h":I
    move-object/from16 v44, v18

    invoke-interface/range {v44 .. v44}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v44

    move/from16 v23, v44

    .line 170
    .local v23, "src1scan":I
    move-object/from16 v44, v18

    .line 171
    invoke-interface/range {v44 .. v44}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v44

    move-object/from16 v24, v44

    .line 172
    .local v24, "origImg":[I
    new-instance v44, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v76, v44

    move-object/from16 v44, v76

    move-object/from16 v45, v76

    move/from16 v46, v19

    move/from16 v47, v20

    move/from16 v48, v21

    move/from16 v49, v22

    invoke-direct/range {v45 .. v49}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v25, v44

    .line 173
    .local v25, "src1Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v44, v6

    const/16 v45, 0x1

    aget-object v44, v44, v45

    move-object/from16 v45, v7

    invoke-virtual/range {v44 .. v45}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v44

    move-object/from16 v26, v44

    .line 174
    .local v26, "src1InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v44, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v27, v44

    .line 175
    .local v27, "src1Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v44, v1

    const/16 v45, 0x1

    move-object/from16 v46, v26

    invoke-virtual/range {v44 .. v46}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 176
    move-object/from16 v44, v1

    const/16 v45, 0x1

    move-object/from16 v46, v25

    invoke-virtual/range {v44 .. v46}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 179
    const/16 v44, 0x4

    move/from16 v0, v44

    new-array v0, v0, [F

    move-object/from16 v44, v0

    move-object/from16 v28, v44

    .line 180
    .local v28, "src0Rect":[F
    move-object/from16 v44, v1

    const/16 v45, 0x0

    move-object/from16 v46, v28

    move-object/from16 v47, v16

    move-object/from16 v0, v47

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v47, v0

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    move-object/from16 v48, v16

    move-object/from16 v0, v48

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move/from16 v49, v11

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    move/from16 v50, v12

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    move-object/from16 v51, v7

    move-object/from16 v52, v17

    invoke-virtual/range {v44 .. v52}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v44

    .line 184
    const/16 v44, 0x4

    move/from16 v0, v44

    new-array v0, v0, [F

    move-object/from16 v44, v0

    move-object/from16 v29, v44

    .line 185
    .local v29, "src1Rect":[F
    move-object/from16 v44, v1

    const/16 v45, 0x1

    move-object/from16 v46, v29

    move-object/from16 v47, v26

    move-object/from16 v0, v47

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v47, v0

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    move-object/from16 v48, v26

    move-object/from16 v0, v48

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move/from16 v49, v21

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    move/from16 v50, v22

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    move-object/from16 v51, v7

    move-object/from16 v52, v27

    invoke-virtual/range {v44 .. v52}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v44

    .line 191
    const/16 v44, 0x0

    move/from16 v30, v44

    .line 192
    .local v30, "dstx":I
    const/16 v44, 0x0

    move/from16 v31, v44

    .line 193
    .local v31, "dsty":I
    move-object/from16 v44, v7

    move-object/from16 v0, v44

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v44, v0

    move/from16 v32, v44

    .line 194
    .local v32, "dstw":I
    move-object/from16 v44, v7

    move-object/from16 v0, v44

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v44, v0

    move/from16 v33, v44

    .line 196
    .local v33, "dsth":I
    move-object/from16 v44, v1

    invoke-virtual/range {v44 .. v44}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v44

    move/from16 v45, v32

    move/from16 v46, v33

    invoke-virtual/range {v44 .. v46}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v44

    check-cast v44, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v34, v44

    .line 197
    .local v34, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v44, v1

    move-object/from16 v45, v34

    invoke-interface/range {v45 .. v45}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v45

    move-object/from16 v46, v34

    invoke-interface/range {v46 .. v46}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->setDestNativeBounds(II)V

    .line 198
    move-object/from16 v44, v34

    invoke-interface/range {v44 .. v44}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v44

    move/from16 v35, v44

    .line 199
    .local v35, "dstscan":I
    move-object/from16 v44, v34

    invoke-interface/range {v44 .. v44}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v44

    move-object/from16 v36, v44

    .line 201
    .local v36, "dstPixels":[I
    move-object/from16 v44, v1

    invoke-direct/range {v44 .. v44}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getDiffuseConstant()F

    move-result v44

    move/from16 v37, v44

    .line 202
    .local v37, "diffuseConstant":F
    move-object/from16 v44, v1

    invoke-direct/range {v44 .. v44}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getKvals()Ljava/nio/FloatBuffer;

    move-result-object v44

    move-object/from16 v38, v44

    .line 203
    .local v38, "kvals_buf":Ljava/nio/FloatBuffer;
    move-object/from16 v44, v38

    invoke-virtual/range {v44 .. v44}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v44

    move/from16 v0, v44

    new-array v0, v0, [F

    move-object/from16 v44, v0

    move-object/from16 v39, v44

    .line 204
    .local v39, "kvals_arr":[F
    move-object/from16 v44, v38

    move-object/from16 v45, v39

    invoke-virtual/range {v44 .. v45}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    move-result-object v44

    .line 205
    move-object/from16 v44, v1

    invoke-direct/range {v44 .. v44}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getLightColor()[F

    move-result-object v44

    move-object/from16 v40, v44

    .line 206
    .local v40, "lightColor_arr":[F
    move-object/from16 v44, v1

    invoke-direct/range {v44 .. v44}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getNormalizedLightPosition()[F

    move-result-object v44

    move-object/from16 v41, v44

    .line 207
    .local v41, "normalizedLightPosition_arr":[F
    move-object/from16 v44, v1

    invoke-direct/range {v44 .. v44}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getSpecularConstant()F

    move-result v44

    move/from16 v42, v44

    .line 208
    .local v42, "specularConstant":F
    move-object/from16 v44, v1

    invoke-direct/range {v44 .. v44}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getSpecularExponent()F

    move-result v44

    move/from16 v43, v44

    .line 211
    .local v43, "specularExponent":F
    move-object/from16 v44, v36

    const/16 v45, 0x0

    const/16 v46, 0x0

    move/from16 v47, v32

    move/from16 v48, v33

    move/from16 v49, v35

    move-object/from16 v50, v14

    move-object/from16 v51, v28

    const/16 v52, 0x0

    aget v51, v51, v52

    move-object/from16 v52, v28

    const/16 v53, 0x1

    aget v52, v52, v53

    move-object/from16 v53, v28

    const/16 v54, 0x2

    aget v53, v53, v54

    move-object/from16 v54, v28

    const/16 v55, 0x3

    aget v54, v54, v55

    move/from16 v55, v11

    move/from16 v56, v12

    move/from16 v57, v13

    move/from16 v58, v37

    move-object/from16 v59, v39

    move-object/from16 v60, v40

    const/16 v61, 0x0

    aget v60, v60, v61

    move-object/from16 v61, v40

    const/16 v62, 0x1

    aget v61, v61, v62

    move-object/from16 v62, v40

    const/16 v63, 0x2

    aget v62, v62, v63

    move-object/from16 v63, v41

    const/16 v64, 0x0

    aget v63, v63, v64

    move-object/from16 v64, v41

    const/16 v65, 0x1

    aget v64, v64, v65

    move-object/from16 v65, v41

    const/16 v66, 0x2

    aget v65, v65, v66

    move-object/from16 v66, v24

    move-object/from16 v67, v29

    const/16 v68, 0x0

    aget v67, v67, v68

    move-object/from16 v68, v29

    const/16 v69, 0x1

    aget v68, v68, v69

    move-object/from16 v69, v29

    const/16 v70, 0x2

    aget v69, v69, v70

    move-object/from16 v70, v29

    const/16 v71, 0x3

    aget v70, v70, v71

    move/from16 v71, v21

    move/from16 v72, v22

    move/from16 v73, v23

    move/from16 v74, v42

    move/from16 v75, v43

    invoke-static/range {v44 .. v75}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->filter([IIIIII[IFFFFIIIF[FFFFFFF[IFFFFIIIFF)V

    .line 227
    move-object/from16 v44, v6

    const/16 v45, 0x0

    aget-object v44, v44, v45

    move-object/from16 v45, v8

    invoke-virtual/range {v44 .. v45}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 228
    move-object/from16 v44, v6

    const/16 v45, 0x1

    aget-object v44, v44, v45

    move-object/from16 v45, v18

    invoke-virtual/range {v44 .. v45}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 231
    new-instance v44, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v76, v44

    move-object/from16 v44, v76

    move-object/from16 v45, v76

    move-object/from16 v46, v1

    invoke-virtual/range {v46 .. v46}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v46

    move-object/from16 v47, v34

    move-object/from16 v48, v7

    invoke-direct/range {v45 .. v48}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v1, v44

    .end local v1    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    return-object v1
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    return-object v0
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/PhongLighting;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/PhongLighting;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_DISTANTPeer;
    return-object v0
.end method

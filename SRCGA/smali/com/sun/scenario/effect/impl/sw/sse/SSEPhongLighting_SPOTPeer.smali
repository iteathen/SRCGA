.class public Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
.super Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer;
.source "SSEPhongLighting_SPOTPeer.java"


# instance fields
.field private kvals:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
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

.method private static native filter([IIIIII[IFFFFIIIF[FFFFFFFFFFF[IFFFFIIIFFF)V
.end method

.method private getDiffuseConstant()F
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getDiffuseConstant()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    return v0
.end method

.method private getKvals()Ljava/nio/FloatBuffer;
    .locals 13

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

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

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    if-nez v10, :cond_0

    .line 114
    move-object v10, v0

    const/16 v11, 0x20

    invoke-static {v11}, Lcom/sun/scenario/effect/impl/BufferUtil;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    .line 116
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v10

    .line 117
    const/4 v10, 0x0

    move v6, v10

    .line 118
    .local v6, "kidx":I
    move-object v10, v0

    invoke-direct {v10}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getSurfaceScale()F

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

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    move v11, v9

    int-to-float v11, v11

    move v12, v2

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 123
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    move v11, v8

    int-to-float v11, v11

    move v12, v3

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 124
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    move-object v11, v4

    move v12, v6

    aget v11, v11, v12

    move v12, v7

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 125
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

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

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v10

    .line 131
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
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

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    const/16 v1, 0x8

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    return v0
.end method

.method private getLightColor()[F
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/Light;->getColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Color4f;->getPremultipliedRGBComponents()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    return-object v0
.end method

.method private getLightPosition()[F
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    move-object v2, v0

    .line 82
    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

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

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    return-object v0
.end method

.method private getLightSpecularExponent()F
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/light/SpotLight;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/SpotLight;->getSpecularExponent()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    return v0
.end method

.method private getNormalizedLightDirection()[F
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/light/SpotLight;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/SpotLight;->getNormalizedLightDirection()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    return-object v0
.end method

.method private getNormalizedLightPosition()[F
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/Light;->getNormalizedLightPosition()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    return-object v0
.end method

.method private getSpecularConstant()F
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getSpecularConstant()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    return v0
.end method

.method private getSpecularExponent()F
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getSpecularExponent()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    return v0
.end method

.method private getSurfaceScale()F
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getSurfaceScale()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    return v0
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 85

    .prologue
    .line 146
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
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
    move-object/from16 v47, v1

    move-object/from16 v48, v2

    invoke-virtual/range {v47 .. v48}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 147
    move-object/from16 v47, v1

    move-object/from16 v48, v4

    move-object/from16 v49, v5

    move-object/from16 v50, v6

    invoke-virtual/range {v47 .. v50}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v47

    move-object/from16 v7, v47

    .line 148
    .local v7, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v47, v1

    move-object/from16 v48, v7

    invoke-virtual/range {v47 .. v48}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 151
    move-object/from16 v47, v6

    const/16 v48, 0x0

    aget-object v47, v47, v48

    move-object/from16 v48, v7

    invoke-virtual/range {v47 .. v48}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v47

    check-cast v47, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v8, v47

    .line 152
    .local v8, "src0":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v47, 0x0

    move/from16 v9, v47

    .line 153
    .local v9, "src0x":I
    const/16 v47, 0x0

    move/from16 v10, v47

    .line 154
    .local v10, "src0y":I
    move-object/from16 v47, v8

    invoke-interface/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v47

    move/from16 v11, v47

    .line 155
    .local v11, "src0w":I
    move-object/from16 v47, v8

    invoke-interface/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v47

    move/from16 v12, v47

    .line 156
    .local v12, "src0h":I
    move-object/from16 v47, v8

    invoke-interface/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v47

    move/from16 v13, v47

    .line 157
    .local v13, "src0scan":I
    move-object/from16 v47, v8

    .line 158
    invoke-interface/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v47

    move-object/from16 v14, v47

    .line 159
    .local v14, "bumpImg":[I
    new-instance v47, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v84, v47

    move-object/from16 v47, v84

    move-object/from16 v48, v84

    move/from16 v49, v9

    move/from16 v50, v10

    move/from16 v51, v11

    move/from16 v52, v12

    invoke-direct/range {v48 .. v52}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v15, v47

    .line 160
    .local v15, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v47, v6

    const/16 v48, 0x0

    aget-object v47, v47, v48

    move-object/from16 v48, v7

    invoke-virtual/range {v47 .. v48}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v47

    move-object/from16 v16, v47

    .line 161
    .local v16, "src0InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v47, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v17, v47

    .line 162
    .local v17, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v47, v1

    const/16 v48, 0x0

    move-object/from16 v49, v16

    invoke-virtual/range {v47 .. v49}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 163
    move-object/from16 v47, v1

    const/16 v48, 0x0

    move-object/from16 v49, v15

    invoke-virtual/range {v47 .. v49}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 164
    move-object/from16 v47, v6

    const/16 v48, 0x1

    aget-object v47, v47, v48

    move-object/from16 v48, v7

    invoke-virtual/range {v47 .. v48}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v47

    check-cast v47, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v18, v47

    .line 165
    .local v18, "src1":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v47, 0x0

    move/from16 v19, v47

    .line 166
    .local v19, "src1x":I
    const/16 v47, 0x0

    move/from16 v20, v47

    .line 167
    .local v20, "src1y":I
    move-object/from16 v47, v18

    invoke-interface/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v47

    move/from16 v21, v47

    .line 168
    .local v21, "src1w":I
    move-object/from16 v47, v18

    invoke-interface/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v47

    move/from16 v22, v47

    .line 169
    .local v22, "src1h":I
    move-object/from16 v47, v18

    invoke-interface/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v47

    move/from16 v23, v47

    .line 170
    .local v23, "src1scan":I
    move-object/from16 v47, v18

    .line 171
    invoke-interface/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v47

    move-object/from16 v24, v47

    .line 172
    .local v24, "origImg":[I
    new-instance v47, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v84, v47

    move-object/from16 v47, v84

    move-object/from16 v48, v84

    move/from16 v49, v19

    move/from16 v50, v20

    move/from16 v51, v21

    move/from16 v52, v22

    invoke-direct/range {v48 .. v52}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v25, v47

    .line 173
    .local v25, "src1Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v47, v6

    const/16 v48, 0x1

    aget-object v47, v47, v48

    move-object/from16 v48, v7

    invoke-virtual/range {v47 .. v48}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v47

    move-object/from16 v26, v47

    .line 174
    .local v26, "src1InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v47, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v27, v47

    .line 175
    .local v27, "src1Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v47, v1

    const/16 v48, 0x1

    move-object/from16 v49, v26

    invoke-virtual/range {v47 .. v49}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 176
    move-object/from16 v47, v1

    const/16 v48, 0x1

    move-object/from16 v49, v25

    invoke-virtual/range {v47 .. v49}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 179
    const/16 v47, 0x4

    move/from16 v0, v47

    new-array v0, v0, [F

    move-object/from16 v47, v0

    move-object/from16 v28, v47

    .line 180
    .local v28, "src0Rect":[F
    move-object/from16 v47, v1

    const/16 v48, 0x0

    move-object/from16 v49, v28

    move-object/from16 v50, v16

    move-object/from16 v0, v50

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v50, v0

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    move-object/from16 v51, v16

    move-object/from16 v0, v51

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v51, v0

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    move/from16 v52, v11

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    move/from16 v53, v12

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move-object/from16 v54, v7

    move-object/from16 v55, v17

    invoke-virtual/range {v47 .. v55}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v47

    .line 184
    const/16 v47, 0x4

    move/from16 v0, v47

    new-array v0, v0, [F

    move-object/from16 v47, v0

    move-object/from16 v29, v47

    .line 185
    .local v29, "src1Rect":[F
    move-object/from16 v47, v1

    const/16 v48, 0x1

    move-object/from16 v49, v29

    move-object/from16 v50, v26

    move-object/from16 v0, v50

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v50, v0

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    move-object/from16 v51, v26

    move-object/from16 v0, v51

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v51, v0

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    move/from16 v52, v21

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    move/from16 v53, v22

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move-object/from16 v54, v7

    move-object/from16 v55, v27

    invoke-virtual/range {v47 .. v55}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v47

    .line 191
    const/16 v47, 0x0

    move/from16 v30, v47

    .line 192
    .local v30, "dstx":I
    const/16 v47, 0x0

    move/from16 v31, v47

    .line 193
    .local v31, "dsty":I
    move-object/from16 v47, v7

    move-object/from16 v0, v47

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v47, v0

    move/from16 v32, v47

    .line 194
    .local v32, "dstw":I
    move-object/from16 v47, v7

    move-object/from16 v0, v47

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v47, v0

    move/from16 v33, v47

    .line 196
    .local v33, "dsth":I
    move-object/from16 v47, v1

    invoke-virtual/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v47

    move/from16 v48, v32

    move/from16 v49, v33

    invoke-virtual/range {v47 .. v49}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v47

    check-cast v47, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v34, v47

    .line 197
    .local v34, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v47, v1

    move-object/from16 v48, v34

    invoke-interface/range {v48 .. v48}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v48

    move-object/from16 v49, v34

    invoke-interface/range {v49 .. v49}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v49

    invoke-virtual/range {v47 .. v49}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->setDestNativeBounds(II)V

    .line 198
    move-object/from16 v47, v34

    invoke-interface/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v47

    move/from16 v35, v47

    .line 199
    .local v35, "dstscan":I
    move-object/from16 v47, v34

    invoke-interface/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v47

    move-object/from16 v36, v47

    .line 201
    .local v36, "dstPixels":[I
    move-object/from16 v47, v1

    invoke-direct/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getDiffuseConstant()F

    move-result v47

    move/from16 v37, v47

    .line 202
    .local v37, "diffuseConstant":F
    move-object/from16 v47, v1

    invoke-direct/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getKvals()Ljava/nio/FloatBuffer;

    move-result-object v47

    move-object/from16 v38, v47

    .line 203
    .local v38, "kvals_buf":Ljava/nio/FloatBuffer;
    move-object/from16 v47, v38

    invoke-virtual/range {v47 .. v47}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v47

    move/from16 v0, v47

    new-array v0, v0, [F

    move-object/from16 v47, v0

    move-object/from16 v39, v47

    .line 204
    .local v39, "kvals_arr":[F
    move-object/from16 v47, v38

    move-object/from16 v48, v39

    invoke-virtual/range {v47 .. v48}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    move-result-object v47

    .line 205
    move-object/from16 v47, v1

    invoke-direct/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getLightColor()[F

    move-result-object v47

    move-object/from16 v40, v47

    .line 206
    .local v40, "lightColor_arr":[F
    move-object/from16 v47, v1

    invoke-direct/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getLightPosition()[F

    move-result-object v47

    move-object/from16 v41, v47

    .line 207
    .local v41, "lightPosition_arr":[F
    move-object/from16 v47, v1

    invoke-direct/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getLightSpecularExponent()F

    move-result v47

    move/from16 v42, v47

    .line 208
    .local v42, "lightSpecularExponent":F
    move-object/from16 v47, v1

    invoke-direct/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getNormalizedLightDirection()[F

    move-result-object v47

    move-object/from16 v43, v47

    .line 209
    .local v43, "normalizedLightDirection_arr":[F
    move-object/from16 v47, v1

    invoke-direct/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getSpecularConstant()F

    move-result v47

    move/from16 v44, v47

    .line 210
    .local v44, "specularConstant":F
    move-object/from16 v47, v1

    invoke-direct/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getSpecularExponent()F

    move-result v47

    move/from16 v45, v47

    .line 211
    .local v45, "specularExponent":F
    move-object/from16 v47, v1

    invoke-direct/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getSurfaceScale()F

    move-result v47

    move/from16 v46, v47

    .line 214
    .local v46, "surfaceScale":F
    move-object/from16 v47, v36

    const/16 v48, 0x0

    const/16 v49, 0x0

    move/from16 v50, v32

    move/from16 v51, v33

    move/from16 v52, v35

    move-object/from16 v53, v14

    move-object/from16 v54, v28

    const/16 v55, 0x0

    aget v54, v54, v55

    move-object/from16 v55, v28

    const/16 v56, 0x1

    aget v55, v55, v56

    move-object/from16 v56, v28

    const/16 v57, 0x2

    aget v56, v56, v57

    move-object/from16 v57, v28

    const/16 v58, 0x3

    aget v57, v57, v58

    move/from16 v58, v11

    move/from16 v59, v12

    move/from16 v60, v13

    move/from16 v61, v37

    move-object/from16 v62, v39

    move-object/from16 v63, v40

    const/16 v64, 0x0

    aget v63, v63, v64

    move-object/from16 v64, v40

    const/16 v65, 0x1

    aget v64, v64, v65

    move-object/from16 v65, v40

    const/16 v66, 0x2

    aget v65, v65, v66

    move-object/from16 v66, v41

    const/16 v67, 0x0

    aget v66, v66, v67

    move-object/from16 v67, v41

    const/16 v68, 0x1

    aget v67, v67, v68

    move-object/from16 v68, v41

    const/16 v69, 0x2

    aget v68, v68, v69

    move/from16 v69, v42

    move-object/from16 v70, v43

    const/16 v71, 0x0

    aget v70, v70, v71

    move-object/from16 v71, v43

    const/16 v72, 0x1

    aget v71, v71, v72

    move-object/from16 v72, v43

    const/16 v73, 0x2

    aget v72, v72, v73

    move-object/from16 v73, v24

    move-object/from16 v74, v29

    const/16 v75, 0x0

    aget v74, v74, v75

    move-object/from16 v75, v29

    const/16 v76, 0x1

    aget v75, v75, v76

    move-object/from16 v76, v29

    const/16 v77, 0x2

    aget v76, v76, v77

    move-object/from16 v77, v29

    const/16 v78, 0x3

    aget v77, v77, v78

    move/from16 v78, v21

    move/from16 v79, v22

    move/from16 v80, v23

    move/from16 v81, v44

    move/from16 v82, v45

    move/from16 v83, v46

    invoke-static/range {v47 .. v83}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->filter([IIIIII[IFFFFIIIF[FFFFFFFFFFF[IFFFFIIIFFF)V

    .line 233
    move-object/from16 v47, v6

    const/16 v48, 0x0

    aget-object v47, v47, v48

    move-object/from16 v48, v8

    invoke-virtual/range {v47 .. v48}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 234
    move-object/from16 v47, v6

    const/16 v48, 0x1

    aget-object v47, v47, v48

    move-object/from16 v48, v18

    invoke-virtual/range {v47 .. v48}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 237
    new-instance v47, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v84, v47

    move-object/from16 v47, v84

    move-object/from16 v48, v84

    move-object/from16 v49, v1

    invoke-virtual/range {v49 .. v49}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v49

    move-object/from16 v50, v34

    move-object/from16 v51, v7

    invoke-direct/range {v48 .. v51}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v1, v47

    .end local v1    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    return-object v1
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    return-object v0
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/PhongLighting;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSEEffectPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/PhongLighting;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSEPhongLighting_SPOTPeer;
    return-object v0
.end method

.class public Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
.super Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;
.source "JSWPhongLighting_DISTANTPeer.java"


# instance fields
.field private kvals:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
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

.method private getDiffuseConstant()F
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getDiffuseConstant()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    return v0
.end method

.method private getKvals()Ljava/nio/FloatBuffer;
    .locals 13

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

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

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->kvals:Ljava/nio/FloatBuffer;

    if-nez v10, :cond_0

    .line 114
    move-object v10, v0

    const/16 v11, 0x20

    invoke-static {v11}, Lcom/sun/scenario/effect/impl/BufferUtil;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->kvals:Ljava/nio/FloatBuffer;

    .line 116
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->kvals:Ljava/nio/FloatBuffer;

    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v10

    .line 117
    const/4 v10, 0x0

    move v6, v10

    .line 118
    .local v6, "kidx":I
    move-object v10, v0

    invoke-direct {v10}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getSurfaceScale()F

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

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->kvals:Ljava/nio/FloatBuffer;

    move v11, v9

    int-to-float v11, v11

    move v12, v2

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 123
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->kvals:Ljava/nio/FloatBuffer;

    move v11, v8

    int-to-float v11, v11

    move v12, v3

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 124
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->kvals:Ljava/nio/FloatBuffer;

    move-object v11, v4

    move v12, v6

    aget v11, v11, v12

    move v12, v7

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 125
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->kvals:Ljava/nio/FloatBuffer;

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

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->kvals:Ljava/nio/FloatBuffer;

    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v10

    .line 131
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->kvals:Ljava/nio/FloatBuffer;

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
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

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    const/16 v1, 0x8

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    return v0
.end method

.method private getLightColor()[F
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/Light;->getColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Color4f;->getPremultipliedRGBComponents()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    return-object v0
.end method

.method private getLightPosition()[F
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    move-object v2, v0

    .line 82
    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

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

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    return-object v0
.end method

.method private getLightSpecularExponent()F
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/light/SpotLight;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/SpotLight;->getSpecularExponent()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    return v0
.end method

.method private getNormalizedLightDirection()[F
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/light/SpotLight;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/SpotLight;->getNormalizedLightDirection()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    return-object v0
.end method

.method private getNormalizedLightPosition()[F
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/Light;->getNormalizedLightPosition()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    return-object v0
.end method

.method private getSpecularConstant()F
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getSpecularConstant()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    return v0
.end method

.method private getSpecularExponent()F
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getSpecularExponent()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    return v0
.end method

.method private getSurfaceScale()F
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getSurfaceScale()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    return v0
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 126

    .prologue
    .line 146
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
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
    move-object/from16 v116, v2

    move-object/from16 v117, v3

    invoke-virtual/range {v116 .. v117}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 147
    move-object/from16 v116, v2

    move-object/from16 v117, v5

    move-object/from16 v118, v6

    move-object/from16 v119, v7

    invoke-virtual/range {v116 .. v119}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v116

    move-object/from16 v8, v116

    .line 148
    .local v8, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v116, v2

    move-object/from16 v117, v8

    invoke-virtual/range {v116 .. v117}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 151
    move-object/from16 v116, v7

    const/16 v117, 0x0

    aget-object v116, v116, v117

    move-object/from16 v117, v8

    invoke-virtual/range {v116 .. v117}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v116

    check-cast v116, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v9, v116

    .line 152
    .local v9, "src0":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v116, 0x0

    move/from16 v10, v116

    .line 153
    .local v10, "src0x":I
    const/16 v116, 0x0

    move/from16 v11, v116

    .line 154
    .local v11, "src0y":I
    move-object/from16 v116, v9

    invoke-interface/range {v116 .. v116}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v116

    move/from16 v12, v116

    .line 155
    .local v12, "src0w":I
    move-object/from16 v116, v9

    invoke-interface/range {v116 .. v116}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v116

    move/from16 v13, v116

    .line 156
    .local v13, "src0h":I
    move-object/from16 v116, v9

    invoke-interface/range {v116 .. v116}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v116

    move/from16 v14, v116

    .line 157
    .local v14, "src0scan":I
    move-object/from16 v116, v9

    .line 158
    invoke-interface/range {v116 .. v116}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v116

    move-object/from16 v15, v116

    .line 159
    .local v15, "bumpImg":[I
    new-instance v116, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v125, v116

    move-object/from16 v116, v125

    move-object/from16 v117, v125

    move/from16 v118, v10

    move/from16 v119, v11

    move/from16 v120, v12

    move/from16 v121, v13

    invoke-direct/range {v117 .. v121}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v16, v116

    .line 160
    .local v16, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v116, v7

    const/16 v117, 0x0

    aget-object v116, v116, v117

    move-object/from16 v117, v8

    invoke-virtual/range {v116 .. v117}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v116

    move-object/from16 v17, v116

    .line 161
    .local v17, "src0InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v116, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v18, v116

    .line 162
    .local v18, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v116, v2

    const/16 v117, 0x0

    move-object/from16 v118, v17

    invoke-virtual/range {v116 .. v118}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 163
    move-object/from16 v116, v2

    const/16 v117, 0x0

    move-object/from16 v118, v16

    invoke-virtual/range {v116 .. v118}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 164
    move-object/from16 v116, v7

    const/16 v117, 0x1

    aget-object v116, v116, v117

    move-object/from16 v117, v8

    invoke-virtual/range {v116 .. v117}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v116

    check-cast v116, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v19, v116

    .line 165
    .local v19, "src1":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v116, 0x0

    move/from16 v20, v116

    .line 166
    .local v20, "src1x":I
    const/16 v116, 0x0

    move/from16 v21, v116

    .line 167
    .local v21, "src1y":I
    move-object/from16 v116, v19

    invoke-interface/range {v116 .. v116}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v116

    move/from16 v22, v116

    .line 168
    .local v22, "src1w":I
    move-object/from16 v116, v19

    invoke-interface/range {v116 .. v116}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v116

    move/from16 v23, v116

    .line 169
    .local v23, "src1h":I
    move-object/from16 v116, v19

    invoke-interface/range {v116 .. v116}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v116

    move/from16 v24, v116

    .line 170
    .local v24, "src1scan":I
    move-object/from16 v116, v19

    .line 171
    invoke-interface/range {v116 .. v116}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v116

    move-object/from16 v25, v116

    .line 172
    .local v25, "origImg":[I
    new-instance v116, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v125, v116

    move-object/from16 v116, v125

    move-object/from16 v117, v125

    move/from16 v118, v20

    move/from16 v119, v21

    move/from16 v120, v22

    move/from16 v121, v23

    invoke-direct/range {v117 .. v121}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v26, v116

    .line 173
    .local v26, "src1Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v116, v7

    const/16 v117, 0x1

    aget-object v116, v116, v117

    move-object/from16 v117, v8

    invoke-virtual/range {v116 .. v117}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v116

    move-object/from16 v27, v116

    .line 174
    .local v27, "src1InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v116, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v28, v116

    .line 175
    .local v28, "src1Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v116, v2

    const/16 v117, 0x1

    move-object/from16 v118, v27

    invoke-virtual/range {v116 .. v118}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 176
    move-object/from16 v116, v2

    const/16 v117, 0x1

    move-object/from16 v118, v26

    invoke-virtual/range {v116 .. v118}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 179
    const/16 v116, 0x4

    move/from16 v0, v116

    new-array v0, v0, [F

    move-object/from16 v116, v0

    move-object/from16 v29, v116

    .line 180
    .local v29, "src0Rect":[F
    move-object/from16 v116, v2

    const/16 v117, 0x0

    move-object/from16 v118, v29

    move-object/from16 v119, v17

    move-object/from16 v0, v119

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v119, v0

    move/from16 v0, v119

    int-to-float v0, v0

    move/from16 v119, v0

    move-object/from16 v120, v17

    move-object/from16 v0, v120

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v120, v0

    move/from16 v0, v120

    int-to-float v0, v0

    move/from16 v120, v0

    move/from16 v121, v12

    move/from16 v0, v121

    int-to-float v0, v0

    move/from16 v121, v0

    move/from16 v122, v13

    move/from16 v0, v122

    int-to-float v0, v0

    move/from16 v122, v0

    move-object/from16 v123, v8

    move-object/from16 v124, v18

    invoke-virtual/range {v116 .. v124}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v116

    .line 184
    const/16 v116, 0x4

    move/from16 v0, v116

    new-array v0, v0, [F

    move-object/from16 v116, v0

    move-object/from16 v30, v116

    .line 185
    .local v30, "src1Rect":[F
    move-object/from16 v116, v2

    const/16 v117, 0x1

    move-object/from16 v118, v30

    move-object/from16 v119, v27

    move-object/from16 v0, v119

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v119, v0

    move/from16 v0, v119

    int-to-float v0, v0

    move/from16 v119, v0

    move-object/from16 v120, v27

    move-object/from16 v0, v120

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v120, v0

    move/from16 v0, v120

    int-to-float v0, v0

    move/from16 v120, v0

    move/from16 v121, v22

    move/from16 v0, v121

    int-to-float v0, v0

    move/from16 v121, v0

    move/from16 v122, v23

    move/from16 v0, v122

    int-to-float v0, v0

    move/from16 v122, v0

    move-object/from16 v123, v8

    move-object/from16 v124, v28

    invoke-virtual/range {v116 .. v124}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v116

    .line 191
    const/16 v116, 0x0

    move/from16 v31, v116

    .line 192
    .local v31, "dstx":I
    const/16 v116, 0x0

    move/from16 v32, v116

    .line 193
    .local v32, "dsty":I
    move-object/from16 v116, v8

    move-object/from16 v0, v116

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v116, v0

    move/from16 v33, v116

    .line 194
    .local v33, "dstw":I
    move-object/from16 v116, v8

    move-object/from16 v0, v116

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v116, v0

    move/from16 v34, v116

    .line 196
    .local v34, "dsth":I
    move-object/from16 v116, v2

    invoke-virtual/range {v116 .. v116}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v116

    move/from16 v117, v33

    move/from16 v118, v34

    invoke-virtual/range {v116 .. v118}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v116

    check-cast v116, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v35, v116

    .line 197
    .local v35, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v116, v2

    move-object/from16 v117, v35

    invoke-interface/range {v117 .. v117}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v117

    move-object/from16 v118, v35

    invoke-interface/range {v118 .. v118}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v118

    invoke-virtual/range {v116 .. v118}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->setDestNativeBounds(II)V

    .line 198
    move-object/from16 v116, v35

    invoke-interface/range {v116 .. v116}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v116

    move/from16 v36, v116

    .line 199
    .local v36, "dstscan":I
    move-object/from16 v116, v35

    invoke-interface/range {v116 .. v116}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v116

    move-object/from16 v37, v116

    .line 204
    .local v37, "dstPixels":[I
    move-object/from16 v116, v2

    invoke-direct/range {v116 .. v116}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getNormalizedLightPosition()[F

    move-result-object v116

    move-object/from16 v43, v116

    .line 205
    .local v43, "normalizedLightPosition_arr":[F
    move-object/from16 v116, v43

    const/16 v117, 0x0

    aget v116, v116, v117

    move/from16 v44, v116

    .local v44, "normalizedLightPosition_x":F
    move-object/from16 v116, v43

    const/16 v117, 0x1

    aget v116, v116, v117

    move/from16 v45, v116

    .local v45, "normalizedLightPosition_y":F
    move-object/from16 v116, v43

    const/16 v117, 0x2

    aget v116, v116, v117

    move/from16 v46, v116

    .line 206
    .local v46, "normalizedLightPosition_z":F
    move-object/from16 v116, v2

    invoke-direct/range {v116 .. v116}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getSpecularExponent()F

    move-result v116

    move/from16 v47, v116

    .line 207
    .local v47, "specularExponent":F
    move-object/from16 v116, v2

    invoke-direct/range {v116 .. v116}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getKvals()Ljava/nio/FloatBuffer;

    move-result-object v116

    move-object/from16 v48, v116

    .line 208
    .local v48, "kvals_buf":Ljava/nio/FloatBuffer;
    move-object/from16 v116, v48

    invoke-virtual/range {v116 .. v116}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v116

    move/from16 v0, v116

    new-array v0, v0, [F

    move-object/from16 v116, v0

    move-object/from16 v49, v116

    .line 209
    .local v49, "kvals_arr":[F
    move-object/from16 v116, v48

    move-object/from16 v117, v49

    invoke-virtual/range {v116 .. v117}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    move-result-object v116

    .line 210
    move-object/from16 v116, v2

    invoke-direct/range {v116 .. v116}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getDiffuseConstant()F

    move-result v116

    move/from16 v50, v116

    .line 211
    .local v50, "diffuseConstant":F
    move-object/from16 v116, v2

    invoke-direct/range {v116 .. v116}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getLightColor()[F

    move-result-object v116

    move-object/from16 v51, v116

    .line 212
    .local v51, "lightColor_arr":[F
    move-object/from16 v116, v51

    const/16 v117, 0x0

    aget v116, v116, v117

    move/from16 v52, v116

    .local v52, "lightColor_x":F
    move-object/from16 v116, v51

    const/16 v117, 0x1

    aget v116, v116, v117

    move/from16 v53, v116

    .local v53, "lightColor_y":F
    move-object/from16 v116, v51

    const/16 v117, 0x2

    aget v116, v116, v117

    move/from16 v54, v116

    .line 213
    .local v54, "lightColor_z":F
    move-object/from16 v116, v2

    invoke-direct/range {v116 .. v116}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getSpecularConstant()F

    move-result v116

    move/from16 v55, v116

    .line 216
    .local v55, "specularConstant":F
    move-object/from16 v116, v29

    const/16 v117, 0x2

    aget v116, v116, v117

    move-object/from16 v117, v29

    const/16 v118, 0x0

    aget v117, v117, v118

    sub-float v116, v116, v117

    move/from16 v117, v33

    move/from16 v0, v117

    int-to-float v0, v0

    move/from16 v117, v0

    div-float v116, v116, v117

    move/from16 v56, v116

    .line 217
    .local v56, "inc0_x":F
    move-object/from16 v116, v29

    const/16 v117, 0x3

    aget v116, v116, v117

    move-object/from16 v117, v29

    const/16 v118, 0x1

    aget v117, v117, v118

    sub-float v116, v116, v117

    move/from16 v117, v34

    move/from16 v0, v117

    int-to-float v0, v0

    move/from16 v117, v0

    div-float v116, v116, v117

    move/from16 v57, v116

    .line 218
    .local v57, "inc0_y":F
    move-object/from16 v116, v30

    const/16 v117, 0x2

    aget v116, v116, v117

    move-object/from16 v117, v30

    const/16 v118, 0x0

    aget v117, v117, v118

    sub-float v116, v116, v117

    move/from16 v117, v33

    move/from16 v0, v117

    int-to-float v0, v0

    move/from16 v117, v0

    div-float v116, v116, v117

    move/from16 v58, v116

    .line 219
    .local v58, "inc1_x":F
    move-object/from16 v116, v30

    const/16 v117, 0x3

    aget v116, v116, v117

    move-object/from16 v117, v30

    const/16 v118, 0x1

    aget v117, v117, v118

    sub-float v116, v116, v117

    move/from16 v117, v34

    move/from16 v0, v117

    int-to-float v0, v0

    move/from16 v117, v0

    div-float v116, v116, v117

    move/from16 v59, v116

    .line 222
    .local v59, "inc1_y":F
    move-object/from16 v116, v29

    const/16 v117, 0x1

    aget v116, v116, v117

    move/from16 v117, v57

    const/high16 v118, 0x3f000000    # 0.5f

    mul-float v117, v117, v118

    add-float v116, v116, v117

    move/from16 v60, v116

    .line 223
    .local v60, "pos0_y":F
    move-object/from16 v116, v30

    const/16 v117, 0x1

    aget v116, v116, v117

    move/from16 v117, v59

    const/high16 v118, 0x3f000000    # 0.5f

    mul-float v117, v117, v118

    add-float v116, v116, v117

    move/from16 v61, v116

    .line 225
    .local v61, "pos1_y":F
    const/16 v116, 0x0

    move/from16 v62, v116

    .local v62, "dy":I
    :goto_0
    move/from16 v116, v62

    const/16 v117, 0x0

    move/from16 v118, v34

    add-int v117, v117, v118

    move/from16 v0, v116

    move/from16 v1, v117

    if-ge v0, v1, :cond_1a

    .line 226
    move/from16 v116, v62

    move/from16 v0, v116

    int-to-float v0, v0

    move/from16 v116, v0

    move/from16 v63, v116

    .line 228
    .local v63, "pixcoord_y":F
    move/from16 v116, v62

    move/from16 v117, v36

    mul-int v116, v116, v117

    move/from16 v38, v116

    .line 230
    .local v38, "dyi":I
    move-object/from16 v116, v29

    const/16 v117, 0x0

    aget v116, v116, v117

    move/from16 v117, v56

    const/high16 v118, 0x3f000000    # 0.5f

    mul-float v117, v117, v118

    add-float v116, v116, v117

    move/from16 v64, v116

    .line 231
    .local v64, "pos0_x":F
    move-object/from16 v116, v30

    const/16 v117, 0x0

    aget v116, v116, v117

    move/from16 v117, v58

    const/high16 v118, 0x3f000000    # 0.5f

    mul-float v117, v117, v118

    add-float v116, v116, v117

    move/from16 v65, v116

    .line 233
    .local v65, "pos1_x":F
    const/16 v116, 0x0

    move/from16 v66, v116

    .local v66, "dx":I
    :goto_1
    move/from16 v116, v66

    const/16 v117, 0x0

    move/from16 v118, v33

    add-int v117, v117, v118

    move/from16 v0, v116

    move/from16 v1, v117

    if-ge v0, v1, :cond_19

    .line 234
    move/from16 v116, v66

    move/from16 v0, v116

    int-to-float v0, v0

    move/from16 v116, v0

    move/from16 v67, v116

    .line 240
    .local v67, "pixcoord_x":F
    move/from16 v116, v65

    move/from16 v72, v116

    .line 241
    .local v72, "loc_tmp_x":F
    move/from16 v116, v61

    move/from16 v73, v116

    .line 243
    .local v73, "loc_tmp_y":F
    move/from16 v116, v72

    const/16 v117, 0x0

    cmpl-float v116, v116, v117

    if-ltz v116, :cond_4

    move/from16 v116, v73

    const/16 v117, 0x0

    cmpl-float v116, v116, v117

    if-ltz v116, :cond_4

    .line 244
    move/from16 v116, v72

    move/from16 v117, v22

    move/from16 v0, v117

    int-to-float v0, v0

    move/from16 v117, v0

    mul-float v116, v116, v117

    move/from16 v0, v116

    float-to-int v0, v0

    move/from16 v116, v0

    move/from16 v75, v116

    .line 245
    .local v75, "iloc_tmp_x":I
    move/from16 v116, v73

    move/from16 v117, v23

    move/from16 v0, v117

    int-to-float v0, v0

    move/from16 v117, v0

    mul-float v116, v116, v117

    move/from16 v0, v116

    float-to-int v0, v0

    move/from16 v116, v0

    move/from16 v76, v116

    .line 246
    .local v76, "iloc_tmp_y":I
    move/from16 v116, v75

    move/from16 v117, v22

    move/from16 v0, v116

    move/from16 v1, v117

    if-ge v0, v1, :cond_0

    move/from16 v116, v76

    move/from16 v117, v23

    move/from16 v0, v116

    move/from16 v1, v117

    if-lt v0, v1, :cond_2

    :cond_0
    const/16 v116, 0x1

    :goto_2
    move/from16 v77, v116

    .line 249
    .local v77, "out":Z
    move/from16 v116, v77

    if-eqz v116, :cond_3

    const/16 v116, 0x0

    :goto_3
    move/from16 v74, v116

    .line 254
    .end local v75    # "iloc_tmp_x":I
    .end local v76    # "iloc_tmp_y":I
    .end local v77    # "out":Z
    .local v74, "origImg_tmp":I
    :goto_4
    move/from16 v116, v74

    const/16 v117, 0x10

    shr-int/lit8 v116, v116, 0x10

    const/16 v117, 0xff

    move/from16 v0, v116

    and-int/lit16 v0, v0, 0xff

    move/from16 v116, v0

    move/from16 v0, v116

    int-to-float v0, v0

    move/from16 v116, v0

    const/high16 v117, 0x437f0000    # 255.0f

    div-float v116, v116, v117

    move/from16 v68, v116

    .line 255
    .local v68, "sample_res_x":F
    move/from16 v116, v74

    const/16 v117, 0x8

    shr-int/lit8 v116, v116, 0x8

    const/16 v117, 0xff

    move/from16 v0, v116

    and-int/lit16 v0, v0, 0xff

    move/from16 v116, v0

    move/from16 v0, v116

    int-to-float v0, v0

    move/from16 v116, v0

    const/high16 v117, 0x437f0000    # 255.0f

    div-float v116, v116, v117

    move/from16 v69, v116

    .line 256
    .local v69, "sample_res_y":F
    move/from16 v116, v74

    const/16 v117, 0xff

    move/from16 v0, v116

    and-int/lit16 v0, v0, 0xff

    move/from16 v116, v0

    move/from16 v0, v116

    int-to-float v0, v0

    move/from16 v116, v0

    const/high16 v117, 0x437f0000    # 255.0f

    div-float v116, v116, v117

    move/from16 v70, v116

    .line 257
    .local v70, "sample_res_z":F
    move/from16 v116, v74

    const/16 v117, 0x18

    ushr-int/lit8 v116, v116, 0x18

    move/from16 v0, v116

    int-to-float v0, v0

    move/from16 v116, v0

    const/high16 v117, 0x437f0000    # 255.0f

    div-float v116, v116, v117

    move/from16 v71, v116

    .line 260
    .local v71, "sample_res_w":F
    move/from16 v116, v68

    move/from16 v72, v116

    .line 261
    .local v72, "orig_x":F
    move/from16 v116, v69

    move/from16 v73, v116

    .line 262
    .local v73, "orig_y":F
    move/from16 v116, v70

    move/from16 v74, v116

    .line 263
    .local v74, "orig_z":F
    move/from16 v116, v71

    move/from16 v75, v116

    .line 265
    .local v75, "orig_w":F
    const/16 v116, 0x0

    move/from16 v77, v116

    .line 266
    .local v77, "sum_x":F
    const/16 v116, 0x0

    move/from16 v78, v116

    .line 267
    .local v78, "sum_y":F
    const/high16 v116, 0x3f800000    # 1.0f

    move/from16 v79, v116

    .line 268
    .local v79, "sum_z":F
    const/16 v116, 0x0

    move/from16 v76, v116

    .line 269
    .local v76, "i":I
    :goto_5
    move/from16 v116, v76

    const/16 v117, 0x8

    move/from16 v0, v116

    move/from16 v1, v117

    if-ge v0, v1, :cond_8

    .line 271
    move/from16 v116, v64

    move-object/from16 v117, v49

    move/from16 v118, v76

    const/16 v119, 0x4

    mul-int/lit8 v118, v118, 0x4

    const/16 v119, 0x0

    add-int/lit8 v118, v118, 0x0

    aget v117, v117, v118

    add-float v116, v116, v117

    move/from16 v80, v116

    .line 272
    .local v80, "loc_tmp_x":F
    move/from16 v116, v60

    move-object/from16 v117, v49

    move/from16 v118, v76

    const/16 v119, 0x4

    mul-int/lit8 v118, v118, 0x4

    const/16 v119, 0x1

    add-int/lit8 v118, v118, 0x1

    aget v117, v117, v118

    add-float v116, v116, v117

    move/from16 v81, v116

    .line 274
    .local v81, "loc_tmp_y":F
    move/from16 v116, v80

    const/16 v117, 0x0

    cmpl-float v116, v116, v117

    if-ltz v116, :cond_7

    move/from16 v116, v81

    const/16 v117, 0x0

    cmpl-float v116, v116, v117

    if-ltz v116, :cond_7

    .line 275
    move/from16 v116, v80

    move/from16 v117, v12

    move/from16 v0, v117

    int-to-float v0, v0

    move/from16 v117, v0

    mul-float v116, v116, v117

    move/from16 v0, v116

    float-to-int v0, v0

    move/from16 v116, v0

    move/from16 v83, v116

    .line 276
    .local v83, "iloc_tmp_x":I
    move/from16 v116, v81

    move/from16 v117, v13

    move/from16 v0, v117

    int-to-float v0, v0

    move/from16 v117, v0

    mul-float v116, v116, v117

    move/from16 v0, v116

    float-to-int v0, v0

    move/from16 v116, v0

    move/from16 v84, v116

    .line 277
    .local v84, "iloc_tmp_y":I
    move/from16 v116, v83

    move/from16 v117, v12

    move/from16 v0, v116

    move/from16 v1, v117

    if-ge v0, v1, :cond_1

    move/from16 v116, v84

    move/from16 v117, v13

    move/from16 v0, v116

    move/from16 v1, v117

    if-lt v0, v1, :cond_5

    :cond_1
    const/16 v116, 0x1

    :goto_6
    move/from16 v85, v116

    .line 280
    .local v85, "out":Z
    move/from16 v116, v85

    if-eqz v116, :cond_6

    const/16 v116, 0x0

    :goto_7
    move/from16 v82, v116

    .line 285
    .end local v83    # "iloc_tmp_x":I
    .end local v84    # "iloc_tmp_y":I
    .end local v85    # "out":Z
    .local v82, "bumpImg_tmp":I
    :goto_8
    move/from16 v116, v82

    const/16 v117, 0x18

    ushr-int/lit8 v116, v116, 0x18

    move/from16 v0, v116

    int-to-float v0, v0

    move/from16 v116, v0

    const/high16 v117, 0x437f0000    # 255.0f

    div-float v116, v116, v117

    move/from16 v71, v116

    .line 288
    move/from16 v116, v77

    move-object/from16 v117, v49

    move/from16 v118, v76

    const/16 v119, 0x4

    mul-int/lit8 v118, v118, 0x4

    const/16 v119, 0x2

    add-int/lit8 v118, v118, 0x2

    aget v117, v117, v118

    move/from16 v118, v71

    mul-float v117, v117, v118

    add-float v116, v116, v117

    move/from16 v77, v116

    .line 289
    move/from16 v116, v78

    move-object/from16 v117, v49

    move/from16 v118, v76

    const/16 v119, 0x4

    mul-int/lit8 v118, v118, 0x4

    const/16 v119, 0x3

    add-int/lit8 v118, v118, 0x3

    aget v117, v117, v118

    move/from16 v118, v71

    mul-float v117, v117, v118

    add-float v116, v116, v117

    move/from16 v78, v116

    .line 269
    add-int/lit8 v76, v76, 0x1

    goto/16 :goto_5

    .line 246
    .end local v68    # "sample_res_x":F
    .end local v69    # "sample_res_y":F
    .end local v70    # "sample_res_z":F
    .end local v71    # "sample_res_w":F
    .end local v74    # "orig_z":F
    .end local v77    # "sum_x":F
    .end local v78    # "sum_y":F
    .end local v79    # "sum_z":F
    .end local v80    # "loc_tmp_x":F
    .end local v81    # "loc_tmp_y":F
    .end local v82    # "bumpImg_tmp":I
    .local v72, "loc_tmp_x":F
    .local v73, "loc_tmp_y":F
    .local v75, "iloc_tmp_x":I
    .local v76, "iloc_tmp_y":I
    :cond_2
    const/16 v116, 0x0

    goto/16 :goto_2

    .line 249
    .local v77, "out":Z
    :cond_3
    move-object/from16 v116, v25

    move/from16 v117, v76

    move/from16 v118, v24

    mul-int v117, v117, v118

    move/from16 v118, v75

    add-int v117, v117, v118

    aget v116, v116, v117

    goto/16 :goto_3

    .line 252
    .end local v75    # "iloc_tmp_x":I
    .end local v76    # "iloc_tmp_y":I
    .end local v77    # "out":Z
    :cond_4
    const/16 v116, 0x0

    move/from16 v74, v116

    .local v74, "origImg_tmp":I
    goto/16 :goto_4

    .line 277
    .restart local v68    # "sample_res_x":F
    .restart local v69    # "sample_res_y":F
    .restart local v70    # "sample_res_z":F
    .restart local v71    # "sample_res_w":F
    .local v72, "orig_x":F
    .local v73, "orig_y":F
    .local v74, "orig_z":F
    .local v75, "orig_w":F
    .local v76, "i":I
    .local v77, "sum_x":F
    .restart local v78    # "sum_y":F
    .restart local v79    # "sum_z":F
    .restart local v80    # "loc_tmp_x":F
    .restart local v81    # "loc_tmp_y":F
    .restart local v83    # "iloc_tmp_x":I
    .restart local v84    # "iloc_tmp_y":I
    :cond_5
    const/16 v116, 0x0

    goto :goto_6

    .line 280
    .restart local v85    # "out":Z
    :cond_6
    move-object/from16 v116, v15

    move/from16 v117, v84

    move/from16 v118, v14

    mul-int v117, v117, v118

    move/from16 v118, v83

    add-int v117, v117, v118

    aget v116, v116, v117

    goto :goto_7

    .line 283
    .end local v83    # "iloc_tmp_x":I
    .end local v84    # "iloc_tmp_y":I
    .end local v85    # "out":Z
    :cond_7
    const/16 v116, 0x0

    move/from16 v82, v116

    .restart local v82    # "bumpImg_tmp":I
    goto :goto_8

    .line 293
    .end local v80    # "loc_tmp_x":F
    .end local v81    # "loc_tmp_y":F
    .end local v82    # "bumpImg_tmp":I
    :cond_8
    move/from16 v116, v77

    move/from16 v83, v116

    .line 294
    .local v83, "x_tmp_x":F
    move/from16 v116, v78

    move/from16 v84, v116

    .line 295
    .local v84, "x_tmp_y":F
    move/from16 v116, v79

    move/from16 v85, v116

    .line 296
    .local v85, "x_tmp_z":F
    move/from16 v116, v83

    move/from16 v117, v83

    mul-float v116, v116, v117

    move/from16 v117, v84

    move/from16 v118, v84

    mul-float v117, v117, v118

    add-float v116, v116, v117

    move/from16 v117, v85

    move/from16 v118, v85

    mul-float v117, v117, v118

    add-float v116, v116, v117

    move/from16 v0, v116

    float-to-double v0, v0

    move-wide/from16 v116, v0

    invoke-static/range {v116 .. v117}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v116

    move-wide/from16 v0, v116

    double-to-float v0, v0

    move/from16 v116, v0

    move/from16 v86, v116

    .line 299
    .local v86, "denom":F
    move/from16 v116, v83

    move/from16 v117, v86

    div-float v116, v116, v117

    move/from16 v80, v116

    .line 300
    .local v80, "normalize_res_x":F
    move/from16 v116, v84

    move/from16 v117, v86

    div-float v116, v116, v117

    move/from16 v81, v116

    .line 301
    .local v81, "normalize_res_y":F
    move/from16 v116, v85

    move/from16 v117, v86

    div-float v116, v116, v117

    move/from16 v82, v116

    .line 304
    .local v82, "normalize_res_z":F
    move/from16 v116, v80

    move/from16 v83, v116

    .line 305
    .local v83, "N_x":F
    move/from16 v116, v81

    move/from16 v84, v116

    .line 306
    .local v84, "N_y":F
    move/from16 v116, v82

    move/from16 v85, v116

    .line 307
    .local v85, "N_z":F
    move/from16 v116, v44

    move/from16 v86, v116

    .line 308
    .local v86, "Lxyz_x":F
    move/from16 v116, v45

    move/from16 v87, v116

    .line 309
    .local v87, "Lxyz_y":F
    move/from16 v116, v46

    move/from16 v88, v116

    .line 310
    .local v88, "Lxyz_z":F
    move/from16 v116, v52

    move/from16 v89, v116

    .line 311
    .local v89, "Lrgb_x":F
    move/from16 v116, v53

    move/from16 v90, v116

    .line 312
    .local v90, "Lrgb_y":F
    move/from16 v116, v54

    move/from16 v91, v116

    .line 313
    .local v91, "Lrgb_z":F
    const/16 v116, 0x0

    move/from16 v92, v116

    .line 314
    .local v92, "E_x":F
    const/16 v116, 0x0

    move/from16 v93, v116

    .line 315
    .local v93, "E_y":F
    const/high16 v116, 0x3f800000    # 1.0f

    move/from16 v94, v116

    .line 317
    .local v94, "E_z":F
    move/from16 v116, v86

    move/from16 v117, v92

    add-float v116, v116, v117

    move/from16 v95, v116

    .line 318
    .local v95, "x_tmp_x":F
    move/from16 v116, v87

    move/from16 v117, v93

    add-float v116, v116, v117

    move/from16 v96, v116

    .line 319
    .local v96, "x_tmp_y":F
    move/from16 v116, v88

    move/from16 v117, v94

    add-float v116, v116, v117

    move/from16 v97, v116

    .line 320
    .local v97, "x_tmp_z":F
    move/from16 v116, v95

    move/from16 v117, v95

    mul-float v116, v116, v117

    move/from16 v117, v96

    move/from16 v118, v96

    mul-float v117, v117, v118

    add-float v116, v116, v117

    move/from16 v117, v97

    move/from16 v118, v97

    mul-float v117, v117, v118

    add-float v116, v116, v117

    move/from16 v0, v116

    float-to-double v0, v0

    move-wide/from16 v116, v0

    invoke-static/range {v116 .. v117}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v116

    move-wide/from16 v0, v116

    double-to-float v0, v0

    move/from16 v116, v0

    move/from16 v98, v116

    .line 323
    .local v98, "denom":F
    move/from16 v116, v95

    move/from16 v117, v98

    div-float v116, v116, v117

    move/from16 v80, v116

    .line 324
    move/from16 v116, v96

    move/from16 v117, v98

    div-float v116, v116, v117

    move/from16 v81, v116

    .line 325
    move/from16 v116, v97

    move/from16 v117, v98

    div-float v116, v116, v117

    move/from16 v82, v116

    .line 328
    move/from16 v116, v80

    move/from16 v95, v116

    .line 329
    .local v95, "H_x":F
    move/from16 v116, v81

    move/from16 v96, v116

    .line 330
    .local v96, "H_y":F
    move/from16 v116, v82

    move/from16 v97, v116

    .line 337
    .local v97, "H_z":F
    move/from16 v116, v83

    move/from16 v103, v116

    .line 338
    .local v103, "x_tmp_x":F
    move/from16 v116, v84

    move/from16 v104, v116

    .line 339
    .local v104, "x_tmp_y":F
    move/from16 v116, v85

    move/from16 v105, v116

    .line 340
    .local v105, "x_tmp_z":F
    move/from16 v116, v86

    move/from16 v106, v116

    .line 341
    .local v106, "y_tmp_x":F
    move/from16 v116, v87

    move/from16 v107, v116

    .line 342
    .local v107, "y_tmp_y":F
    move/from16 v116, v88

    move/from16 v108, v116

    .line 343
    .local v108, "y_tmp_z":F
    move/from16 v116, v103

    move/from16 v117, v106

    mul-float v116, v116, v117

    move/from16 v117, v104

    move/from16 v118, v107

    mul-float v117, v117, v118

    add-float v116, v116, v117

    move/from16 v117, v105

    move/from16 v118, v108

    mul-float v117, v117, v118

    add-float v116, v116, v117

    move/from16 v102, v116

    .line 348
    .local v102, "dot_res":F
    move/from16 v116, v50

    move/from16 v117, v102

    mul-float v116, v116, v117

    move/from16 v117, v89

    mul-float v116, v116, v117

    move/from16 v98, v116

    .line 349
    .local v98, "D_x":F
    move/from16 v116, v50

    move/from16 v117, v102

    mul-float v116, v116, v117

    move/from16 v117, v90

    mul-float v116, v116, v117

    move/from16 v99, v116

    .line 350
    .local v99, "D_y":F
    move/from16 v116, v50

    move/from16 v117, v102

    mul-float v116, v116, v117

    move/from16 v117, v91

    mul-float v116, v116, v117

    move/from16 v100, v116

    .line 353
    .local v100, "D_z":F
    move/from16 v116, v98

    move/from16 v106, v116

    .line 354
    .local v106, "val_tmp_x":F
    move/from16 v116, v99

    move/from16 v107, v116

    .line 355
    .local v107, "val_tmp_y":F
    move/from16 v116, v100

    move/from16 v108, v116

    .line 356
    .local v108, "val_tmp_z":F
    const/16 v116, 0x0

    move/from16 v109, v116

    .line 357
    .local v109, "min_tmp":F
    const/high16 v116, 0x3f800000    # 1.0f

    move/from16 v110, v116

    .line 358
    .local v110, "max_tmp":F
    move/from16 v116, v106

    move/from16 v117, v109

    cmpg-float v116, v116, v117

    if-gez v116, :cond_d

    move/from16 v116, v109

    :goto_9
    move/from16 v103, v116

    .line 360
    .local v103, "clamp_res_x":F
    move/from16 v116, v107

    move/from16 v117, v109

    cmpg-float v116, v116, v117

    if-gez v116, :cond_f

    move/from16 v116, v109

    :goto_a
    move/from16 v104, v116

    .line 362
    .local v104, "clamp_res_y":F
    move/from16 v116, v108

    move/from16 v117, v109

    cmpg-float v116, v116, v117

    if-gez v116, :cond_11

    move/from16 v116, v109

    :goto_b
    move/from16 v105, v116

    .line 366
    .local v105, "clamp_res_z":F
    move/from16 v116, v103

    move/from16 v98, v116

    .line 367
    move/from16 v116, v104

    move/from16 v99, v116

    .line 368
    move/from16 v116, v105

    move/from16 v100, v116

    .line 369
    const/high16 v116, 0x3f800000    # 1.0f

    move/from16 v101, v116

    .line 375
    .local v101, "D_w":F
    move/from16 v116, v83

    move/from16 v110, v116

    .line 376
    .local v110, "x_tmp_x":F
    move/from16 v116, v84

    move/from16 v111, v116

    .line 377
    .local v111, "x_tmp_y":F
    move/from16 v116, v85

    move/from16 v112, v116

    .line 378
    .local v112, "x_tmp_z":F
    move/from16 v116, v95

    move/from16 v113, v116

    .line 379
    .local v113, "y_tmp_x":F
    move/from16 v116, v96

    move/from16 v114, v116

    .line 380
    .local v114, "y_tmp_y":F
    move/from16 v116, v97

    move/from16 v115, v116

    .line 381
    .local v115, "y_tmp_z":F
    move/from16 v116, v110

    move/from16 v117, v113

    mul-float v116, v116, v117

    move/from16 v117, v111

    move/from16 v118, v114

    mul-float v117, v117, v118

    add-float v116, v116, v117

    move/from16 v117, v112

    move/from16 v118, v115

    mul-float v117, v117, v118

    add-float v116, v116, v117

    move/from16 v102, v116

    .line 386
    move/from16 v116, v102

    move/from16 v110, v116

    .line 389
    .local v110, "NdotH":F
    move/from16 v116, v110

    move/from16 v112, v116

    .line 390
    .local v112, "x_tmp":F
    move/from16 v116, v47

    move/from16 v113, v116

    .line 391
    .local v113, "y_tmp":F
    move/from16 v116, v112

    move/from16 v0, v116

    float-to-double v0, v0

    move-wide/from16 v116, v0

    move/from16 v118, v113

    move/from16 v0, v118

    float-to-double v0, v0

    move-wide/from16 v118, v0

    invoke-static/range {v116 .. v119}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v116

    move-wide/from16 v0, v116

    double-to-float v0, v0

    move/from16 v116, v0

    move/from16 v111, v116

    .line 394
    .local v111, "pow_res":F
    move/from16 v116, v55

    move/from16 v117, v111

    mul-float v116, v116, v117

    move/from16 v117, v89

    mul-float v116, v116, v117

    move/from16 v106, v116

    .line 395
    .local v106, "S_x":F
    move/from16 v116, v55

    move/from16 v117, v111

    mul-float v116, v116, v117

    move/from16 v117, v90

    mul-float v116, v116, v117

    move/from16 v107, v116

    .line 396
    .local v107, "S_y":F
    move/from16 v116, v55

    move/from16 v117, v111

    mul-float v116, v116, v117

    move/from16 v117, v91

    mul-float v116, v116, v117

    move/from16 v108, v116

    .line 399
    .local v108, "S_z":F
    move/from16 v116, v106

    move/from16 v113, v116

    .line 400
    .end local v112    # "x_tmp":F
    .local v113, "x_tmp":F
    move/from16 v116, v107

    move/from16 v114, v116

    .line 401
    .local v114, "y_tmp":F
    move/from16 v116, v113

    move/from16 v117, v114

    cmpl-float v116, v116, v117

    if-lez v116, :cond_13

    move/from16 v116, v113

    :goto_c
    move/from16 v112, v116

    .line 404
    .local v112, "max_res":F
    move/from16 v116, v112

    move/from16 v109, v116

    .line 406
    .local v109, "S_w":F
    move/from16 v116, v109

    move/from16 v113, v116

    .line 407
    move/from16 v116, v108

    move/from16 v114, v116

    .line 408
    move/from16 v116, v113

    move/from16 v117, v114

    cmpl-float v116, v116, v117

    if-lez v116, :cond_14

    move/from16 v116, v113

    :goto_d
    move/from16 v112, v116

    .line 411
    move/from16 v116, v112

    move/from16 v109, v116

    .line 412
    move/from16 v116, v72

    move/from16 v117, v98

    mul-float v116, v116, v117

    move/from16 v72, v116

    .line 413
    move/from16 v116, v73

    move/from16 v117, v99

    mul-float v116, v116, v117

    move/from16 v73, v116

    .line 414
    move/from16 v116, v74

    move/from16 v117, v100

    mul-float v116, v116, v117

    move/from16 v74, v116

    .line 415
    move/from16 v116, v75

    move/from16 v117, v101

    mul-float v116, v116, v117

    move/from16 v75, v116

    .line 416
    move/from16 v116, v106

    move/from16 v117, v75

    mul-float v116, v116, v117

    move/from16 v106, v116

    .line 417
    move/from16 v116, v107

    move/from16 v117, v75

    mul-float v116, v116, v117

    move/from16 v107, v116

    .line 418
    move/from16 v116, v108

    move/from16 v117, v75

    mul-float v116, v116, v117

    move/from16 v108, v116

    .line 419
    move/from16 v116, v109

    move/from16 v117, v75

    mul-float v116, v116, v117

    move/from16 v109, v116

    .line 420
    move/from16 v116, v106

    move/from16 v117, v72

    const/high16 v118, 0x3f800000    # 1.0f

    move/from16 v119, v109

    sub-float v118, v118, v119

    mul-float v117, v117, v118

    add-float v116, v116, v117

    move/from16 v39, v116

    .line 421
    .local v39, "color_x":F
    move/from16 v116, v107

    move/from16 v117, v73

    const/high16 v118, 0x3f800000    # 1.0f

    move/from16 v119, v109

    sub-float v118, v118, v119

    mul-float v117, v117, v118

    add-float v116, v116, v117

    move/from16 v40, v116

    .line 422
    .local v40, "color_y":F
    move/from16 v116, v108

    move/from16 v117, v74

    const/high16 v118, 0x3f800000    # 1.0f

    move/from16 v119, v109

    sub-float v118, v118, v119

    mul-float v117, v117, v118

    add-float v116, v116, v117

    move/from16 v41, v116

    .line 423
    .local v41, "color_z":F
    move/from16 v116, v109

    move/from16 v117, v75

    const/high16 v118, 0x3f800000    # 1.0f

    move/from16 v119, v109

    sub-float v118, v118, v119

    mul-float v117, v117, v118

    add-float v116, v116, v117

    move/from16 v42, v116

    .line 427
    .local v42, "color_w":F
    move/from16 v116, v42

    const/16 v117, 0x0

    cmpg-float v116, v116, v117

    if-gez v116, :cond_15

    const/16 v116, 0x0

    move/from16 v42, v116

    .line 428
    :cond_9
    :goto_e
    move/from16 v116, v39

    const/16 v117, 0x0

    cmpg-float v116, v116, v117

    if-gez v116, :cond_16

    const/16 v116, 0x0

    move/from16 v39, v116

    .line 429
    :cond_a
    :goto_f
    move/from16 v116, v40

    const/16 v117, 0x0

    cmpg-float v116, v116, v117

    if-gez v116, :cond_17

    const/16 v116, 0x0

    move/from16 v40, v116

    .line 430
    :cond_b
    :goto_10
    move/from16 v116, v41

    const/16 v117, 0x0

    cmpg-float v116, v116, v117

    if-gez v116, :cond_18

    const/16 v116, 0x0

    move/from16 v41, v116

    .line 431
    :cond_c
    :goto_11
    move-object/from16 v116, v37

    move/from16 v117, v38

    move/from16 v118, v66

    add-int v117, v117, v118

    move/from16 v118, v39

    const/high16 v119, 0x437f0000    # 255.0f

    mul-float v118, v118, v119

    move/from16 v0, v118

    float-to-int v0, v0

    move/from16 v118, v0

    const/16 v119, 0x10

    shl-int/lit8 v118, v118, 0x10

    move/from16 v119, v40

    const/high16 v120, 0x437f0000    # 255.0f

    mul-float v119, v119, v120

    move/from16 v0, v119

    float-to-int v0, v0

    move/from16 v119, v0

    const/16 v120, 0x8

    shl-int/lit8 v119, v119, 0x8

    or-int v118, v118, v119

    move/from16 v119, v41

    const/high16 v120, 0x437f0000    # 255.0f

    mul-float v119, v119, v120

    move/from16 v0, v119

    float-to-int v0, v0

    move/from16 v119, v0

    const/16 v120, 0x0

    shl-int/lit8 v119, v119, 0x0

    or-int v118, v118, v119

    move/from16 v119, v42

    const/high16 v120, 0x437f0000    # 255.0f

    mul-float v119, v119, v120

    move/from16 v0, v119

    float-to-int v0, v0

    move/from16 v119, v0

    const/16 v120, 0x18

    shl-int/lit8 v119, v119, 0x18

    or-int v118, v118, v119

    aput v118, v116, v117

    .line 437
    move/from16 v116, v64

    move/from16 v117, v56

    add-float v116, v116, v117

    move/from16 v64, v116

    .line 438
    move/from16 v116, v65

    move/from16 v117, v58

    add-float v116, v116, v117

    move/from16 v65, v116

    .line 233
    add-int/lit8 v66, v66, 0x1

    goto/16 :goto_1

    .line 358
    .end local v39    # "color_x":F
    .end local v40    # "color_y":F
    .end local v41    # "color_z":F
    .end local v42    # "color_w":F
    .end local v101    # "D_w":F
    .end local v111    # "pow_res":F
    .end local v112    # "max_res":F
    .end local v113    # "x_tmp":F
    .end local v114    # "y_tmp":F
    .end local v115    # "y_tmp_z":F
    .local v103, "x_tmp_x":F
    .local v104, "x_tmp_y":F
    .local v105, "x_tmp_z":F
    .local v106, "val_tmp_x":F
    .local v107, "val_tmp_y":F
    .local v108, "val_tmp_z":F
    .local v109, "min_tmp":F
    .local v110, "max_tmp":F
    :cond_d
    move/from16 v116, v106

    move/from16 v117, v110

    cmpl-float v116, v116, v117

    if-lez v116, :cond_e

    move/from16 v116, v110

    goto/16 :goto_9

    :cond_e
    move/from16 v116, v106

    goto/16 :goto_9

    .line 360
    .local v103, "clamp_res_x":F
    :cond_f
    move/from16 v116, v107

    move/from16 v117, v110

    cmpl-float v116, v116, v117

    if-lez v116, :cond_10

    move/from16 v116, v110

    goto/16 :goto_a

    :cond_10
    move/from16 v116, v107

    goto/16 :goto_a

    .line 362
    .local v104, "clamp_res_y":F
    :cond_11
    move/from16 v116, v108

    move/from16 v117, v110

    cmpl-float v116, v116, v117

    if-lez v116, :cond_12

    move/from16 v116, v110

    goto/16 :goto_b

    :cond_12
    move/from16 v116, v108

    goto/16 :goto_b

    .line 401
    .restart local v101    # "D_w":F
    .local v105, "clamp_res_z":F
    .local v106, "S_x":F
    .local v107, "S_y":F
    .local v108, "S_z":F
    .local v110, "NdotH":F
    .restart local v111    # "pow_res":F
    .restart local v113    # "x_tmp":F
    .restart local v114    # "y_tmp":F
    .restart local v115    # "y_tmp_z":F
    :cond_13
    move/from16 v116, v114

    goto/16 :goto_c

    .line 408
    .local v109, "S_w":F
    .restart local v112    # "max_res":F
    :cond_14
    move/from16 v116, v114

    goto/16 :goto_d

    .line 427
    .restart local v39    # "color_x":F
    .restart local v40    # "color_y":F
    .restart local v41    # "color_z":F
    .restart local v42    # "color_w":F
    :cond_15
    move/from16 v116, v42

    const/high16 v117, 0x3f800000    # 1.0f

    cmpl-float v116, v116, v117

    if-lez v116, :cond_9

    const/high16 v116, 0x3f800000    # 1.0f

    move/from16 v42, v116

    goto/16 :goto_e

    .line 428
    :cond_16
    move/from16 v116, v39

    move/from16 v117, v42

    cmpl-float v116, v116, v117

    if-lez v116, :cond_a

    move/from16 v116, v42

    move/from16 v39, v116

    goto/16 :goto_f

    .line 429
    :cond_17
    move/from16 v116, v40

    move/from16 v117, v42

    cmpl-float v116, v116, v117

    if-lez v116, :cond_b

    move/from16 v116, v42

    move/from16 v40, v116

    goto/16 :goto_10

    .line 430
    :cond_18
    move/from16 v116, v41

    move/from16 v117, v42

    cmpl-float v116, v116, v117

    if-lez v116, :cond_c

    move/from16 v116, v42

    move/from16 v41, v116

    goto/16 :goto_11

    .line 442
    .end local v39    # "color_x":F
    .end local v40    # "color_y":F
    .end local v41    # "color_z":F
    .end local v42    # "color_w":F
    .end local v67    # "pixcoord_x":F
    .end local v68    # "sample_res_x":F
    .end local v69    # "sample_res_y":F
    .end local v70    # "sample_res_z":F
    .end local v71    # "sample_res_w":F
    .end local v72    # "orig_x":F
    .end local v73    # "orig_y":F
    .end local v74    # "orig_z":F
    .end local v75    # "orig_w":F
    .end local v76    # "i":I
    .end local v77    # "sum_x":F
    .end local v78    # "sum_y":F
    .end local v79    # "sum_z":F
    .end local v80    # "normalize_res_x":F
    .end local v81    # "normalize_res_y":F
    .end local v82    # "normalize_res_z":F
    .end local v83    # "N_x":F
    .end local v84    # "N_y":F
    .end local v85    # "N_z":F
    .end local v86    # "Lxyz_x":F
    .end local v87    # "Lxyz_y":F
    .end local v88    # "Lxyz_z":F
    .end local v89    # "Lrgb_x":F
    .end local v90    # "Lrgb_y":F
    .end local v91    # "Lrgb_z":F
    .end local v92    # "E_x":F
    .end local v93    # "E_y":F
    .end local v94    # "E_z":F
    .end local v95    # "H_x":F
    .end local v96    # "H_y":F
    .end local v97    # "H_z":F
    .end local v98    # "D_x":F
    .end local v99    # "D_y":F
    .end local v100    # "D_z":F
    .end local v101    # "D_w":F
    .end local v102    # "dot_res":F
    .end local v103    # "clamp_res_x":F
    .end local v104    # "clamp_res_y":F
    .end local v105    # "clamp_res_z":F
    .end local v106    # "S_x":F
    .end local v107    # "S_y":F
    .end local v108    # "S_z":F
    .end local v109    # "S_w":F
    .end local v110    # "NdotH":F
    .end local v111    # "pow_res":F
    .end local v112    # "max_res":F
    .end local v113    # "x_tmp":F
    .end local v114    # "y_tmp":F
    .end local v115    # "y_tmp_z":F
    :cond_19
    move/from16 v116, v60

    move/from16 v117, v57

    add-float v116, v116, v117

    move/from16 v60, v116

    .line 443
    move/from16 v116, v61

    move/from16 v117, v59

    add-float v116, v116, v117

    move/from16 v61, v116

    .line 225
    add-int/lit8 v62, v62, 0x1

    goto/16 :goto_0

    .line 447
    .end local v38    # "dyi":I
    .end local v63    # "pixcoord_y":F
    .end local v64    # "pos0_x":F
    .end local v65    # "pos1_x":F
    .end local v66    # "dx":I
    :cond_1a
    move-object/from16 v116, v7

    const/16 v117, 0x0

    aget-object v116, v116, v117

    move-object/from16 v117, v9

    invoke-virtual/range {v116 .. v117}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 448
    move-object/from16 v116, v7

    const/16 v117, 0x1

    aget-object v116, v116, v117

    move-object/from16 v117, v19

    invoke-virtual/range {v116 .. v117}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 451
    new-instance v116, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v125, v116

    move-object/from16 v116, v125

    move-object/from16 v117, v125

    move-object/from16 v118, v2

    invoke-virtual/range {v118 .. v118}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v118

    move-object/from16 v119, v35

    move-object/from16 v120, v8

    invoke-direct/range {v117 .. v120}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v116

    .end local v2    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    return-object v2
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    return-object v0
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/PhongLighting;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/PhongLighting;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_DISTANTPeer;
    return-object v0
.end method

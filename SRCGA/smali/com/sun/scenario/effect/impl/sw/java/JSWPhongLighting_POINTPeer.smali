.class public Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
.super Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;
.source "JSWPhongLighting_POINTPeer.java"


# instance fields
.field private kvals:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
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

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getDiffuseConstant()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    return v0
.end method

.method private getKvals()Ljava/nio/FloatBuffer;
    .locals 13

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

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

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->kvals:Ljava/nio/FloatBuffer;

    if-nez v10, :cond_0

    .line 114
    move-object v10, v0

    const/16 v11, 0x20

    invoke-static {v11}, Lcom/sun/scenario/effect/impl/BufferUtil;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->kvals:Ljava/nio/FloatBuffer;

    .line 116
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->kvals:Ljava/nio/FloatBuffer;

    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v10

    .line 117
    const/4 v10, 0x0

    move v6, v10

    .line 118
    .local v6, "kidx":I
    move-object v10, v0

    invoke-direct {v10}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getSurfaceScale()F

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

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->kvals:Ljava/nio/FloatBuffer;

    move v11, v9

    int-to-float v11, v11

    move v12, v2

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 123
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->kvals:Ljava/nio/FloatBuffer;

    move v11, v8

    int-to-float v11, v11

    move v12, v3

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 124
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->kvals:Ljava/nio/FloatBuffer;

    move-object v11, v4

    move v12, v6

    aget v11, v11, v12

    move v12, v7

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 125
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->kvals:Ljava/nio/FloatBuffer;

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

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->kvals:Ljava/nio/FloatBuffer;

    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v10

    .line 131
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->kvals:Ljava/nio/FloatBuffer;

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
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

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    const/16 v1, 0x8

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    return v0
.end method

.method private getLightColor()[F
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/Light;->getColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Color4f;->getPremultipliedRGBComponents()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    return-object v0
.end method

.method private getLightPosition()[F
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    move-object v2, v0

    .line 82
    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

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

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    return-object v0
.end method

.method private getLightSpecularExponent()F
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/light/SpotLight;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/SpotLight;->getSpecularExponent()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    return v0
.end method

.method private getNormalizedLightDirection()[F
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/light/SpotLight;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/SpotLight;->getNormalizedLightDirection()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    return-object v0
.end method

.method private getNormalizedLightPosition()[F
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/Light;->getNormalizedLightPosition()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    return-object v0
.end method

.method private getSpecularConstant()F
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getSpecularConstant()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    return v0
.end method

.method private getSpecularExponent()F
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getSpecularExponent()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    return v0
.end method

.method private getSurfaceScale()F
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getSurfaceScale()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    return v0
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 132

    .prologue
    .line 146
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    move-object/from16 v4, p1

    .local v4, "effect":Lcom/sun/scenario/effect/Effect;
    move-object/from16 v5, p2

    .local v5, "rstate":Lcom/sun/scenario/effect/impl/state/RenderState;
    move-object/from16 v6, p3

    .local v6, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v7, p4

    .local v7, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v8, p5

    .local v8, "inputs":[Lcom/sun/scenario/effect/ImageData;
    move-object/from16 v122, v3

    move-object/from16 v123, v4

    invoke-virtual/range {v122 .. v123}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 147
    move-object/from16 v122, v3

    move-object/from16 v123, v6

    move-object/from16 v124, v7

    move-object/from16 v125, v8

    invoke-virtual/range {v122 .. v125}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v122

    move-object/from16 v9, v122

    .line 148
    .local v9, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v122, v3

    move-object/from16 v123, v9

    invoke-virtual/range {v122 .. v123}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 151
    move-object/from16 v122, v8

    const/16 v123, 0x0

    aget-object v122, v122, v123

    move-object/from16 v123, v9

    invoke-virtual/range {v122 .. v123}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v122

    check-cast v122, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v10, v122

    .line 152
    .local v10, "src0":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v122, 0x0

    move/from16 v11, v122

    .line 153
    .local v11, "src0x":I
    const/16 v122, 0x0

    move/from16 v12, v122

    .line 154
    .local v12, "src0y":I
    move-object/from16 v122, v10

    invoke-interface/range {v122 .. v122}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v122

    move/from16 v13, v122

    .line 155
    .local v13, "src0w":I
    move-object/from16 v122, v10

    invoke-interface/range {v122 .. v122}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v122

    move/from16 v14, v122

    .line 156
    .local v14, "src0h":I
    move-object/from16 v122, v10

    invoke-interface/range {v122 .. v122}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v122

    move/from16 v15, v122

    .line 157
    .local v15, "src0scan":I
    move-object/from16 v122, v10

    .line 158
    invoke-interface/range {v122 .. v122}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v122

    move-object/from16 v16, v122

    .line 159
    .local v16, "bumpImg":[I
    new-instance v122, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v131, v122

    move-object/from16 v122, v131

    move-object/from16 v123, v131

    move/from16 v124, v11

    move/from16 v125, v12

    move/from16 v126, v13

    move/from16 v127, v14

    invoke-direct/range {v123 .. v127}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v17, v122

    .line 160
    .local v17, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v122, v8

    const/16 v123, 0x0

    aget-object v122, v122, v123

    move-object/from16 v123, v9

    invoke-virtual/range {v122 .. v123}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v122

    move-object/from16 v18, v122

    .line 161
    .local v18, "src0InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v122, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v19, v122

    .line 162
    .local v19, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v122, v3

    const/16 v123, 0x0

    move-object/from16 v124, v18

    invoke-virtual/range {v122 .. v124}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 163
    move-object/from16 v122, v3

    const/16 v123, 0x0

    move-object/from16 v124, v17

    invoke-virtual/range {v122 .. v124}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 164
    move-object/from16 v122, v8

    const/16 v123, 0x1

    aget-object v122, v122, v123

    move-object/from16 v123, v9

    invoke-virtual/range {v122 .. v123}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v122

    check-cast v122, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v20, v122

    .line 165
    .local v20, "src1":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v122, 0x0

    move/from16 v21, v122

    .line 166
    .local v21, "src1x":I
    const/16 v122, 0x0

    move/from16 v22, v122

    .line 167
    .local v22, "src1y":I
    move-object/from16 v122, v20

    invoke-interface/range {v122 .. v122}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v122

    move/from16 v23, v122

    .line 168
    .local v23, "src1w":I
    move-object/from16 v122, v20

    invoke-interface/range {v122 .. v122}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v122

    move/from16 v24, v122

    .line 169
    .local v24, "src1h":I
    move-object/from16 v122, v20

    invoke-interface/range {v122 .. v122}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v122

    move/from16 v25, v122

    .line 170
    .local v25, "src1scan":I
    move-object/from16 v122, v20

    .line 171
    invoke-interface/range {v122 .. v122}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v122

    move-object/from16 v26, v122

    .line 172
    .local v26, "origImg":[I
    new-instance v122, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v131, v122

    move-object/from16 v122, v131

    move-object/from16 v123, v131

    move/from16 v124, v21

    move/from16 v125, v22

    move/from16 v126, v23

    move/from16 v127, v24

    invoke-direct/range {v123 .. v127}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v27, v122

    .line 173
    .local v27, "src1Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v122, v8

    const/16 v123, 0x1

    aget-object v122, v122, v123

    move-object/from16 v123, v9

    invoke-virtual/range {v122 .. v123}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v122

    move-object/from16 v28, v122

    .line 174
    .local v28, "src1InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v122, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v29, v122

    .line 175
    .local v29, "src1Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v122, v3

    const/16 v123, 0x1

    move-object/from16 v124, v28

    invoke-virtual/range {v122 .. v124}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 176
    move-object/from16 v122, v3

    const/16 v123, 0x1

    move-object/from16 v124, v27

    invoke-virtual/range {v122 .. v124}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 179
    const/16 v122, 0x4

    move/from16 v0, v122

    new-array v0, v0, [F

    move-object/from16 v122, v0

    move-object/from16 v30, v122

    .line 180
    .local v30, "src0Rect":[F
    move-object/from16 v122, v3

    const/16 v123, 0x0

    move-object/from16 v124, v30

    move-object/from16 v125, v18

    move-object/from16 v0, v125

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v125, v0

    move/from16 v0, v125

    int-to-float v0, v0

    move/from16 v125, v0

    move-object/from16 v126, v18

    move-object/from16 v0, v126

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v126, v0

    move/from16 v0, v126

    int-to-float v0, v0

    move/from16 v126, v0

    move/from16 v127, v13

    move/from16 v0, v127

    int-to-float v0, v0

    move/from16 v127, v0

    move/from16 v128, v14

    move/from16 v0, v128

    int-to-float v0, v0

    move/from16 v128, v0

    move-object/from16 v129, v9

    move-object/from16 v130, v19

    invoke-virtual/range {v122 .. v130}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v122

    .line 184
    const/16 v122, 0x4

    move/from16 v0, v122

    new-array v0, v0, [F

    move-object/from16 v122, v0

    move-object/from16 v31, v122

    .line 185
    .local v31, "src1Rect":[F
    move-object/from16 v122, v3

    const/16 v123, 0x1

    move-object/from16 v124, v31

    move-object/from16 v125, v28

    move-object/from16 v0, v125

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v125, v0

    move/from16 v0, v125

    int-to-float v0, v0

    move/from16 v125, v0

    move-object/from16 v126, v28

    move-object/from16 v0, v126

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v126, v0

    move/from16 v0, v126

    int-to-float v0, v0

    move/from16 v126, v0

    move/from16 v127, v23

    move/from16 v0, v127

    int-to-float v0, v0

    move/from16 v127, v0

    move/from16 v128, v24

    move/from16 v0, v128

    int-to-float v0, v0

    move/from16 v128, v0

    move-object/from16 v129, v9

    move-object/from16 v130, v29

    invoke-virtual/range {v122 .. v130}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v122

    .line 191
    const/16 v122, 0x0

    move/from16 v32, v122

    .line 192
    .local v32, "dstx":I
    const/16 v122, 0x0

    move/from16 v33, v122

    .line 193
    .local v33, "dsty":I
    move-object/from16 v122, v9

    move-object/from16 v0, v122

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v122, v0

    move/from16 v34, v122

    .line 194
    .local v34, "dstw":I
    move-object/from16 v122, v9

    move-object/from16 v0, v122

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v122, v0

    move/from16 v35, v122

    .line 196
    .local v35, "dsth":I
    move-object/from16 v122, v3

    invoke-virtual/range {v122 .. v122}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v122

    move/from16 v123, v34

    move/from16 v124, v35

    invoke-virtual/range {v122 .. v124}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v122

    check-cast v122, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v36, v122

    .line 197
    .local v36, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v122, v3

    move-object/from16 v123, v36

    invoke-interface/range {v123 .. v123}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v123

    move-object/from16 v124, v36

    invoke-interface/range {v124 .. v124}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v124

    invoke-virtual/range {v122 .. v124}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->setDestNativeBounds(II)V

    .line 198
    move-object/from16 v122, v36

    invoke-interface/range {v122 .. v122}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v122

    move/from16 v37, v122

    .line 199
    .local v37, "dstscan":I
    move-object/from16 v122, v36

    invoke-interface/range {v122 .. v122}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v122

    move-object/from16 v38, v122

    .line 204
    .local v38, "dstPixels":[I
    move-object/from16 v122, v3

    invoke-direct/range {v122 .. v122}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getLightPosition()[F

    move-result-object v122

    move-object/from16 v44, v122

    .line 205
    .local v44, "lightPosition_arr":[F
    move-object/from16 v122, v44

    const/16 v123, 0x0

    aget v122, v122, v123

    move/from16 v45, v122

    .local v45, "lightPosition_x":F
    move-object/from16 v122, v44

    const/16 v123, 0x1

    aget v122, v122, v123

    move/from16 v46, v122

    .local v46, "lightPosition_y":F
    move-object/from16 v122, v44

    const/16 v123, 0x2

    aget v122, v122, v123

    move/from16 v47, v122

    .line 206
    .local v47, "lightPosition_z":F
    move-object/from16 v122, v3

    invoke-direct/range {v122 .. v122}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getSpecularExponent()F

    move-result v122

    move/from16 v48, v122

    .line 207
    .local v48, "specularExponent":F
    move-object/from16 v122, v3

    invoke-direct/range {v122 .. v122}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getKvals()Ljava/nio/FloatBuffer;

    move-result-object v122

    move-object/from16 v49, v122

    .line 208
    .local v49, "kvals_buf":Ljava/nio/FloatBuffer;
    move-object/from16 v122, v49

    invoke-virtual/range {v122 .. v122}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v122

    move/from16 v0, v122

    new-array v0, v0, [F

    move-object/from16 v122, v0

    move-object/from16 v50, v122

    .line 209
    .local v50, "kvals_arr":[F
    move-object/from16 v122, v49

    move-object/from16 v123, v50

    invoke-virtual/range {v122 .. v123}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    move-result-object v122

    .line 210
    move-object/from16 v122, v3

    invoke-direct/range {v122 .. v122}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getDiffuseConstant()F

    move-result v122

    move/from16 v51, v122

    .line 211
    .local v51, "diffuseConstant":F
    move-object/from16 v122, v3

    invoke-direct/range {v122 .. v122}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getLightColor()[F

    move-result-object v122

    move-object/from16 v52, v122

    .line 212
    .local v52, "lightColor_arr":[F
    move-object/from16 v122, v52

    const/16 v123, 0x0

    aget v122, v122, v123

    move/from16 v53, v122

    .local v53, "lightColor_x":F
    move-object/from16 v122, v52

    const/16 v123, 0x1

    aget v122, v122, v123

    move/from16 v54, v122

    .local v54, "lightColor_y":F
    move-object/from16 v122, v52

    const/16 v123, 0x2

    aget v122, v122, v123

    move/from16 v55, v122

    .line 213
    .local v55, "lightColor_z":F
    move-object/from16 v122, v3

    invoke-direct/range {v122 .. v122}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getSpecularConstant()F

    move-result v122

    move/from16 v56, v122

    .line 214
    .local v56, "specularConstant":F
    move-object/from16 v122, v3

    invoke-direct/range {v122 .. v122}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getSurfaceScale()F

    move-result v122

    move/from16 v57, v122

    .line 217
    .local v57, "surfaceScale":F
    move-object/from16 v122, v30

    const/16 v123, 0x2

    aget v122, v122, v123

    move-object/from16 v123, v30

    const/16 v124, 0x0

    aget v123, v123, v124

    sub-float v122, v122, v123

    move/from16 v123, v34

    move/from16 v0, v123

    int-to-float v0, v0

    move/from16 v123, v0

    div-float v122, v122, v123

    move/from16 v58, v122

    .line 218
    .local v58, "inc0_x":F
    move-object/from16 v122, v30

    const/16 v123, 0x3

    aget v122, v122, v123

    move-object/from16 v123, v30

    const/16 v124, 0x1

    aget v123, v123, v124

    sub-float v122, v122, v123

    move/from16 v123, v35

    move/from16 v0, v123

    int-to-float v0, v0

    move/from16 v123, v0

    div-float v122, v122, v123

    move/from16 v59, v122

    .line 219
    .local v59, "inc0_y":F
    move-object/from16 v122, v31

    const/16 v123, 0x2

    aget v122, v122, v123

    move-object/from16 v123, v31

    const/16 v124, 0x0

    aget v123, v123, v124

    sub-float v122, v122, v123

    move/from16 v123, v34

    move/from16 v0, v123

    int-to-float v0, v0

    move/from16 v123, v0

    div-float v122, v122, v123

    move/from16 v60, v122

    .line 220
    .local v60, "inc1_x":F
    move-object/from16 v122, v31

    const/16 v123, 0x3

    aget v122, v122, v123

    move-object/from16 v123, v31

    const/16 v124, 0x1

    aget v123, v123, v124

    sub-float v122, v122, v123

    move/from16 v123, v35

    move/from16 v0, v123

    int-to-float v0, v0

    move/from16 v123, v0

    div-float v122, v122, v123

    move/from16 v61, v122

    .line 223
    .local v61, "inc1_y":F
    move-object/from16 v122, v30

    const/16 v123, 0x1

    aget v122, v122, v123

    move/from16 v123, v59

    const/high16 v124, 0x3f000000    # 0.5f

    mul-float v123, v123, v124

    add-float v122, v122, v123

    move/from16 v62, v122

    .line 224
    .local v62, "pos0_y":F
    move-object/from16 v122, v31

    const/16 v123, 0x1

    aget v122, v122, v123

    move/from16 v123, v61

    const/high16 v124, 0x3f000000    # 0.5f

    mul-float v123, v123, v124

    add-float v122, v122, v123

    move/from16 v63, v122

    .line 226
    .local v63, "pos1_y":F
    const/16 v122, 0x0

    move/from16 v64, v122

    .local v64, "dy":I
    :goto_0
    move/from16 v122, v64

    const/16 v123, 0x0

    move/from16 v124, v35

    add-int v123, v123, v124

    move/from16 v0, v122

    move/from16 v1, v123

    if-ge v0, v1, :cond_1e

    .line 227
    move/from16 v122, v64

    move/from16 v0, v122

    int-to-float v0, v0

    move/from16 v122, v0

    move/from16 v65, v122

    .line 229
    .local v65, "pixcoord_y":F
    move/from16 v122, v64

    move/from16 v123, v37

    mul-int v122, v122, v123

    move/from16 v39, v122

    .line 231
    .local v39, "dyi":I
    move-object/from16 v122, v30

    const/16 v123, 0x0

    aget v122, v122, v123

    move/from16 v123, v58

    const/high16 v124, 0x3f000000    # 0.5f

    mul-float v123, v123, v124

    add-float v122, v122, v123

    move/from16 v66, v122

    .line 232
    .local v66, "pos0_x":F
    move-object/from16 v122, v31

    const/16 v123, 0x0

    aget v122, v122, v123

    move/from16 v123, v60

    const/high16 v124, 0x3f000000    # 0.5f

    mul-float v123, v123, v124

    add-float v122, v122, v123

    move/from16 v67, v122

    .line 234
    .local v67, "pos1_x":F
    const/16 v122, 0x0

    move/from16 v68, v122

    .local v68, "dx":I
    :goto_1
    move/from16 v122, v68

    const/16 v123, 0x0

    move/from16 v124, v34

    add-int v123, v123, v124

    move/from16 v0, v122

    move/from16 v1, v123

    if-ge v0, v1, :cond_1d

    .line 235
    move/from16 v122, v68

    move/from16 v0, v122

    int-to-float v0, v0

    move/from16 v122, v0

    move/from16 v69, v122

    .line 241
    .local v69, "pixcoord_x":F
    move/from16 v122, v67

    move/from16 v74, v122

    .line 242
    .local v74, "loc_tmp_x":F
    move/from16 v122, v63

    move/from16 v75, v122

    .line 244
    .local v75, "loc_tmp_y":F
    move/from16 v122, v74

    const/16 v123, 0x0

    cmpl-float v122, v122, v123

    if-ltz v122, :cond_4

    move/from16 v122, v75

    const/16 v123, 0x0

    cmpl-float v122, v122, v123

    if-ltz v122, :cond_4

    .line 245
    move/from16 v122, v74

    move/from16 v123, v23

    move/from16 v0, v123

    int-to-float v0, v0

    move/from16 v123, v0

    mul-float v122, v122, v123

    move/from16 v0, v122

    float-to-int v0, v0

    move/from16 v122, v0

    move/from16 v77, v122

    .line 246
    .local v77, "iloc_tmp_x":I
    move/from16 v122, v75

    move/from16 v123, v24

    move/from16 v0, v123

    int-to-float v0, v0

    move/from16 v123, v0

    mul-float v122, v122, v123

    move/from16 v0, v122

    float-to-int v0, v0

    move/from16 v122, v0

    move/from16 v78, v122

    .line 247
    .local v78, "iloc_tmp_y":I
    move/from16 v122, v77

    move/from16 v123, v23

    move/from16 v0, v122

    move/from16 v1, v123

    if-ge v0, v1, :cond_0

    move/from16 v122, v78

    move/from16 v123, v24

    move/from16 v0, v122

    move/from16 v1, v123

    if-lt v0, v1, :cond_2

    :cond_0
    const/16 v122, 0x1

    :goto_2
    move/from16 v79, v122

    .line 250
    .local v79, "out":Z
    move/from16 v122, v79

    if-eqz v122, :cond_3

    const/16 v122, 0x0

    :goto_3
    move/from16 v76, v122

    .line 255
    .end local v77    # "iloc_tmp_x":I
    .end local v78    # "iloc_tmp_y":I
    .end local v79    # "out":Z
    .local v76, "origImg_tmp":I
    :goto_4
    move/from16 v122, v76

    const/16 v123, 0x10

    shr-int/lit8 v122, v122, 0x10

    const/16 v123, 0xff

    move/from16 v0, v122

    and-int/lit16 v0, v0, 0xff

    move/from16 v122, v0

    move/from16 v0, v122

    int-to-float v0, v0

    move/from16 v122, v0

    const/high16 v123, 0x437f0000    # 255.0f

    div-float v122, v122, v123

    move/from16 v70, v122

    .line 256
    .local v70, "sample_res_x":F
    move/from16 v122, v76

    const/16 v123, 0x8

    shr-int/lit8 v122, v122, 0x8

    const/16 v123, 0xff

    move/from16 v0, v122

    and-int/lit16 v0, v0, 0xff

    move/from16 v122, v0

    move/from16 v0, v122

    int-to-float v0, v0

    move/from16 v122, v0

    const/high16 v123, 0x437f0000    # 255.0f

    div-float v122, v122, v123

    move/from16 v71, v122

    .line 257
    .local v71, "sample_res_y":F
    move/from16 v122, v76

    const/16 v123, 0xff

    move/from16 v0, v122

    and-int/lit16 v0, v0, 0xff

    move/from16 v122, v0

    move/from16 v0, v122

    int-to-float v0, v0

    move/from16 v122, v0

    const/high16 v123, 0x437f0000    # 255.0f

    div-float v122, v122, v123

    move/from16 v72, v122

    .line 258
    .local v72, "sample_res_z":F
    move/from16 v122, v76

    const/16 v123, 0x18

    ushr-int/lit8 v122, v122, 0x18

    move/from16 v0, v122

    int-to-float v0, v0

    move/from16 v122, v0

    const/high16 v123, 0x437f0000    # 255.0f

    div-float v122, v122, v123

    move/from16 v73, v122

    .line 261
    .local v73, "sample_res_w":F
    move/from16 v122, v70

    move/from16 v74, v122

    .line 262
    .local v74, "orig_x":F
    move/from16 v122, v71

    move/from16 v75, v122

    .line 263
    .local v75, "orig_y":F
    move/from16 v122, v72

    move/from16 v76, v122

    .line 264
    .local v76, "orig_z":F
    move/from16 v122, v73

    move/from16 v77, v122

    .line 266
    .local v77, "orig_w":F
    const/16 v122, 0x0

    move/from16 v79, v122

    .line 267
    .local v79, "sum_x":F
    const/16 v122, 0x0

    move/from16 v80, v122

    .line 268
    .local v80, "sum_y":F
    const/high16 v122, 0x3f800000    # 1.0f

    move/from16 v81, v122

    .line 269
    .local v81, "sum_z":F
    const/16 v122, 0x0

    move/from16 v78, v122

    .line 270
    .local v78, "i":I
    :goto_5
    move/from16 v122, v78

    const/16 v123, 0x8

    move/from16 v0, v122

    move/from16 v1, v123

    if-ge v0, v1, :cond_8

    .line 272
    move/from16 v122, v66

    move-object/from16 v123, v50

    move/from16 v124, v78

    const/16 v125, 0x4

    mul-int/lit8 v124, v124, 0x4

    const/16 v125, 0x0

    add-int/lit8 v124, v124, 0x0

    aget v123, v123, v124

    add-float v122, v122, v123

    move/from16 v82, v122

    .line 273
    .local v82, "loc_tmp_x":F
    move/from16 v122, v62

    move-object/from16 v123, v50

    move/from16 v124, v78

    const/16 v125, 0x4

    mul-int/lit8 v124, v124, 0x4

    const/16 v125, 0x1

    add-int/lit8 v124, v124, 0x1

    aget v123, v123, v124

    add-float v122, v122, v123

    move/from16 v83, v122

    .line 275
    .local v83, "loc_tmp_y":F
    move/from16 v122, v82

    const/16 v123, 0x0

    cmpl-float v122, v122, v123

    if-ltz v122, :cond_7

    move/from16 v122, v83

    const/16 v123, 0x0

    cmpl-float v122, v122, v123

    if-ltz v122, :cond_7

    .line 276
    move/from16 v122, v82

    move/from16 v123, v13

    move/from16 v0, v123

    int-to-float v0, v0

    move/from16 v123, v0

    mul-float v122, v122, v123

    move/from16 v0, v122

    float-to-int v0, v0

    move/from16 v122, v0

    move/from16 v85, v122

    .line 277
    .local v85, "iloc_tmp_x":I
    move/from16 v122, v83

    move/from16 v123, v14

    move/from16 v0, v123

    int-to-float v0, v0

    move/from16 v123, v0

    mul-float v122, v122, v123

    move/from16 v0, v122

    float-to-int v0, v0

    move/from16 v122, v0

    move/from16 v86, v122

    .line 278
    .local v86, "iloc_tmp_y":I
    move/from16 v122, v85

    move/from16 v123, v13

    move/from16 v0, v122

    move/from16 v1, v123

    if-ge v0, v1, :cond_1

    move/from16 v122, v86

    move/from16 v123, v14

    move/from16 v0, v122

    move/from16 v1, v123

    if-lt v0, v1, :cond_5

    :cond_1
    const/16 v122, 0x1

    :goto_6
    move/from16 v87, v122

    .line 281
    .local v87, "out":Z
    move/from16 v122, v87

    if-eqz v122, :cond_6

    const/16 v122, 0x0

    :goto_7
    move/from16 v84, v122

    .line 286
    .end local v85    # "iloc_tmp_x":I
    .end local v86    # "iloc_tmp_y":I
    .end local v87    # "out":Z
    .local v84, "bumpImg_tmp":I
    :goto_8
    move/from16 v122, v84

    const/16 v123, 0x18

    ushr-int/lit8 v122, v122, 0x18

    move/from16 v0, v122

    int-to-float v0, v0

    move/from16 v122, v0

    const/high16 v123, 0x437f0000    # 255.0f

    div-float v122, v122, v123

    move/from16 v73, v122

    .line 289
    move/from16 v122, v79

    move-object/from16 v123, v50

    move/from16 v124, v78

    const/16 v125, 0x4

    mul-int/lit8 v124, v124, 0x4

    const/16 v125, 0x2

    add-int/lit8 v124, v124, 0x2

    aget v123, v123, v124

    move/from16 v124, v73

    mul-float v123, v123, v124

    add-float v122, v122, v123

    move/from16 v79, v122

    .line 290
    move/from16 v122, v80

    move-object/from16 v123, v50

    move/from16 v124, v78

    const/16 v125, 0x4

    mul-int/lit8 v124, v124, 0x4

    const/16 v125, 0x3

    add-int/lit8 v124, v124, 0x3

    aget v123, v123, v124

    move/from16 v124, v73

    mul-float v123, v123, v124

    add-float v122, v122, v123

    move/from16 v80, v122

    .line 270
    add-int/lit8 v78, v78, 0x1

    goto/16 :goto_5

    .line 247
    .end local v70    # "sample_res_x":F
    .end local v71    # "sample_res_y":F
    .end local v72    # "sample_res_z":F
    .end local v73    # "sample_res_w":F
    .end local v76    # "orig_z":F
    .end local v79    # "sum_x":F
    .end local v80    # "sum_y":F
    .end local v81    # "sum_z":F
    .end local v82    # "loc_tmp_x":F
    .end local v83    # "loc_tmp_y":F
    .end local v84    # "bumpImg_tmp":I
    .local v74, "loc_tmp_x":F
    .local v75, "loc_tmp_y":F
    .local v77, "iloc_tmp_x":I
    .local v78, "iloc_tmp_y":I
    :cond_2
    const/16 v122, 0x0

    goto/16 :goto_2

    .line 250
    .local v79, "out":Z
    :cond_3
    move-object/from16 v122, v26

    move/from16 v123, v78

    move/from16 v124, v25

    mul-int v123, v123, v124

    move/from16 v124, v77

    add-int v123, v123, v124

    aget v122, v122, v123

    goto/16 :goto_3

    .line 253
    .end local v77    # "iloc_tmp_x":I
    .end local v78    # "iloc_tmp_y":I
    .end local v79    # "out":Z
    :cond_4
    const/16 v122, 0x0

    move/from16 v76, v122

    .local v76, "origImg_tmp":I
    goto/16 :goto_4

    .line 278
    .restart local v70    # "sample_res_x":F
    .restart local v71    # "sample_res_y":F
    .restart local v72    # "sample_res_z":F
    .restart local v73    # "sample_res_w":F
    .local v74, "orig_x":F
    .local v75, "orig_y":F
    .local v76, "orig_z":F
    .local v77, "orig_w":F
    .local v78, "i":I
    .local v79, "sum_x":F
    .restart local v80    # "sum_y":F
    .restart local v81    # "sum_z":F
    .restart local v82    # "loc_tmp_x":F
    .restart local v83    # "loc_tmp_y":F
    .restart local v85    # "iloc_tmp_x":I
    .restart local v86    # "iloc_tmp_y":I
    :cond_5
    const/16 v122, 0x0

    goto :goto_6

    .line 281
    .restart local v87    # "out":Z
    :cond_6
    move-object/from16 v122, v16

    move/from16 v123, v86

    move/from16 v124, v15

    mul-int v123, v123, v124

    move/from16 v124, v85

    add-int v123, v123, v124

    aget v122, v122, v123

    goto :goto_7

    .line 284
    .end local v85    # "iloc_tmp_x":I
    .end local v86    # "iloc_tmp_y":I
    .end local v87    # "out":Z
    :cond_7
    const/16 v122, 0x0

    move/from16 v84, v122

    .restart local v84    # "bumpImg_tmp":I
    goto :goto_8

    .line 294
    .end local v82    # "loc_tmp_x":F
    .end local v83    # "loc_tmp_y":F
    .end local v84    # "bumpImg_tmp":I
    :cond_8
    move/from16 v122, v79

    move/from16 v85, v122

    .line 295
    .local v85, "x_tmp_x":F
    move/from16 v122, v80

    move/from16 v86, v122

    .line 296
    .local v86, "x_tmp_y":F
    move/from16 v122, v81

    move/from16 v87, v122

    .line 297
    .local v87, "x_tmp_z":F
    move/from16 v122, v85

    move/from16 v123, v85

    mul-float v122, v122, v123

    move/from16 v123, v86

    move/from16 v124, v86

    mul-float v123, v123, v124

    add-float v122, v122, v123

    move/from16 v123, v87

    move/from16 v124, v87

    mul-float v123, v123, v124

    add-float v122, v122, v123

    move/from16 v0, v122

    float-to-double v0, v0

    move-wide/from16 v122, v0

    invoke-static/range {v122 .. v123}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v122

    move-wide/from16 v0, v122

    double-to-float v0, v0

    move/from16 v122, v0

    move/from16 v88, v122

    .line 300
    .local v88, "denom":F
    move/from16 v122, v85

    move/from16 v123, v88

    div-float v122, v122, v123

    move/from16 v82, v122

    .line 301
    .local v82, "normalize_res_x":F
    move/from16 v122, v86

    move/from16 v123, v88

    div-float v122, v122, v123

    move/from16 v83, v122

    .line 302
    .local v83, "normalize_res_y":F
    move/from16 v122, v87

    move/from16 v123, v88

    div-float v122, v122, v123

    move/from16 v84, v122

    .line 305
    .local v84, "normalize_res_z":F
    move/from16 v122, v82

    move/from16 v85, v122

    .line 306
    .local v85, "N_x":F
    move/from16 v122, v83

    move/from16 v86, v122

    .line 307
    .local v86, "N_y":F
    move/from16 v122, v84

    move/from16 v87, v122

    .line 309
    .local v87, "N_z":F
    move/from16 v122, v66

    move/from16 v88, v122

    .line 310
    .local v88, "loc_tmp_x":F
    move/from16 v122, v62

    move/from16 v89, v122

    .line 312
    .local v89, "loc_tmp_y":F
    move/from16 v122, v88

    const/16 v123, 0x0

    cmpl-float v122, v122, v123

    if-ltz v122, :cond_10

    move/from16 v122, v89

    const/16 v123, 0x0

    cmpl-float v122, v122, v123

    if-ltz v122, :cond_10

    .line 313
    move/from16 v122, v88

    move/from16 v123, v13

    move/from16 v0, v123

    int-to-float v0, v0

    move/from16 v123, v0

    mul-float v122, v122, v123

    move/from16 v0, v122

    float-to-int v0, v0

    move/from16 v122, v0

    move/from16 v91, v122

    .line 314
    .local v91, "iloc_tmp_x":I
    move/from16 v122, v89

    move/from16 v123, v14

    move/from16 v0, v123

    int-to-float v0, v0

    move/from16 v123, v0

    mul-float v122, v122, v123

    move/from16 v0, v122

    float-to-int v0, v0

    move/from16 v122, v0

    move/from16 v92, v122

    .line 315
    .local v92, "iloc_tmp_y":I
    move/from16 v122, v91

    move/from16 v123, v13

    move/from16 v0, v122

    move/from16 v1, v123

    if-ge v0, v1, :cond_9

    move/from16 v122, v92

    move/from16 v123, v14

    move/from16 v0, v122

    move/from16 v1, v123

    if-lt v0, v1, :cond_e

    :cond_9
    const/16 v122, 0x1

    :goto_9
    move/from16 v93, v122

    .line 318
    .local v93, "out":Z
    move/from16 v122, v93

    if-eqz v122, :cond_f

    const/16 v122, 0x0

    :goto_a
    move/from16 v90, v122

    .line 323
    .end local v91    # "iloc_tmp_x":I
    .end local v92    # "iloc_tmp_y":I
    .end local v93    # "out":Z
    .local v90, "bumpImg_tmp":I
    :goto_b
    move/from16 v122, v90

    const/16 v123, 0x18

    ushr-int/lit8 v122, v122, 0x18

    move/from16 v0, v122

    int-to-float v0, v0

    move/from16 v122, v0

    const/high16 v123, 0x437f0000    # 255.0f

    div-float v122, v122, v123

    move/from16 v73, v122

    .line 326
    move/from16 v122, v73

    move/from16 v88, v122

    .line 327
    .local v88, "bumpA":F
    move/from16 v122, v69

    move/from16 v89, v122

    .line 328
    .local v89, "tmp_x":F
    move/from16 v122, v65

    move/from16 v90, v122

    .line 329
    .local v90, "tmp_y":F
    move/from16 v122, v57

    move/from16 v123, v88

    mul-float v122, v122, v123

    move/from16 v91, v122

    .line 331
    .local v91, "tmp_z":F
    move/from16 v122, v45

    move/from16 v123, v89

    sub-float v122, v122, v123

    move/from16 v92, v122

    .line 332
    .local v92, "x_tmp_x":F
    move/from16 v122, v46

    move/from16 v123, v90

    sub-float v122, v122, v123

    move/from16 v93, v122

    .line 333
    .local v93, "x_tmp_y":F
    move/from16 v122, v47

    move/from16 v123, v91

    sub-float v122, v122, v123

    move/from16 v94, v122

    .line 334
    .local v94, "x_tmp_z":F
    move/from16 v122, v92

    move/from16 v123, v92

    mul-float v122, v122, v123

    move/from16 v123, v93

    move/from16 v124, v93

    mul-float v123, v123, v124

    add-float v122, v122, v123

    move/from16 v123, v94

    move/from16 v124, v94

    mul-float v123, v123, v124

    add-float v122, v122, v123

    move/from16 v0, v122

    float-to-double v0, v0

    move-wide/from16 v122, v0

    invoke-static/range {v122 .. v123}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v122

    move-wide/from16 v0, v122

    double-to-float v0, v0

    move/from16 v122, v0

    move/from16 v95, v122

    .line 337
    .local v95, "denom":F
    move/from16 v122, v92

    move/from16 v123, v95

    div-float v122, v122, v123

    move/from16 v82, v122

    .line 338
    move/from16 v122, v93

    move/from16 v123, v95

    div-float v122, v122, v123

    move/from16 v83, v122

    .line 339
    move/from16 v122, v94

    move/from16 v123, v95

    div-float v122, v122, v123

    move/from16 v84, v122

    .line 342
    move/from16 v122, v82

    move/from16 v92, v122

    .line 343
    .local v92, "Lxyz_x":F
    move/from16 v122, v83

    move/from16 v93, v122

    .line 344
    .local v93, "Lxyz_y":F
    move/from16 v122, v84

    move/from16 v94, v122

    .line 345
    .local v94, "Lxyz_z":F
    move/from16 v122, v53

    move/from16 v95, v122

    .line 346
    .local v95, "Lrgb_x":F
    move/from16 v122, v54

    move/from16 v96, v122

    .line 347
    .local v96, "Lrgb_y":F
    move/from16 v122, v55

    move/from16 v97, v122

    .line 348
    .local v97, "Lrgb_z":F
    const/16 v122, 0x0

    move/from16 v98, v122

    .line 349
    .local v98, "E_x":F
    const/16 v122, 0x0

    move/from16 v99, v122

    .line 350
    .local v99, "E_y":F
    const/high16 v122, 0x3f800000    # 1.0f

    move/from16 v100, v122

    .line 352
    .local v100, "E_z":F
    move/from16 v122, v92

    move/from16 v123, v98

    add-float v122, v122, v123

    move/from16 v101, v122

    .line 353
    .local v101, "x_tmp_x":F
    move/from16 v122, v93

    move/from16 v123, v99

    add-float v122, v122, v123

    move/from16 v102, v122

    .line 354
    .local v102, "x_tmp_y":F
    move/from16 v122, v94

    move/from16 v123, v100

    add-float v122, v122, v123

    move/from16 v103, v122

    .line 355
    .local v103, "x_tmp_z":F
    move/from16 v122, v101

    move/from16 v123, v101

    mul-float v122, v122, v123

    move/from16 v123, v102

    move/from16 v124, v102

    mul-float v123, v123, v124

    add-float v122, v122, v123

    move/from16 v123, v103

    move/from16 v124, v103

    mul-float v123, v123, v124

    add-float v122, v122, v123

    move/from16 v0, v122

    float-to-double v0, v0

    move-wide/from16 v122, v0

    invoke-static/range {v122 .. v123}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v122

    move-wide/from16 v0, v122

    double-to-float v0, v0

    move/from16 v122, v0

    move/from16 v104, v122

    .line 358
    .local v104, "denom":F
    move/from16 v122, v101

    move/from16 v123, v104

    div-float v122, v122, v123

    move/from16 v82, v122

    .line 359
    move/from16 v122, v102

    move/from16 v123, v104

    div-float v122, v122, v123

    move/from16 v83, v122

    .line 360
    move/from16 v122, v103

    move/from16 v123, v104

    div-float v122, v122, v123

    move/from16 v84, v122

    .line 363
    move/from16 v122, v82

    move/from16 v101, v122

    .line 364
    .local v101, "H_x":F
    move/from16 v122, v83

    move/from16 v102, v122

    .line 365
    .local v102, "H_y":F
    move/from16 v122, v84

    move/from16 v103, v122

    .line 372
    .local v103, "H_z":F
    move/from16 v122, v85

    move/from16 v109, v122

    .line 373
    .local v109, "x_tmp_x":F
    move/from16 v122, v86

    move/from16 v110, v122

    .line 374
    .local v110, "x_tmp_y":F
    move/from16 v122, v87

    move/from16 v111, v122

    .line 375
    .local v111, "x_tmp_z":F
    move/from16 v122, v92

    move/from16 v112, v122

    .line 376
    .local v112, "y_tmp_x":F
    move/from16 v122, v93

    move/from16 v113, v122

    .line 377
    .local v113, "y_tmp_y":F
    move/from16 v122, v94

    move/from16 v114, v122

    .line 378
    .local v114, "y_tmp_z":F
    move/from16 v122, v109

    move/from16 v123, v112

    mul-float v122, v122, v123

    move/from16 v123, v110

    move/from16 v124, v113

    mul-float v123, v123, v124

    add-float v122, v122, v123

    move/from16 v123, v111

    move/from16 v124, v114

    mul-float v123, v123, v124

    add-float v122, v122, v123

    move/from16 v108, v122

    .line 383
    .local v108, "dot_res":F
    move/from16 v122, v51

    move/from16 v123, v108

    mul-float v122, v122, v123

    move/from16 v123, v95

    mul-float v122, v122, v123

    move/from16 v104, v122

    .line 384
    .local v104, "D_x":F
    move/from16 v122, v51

    move/from16 v123, v108

    mul-float v122, v122, v123

    move/from16 v123, v96

    mul-float v122, v122, v123

    move/from16 v105, v122

    .line 385
    .local v105, "D_y":F
    move/from16 v122, v51

    move/from16 v123, v108

    mul-float v122, v122, v123

    move/from16 v123, v97

    mul-float v122, v122, v123

    move/from16 v106, v122

    .line 388
    .local v106, "D_z":F
    move/from16 v122, v104

    move/from16 v112, v122

    .line 389
    .local v112, "val_tmp_x":F
    move/from16 v122, v105

    move/from16 v113, v122

    .line 390
    .local v113, "val_tmp_y":F
    move/from16 v122, v106

    move/from16 v114, v122

    .line 391
    .local v114, "val_tmp_z":F
    const/16 v122, 0x0

    move/from16 v115, v122

    .line 392
    .local v115, "min_tmp":F
    const/high16 v122, 0x3f800000    # 1.0f

    move/from16 v116, v122

    .line 393
    .local v116, "max_tmp":F
    move/from16 v122, v112

    move/from16 v123, v115

    cmpg-float v122, v122, v123

    if-gez v122, :cond_11

    move/from16 v122, v115

    :goto_c
    move/from16 v109, v122

    .line 395
    .local v109, "clamp_res_x":F
    move/from16 v122, v113

    move/from16 v123, v115

    cmpg-float v122, v122, v123

    if-gez v122, :cond_13

    move/from16 v122, v115

    :goto_d
    move/from16 v110, v122

    .line 397
    .local v110, "clamp_res_y":F
    move/from16 v122, v114

    move/from16 v123, v115

    cmpg-float v122, v122, v123

    if-gez v122, :cond_15

    move/from16 v122, v115

    :goto_e
    move/from16 v111, v122

    .line 401
    .local v111, "clamp_res_z":F
    move/from16 v122, v109

    move/from16 v104, v122

    .line 402
    move/from16 v122, v110

    move/from16 v105, v122

    .line 403
    move/from16 v122, v111

    move/from16 v106, v122

    .line 404
    const/high16 v122, 0x3f800000    # 1.0f

    move/from16 v107, v122

    .line 410
    .local v107, "D_w":F
    move/from16 v122, v85

    move/from16 v116, v122

    .line 411
    .local v116, "x_tmp_x":F
    move/from16 v122, v86

    move/from16 v117, v122

    .line 412
    .local v117, "x_tmp_y":F
    move/from16 v122, v87

    move/from16 v118, v122

    .line 413
    .local v118, "x_tmp_z":F
    move/from16 v122, v101

    move/from16 v119, v122

    .line 414
    .local v119, "y_tmp_x":F
    move/from16 v122, v102

    move/from16 v120, v122

    .line 415
    .local v120, "y_tmp_y":F
    move/from16 v122, v103

    move/from16 v121, v122

    .line 416
    .local v121, "y_tmp_z":F
    move/from16 v122, v116

    move/from16 v123, v119

    mul-float v122, v122, v123

    move/from16 v123, v117

    move/from16 v124, v120

    mul-float v123, v123, v124

    add-float v122, v122, v123

    move/from16 v123, v118

    move/from16 v124, v121

    mul-float v123, v123, v124

    add-float v122, v122, v123

    move/from16 v108, v122

    .line 421
    move/from16 v122, v108

    move/from16 v116, v122

    .line 424
    .local v116, "NdotH":F
    move/from16 v122, v116

    move/from16 v118, v122

    .line 425
    .local v118, "x_tmp":F
    move/from16 v122, v48

    move/from16 v119, v122

    .line 426
    .local v119, "y_tmp":F
    move/from16 v122, v118

    move/from16 v0, v122

    float-to-double v0, v0

    move-wide/from16 v122, v0

    move/from16 v124, v119

    move/from16 v0, v124

    float-to-double v0, v0

    move-wide/from16 v124, v0

    invoke-static/range {v122 .. v125}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v122

    move-wide/from16 v0, v122

    double-to-float v0, v0

    move/from16 v122, v0

    move/from16 v117, v122

    .line 429
    .local v117, "pow_res":F
    move/from16 v122, v56

    move/from16 v123, v117

    mul-float v122, v122, v123

    move/from16 v123, v95

    mul-float v122, v122, v123

    move/from16 v112, v122

    .line 430
    .local v112, "S_x":F
    move/from16 v122, v56

    move/from16 v123, v117

    mul-float v122, v122, v123

    move/from16 v123, v96

    mul-float v122, v122, v123

    move/from16 v113, v122

    .line 431
    .local v113, "S_y":F
    move/from16 v122, v56

    move/from16 v123, v117

    mul-float v122, v122, v123

    move/from16 v123, v97

    mul-float v122, v122, v123

    move/from16 v114, v122

    .line 434
    .local v114, "S_z":F
    move/from16 v122, v112

    move/from16 v119, v122

    .line 435
    .end local v118    # "x_tmp":F
    .local v119, "x_tmp":F
    move/from16 v122, v113

    move/from16 v120, v122

    .line 436
    .local v120, "y_tmp":F
    move/from16 v122, v119

    move/from16 v123, v120

    cmpl-float v122, v122, v123

    if-lez v122, :cond_17

    move/from16 v122, v119

    :goto_f
    move/from16 v118, v122

    .line 439
    .local v118, "max_res":F
    move/from16 v122, v118

    move/from16 v115, v122

    .line 441
    .local v115, "S_w":F
    move/from16 v122, v115

    move/from16 v119, v122

    .line 442
    move/from16 v122, v114

    move/from16 v120, v122

    .line 443
    move/from16 v122, v119

    move/from16 v123, v120

    cmpl-float v122, v122, v123

    if-lez v122, :cond_18

    move/from16 v122, v119

    :goto_10
    move/from16 v118, v122

    .line 446
    move/from16 v122, v118

    move/from16 v115, v122

    .line 447
    move/from16 v122, v74

    move/from16 v123, v104

    mul-float v122, v122, v123

    move/from16 v74, v122

    .line 448
    move/from16 v122, v75

    move/from16 v123, v105

    mul-float v122, v122, v123

    move/from16 v75, v122

    .line 449
    move/from16 v122, v76

    move/from16 v123, v106

    mul-float v122, v122, v123

    move/from16 v76, v122

    .line 450
    move/from16 v122, v77

    move/from16 v123, v107

    mul-float v122, v122, v123

    move/from16 v77, v122

    .line 451
    move/from16 v122, v112

    move/from16 v123, v77

    mul-float v122, v122, v123

    move/from16 v112, v122

    .line 452
    move/from16 v122, v113

    move/from16 v123, v77

    mul-float v122, v122, v123

    move/from16 v113, v122

    .line 453
    move/from16 v122, v114

    move/from16 v123, v77

    mul-float v122, v122, v123

    move/from16 v114, v122

    .line 454
    move/from16 v122, v115

    move/from16 v123, v77

    mul-float v122, v122, v123

    move/from16 v115, v122

    .line 455
    move/from16 v122, v112

    move/from16 v123, v74

    const/high16 v124, 0x3f800000    # 1.0f

    move/from16 v125, v115

    sub-float v124, v124, v125

    mul-float v123, v123, v124

    add-float v122, v122, v123

    move/from16 v40, v122

    .line 456
    .local v40, "color_x":F
    move/from16 v122, v113

    move/from16 v123, v75

    const/high16 v124, 0x3f800000    # 1.0f

    move/from16 v125, v115

    sub-float v124, v124, v125

    mul-float v123, v123, v124

    add-float v122, v122, v123

    move/from16 v41, v122

    .line 457
    .local v41, "color_y":F
    move/from16 v122, v114

    move/from16 v123, v76

    const/high16 v124, 0x3f800000    # 1.0f

    move/from16 v125, v115

    sub-float v124, v124, v125

    mul-float v123, v123, v124

    add-float v122, v122, v123

    move/from16 v42, v122

    .line 458
    .local v42, "color_z":F
    move/from16 v122, v115

    move/from16 v123, v77

    const/high16 v124, 0x3f800000    # 1.0f

    move/from16 v125, v115

    sub-float v124, v124, v125

    mul-float v123, v123, v124

    add-float v122, v122, v123

    move/from16 v43, v122

    .line 462
    .local v43, "color_w":F
    move/from16 v122, v43

    const/16 v123, 0x0

    cmpg-float v122, v122, v123

    if-gez v122, :cond_19

    const/16 v122, 0x0

    move/from16 v43, v122

    .line 463
    :cond_a
    :goto_11
    move/from16 v122, v40

    const/16 v123, 0x0

    cmpg-float v122, v122, v123

    if-gez v122, :cond_1a

    const/16 v122, 0x0

    move/from16 v40, v122

    .line 464
    :cond_b
    :goto_12
    move/from16 v122, v41

    const/16 v123, 0x0

    cmpg-float v122, v122, v123

    if-gez v122, :cond_1b

    const/16 v122, 0x0

    move/from16 v41, v122

    .line 465
    :cond_c
    :goto_13
    move/from16 v122, v42

    const/16 v123, 0x0

    cmpg-float v122, v122, v123

    if-gez v122, :cond_1c

    const/16 v122, 0x0

    move/from16 v42, v122

    .line 466
    :cond_d
    :goto_14
    move-object/from16 v122, v38

    move/from16 v123, v39

    move/from16 v124, v68

    add-int v123, v123, v124

    move/from16 v124, v40

    const/high16 v125, 0x437f0000    # 255.0f

    mul-float v124, v124, v125

    move/from16 v0, v124

    float-to-int v0, v0

    move/from16 v124, v0

    const/16 v125, 0x10

    shl-int/lit8 v124, v124, 0x10

    move/from16 v125, v41

    const/high16 v126, 0x437f0000    # 255.0f

    mul-float v125, v125, v126

    move/from16 v0, v125

    float-to-int v0, v0

    move/from16 v125, v0

    const/16 v126, 0x8

    shl-int/lit8 v125, v125, 0x8

    or-int v124, v124, v125

    move/from16 v125, v42

    const/high16 v126, 0x437f0000    # 255.0f

    mul-float v125, v125, v126

    move/from16 v0, v125

    float-to-int v0, v0

    move/from16 v125, v0

    const/16 v126, 0x0

    shl-int/lit8 v125, v125, 0x0

    or-int v124, v124, v125

    move/from16 v125, v43

    const/high16 v126, 0x437f0000    # 255.0f

    mul-float v125, v125, v126

    move/from16 v0, v125

    float-to-int v0, v0

    move/from16 v125, v0

    const/16 v126, 0x18

    shl-int/lit8 v125, v125, 0x18

    or-int v124, v124, v125

    aput v124, v122, v123

    .line 472
    move/from16 v122, v66

    move/from16 v123, v58

    add-float v122, v122, v123

    move/from16 v66, v122

    .line 473
    move/from16 v122, v67

    move/from16 v123, v60

    add-float v122, v122, v123

    move/from16 v67, v122

    .line 234
    add-int/lit8 v68, v68, 0x1

    goto/16 :goto_1

    .line 315
    .end local v40    # "color_x":F
    .end local v41    # "color_y":F
    .end local v42    # "color_z":F
    .end local v43    # "color_w":F
    .end local v90    # "tmp_y":F
    .end local v93    # "Lxyz_y":F
    .end local v94    # "Lxyz_z":F
    .end local v95    # "Lrgb_x":F
    .end local v96    # "Lrgb_y":F
    .end local v97    # "Lrgb_z":F
    .end local v98    # "E_x":F
    .end local v99    # "E_y":F
    .end local v100    # "E_z":F
    .end local v101    # "H_x":F
    .end local v102    # "H_y":F
    .end local v103    # "H_z":F
    .end local v104    # "D_x":F
    .end local v105    # "D_y":F
    .end local v106    # "D_z":F
    .end local v107    # "D_w":F
    .end local v108    # "dot_res":F
    .end local v109    # "clamp_res_x":F
    .end local v110    # "clamp_res_y":F
    .end local v111    # "clamp_res_z":F
    .end local v112    # "S_x":F
    .end local v113    # "S_y":F
    .end local v114    # "S_z":F
    .end local v115    # "S_w":F
    .end local v116    # "NdotH":F
    .end local v117    # "pow_res":F
    .end local v118    # "max_res":F
    .end local v119    # "x_tmp":F
    .end local v120    # "y_tmp":F
    .end local v121    # "y_tmp_z":F
    .local v88, "loc_tmp_x":F
    .local v89, "loc_tmp_y":F
    .local v91, "iloc_tmp_x":I
    .local v92, "iloc_tmp_y":I
    :cond_e
    const/16 v122, 0x0

    goto/16 :goto_9

    .line 318
    .local v93, "out":Z
    :cond_f
    move-object/from16 v122, v16

    move/from16 v123, v92

    move/from16 v124, v15

    mul-int v123, v123, v124

    move/from16 v124, v91

    add-int v123, v123, v124

    aget v122, v122, v123

    goto/16 :goto_a

    .line 321
    .end local v91    # "iloc_tmp_x":I
    .end local v92    # "iloc_tmp_y":I
    .end local v93    # "out":Z
    :cond_10
    const/16 v122, 0x0

    move/from16 v90, v122

    .local v90, "bumpImg_tmp":I
    goto/16 :goto_b

    .line 393
    .local v88, "bumpA":F
    .local v89, "tmp_x":F
    .local v90, "tmp_y":F
    .local v91, "tmp_z":F
    .local v92, "Lxyz_x":F
    .local v93, "Lxyz_y":F
    .restart local v94    # "Lxyz_z":F
    .restart local v95    # "Lrgb_x":F
    .restart local v96    # "Lrgb_y":F
    .restart local v97    # "Lrgb_z":F
    .restart local v98    # "E_x":F
    .restart local v99    # "E_y":F
    .restart local v100    # "E_z":F
    .restart local v101    # "H_x":F
    .restart local v102    # "H_y":F
    .restart local v103    # "H_z":F
    .restart local v104    # "D_x":F
    .restart local v105    # "D_y":F
    .restart local v106    # "D_z":F
    .restart local v108    # "dot_res":F
    .local v109, "x_tmp_x":F
    .local v110, "x_tmp_y":F
    .local v111, "x_tmp_z":F
    .local v112, "val_tmp_x":F
    .local v113, "val_tmp_y":F
    .local v114, "val_tmp_z":F
    .local v115, "min_tmp":F
    .local v116, "max_tmp":F
    :cond_11
    move/from16 v122, v112

    move/from16 v123, v116

    cmpl-float v122, v122, v123

    if-lez v122, :cond_12

    move/from16 v122, v116

    goto/16 :goto_c

    :cond_12
    move/from16 v122, v112

    goto/16 :goto_c

    .line 395
    .local v109, "clamp_res_x":F
    :cond_13
    move/from16 v122, v113

    move/from16 v123, v116

    cmpl-float v122, v122, v123

    if-lez v122, :cond_14

    move/from16 v122, v116

    goto/16 :goto_d

    :cond_14
    move/from16 v122, v113

    goto/16 :goto_d

    .line 397
    .local v110, "clamp_res_y":F
    :cond_15
    move/from16 v122, v114

    move/from16 v123, v116

    cmpl-float v122, v122, v123

    if-lez v122, :cond_16

    move/from16 v122, v116

    goto/16 :goto_e

    :cond_16
    move/from16 v122, v114

    goto/16 :goto_e

    .line 436
    .restart local v107    # "D_w":F
    .local v111, "clamp_res_z":F
    .local v112, "S_x":F
    .local v113, "S_y":F
    .local v114, "S_z":F
    .local v116, "NdotH":F
    .restart local v117    # "pow_res":F
    .restart local v119    # "x_tmp":F
    .restart local v120    # "y_tmp":F
    .restart local v121    # "y_tmp_z":F
    :cond_17
    move/from16 v122, v120

    goto/16 :goto_f

    .line 443
    .local v115, "S_w":F
    .restart local v118    # "max_res":F
    :cond_18
    move/from16 v122, v120

    goto/16 :goto_10

    .line 462
    .restart local v40    # "color_x":F
    .restart local v41    # "color_y":F
    .restart local v42    # "color_z":F
    .restart local v43    # "color_w":F
    :cond_19
    move/from16 v122, v43

    const/high16 v123, 0x3f800000    # 1.0f

    cmpl-float v122, v122, v123

    if-lez v122, :cond_a

    const/high16 v122, 0x3f800000    # 1.0f

    move/from16 v43, v122

    goto/16 :goto_11

    .line 463
    :cond_1a
    move/from16 v122, v40

    move/from16 v123, v43

    cmpl-float v122, v122, v123

    if-lez v122, :cond_b

    move/from16 v122, v43

    move/from16 v40, v122

    goto/16 :goto_12

    .line 464
    :cond_1b
    move/from16 v122, v41

    move/from16 v123, v43

    cmpl-float v122, v122, v123

    if-lez v122, :cond_c

    move/from16 v122, v43

    move/from16 v41, v122

    goto/16 :goto_13

    .line 465
    :cond_1c
    move/from16 v122, v42

    move/from16 v123, v43

    cmpl-float v122, v122, v123

    if-lez v122, :cond_d

    move/from16 v122, v43

    move/from16 v42, v122

    goto/16 :goto_14

    .line 477
    .end local v40    # "color_x":F
    .end local v41    # "color_y":F
    .end local v42    # "color_z":F
    .end local v43    # "color_w":F
    .end local v69    # "pixcoord_x":F
    .end local v70    # "sample_res_x":F
    .end local v71    # "sample_res_y":F
    .end local v72    # "sample_res_z":F
    .end local v73    # "sample_res_w":F
    .end local v74    # "orig_x":F
    .end local v75    # "orig_y":F
    .end local v76    # "orig_z":F
    .end local v77    # "orig_w":F
    .end local v78    # "i":I
    .end local v79    # "sum_x":F
    .end local v80    # "sum_y":F
    .end local v81    # "sum_z":F
    .end local v82    # "normalize_res_x":F
    .end local v83    # "normalize_res_y":F
    .end local v84    # "normalize_res_z":F
    .end local v85    # "N_x":F
    .end local v86    # "N_y":F
    .end local v87    # "N_z":F
    .end local v88    # "bumpA":F
    .end local v89    # "tmp_x":F
    .end local v90    # "tmp_y":F
    .end local v91    # "tmp_z":F
    .end local v92    # "Lxyz_x":F
    .end local v93    # "Lxyz_y":F
    .end local v94    # "Lxyz_z":F
    .end local v95    # "Lrgb_x":F
    .end local v96    # "Lrgb_y":F
    .end local v97    # "Lrgb_z":F
    .end local v98    # "E_x":F
    .end local v99    # "E_y":F
    .end local v100    # "E_z":F
    .end local v101    # "H_x":F
    .end local v102    # "H_y":F
    .end local v103    # "H_z":F
    .end local v104    # "D_x":F
    .end local v105    # "D_y":F
    .end local v106    # "D_z":F
    .end local v107    # "D_w":F
    .end local v108    # "dot_res":F
    .end local v109    # "clamp_res_x":F
    .end local v110    # "clamp_res_y":F
    .end local v111    # "clamp_res_z":F
    .end local v112    # "S_x":F
    .end local v113    # "S_y":F
    .end local v114    # "S_z":F
    .end local v115    # "S_w":F
    .end local v116    # "NdotH":F
    .end local v117    # "pow_res":F
    .end local v118    # "max_res":F
    .end local v119    # "x_tmp":F
    .end local v120    # "y_tmp":F
    .end local v121    # "y_tmp_z":F
    :cond_1d
    move/from16 v122, v62

    move/from16 v123, v59

    add-float v122, v122, v123

    move/from16 v62, v122

    .line 478
    move/from16 v122, v63

    move/from16 v123, v61

    add-float v122, v122, v123

    move/from16 v63, v122

    .line 226
    add-int/lit8 v64, v64, 0x1

    goto/16 :goto_0

    .line 482
    .end local v39    # "dyi":I
    .end local v65    # "pixcoord_y":F
    .end local v66    # "pos0_x":F
    .end local v67    # "pos1_x":F
    .end local v68    # "dx":I
    :cond_1e
    move-object/from16 v122, v8

    const/16 v123, 0x0

    aget-object v122, v122, v123

    move-object/from16 v123, v10

    invoke-virtual/range {v122 .. v123}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 483
    move-object/from16 v122, v8

    const/16 v123, 0x1

    aget-object v122, v122, v123

    move-object/from16 v123, v20

    invoke-virtual/range {v122 .. v123}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 486
    new-instance v122, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v131, v122

    move-object/from16 v122, v131

    move-object/from16 v123, v131

    move-object/from16 v124, v3

    invoke-virtual/range {v124 .. v124}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v124

    move-object/from16 v125, v36

    move-object/from16 v126, v9

    invoke-direct/range {v123 .. v126}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v3, v122

    .end local v3    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    return-object v3
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    return-object v0
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/PhongLighting;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/PhongLighting;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_POINTPeer;
    return-object v0
.end method

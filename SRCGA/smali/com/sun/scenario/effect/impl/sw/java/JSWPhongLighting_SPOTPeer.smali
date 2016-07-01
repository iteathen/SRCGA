.class public Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
.super Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;
.source "JSWPhongLighting_SPOTPeer.java"


# instance fields
.field private kvals:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
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

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getDiffuseConstant()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    return v0
.end method

.method private getKvals()Ljava/nio/FloatBuffer;
    .locals 13

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

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

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    if-nez v10, :cond_0

    .line 114
    move-object v10, v0

    const/16 v11, 0x20

    invoke-static {v11}, Lcom/sun/scenario/effect/impl/BufferUtil;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    .line 116
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v10

    .line 117
    const/4 v10, 0x0

    move v6, v10

    .line 118
    .local v6, "kidx":I
    move-object v10, v0

    invoke-direct {v10}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getSurfaceScale()F

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

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    move v11, v9

    int-to-float v11, v11

    move v12, v2

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 123
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    move v11, v8

    int-to-float v11, v11

    move v12, v3

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 124
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    move-object v11, v4

    move v12, v6

    aget v11, v11, v12

    move v12, v7

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 125
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

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

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v10

    .line 131
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
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

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    const/16 v1, 0x8

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    return v0
.end method

.method private getLightColor()[F
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/Light;->getColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Color4f;->getPremultipliedRGBComponents()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    return-object v0
.end method

.method private getLightPosition()[F
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    move-object v2, v0

    .line 82
    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

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

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    return-object v0
.end method

.method private getLightSpecularExponent()F
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/light/SpotLight;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/SpotLight;->getSpecularExponent()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    return v0
.end method

.method private getNormalizedLightDirection()[F
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/light/SpotLight;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/SpotLight;->getNormalizedLightDirection()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    return-object v0
.end method

.method private getNormalizedLightPosition()[F
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/Light;->getNormalizedLightPosition()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    return-object v0
.end method

.method private getSpecularConstant()F
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getSpecularConstant()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    return v0
.end method

.method private getSpecularExponent()F
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getSpecularExponent()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    return v0
.end method

.method private getSurfaceScale()F
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getSurfaceScale()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    return v0
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 140

    .prologue
    .line 146
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
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
    move-object/from16 v130, v3

    move-object/from16 v131, v4

    invoke-virtual/range {v130 .. v131}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 147
    move-object/from16 v130, v3

    move-object/from16 v131, v6

    move-object/from16 v132, v7

    move-object/from16 v133, v8

    invoke-virtual/range {v130 .. v133}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v130

    move-object/from16 v9, v130

    .line 148
    .local v9, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v130, v3

    move-object/from16 v131, v9

    invoke-virtual/range {v130 .. v131}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 151
    move-object/from16 v130, v8

    const/16 v131, 0x0

    aget-object v130, v130, v131

    move-object/from16 v131, v9

    invoke-virtual/range {v130 .. v131}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v130

    check-cast v130, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v10, v130

    .line 152
    .local v10, "src0":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v130, 0x0

    move/from16 v11, v130

    .line 153
    .local v11, "src0x":I
    const/16 v130, 0x0

    move/from16 v12, v130

    .line 154
    .local v12, "src0y":I
    move-object/from16 v130, v10

    invoke-interface/range {v130 .. v130}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v130

    move/from16 v13, v130

    .line 155
    .local v13, "src0w":I
    move-object/from16 v130, v10

    invoke-interface/range {v130 .. v130}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v130

    move/from16 v14, v130

    .line 156
    .local v14, "src0h":I
    move-object/from16 v130, v10

    invoke-interface/range {v130 .. v130}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v130

    move/from16 v15, v130

    .line 157
    .local v15, "src0scan":I
    move-object/from16 v130, v10

    .line 158
    invoke-interface/range {v130 .. v130}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v130

    move-object/from16 v16, v130

    .line 159
    .local v16, "bumpImg":[I
    new-instance v130, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v139, v130

    move-object/from16 v130, v139

    move-object/from16 v131, v139

    move/from16 v132, v11

    move/from16 v133, v12

    move/from16 v134, v13

    move/from16 v135, v14

    invoke-direct/range {v131 .. v135}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v17, v130

    .line 160
    .local v17, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v130, v8

    const/16 v131, 0x0

    aget-object v130, v130, v131

    move-object/from16 v131, v9

    invoke-virtual/range {v130 .. v131}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v130

    move-object/from16 v18, v130

    .line 161
    .local v18, "src0InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v130, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v19, v130

    .line 162
    .local v19, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v130, v3

    const/16 v131, 0x0

    move-object/from16 v132, v18

    invoke-virtual/range {v130 .. v132}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 163
    move-object/from16 v130, v3

    const/16 v131, 0x0

    move-object/from16 v132, v17

    invoke-virtual/range {v130 .. v132}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 164
    move-object/from16 v130, v8

    const/16 v131, 0x1

    aget-object v130, v130, v131

    move-object/from16 v131, v9

    invoke-virtual/range {v130 .. v131}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v130

    check-cast v130, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v20, v130

    .line 165
    .local v20, "src1":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v130, 0x0

    move/from16 v21, v130

    .line 166
    .local v21, "src1x":I
    const/16 v130, 0x0

    move/from16 v22, v130

    .line 167
    .local v22, "src1y":I
    move-object/from16 v130, v20

    invoke-interface/range {v130 .. v130}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v130

    move/from16 v23, v130

    .line 168
    .local v23, "src1w":I
    move-object/from16 v130, v20

    invoke-interface/range {v130 .. v130}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v130

    move/from16 v24, v130

    .line 169
    .local v24, "src1h":I
    move-object/from16 v130, v20

    invoke-interface/range {v130 .. v130}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v130

    move/from16 v25, v130

    .line 170
    .local v25, "src1scan":I
    move-object/from16 v130, v20

    .line 171
    invoke-interface/range {v130 .. v130}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v130

    move-object/from16 v26, v130

    .line 172
    .local v26, "origImg":[I
    new-instance v130, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v139, v130

    move-object/from16 v130, v139

    move-object/from16 v131, v139

    move/from16 v132, v21

    move/from16 v133, v22

    move/from16 v134, v23

    move/from16 v135, v24

    invoke-direct/range {v131 .. v135}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v27, v130

    .line 173
    .local v27, "src1Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v130, v8

    const/16 v131, 0x1

    aget-object v130, v130, v131

    move-object/from16 v131, v9

    invoke-virtual/range {v130 .. v131}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v130

    move-object/from16 v28, v130

    .line 174
    .local v28, "src1InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v130, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v29, v130

    .line 175
    .local v29, "src1Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v130, v3

    const/16 v131, 0x1

    move-object/from16 v132, v28

    invoke-virtual/range {v130 .. v132}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 176
    move-object/from16 v130, v3

    const/16 v131, 0x1

    move-object/from16 v132, v27

    invoke-virtual/range {v130 .. v132}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 179
    const/16 v130, 0x4

    move/from16 v0, v130

    new-array v0, v0, [F

    move-object/from16 v130, v0

    move-object/from16 v30, v130

    .line 180
    .local v30, "src0Rect":[F
    move-object/from16 v130, v3

    const/16 v131, 0x0

    move-object/from16 v132, v30

    move-object/from16 v133, v18

    move-object/from16 v0, v133

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v133, v0

    move/from16 v0, v133

    int-to-float v0, v0

    move/from16 v133, v0

    move-object/from16 v134, v18

    move-object/from16 v0, v134

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v134, v0

    move/from16 v0, v134

    int-to-float v0, v0

    move/from16 v134, v0

    move/from16 v135, v13

    move/from16 v0, v135

    int-to-float v0, v0

    move/from16 v135, v0

    move/from16 v136, v14

    move/from16 v0, v136

    int-to-float v0, v0

    move/from16 v136, v0

    move-object/from16 v137, v9

    move-object/from16 v138, v19

    invoke-virtual/range {v130 .. v138}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v130

    .line 184
    const/16 v130, 0x4

    move/from16 v0, v130

    new-array v0, v0, [F

    move-object/from16 v130, v0

    move-object/from16 v31, v130

    .line 185
    .local v31, "src1Rect":[F
    move-object/from16 v130, v3

    const/16 v131, 0x1

    move-object/from16 v132, v31

    move-object/from16 v133, v28

    move-object/from16 v0, v133

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v133, v0

    move/from16 v0, v133

    int-to-float v0, v0

    move/from16 v133, v0

    move-object/from16 v134, v28

    move-object/from16 v0, v134

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v134, v0

    move/from16 v0, v134

    int-to-float v0, v0

    move/from16 v134, v0

    move/from16 v135, v23

    move/from16 v0, v135

    int-to-float v0, v0

    move/from16 v135, v0

    move/from16 v136, v24

    move/from16 v0, v136

    int-to-float v0, v0

    move/from16 v136, v0

    move-object/from16 v137, v9

    move-object/from16 v138, v29

    invoke-virtual/range {v130 .. v138}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v130

    .line 191
    const/16 v130, 0x0

    move/from16 v32, v130

    .line 192
    .local v32, "dstx":I
    const/16 v130, 0x0

    move/from16 v33, v130

    .line 193
    .local v33, "dsty":I
    move-object/from16 v130, v9

    move-object/from16 v0, v130

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v130, v0

    move/from16 v34, v130

    .line 194
    .local v34, "dstw":I
    move-object/from16 v130, v9

    move-object/from16 v0, v130

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v130, v0

    move/from16 v35, v130

    .line 196
    .local v35, "dsth":I
    move-object/from16 v130, v3

    invoke-virtual/range {v130 .. v130}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v130

    move/from16 v131, v34

    move/from16 v132, v35

    invoke-virtual/range {v130 .. v132}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v130

    check-cast v130, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v36, v130

    .line 197
    .local v36, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v130, v3

    move-object/from16 v131, v36

    invoke-interface/range {v131 .. v131}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v131

    move-object/from16 v132, v36

    invoke-interface/range {v132 .. v132}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v132

    invoke-virtual/range {v130 .. v132}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->setDestNativeBounds(II)V

    .line 198
    move-object/from16 v130, v36

    invoke-interface/range {v130 .. v130}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v130

    move/from16 v37, v130

    .line 199
    .local v37, "dstscan":I
    move-object/from16 v130, v36

    invoke-interface/range {v130 .. v130}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v130

    move-object/from16 v38, v130

    .line 204
    .local v38, "dstPixels":[I
    move-object/from16 v130, v3

    invoke-direct/range {v130 .. v130}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getLightPosition()[F

    move-result-object v130

    move-object/from16 v44, v130

    .line 205
    .local v44, "lightPosition_arr":[F
    move-object/from16 v130, v44

    const/16 v131, 0x0

    aget v130, v130, v131

    move/from16 v45, v130

    .local v45, "lightPosition_x":F
    move-object/from16 v130, v44

    const/16 v131, 0x1

    aget v130, v130, v131

    move/from16 v46, v130

    .local v46, "lightPosition_y":F
    move-object/from16 v130, v44

    const/16 v131, 0x2

    aget v130, v130, v131

    move/from16 v47, v130

    .line 206
    .local v47, "lightPosition_z":F
    move-object/from16 v130, v3

    invoke-direct/range {v130 .. v130}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getLightSpecularExponent()F

    move-result v130

    move/from16 v48, v130

    .line 207
    .local v48, "lightSpecularExponent":F
    move-object/from16 v130, v3

    invoke-direct/range {v130 .. v130}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getSpecularExponent()F

    move-result v130

    move/from16 v49, v130

    .line 208
    .local v49, "specularExponent":F
    move-object/from16 v130, v3

    invoke-direct/range {v130 .. v130}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getKvals()Ljava/nio/FloatBuffer;

    move-result-object v130

    move-object/from16 v50, v130

    .line 209
    .local v50, "kvals_buf":Ljava/nio/FloatBuffer;
    move-object/from16 v130, v50

    invoke-virtual/range {v130 .. v130}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v130

    move/from16 v0, v130

    new-array v0, v0, [F

    move-object/from16 v130, v0

    move-object/from16 v51, v130

    .line 210
    .local v51, "kvals_arr":[F
    move-object/from16 v130, v50

    move-object/from16 v131, v51

    invoke-virtual/range {v130 .. v131}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    move-result-object v130

    .line 211
    move-object/from16 v130, v3

    invoke-direct/range {v130 .. v130}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getDiffuseConstant()F

    move-result v130

    move/from16 v52, v130

    .line 212
    .local v52, "diffuseConstant":F
    move-object/from16 v130, v3

    invoke-direct/range {v130 .. v130}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getLightColor()[F

    move-result-object v130

    move-object/from16 v53, v130

    .line 213
    .local v53, "lightColor_arr":[F
    move-object/from16 v130, v53

    const/16 v131, 0x0

    aget v130, v130, v131

    move/from16 v54, v130

    .local v54, "lightColor_x":F
    move-object/from16 v130, v53

    const/16 v131, 0x1

    aget v130, v130, v131

    move/from16 v55, v130

    .local v55, "lightColor_y":F
    move-object/from16 v130, v53

    const/16 v131, 0x2

    aget v130, v130, v131

    move/from16 v56, v130

    .line 214
    .local v56, "lightColor_z":F
    move-object/from16 v130, v3

    invoke-direct/range {v130 .. v130}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getNormalizedLightDirection()[F

    move-result-object v130

    move-object/from16 v57, v130

    .line 215
    .local v57, "normalizedLightDirection_arr":[F
    move-object/from16 v130, v57

    const/16 v131, 0x0

    aget v130, v130, v131

    move/from16 v58, v130

    .local v58, "normalizedLightDirection_x":F
    move-object/from16 v130, v57

    const/16 v131, 0x1

    aget v130, v130, v131

    move/from16 v59, v130

    .local v59, "normalizedLightDirection_y":F
    move-object/from16 v130, v57

    const/16 v131, 0x2

    aget v130, v130, v131

    move/from16 v60, v130

    .line 216
    .local v60, "normalizedLightDirection_z":F
    move-object/from16 v130, v3

    invoke-direct/range {v130 .. v130}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getSpecularConstant()F

    move-result v130

    move/from16 v61, v130

    .line 217
    .local v61, "specularConstant":F
    move-object/from16 v130, v3

    invoke-direct/range {v130 .. v130}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getSurfaceScale()F

    move-result v130

    move/from16 v62, v130

    .line 220
    .local v62, "surfaceScale":F
    move-object/from16 v130, v30

    const/16 v131, 0x2

    aget v130, v130, v131

    move-object/from16 v131, v30

    const/16 v132, 0x0

    aget v131, v131, v132

    sub-float v130, v130, v131

    move/from16 v131, v34

    move/from16 v0, v131

    int-to-float v0, v0

    move/from16 v131, v0

    div-float v130, v130, v131

    move/from16 v63, v130

    .line 221
    .local v63, "inc0_x":F
    move-object/from16 v130, v30

    const/16 v131, 0x3

    aget v130, v130, v131

    move-object/from16 v131, v30

    const/16 v132, 0x1

    aget v131, v131, v132

    sub-float v130, v130, v131

    move/from16 v131, v35

    move/from16 v0, v131

    int-to-float v0, v0

    move/from16 v131, v0

    div-float v130, v130, v131

    move/from16 v64, v130

    .line 222
    .local v64, "inc0_y":F
    move-object/from16 v130, v31

    const/16 v131, 0x2

    aget v130, v130, v131

    move-object/from16 v131, v31

    const/16 v132, 0x0

    aget v131, v131, v132

    sub-float v130, v130, v131

    move/from16 v131, v34

    move/from16 v0, v131

    int-to-float v0, v0

    move/from16 v131, v0

    div-float v130, v130, v131

    move/from16 v65, v130

    .line 223
    .local v65, "inc1_x":F
    move-object/from16 v130, v31

    const/16 v131, 0x3

    aget v130, v130, v131

    move-object/from16 v131, v31

    const/16 v132, 0x1

    aget v131, v131, v132

    sub-float v130, v130, v131

    move/from16 v131, v35

    move/from16 v0, v131

    int-to-float v0, v0

    move/from16 v131, v0

    div-float v130, v130, v131

    move/from16 v66, v130

    .line 226
    .local v66, "inc1_y":F
    move-object/from16 v130, v30

    const/16 v131, 0x1

    aget v130, v130, v131

    move/from16 v131, v64

    const/high16 v132, 0x3f000000    # 0.5f

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v67, v130

    .line 227
    .local v67, "pos0_y":F
    move-object/from16 v130, v31

    const/16 v131, 0x1

    aget v130, v130, v131

    move/from16 v131, v66

    const/high16 v132, 0x3f000000    # 0.5f

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v68, v130

    .line 229
    .local v68, "pos1_y":F
    const/16 v130, 0x0

    move/from16 v69, v130

    .local v69, "dy":I
    :goto_0
    move/from16 v130, v69

    const/16 v131, 0x0

    move/from16 v132, v35

    add-int v131, v131, v132

    move/from16 v0, v130

    move/from16 v1, v131

    if-ge v0, v1, :cond_1f

    .line 230
    move/from16 v130, v69

    move/from16 v0, v130

    int-to-float v0, v0

    move/from16 v130, v0

    move/from16 v70, v130

    .line 232
    .local v70, "pixcoord_y":F
    move/from16 v130, v69

    move/from16 v131, v37

    mul-int v130, v130, v131

    move/from16 v39, v130

    .line 234
    .local v39, "dyi":I
    move-object/from16 v130, v30

    const/16 v131, 0x0

    aget v130, v130, v131

    move/from16 v131, v63

    const/high16 v132, 0x3f000000    # 0.5f

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v71, v130

    .line 235
    .local v71, "pos0_x":F
    move-object/from16 v130, v31

    const/16 v131, 0x0

    aget v130, v130, v131

    move/from16 v131, v65

    const/high16 v132, 0x3f000000    # 0.5f

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v72, v130

    .line 237
    .local v72, "pos1_x":F
    const/16 v130, 0x0

    move/from16 v73, v130

    .local v73, "dx":I
    :goto_1
    move/from16 v130, v73

    const/16 v131, 0x0

    move/from16 v132, v34

    add-int v131, v131, v132

    move/from16 v0, v130

    move/from16 v1, v131

    if-ge v0, v1, :cond_1e

    .line 238
    move/from16 v130, v73

    move/from16 v0, v130

    int-to-float v0, v0

    move/from16 v130, v0

    move/from16 v74, v130

    .line 244
    .local v74, "pixcoord_x":F
    move/from16 v130, v72

    move/from16 v79, v130

    .line 245
    .local v79, "loc_tmp_x":F
    move/from16 v130, v68

    move/from16 v80, v130

    .line 247
    .local v80, "loc_tmp_y":F
    move/from16 v130, v79

    const/16 v131, 0x0

    cmpl-float v130, v130, v131

    if-ltz v130, :cond_4

    move/from16 v130, v80

    const/16 v131, 0x0

    cmpl-float v130, v130, v131

    if-ltz v130, :cond_4

    .line 248
    move/from16 v130, v79

    move/from16 v131, v23

    move/from16 v0, v131

    int-to-float v0, v0

    move/from16 v131, v0

    mul-float v130, v130, v131

    move/from16 v0, v130

    float-to-int v0, v0

    move/from16 v130, v0

    move/from16 v82, v130

    .line 249
    .local v82, "iloc_tmp_x":I
    move/from16 v130, v80

    move/from16 v131, v24

    move/from16 v0, v131

    int-to-float v0, v0

    move/from16 v131, v0

    mul-float v130, v130, v131

    move/from16 v0, v130

    float-to-int v0, v0

    move/from16 v130, v0

    move/from16 v83, v130

    .line 250
    .local v83, "iloc_tmp_y":I
    move/from16 v130, v82

    move/from16 v131, v23

    move/from16 v0, v130

    move/from16 v1, v131

    if-ge v0, v1, :cond_0

    move/from16 v130, v83

    move/from16 v131, v24

    move/from16 v0, v130

    move/from16 v1, v131

    if-lt v0, v1, :cond_2

    :cond_0
    const/16 v130, 0x1

    :goto_2
    move/from16 v84, v130

    .line 253
    .local v84, "out":Z
    move/from16 v130, v84

    if-eqz v130, :cond_3

    const/16 v130, 0x0

    :goto_3
    move/from16 v81, v130

    .line 258
    .end local v82    # "iloc_tmp_x":I
    .end local v83    # "iloc_tmp_y":I
    .end local v84    # "out":Z
    .local v81, "origImg_tmp":I
    :goto_4
    move/from16 v130, v81

    const/16 v131, 0x10

    shr-int/lit8 v130, v130, 0x10

    const/16 v131, 0xff

    move/from16 v0, v130

    and-int/lit16 v0, v0, 0xff

    move/from16 v130, v0

    move/from16 v0, v130

    int-to-float v0, v0

    move/from16 v130, v0

    const/high16 v131, 0x437f0000    # 255.0f

    div-float v130, v130, v131

    move/from16 v75, v130

    .line 259
    .local v75, "sample_res_x":F
    move/from16 v130, v81

    const/16 v131, 0x8

    shr-int/lit8 v130, v130, 0x8

    const/16 v131, 0xff

    move/from16 v0, v130

    and-int/lit16 v0, v0, 0xff

    move/from16 v130, v0

    move/from16 v0, v130

    int-to-float v0, v0

    move/from16 v130, v0

    const/high16 v131, 0x437f0000    # 255.0f

    div-float v130, v130, v131

    move/from16 v76, v130

    .line 260
    .local v76, "sample_res_y":F
    move/from16 v130, v81

    const/16 v131, 0xff

    move/from16 v0, v130

    and-int/lit16 v0, v0, 0xff

    move/from16 v130, v0

    move/from16 v0, v130

    int-to-float v0, v0

    move/from16 v130, v0

    const/high16 v131, 0x437f0000    # 255.0f

    div-float v130, v130, v131

    move/from16 v77, v130

    .line 261
    .local v77, "sample_res_z":F
    move/from16 v130, v81

    const/16 v131, 0x18

    ushr-int/lit8 v130, v130, 0x18

    move/from16 v0, v130

    int-to-float v0, v0

    move/from16 v130, v0

    const/high16 v131, 0x437f0000    # 255.0f

    div-float v130, v130, v131

    move/from16 v78, v130

    .line 264
    .local v78, "sample_res_w":F
    move/from16 v130, v75

    move/from16 v79, v130

    .line 265
    .local v79, "orig_x":F
    move/from16 v130, v76

    move/from16 v80, v130

    .line 266
    .local v80, "orig_y":F
    move/from16 v130, v77

    move/from16 v81, v130

    .line 267
    .local v81, "orig_z":F
    move/from16 v130, v78

    move/from16 v82, v130

    .line 269
    .local v82, "orig_w":F
    const/16 v130, 0x0

    move/from16 v84, v130

    .line 270
    .local v84, "sum_x":F
    const/16 v130, 0x0

    move/from16 v85, v130

    .line 271
    .local v85, "sum_y":F
    const/high16 v130, 0x3f800000    # 1.0f

    move/from16 v86, v130

    .line 272
    .local v86, "sum_z":F
    const/16 v130, 0x0

    move/from16 v83, v130

    .line 273
    .local v83, "i":I
    :goto_5
    move/from16 v130, v83

    const/16 v131, 0x8

    move/from16 v0, v130

    move/from16 v1, v131

    if-ge v0, v1, :cond_8

    .line 275
    move/from16 v130, v71

    move-object/from16 v131, v51

    move/from16 v132, v83

    const/16 v133, 0x4

    mul-int/lit8 v132, v132, 0x4

    const/16 v133, 0x0

    add-int/lit8 v132, v132, 0x0

    aget v131, v131, v132

    add-float v130, v130, v131

    move/from16 v87, v130

    .line 276
    .local v87, "loc_tmp_x":F
    move/from16 v130, v67

    move-object/from16 v131, v51

    move/from16 v132, v83

    const/16 v133, 0x4

    mul-int/lit8 v132, v132, 0x4

    const/16 v133, 0x1

    add-int/lit8 v132, v132, 0x1

    aget v131, v131, v132

    add-float v130, v130, v131

    move/from16 v88, v130

    .line 278
    .local v88, "loc_tmp_y":F
    move/from16 v130, v87

    const/16 v131, 0x0

    cmpl-float v130, v130, v131

    if-ltz v130, :cond_7

    move/from16 v130, v88

    const/16 v131, 0x0

    cmpl-float v130, v130, v131

    if-ltz v130, :cond_7

    .line 279
    move/from16 v130, v87

    move/from16 v131, v13

    move/from16 v0, v131

    int-to-float v0, v0

    move/from16 v131, v0

    mul-float v130, v130, v131

    move/from16 v0, v130

    float-to-int v0, v0

    move/from16 v130, v0

    move/from16 v90, v130

    .line 280
    .local v90, "iloc_tmp_x":I
    move/from16 v130, v88

    move/from16 v131, v14

    move/from16 v0, v131

    int-to-float v0, v0

    move/from16 v131, v0

    mul-float v130, v130, v131

    move/from16 v0, v130

    float-to-int v0, v0

    move/from16 v130, v0

    move/from16 v91, v130

    .line 281
    .local v91, "iloc_tmp_y":I
    move/from16 v130, v90

    move/from16 v131, v13

    move/from16 v0, v130

    move/from16 v1, v131

    if-ge v0, v1, :cond_1

    move/from16 v130, v91

    move/from16 v131, v14

    move/from16 v0, v130

    move/from16 v1, v131

    if-lt v0, v1, :cond_5

    :cond_1
    const/16 v130, 0x1

    :goto_6
    move/from16 v92, v130

    .line 284
    .local v92, "out":Z
    move/from16 v130, v92

    if-eqz v130, :cond_6

    const/16 v130, 0x0

    :goto_7
    move/from16 v89, v130

    .line 289
    .end local v90    # "iloc_tmp_x":I
    .end local v91    # "iloc_tmp_y":I
    .end local v92    # "out":Z
    .local v89, "bumpImg_tmp":I
    :goto_8
    move/from16 v130, v89

    const/16 v131, 0x18

    ushr-int/lit8 v130, v130, 0x18

    move/from16 v0, v130

    int-to-float v0, v0

    move/from16 v130, v0

    const/high16 v131, 0x437f0000    # 255.0f

    div-float v130, v130, v131

    move/from16 v78, v130

    .line 292
    move/from16 v130, v84

    move-object/from16 v131, v51

    move/from16 v132, v83

    const/16 v133, 0x4

    mul-int/lit8 v132, v132, 0x4

    const/16 v133, 0x2

    add-int/lit8 v132, v132, 0x2

    aget v131, v131, v132

    move/from16 v132, v78

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v84, v130

    .line 293
    move/from16 v130, v85

    move-object/from16 v131, v51

    move/from16 v132, v83

    const/16 v133, 0x4

    mul-int/lit8 v132, v132, 0x4

    const/16 v133, 0x3

    add-int/lit8 v132, v132, 0x3

    aget v131, v131, v132

    move/from16 v132, v78

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v85, v130

    .line 273
    add-int/lit8 v83, v83, 0x1

    goto/16 :goto_5

    .line 250
    .end local v75    # "sample_res_x":F
    .end local v76    # "sample_res_y":F
    .end local v77    # "sample_res_z":F
    .end local v78    # "sample_res_w":F
    .end local v81    # "orig_z":F
    .end local v84    # "sum_x":F
    .end local v85    # "sum_y":F
    .end local v86    # "sum_z":F
    .end local v87    # "loc_tmp_x":F
    .end local v88    # "loc_tmp_y":F
    .end local v89    # "bumpImg_tmp":I
    .local v79, "loc_tmp_x":F
    .local v80, "loc_tmp_y":F
    .local v82, "iloc_tmp_x":I
    .local v83, "iloc_tmp_y":I
    :cond_2
    const/16 v130, 0x0

    goto/16 :goto_2

    .line 253
    .local v84, "out":Z
    :cond_3
    move-object/from16 v130, v26

    move/from16 v131, v83

    move/from16 v132, v25

    mul-int v131, v131, v132

    move/from16 v132, v82

    add-int v131, v131, v132

    aget v130, v130, v131

    goto/16 :goto_3

    .line 256
    .end local v82    # "iloc_tmp_x":I
    .end local v83    # "iloc_tmp_y":I
    .end local v84    # "out":Z
    :cond_4
    const/16 v130, 0x0

    move/from16 v81, v130

    .local v81, "origImg_tmp":I
    goto/16 :goto_4

    .line 281
    .restart local v75    # "sample_res_x":F
    .restart local v76    # "sample_res_y":F
    .restart local v77    # "sample_res_z":F
    .restart local v78    # "sample_res_w":F
    .local v79, "orig_x":F
    .local v80, "orig_y":F
    .local v81, "orig_z":F
    .local v82, "orig_w":F
    .local v83, "i":I
    .local v84, "sum_x":F
    .restart local v85    # "sum_y":F
    .restart local v86    # "sum_z":F
    .restart local v87    # "loc_tmp_x":F
    .restart local v88    # "loc_tmp_y":F
    .restart local v90    # "iloc_tmp_x":I
    .restart local v91    # "iloc_tmp_y":I
    :cond_5
    const/16 v130, 0x0

    goto :goto_6

    .line 284
    .restart local v92    # "out":Z
    :cond_6
    move-object/from16 v130, v16

    move/from16 v131, v91

    move/from16 v132, v15

    mul-int v131, v131, v132

    move/from16 v132, v90

    add-int v131, v131, v132

    aget v130, v130, v131

    goto :goto_7

    .line 287
    .end local v90    # "iloc_tmp_x":I
    .end local v91    # "iloc_tmp_y":I
    .end local v92    # "out":Z
    :cond_7
    const/16 v130, 0x0

    move/from16 v89, v130

    .restart local v89    # "bumpImg_tmp":I
    goto :goto_8

    .line 297
    .end local v87    # "loc_tmp_x":F
    .end local v88    # "loc_tmp_y":F
    .end local v89    # "bumpImg_tmp":I
    :cond_8
    move/from16 v130, v84

    move/from16 v90, v130

    .line 298
    .local v90, "x_tmp_x":F
    move/from16 v130, v85

    move/from16 v91, v130

    .line 299
    .local v91, "x_tmp_y":F
    move/from16 v130, v86

    move/from16 v92, v130

    .line 300
    .local v92, "x_tmp_z":F
    move/from16 v130, v90

    move/from16 v131, v90

    mul-float v130, v130, v131

    move/from16 v131, v91

    move/from16 v132, v91

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v131, v92

    move/from16 v132, v92

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v0, v130

    float-to-double v0, v0

    move-wide/from16 v130, v0

    invoke-static/range {v130 .. v131}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v130

    move-wide/from16 v0, v130

    double-to-float v0, v0

    move/from16 v130, v0

    move/from16 v93, v130

    .line 303
    .local v93, "denom":F
    move/from16 v130, v90

    move/from16 v131, v93

    div-float v130, v130, v131

    move/from16 v87, v130

    .line 304
    .local v87, "normalize_res_x":F
    move/from16 v130, v91

    move/from16 v131, v93

    div-float v130, v130, v131

    move/from16 v88, v130

    .line 305
    .local v88, "normalize_res_y":F
    move/from16 v130, v92

    move/from16 v131, v93

    div-float v130, v130, v131

    move/from16 v89, v130

    .line 308
    .local v89, "normalize_res_z":F
    move/from16 v130, v87

    move/from16 v90, v130

    .line 309
    .local v90, "N_x":F
    move/from16 v130, v88

    move/from16 v91, v130

    .line 310
    .local v91, "N_y":F
    move/from16 v130, v89

    move/from16 v92, v130

    .line 312
    .local v92, "N_z":F
    move/from16 v130, v71

    move/from16 v93, v130

    .line 313
    .local v93, "loc_tmp_x":F
    move/from16 v130, v67

    move/from16 v94, v130

    .line 315
    .local v94, "loc_tmp_y":F
    move/from16 v130, v93

    const/16 v131, 0x0

    cmpl-float v130, v130, v131

    if-ltz v130, :cond_10

    move/from16 v130, v94

    const/16 v131, 0x0

    cmpl-float v130, v130, v131

    if-ltz v130, :cond_10

    .line 316
    move/from16 v130, v93

    move/from16 v131, v13

    move/from16 v0, v131

    int-to-float v0, v0

    move/from16 v131, v0

    mul-float v130, v130, v131

    move/from16 v0, v130

    float-to-int v0, v0

    move/from16 v130, v0

    move/from16 v96, v130

    .line 317
    .local v96, "iloc_tmp_x":I
    move/from16 v130, v94

    move/from16 v131, v14

    move/from16 v0, v131

    int-to-float v0, v0

    move/from16 v131, v0

    mul-float v130, v130, v131

    move/from16 v0, v130

    float-to-int v0, v0

    move/from16 v130, v0

    move/from16 v97, v130

    .line 318
    .local v97, "iloc_tmp_y":I
    move/from16 v130, v96

    move/from16 v131, v13

    move/from16 v0, v130

    move/from16 v1, v131

    if-ge v0, v1, :cond_9

    move/from16 v130, v97

    move/from16 v131, v14

    move/from16 v0, v130

    move/from16 v1, v131

    if-lt v0, v1, :cond_e

    :cond_9
    const/16 v130, 0x1

    :goto_9
    move/from16 v98, v130

    .line 321
    .local v98, "out":Z
    move/from16 v130, v98

    if-eqz v130, :cond_f

    const/16 v130, 0x0

    :goto_a
    move/from16 v95, v130

    .line 326
    .end local v96    # "iloc_tmp_x":I
    .end local v97    # "iloc_tmp_y":I
    .end local v98    # "out":Z
    .local v95, "bumpImg_tmp":I
    :goto_b
    move/from16 v130, v95

    const/16 v131, 0x18

    ushr-int/lit8 v130, v130, 0x18

    move/from16 v0, v130

    int-to-float v0, v0

    move/from16 v130, v0

    const/high16 v131, 0x437f0000    # 255.0f

    div-float v130, v130, v131

    move/from16 v78, v130

    .line 329
    move/from16 v130, v78

    move/from16 v93, v130

    .line 330
    .local v93, "bumpA":F
    move/from16 v130, v74

    move/from16 v94, v130

    .line 331
    .local v94, "tmp_x":F
    move/from16 v130, v70

    move/from16 v95, v130

    .line 332
    .local v95, "tmp_y":F
    move/from16 v130, v62

    move/from16 v131, v93

    mul-float v130, v130, v131

    move/from16 v96, v130

    .line 334
    .local v96, "tmp_z":F
    move/from16 v130, v45

    move/from16 v131, v94

    sub-float v130, v130, v131

    move/from16 v97, v130

    .line 335
    .local v97, "x_tmp_x":F
    move/from16 v130, v46

    move/from16 v131, v95

    sub-float v130, v130, v131

    move/from16 v98, v130

    .line 336
    .local v98, "x_tmp_y":F
    move/from16 v130, v47

    move/from16 v131, v96

    sub-float v130, v130, v131

    move/from16 v99, v130

    .line 337
    .local v99, "x_tmp_z":F
    move/from16 v130, v97

    move/from16 v131, v97

    mul-float v130, v130, v131

    move/from16 v131, v98

    move/from16 v132, v98

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v131, v99

    move/from16 v132, v99

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v0, v130

    float-to-double v0, v0

    move-wide/from16 v130, v0

    invoke-static/range {v130 .. v131}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v130

    move-wide/from16 v0, v130

    double-to-float v0, v0

    move/from16 v130, v0

    move/from16 v100, v130

    .line 340
    .local v100, "denom":F
    move/from16 v130, v97

    move/from16 v131, v100

    div-float v130, v130, v131

    move/from16 v87, v130

    .line 341
    move/from16 v130, v98

    move/from16 v131, v100

    div-float v130, v130, v131

    move/from16 v88, v130

    .line 342
    move/from16 v130, v99

    move/from16 v131, v100

    div-float v130, v130, v131

    move/from16 v89, v130

    .line 345
    move/from16 v130, v87

    move/from16 v97, v130

    .line 346
    .local v97, "Lxyz_x":F
    move/from16 v130, v88

    move/from16 v98, v130

    .line 347
    .local v98, "Lxyz_y":F
    move/from16 v130, v89

    move/from16 v99, v130

    .line 350
    .local v99, "Lxyz_z":F
    move/from16 v130, v97

    move/from16 v101, v130

    .line 351
    .local v101, "x_tmp_x":F
    move/from16 v130, v98

    move/from16 v102, v130

    .line 352
    .local v102, "x_tmp_y":F
    move/from16 v130, v99

    move/from16 v103, v130

    .line 353
    .local v103, "x_tmp_z":F
    move/from16 v130, v58

    move/from16 v104, v130

    .line 354
    .local v104, "y_tmp_x":F
    move/from16 v130, v59

    move/from16 v105, v130

    .line 355
    .local v105, "y_tmp_y":F
    move/from16 v130, v60

    move/from16 v106, v130

    .line 356
    .local v106, "y_tmp_z":F
    move/from16 v130, v101

    move/from16 v131, v104

    mul-float v130, v130, v131

    move/from16 v131, v102

    move/from16 v132, v105

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v131, v103

    move/from16 v132, v106

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v100, v130

    .line 361
    .local v100, "dot_res":F
    move/from16 v130, v100

    move/from16 v101, v130

    .line 364
    .local v101, "LdotS":F
    move/from16 v130, v101

    move/from16 v103, v130

    .line 365
    .local v103, "x_tmp":F
    const/16 v130, 0x0

    move/from16 v104, v130

    .line 366
    .local v104, "y_tmp":F
    move/from16 v130, v103

    move/from16 v131, v104

    cmpg-float v130, v130, v131

    if-gez v130, :cond_11

    move/from16 v130, v103

    :goto_c
    move/from16 v102, v130

    .line 369
    .local v102, "min_res":F
    move/from16 v130, v102

    move/from16 v101, v130

    .line 372
    move/from16 v130, v101

    move/from16 v0, v130

    neg-float v0, v0

    move/from16 v130, v0

    move/from16 v104, v130

    .line 373
    .end local v103    # "x_tmp":F
    .local v104, "x_tmp":F
    move/from16 v130, v48

    move/from16 v105, v130

    .line 374
    .local v105, "y_tmp":F
    move/from16 v130, v104

    move/from16 v0, v130

    float-to-double v0, v0

    move-wide/from16 v130, v0

    move/from16 v132, v105

    move/from16 v0, v132

    float-to-double v0, v0

    move-wide/from16 v132, v0

    invoke-static/range {v130 .. v133}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v130

    move-wide/from16 v0, v130

    double-to-float v0, v0

    move/from16 v130, v0

    move/from16 v103, v130

    .line 377
    .local v103, "pow_res":F
    move/from16 v130, v54

    move/from16 v131, v103

    mul-float v130, v130, v131

    move/from16 v104, v130

    .line 378
    .local v104, "Lrgb_x":F
    move/from16 v130, v55

    move/from16 v131, v103

    mul-float v130, v130, v131

    move/from16 v105, v130

    .line 379
    .local v105, "Lrgb_y":F
    move/from16 v130, v56

    move/from16 v131, v103

    mul-float v130, v130, v131

    move/from16 v106, v130

    .line 380
    .local v106, "Lrgb_z":F
    const/16 v130, 0x0

    move/from16 v107, v130

    .line 381
    .local v107, "E_x":F
    const/16 v130, 0x0

    move/from16 v108, v130

    .line 382
    .local v108, "E_y":F
    const/high16 v130, 0x3f800000    # 1.0f

    move/from16 v109, v130

    .line 384
    .local v109, "E_z":F
    move/from16 v130, v97

    move/from16 v131, v107

    add-float v130, v130, v131

    move/from16 v110, v130

    .line 385
    .local v110, "x_tmp_x":F
    move/from16 v130, v98

    move/from16 v131, v108

    add-float v130, v130, v131

    move/from16 v111, v130

    .line 386
    .local v111, "x_tmp_y":F
    move/from16 v130, v99

    move/from16 v131, v109

    add-float v130, v130, v131

    move/from16 v112, v130

    .line 387
    .local v112, "x_tmp_z":F
    move/from16 v130, v110

    move/from16 v131, v110

    mul-float v130, v130, v131

    move/from16 v131, v111

    move/from16 v132, v111

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v131, v112

    move/from16 v132, v112

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v0, v130

    float-to-double v0, v0

    move-wide/from16 v130, v0

    invoke-static/range {v130 .. v131}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v130

    move-wide/from16 v0, v130

    double-to-float v0, v0

    move/from16 v130, v0

    move/from16 v113, v130

    .line 390
    .local v113, "denom":F
    move/from16 v130, v110

    move/from16 v131, v113

    div-float v130, v130, v131

    move/from16 v87, v130

    .line 391
    move/from16 v130, v111

    move/from16 v131, v113

    div-float v130, v130, v131

    move/from16 v88, v130

    .line 392
    move/from16 v130, v112

    move/from16 v131, v113

    div-float v130, v130, v131

    move/from16 v89, v130

    .line 395
    move/from16 v130, v87

    move/from16 v110, v130

    .line 396
    .local v110, "H_x":F
    move/from16 v130, v88

    move/from16 v111, v130

    .line 397
    .local v111, "H_y":F
    move/from16 v130, v89

    move/from16 v112, v130

    .line 403
    .local v112, "H_z":F
    move/from16 v130, v90

    move/from16 v117, v130

    .line 404
    .local v117, "x_tmp_x":F
    move/from16 v130, v91

    move/from16 v118, v130

    .line 405
    .local v118, "x_tmp_y":F
    move/from16 v130, v92

    move/from16 v119, v130

    .line 406
    .local v119, "x_tmp_z":F
    move/from16 v130, v97

    move/from16 v120, v130

    .line 407
    .local v120, "y_tmp_x":F
    move/from16 v130, v98

    move/from16 v121, v130

    .line 408
    .local v121, "y_tmp_y":F
    move/from16 v130, v99

    move/from16 v122, v130

    .line 409
    .local v122, "y_tmp_z":F
    move/from16 v130, v117

    move/from16 v131, v120

    mul-float v130, v130, v131

    move/from16 v131, v118

    move/from16 v132, v121

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v131, v119

    move/from16 v132, v122

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v100, v130

    .line 414
    move/from16 v130, v52

    move/from16 v131, v100

    mul-float v130, v130, v131

    move/from16 v131, v104

    mul-float v130, v130, v131

    move/from16 v113, v130

    .line 415
    .local v113, "D_x":F
    move/from16 v130, v52

    move/from16 v131, v100

    mul-float v130, v130, v131

    move/from16 v131, v105

    mul-float v130, v130, v131

    move/from16 v114, v130

    .line 416
    .local v114, "D_y":F
    move/from16 v130, v52

    move/from16 v131, v100

    mul-float v130, v130, v131

    move/from16 v131, v106

    mul-float v130, v130, v131

    move/from16 v115, v130

    .line 419
    .local v115, "D_z":F
    move/from16 v130, v113

    move/from16 v120, v130

    .line 420
    .local v120, "val_tmp_x":F
    move/from16 v130, v114

    move/from16 v121, v130

    .line 421
    .local v121, "val_tmp_y":F
    move/from16 v130, v115

    move/from16 v122, v130

    .line 422
    .local v122, "val_tmp_z":F
    const/16 v130, 0x0

    move/from16 v123, v130

    .line 423
    .local v123, "min_tmp":F
    const/high16 v130, 0x3f800000    # 1.0f

    move/from16 v124, v130

    .line 424
    .local v124, "max_tmp":F
    move/from16 v130, v120

    move/from16 v131, v123

    cmpg-float v130, v130, v131

    if-gez v130, :cond_12

    move/from16 v130, v123

    :goto_d
    move/from16 v117, v130

    .line 426
    .local v117, "clamp_res_x":F
    move/from16 v130, v121

    move/from16 v131, v123

    cmpg-float v130, v130, v131

    if-gez v130, :cond_14

    move/from16 v130, v123

    :goto_e
    move/from16 v118, v130

    .line 428
    .local v118, "clamp_res_y":F
    move/from16 v130, v122

    move/from16 v131, v123

    cmpg-float v130, v130, v131

    if-gez v130, :cond_16

    move/from16 v130, v123

    :goto_f
    move/from16 v119, v130

    .line 432
    .local v119, "clamp_res_z":F
    move/from16 v130, v117

    move/from16 v113, v130

    .line 433
    move/from16 v130, v118

    move/from16 v114, v130

    .line 434
    move/from16 v130, v119

    move/from16 v115, v130

    .line 435
    const/high16 v130, 0x3f800000    # 1.0f

    move/from16 v116, v130

    .line 441
    .local v116, "D_w":F
    move/from16 v130, v90

    move/from16 v124, v130

    .line 442
    .local v124, "x_tmp_x":F
    move/from16 v130, v91

    move/from16 v125, v130

    .line 443
    .local v125, "x_tmp_y":F
    move/from16 v130, v92

    move/from16 v126, v130

    .line 444
    .local v126, "x_tmp_z":F
    move/from16 v130, v110

    move/from16 v127, v130

    .line 445
    .local v127, "y_tmp_x":F
    move/from16 v130, v111

    move/from16 v128, v130

    .line 446
    .local v128, "y_tmp_y":F
    move/from16 v130, v112

    move/from16 v129, v130

    .line 447
    .local v129, "y_tmp_z":F
    move/from16 v130, v124

    move/from16 v131, v127

    mul-float v130, v130, v131

    move/from16 v131, v125

    move/from16 v132, v128

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v131, v126

    move/from16 v132, v129

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v100, v130

    .line 452
    move/from16 v130, v100

    move/from16 v124, v130

    .line 454
    .local v124, "NdotH":F
    move/from16 v130, v124

    move/from16 v125, v130

    .line 455
    .local v125, "x_tmp":F
    move/from16 v130, v49

    move/from16 v126, v130

    .line 456
    .local v126, "y_tmp":F
    move/from16 v130, v125

    move/from16 v0, v130

    float-to-double v0, v0

    move-wide/from16 v130, v0

    move/from16 v132, v126

    move/from16 v0, v132

    float-to-double v0, v0

    move-wide/from16 v132, v0

    invoke-static/range {v130 .. v133}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v130

    move-wide/from16 v0, v130

    double-to-float v0, v0

    move/from16 v130, v0

    move/from16 v103, v130

    .line 459
    move/from16 v130, v61

    move/from16 v131, v103

    mul-float v130, v130, v131

    move/from16 v131, v104

    mul-float v130, v130, v131

    move/from16 v120, v130

    .line 460
    .local v120, "S_x":F
    move/from16 v130, v61

    move/from16 v131, v103

    mul-float v130, v130, v131

    move/from16 v131, v105

    mul-float v130, v130, v131

    move/from16 v121, v130

    .line 461
    .local v121, "S_y":F
    move/from16 v130, v61

    move/from16 v131, v103

    mul-float v130, v130, v131

    move/from16 v131, v106

    mul-float v130, v130, v131

    move/from16 v122, v130

    .line 464
    .local v122, "S_z":F
    move/from16 v130, v120

    move/from16 v126, v130

    .line 465
    .end local v125    # "x_tmp":F
    .local v126, "x_tmp":F
    move/from16 v130, v121

    move/from16 v127, v130

    .line 466
    .local v127, "y_tmp":F
    move/from16 v130, v126

    move/from16 v131, v127

    cmpl-float v130, v130, v131

    if-lez v130, :cond_18

    move/from16 v130, v126

    :goto_10
    move/from16 v125, v130

    .line 469
    .local v125, "max_res":F
    move/from16 v130, v125

    move/from16 v123, v130

    .line 471
    .local v123, "S_w":F
    move/from16 v130, v123

    move/from16 v126, v130

    .line 472
    move/from16 v130, v122

    move/from16 v127, v130

    .line 473
    move/from16 v130, v126

    move/from16 v131, v127

    cmpl-float v130, v130, v131

    if-lez v130, :cond_19

    move/from16 v130, v126

    :goto_11
    move/from16 v125, v130

    .line 476
    move/from16 v130, v125

    move/from16 v123, v130

    .line 477
    move/from16 v130, v79

    move/from16 v131, v113

    mul-float v130, v130, v131

    move/from16 v79, v130

    .line 478
    move/from16 v130, v80

    move/from16 v131, v114

    mul-float v130, v130, v131

    move/from16 v80, v130

    .line 479
    move/from16 v130, v81

    move/from16 v131, v115

    mul-float v130, v130, v131

    move/from16 v81, v130

    .line 480
    move/from16 v130, v82

    move/from16 v131, v116

    mul-float v130, v130, v131

    move/from16 v82, v130

    .line 481
    move/from16 v130, v120

    move/from16 v131, v82

    mul-float v130, v130, v131

    move/from16 v120, v130

    .line 482
    move/from16 v130, v121

    move/from16 v131, v82

    mul-float v130, v130, v131

    move/from16 v121, v130

    .line 483
    move/from16 v130, v122

    move/from16 v131, v82

    mul-float v130, v130, v131

    move/from16 v122, v130

    .line 484
    move/from16 v130, v123

    move/from16 v131, v82

    mul-float v130, v130, v131

    move/from16 v123, v130

    .line 485
    move/from16 v130, v120

    move/from16 v131, v79

    const/high16 v132, 0x3f800000    # 1.0f

    move/from16 v133, v123

    sub-float v132, v132, v133

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v40, v130

    .line 486
    .local v40, "color_x":F
    move/from16 v130, v121

    move/from16 v131, v80

    const/high16 v132, 0x3f800000    # 1.0f

    move/from16 v133, v123

    sub-float v132, v132, v133

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v41, v130

    .line 487
    .local v41, "color_y":F
    move/from16 v130, v122

    move/from16 v131, v81

    const/high16 v132, 0x3f800000    # 1.0f

    move/from16 v133, v123

    sub-float v132, v132, v133

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v42, v130

    .line 488
    .local v42, "color_z":F
    move/from16 v130, v123

    move/from16 v131, v82

    const/high16 v132, 0x3f800000    # 1.0f

    move/from16 v133, v123

    sub-float v132, v132, v133

    mul-float v131, v131, v132

    add-float v130, v130, v131

    move/from16 v43, v130

    .line 492
    .local v43, "color_w":F
    move/from16 v130, v43

    const/16 v131, 0x0

    cmpg-float v130, v130, v131

    if-gez v130, :cond_1a

    const/16 v130, 0x0

    move/from16 v43, v130

    .line 493
    :cond_a
    :goto_12
    move/from16 v130, v40

    const/16 v131, 0x0

    cmpg-float v130, v130, v131

    if-gez v130, :cond_1b

    const/16 v130, 0x0

    move/from16 v40, v130

    .line 494
    :cond_b
    :goto_13
    move/from16 v130, v41

    const/16 v131, 0x0

    cmpg-float v130, v130, v131

    if-gez v130, :cond_1c

    const/16 v130, 0x0

    move/from16 v41, v130

    .line 495
    :cond_c
    :goto_14
    move/from16 v130, v42

    const/16 v131, 0x0

    cmpg-float v130, v130, v131

    if-gez v130, :cond_1d

    const/16 v130, 0x0

    move/from16 v42, v130

    .line 496
    :cond_d
    :goto_15
    move-object/from16 v130, v38

    move/from16 v131, v39

    move/from16 v132, v73

    add-int v131, v131, v132

    move/from16 v132, v40

    const/high16 v133, 0x437f0000    # 255.0f

    mul-float v132, v132, v133

    move/from16 v0, v132

    float-to-int v0, v0

    move/from16 v132, v0

    const/16 v133, 0x10

    shl-int/lit8 v132, v132, 0x10

    move/from16 v133, v41

    const/high16 v134, 0x437f0000    # 255.0f

    mul-float v133, v133, v134

    move/from16 v0, v133

    float-to-int v0, v0

    move/from16 v133, v0

    const/16 v134, 0x8

    shl-int/lit8 v133, v133, 0x8

    or-int v132, v132, v133

    move/from16 v133, v42

    const/high16 v134, 0x437f0000    # 255.0f

    mul-float v133, v133, v134

    move/from16 v0, v133

    float-to-int v0, v0

    move/from16 v133, v0

    const/16 v134, 0x0

    shl-int/lit8 v133, v133, 0x0

    or-int v132, v132, v133

    move/from16 v133, v43

    const/high16 v134, 0x437f0000    # 255.0f

    mul-float v133, v133, v134

    move/from16 v0, v133

    float-to-int v0, v0

    move/from16 v133, v0

    const/16 v134, 0x18

    shl-int/lit8 v133, v133, 0x18

    or-int v132, v132, v133

    aput v132, v130, v131

    .line 502
    move/from16 v130, v71

    move/from16 v131, v63

    add-float v130, v130, v131

    move/from16 v71, v130

    .line 503
    move/from16 v130, v72

    move/from16 v131, v65

    add-float v130, v130, v131

    move/from16 v72, v130

    .line 237
    add-int/lit8 v73, v73, 0x1

    goto/16 :goto_1

    .line 318
    .end local v40    # "color_x":F
    .end local v41    # "color_y":F
    .end local v42    # "color_z":F
    .end local v43    # "color_w":F
    .end local v95    # "tmp_y":F
    .end local v98    # "Lxyz_y":F
    .end local v99    # "Lxyz_z":F
    .end local v100    # "dot_res":F
    .end local v101    # "LdotS":F
    .end local v102    # "min_res":F
    .end local v103    # "pow_res":F
    .end local v104    # "Lrgb_x":F
    .end local v105    # "Lrgb_y":F
    .end local v106    # "Lrgb_z":F
    .end local v107    # "E_x":F
    .end local v108    # "E_y":F
    .end local v109    # "E_z":F
    .end local v110    # "H_x":F
    .end local v111    # "H_y":F
    .end local v112    # "H_z":F
    .end local v113    # "D_x":F
    .end local v114    # "D_y":F
    .end local v115    # "D_z":F
    .end local v116    # "D_w":F
    .end local v117    # "clamp_res_x":F
    .end local v118    # "clamp_res_y":F
    .end local v119    # "clamp_res_z":F
    .end local v120    # "S_x":F
    .end local v121    # "S_y":F
    .end local v122    # "S_z":F
    .end local v123    # "S_w":F
    .end local v124    # "NdotH":F
    .end local v125    # "max_res":F
    .end local v126    # "x_tmp":F
    .end local v127    # "y_tmp":F
    .end local v128    # "y_tmp_y":F
    .end local v129    # "y_tmp_z":F
    .local v93, "loc_tmp_x":F
    .local v94, "loc_tmp_y":F
    .local v96, "iloc_tmp_x":I
    .local v97, "iloc_tmp_y":I
    :cond_e
    const/16 v130, 0x0

    goto/16 :goto_9

    .line 321
    .local v98, "out":Z
    :cond_f
    move-object/from16 v130, v16

    move/from16 v131, v97

    move/from16 v132, v15

    mul-int v131, v131, v132

    move/from16 v132, v96

    add-int v131, v131, v132

    aget v130, v130, v131

    goto/16 :goto_a

    .line 324
    .end local v96    # "iloc_tmp_x":I
    .end local v97    # "iloc_tmp_y":I
    .end local v98    # "out":Z
    :cond_10
    const/16 v130, 0x0

    move/from16 v95, v130

    .local v95, "bumpImg_tmp":I
    goto/16 :goto_b

    .line 366
    .local v93, "bumpA":F
    .local v94, "tmp_x":F
    .local v95, "tmp_y":F
    .local v96, "tmp_z":F
    .local v97, "Lxyz_x":F
    .local v98, "Lxyz_y":F
    .restart local v99    # "Lxyz_z":F
    .restart local v100    # "dot_res":F
    .restart local v101    # "LdotS":F
    .local v102, "x_tmp_y":F
    .local v103, "x_tmp":F
    .local v104, "y_tmp":F
    .local v105, "y_tmp_y":F
    .local v106, "y_tmp_z":F
    :cond_11
    move/from16 v130, v104

    goto/16 :goto_c

    .line 424
    .local v102, "min_res":F
    .local v103, "pow_res":F
    .local v104, "Lrgb_x":F
    .local v105, "Lrgb_y":F
    .local v106, "Lrgb_z":F
    .restart local v107    # "E_x":F
    .restart local v108    # "E_y":F
    .restart local v109    # "E_z":F
    .restart local v110    # "H_x":F
    .restart local v111    # "H_y":F
    .restart local v112    # "H_z":F
    .restart local v113    # "D_x":F
    .restart local v114    # "D_y":F
    .restart local v115    # "D_z":F
    .local v117, "x_tmp_x":F
    .local v118, "x_tmp_y":F
    .local v119, "x_tmp_z":F
    .local v120, "val_tmp_x":F
    .local v121, "val_tmp_y":F
    .local v122, "val_tmp_z":F
    .local v123, "min_tmp":F
    .local v124, "max_tmp":F
    :cond_12
    move/from16 v130, v120

    move/from16 v131, v124

    cmpl-float v130, v130, v131

    if-lez v130, :cond_13

    move/from16 v130, v124

    goto/16 :goto_d

    :cond_13
    move/from16 v130, v120

    goto/16 :goto_d

    .line 426
    .local v117, "clamp_res_x":F
    :cond_14
    move/from16 v130, v121

    move/from16 v131, v124

    cmpl-float v130, v130, v131

    if-lez v130, :cond_15

    move/from16 v130, v124

    goto/16 :goto_e

    :cond_15
    move/from16 v130, v121

    goto/16 :goto_e

    .line 428
    .local v118, "clamp_res_y":F
    :cond_16
    move/from16 v130, v122

    move/from16 v131, v124

    cmpl-float v130, v130, v131

    if-lez v130, :cond_17

    move/from16 v130, v124

    goto/16 :goto_f

    :cond_17
    move/from16 v130, v122

    goto/16 :goto_f

    .line 466
    .restart local v116    # "D_w":F
    .local v119, "clamp_res_z":F
    .local v120, "S_x":F
    .local v121, "S_y":F
    .local v122, "S_z":F
    .local v124, "NdotH":F
    .restart local v126    # "x_tmp":F
    .restart local v127    # "y_tmp":F
    .restart local v128    # "y_tmp_y":F
    .restart local v129    # "y_tmp_z":F
    :cond_18
    move/from16 v130, v127

    goto/16 :goto_10

    .line 473
    .local v123, "S_w":F
    .restart local v125    # "max_res":F
    :cond_19
    move/from16 v130, v127

    goto/16 :goto_11

    .line 492
    .restart local v40    # "color_x":F
    .restart local v41    # "color_y":F
    .restart local v42    # "color_z":F
    .restart local v43    # "color_w":F
    :cond_1a
    move/from16 v130, v43

    const/high16 v131, 0x3f800000    # 1.0f

    cmpl-float v130, v130, v131

    if-lez v130, :cond_a

    const/high16 v130, 0x3f800000    # 1.0f

    move/from16 v43, v130

    goto/16 :goto_12

    .line 493
    :cond_1b
    move/from16 v130, v40

    move/from16 v131, v43

    cmpl-float v130, v130, v131

    if-lez v130, :cond_b

    move/from16 v130, v43

    move/from16 v40, v130

    goto/16 :goto_13

    .line 494
    :cond_1c
    move/from16 v130, v41

    move/from16 v131, v43

    cmpl-float v130, v130, v131

    if-lez v130, :cond_c

    move/from16 v130, v43

    move/from16 v41, v130

    goto/16 :goto_14

    .line 495
    :cond_1d
    move/from16 v130, v42

    move/from16 v131, v43

    cmpl-float v130, v130, v131

    if-lez v130, :cond_d

    move/from16 v130, v43

    move/from16 v42, v130

    goto/16 :goto_15

    .line 507
    .end local v40    # "color_x":F
    .end local v41    # "color_y":F
    .end local v42    # "color_z":F
    .end local v43    # "color_w":F
    .end local v74    # "pixcoord_x":F
    .end local v75    # "sample_res_x":F
    .end local v76    # "sample_res_y":F
    .end local v77    # "sample_res_z":F
    .end local v78    # "sample_res_w":F
    .end local v79    # "orig_x":F
    .end local v80    # "orig_y":F
    .end local v81    # "orig_z":F
    .end local v82    # "orig_w":F
    .end local v83    # "i":I
    .end local v84    # "sum_x":F
    .end local v85    # "sum_y":F
    .end local v86    # "sum_z":F
    .end local v87    # "normalize_res_x":F
    .end local v88    # "normalize_res_y":F
    .end local v89    # "normalize_res_z":F
    .end local v90    # "N_x":F
    .end local v91    # "N_y":F
    .end local v92    # "N_z":F
    .end local v93    # "bumpA":F
    .end local v94    # "tmp_x":F
    .end local v95    # "tmp_y":F
    .end local v96    # "tmp_z":F
    .end local v97    # "Lxyz_x":F
    .end local v98    # "Lxyz_y":F
    .end local v99    # "Lxyz_z":F
    .end local v100    # "dot_res":F
    .end local v101    # "LdotS":F
    .end local v102    # "min_res":F
    .end local v103    # "pow_res":F
    .end local v104    # "Lrgb_x":F
    .end local v105    # "Lrgb_y":F
    .end local v106    # "Lrgb_z":F
    .end local v107    # "E_x":F
    .end local v108    # "E_y":F
    .end local v109    # "E_z":F
    .end local v110    # "H_x":F
    .end local v111    # "H_y":F
    .end local v112    # "H_z":F
    .end local v113    # "D_x":F
    .end local v114    # "D_y":F
    .end local v115    # "D_z":F
    .end local v116    # "D_w":F
    .end local v117    # "clamp_res_x":F
    .end local v118    # "clamp_res_y":F
    .end local v119    # "clamp_res_z":F
    .end local v120    # "S_x":F
    .end local v121    # "S_y":F
    .end local v122    # "S_z":F
    .end local v123    # "S_w":F
    .end local v124    # "NdotH":F
    .end local v125    # "max_res":F
    .end local v126    # "x_tmp":F
    .end local v127    # "y_tmp":F
    .end local v128    # "y_tmp_y":F
    .end local v129    # "y_tmp_z":F
    :cond_1e
    move/from16 v130, v67

    move/from16 v131, v64

    add-float v130, v130, v131

    move/from16 v67, v130

    .line 508
    move/from16 v130, v68

    move/from16 v131, v66

    add-float v130, v130, v131

    move/from16 v68, v130

    .line 229
    add-int/lit8 v69, v69, 0x1

    goto/16 :goto_0

    .line 512
    .end local v39    # "dyi":I
    .end local v70    # "pixcoord_y":F
    .end local v71    # "pos0_x":F
    .end local v72    # "pos1_x":F
    .end local v73    # "dx":I
    :cond_1f
    move-object/from16 v130, v8

    const/16 v131, 0x0

    aget-object v130, v130, v131

    move-object/from16 v131, v10

    invoke-virtual/range {v130 .. v131}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 513
    move-object/from16 v130, v8

    const/16 v131, 0x1

    aget-object v130, v130, v131

    move-object/from16 v131, v20

    invoke-virtual/range {v130 .. v131}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 516
    new-instance v130, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v139, v130

    move-object/from16 v130, v139

    move-object/from16 v131, v139

    move-object/from16 v132, v3

    invoke-virtual/range {v132 .. v132}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v132

    move-object/from16 v133, v36

    move-object/from16 v134, v9

    invoke-direct/range {v131 .. v134}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v3, v130

    .end local v3    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    return-object v3
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    return-object v0
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/PhongLighting;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/PhongLighting;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWPhongLighting_SPOTPeer;
    return-object v0
.end method

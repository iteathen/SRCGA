.class public Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
.super Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;
.source "PPSPhongLighting_SPOTPeer.java"


# instance fields
.field private kvals:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "r":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v3, p3

    .local v3, "shaderName":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private getDiffuseConstant()F
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getDiffuseConstant()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    return v0
.end method

.method private getKvals()Ljava/nio/FloatBuffer;
    .locals 13

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v10

    move-object v1, v10

    .line 98
    .local v1, "bumpImgBounds":Lcom/sun/javafx/geom/Rectangle;
    const/high16 v10, 0x3f800000    # 1.0f

    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    move v2, v10

    .line 99
    .local v2, "xoff":F
    const/high16 v10, 0x3f800000    # 1.0f

    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    move v3, v10

    .line 101
    .local v3, "yoff":F
    const/16 v10, 0x9

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    move-object v4, v10

    .line 106
    .local v4, "kx":[F
    const/16 v10, 0x9

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    move-object v5, v10

    .line 111
    .local v5, "ky":[F
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    if-nez v10, :cond_0

    .line 112
    move-object v10, v0

    const/16 v11, 0x20

    invoke-static {v11}, Lcom/sun/scenario/effect/impl/BufferUtil;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    .line 114
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v10

    .line 115
    const/4 v10, 0x0

    move v6, v10

    .line 116
    .local v6, "kidx":I
    move-object v10, v0

    invoke-direct {v10}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getSurfaceScale()F

    move-result v10

    neg-float v10, v10

    const/high16 v11, 0x3e800000    # 0.25f

    mul-float/2addr v10, v11

    move v7, v10

    .line 117
    .local v7, "factor":F
    const/4 v10, -0x1

    move v8, v10

    .local v8, "i":I
    :goto_0
    move v10, v8

    const/4 v11, 0x1

    if-gt v10, v11, :cond_4

    .line 118
    const/4 v10, -0x1

    move v9, v10

    .local v9, "j":I
    :goto_1
    move v10, v9

    const/4 v11, 0x1

    if-gt v10, v11, :cond_3

    .line 119
    move v10, v8

    if-nez v10, :cond_1

    move v10, v9

    if-eqz v10, :cond_2

    .line 120
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    move v11, v9

    int-to-float v11, v11

    move v12, v2

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 121
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    move v11, v8

    int-to-float v11, v11

    move v12, v3

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 122
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    move-object v11, v4

    move v12, v6

    aget v11, v11, v12

    move v12, v7

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 123
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    move-object v11, v5

    move v12, v6

    aget v11, v11, v12

    move v12, v7

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 125
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 118
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 117
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 128
    .end local v9    # "j":I
    :cond_4
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v10

    .line 129
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->kvals:Ljava/nio/FloatBuffer;

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    return-object v0

    .line 101
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

    .line 106
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
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    const/16 v1, 0x8

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    return v0
.end method

.method private getLightColor()[F
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/Light;->getColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Color4f;->getPremultipliedRGBComponents()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    return-object v0
.end method

.method private getLightPosition()[F
    .locals 7

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    move-object v2, v0

    .line 80
    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v2

    check-cast v2, Lcom/sun/scenario/effect/light/PointLight;

    move-object v1, v2

    .line 81
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

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    return-object v0
.end method

.method private getLightSpecularExponent()F
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/light/SpotLight;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/SpotLight;->getSpecularExponent()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    return v0
.end method

.method private getNormalizedLightDirection()[F
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/light/SpotLight;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/SpotLight;->getNormalizedLightDirection()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    return-object v0
.end method

.method private getNormalizedLightPosition()[F
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getLight()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/light/Light;->getNormalizedLightPosition()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    return-object v0
.end method

.method private getSpecularConstant()F
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getSpecularConstant()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    return v0
.end method

.method private getSpecularExponent()F
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getSpecularExponent()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    return v0
.end method

.method private getSurfaceScale()F
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getSurfaceScale()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    return v0
.end method


# virtual methods
.method protected createShader()Lcom/sun/prism/ps/Shader;
    .locals 9

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    new-instance v3, Ljava/util/HashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v1, v3

    .line 148
    .local v1, "samplers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v3, v1

    const-string v4, "bumpImg"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 149
    move-object v3, v1

    const-string v4, "origImg"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 151
    new-instance v3, Ljava/util/HashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v2, v3

    .line 152
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v3, v2

    const-string v4, "lightPosition"

    const/16 v5, 0xd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 153
    move-object v3, v2

    const-string v4, "lightSpecularExponent"

    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 154
    move-object v3, v2

    const-string v4, "specularExponent"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 155
    move-object v3, v2

    const-string v4, "kvals"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 156
    move-object v3, v2

    const-string v4, "diffuseConstant"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 157
    move-object v3, v2

    const-string v4, "lightColor"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 158
    move-object v3, v2

    const-string v4, "normalizedLightDirection"

    const/16 v5, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 159
    move-object v3, v2

    const-string v4, "specularConstant"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 160
    move-object v3, v2

    const-string v4, "surfaceScale"

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 162
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getRenderer()Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getShaderName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->createShader(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/sun/prism/ps/Shader;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    return-object v0
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getEffect()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    return-object v0
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/PhongLighting;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/PhongLighting;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    return-object v0
.end method

.method protected isSamplerLinear(I)Z
    .locals 3

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    move v1, p1

    .local v1, "i":I
    move v2, v1

    .line 141
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    return v0
.end method

.method protected updateShader(Lcom/sun/prism/ps/Shader;)V
    .locals 11

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;
    move-object v1, p1

    .local v1, "shader":Lcom/sun/prism/ps/Shader;
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getLightPosition()[F

    move-result-object v5

    move-object v2, v5

    .line 169
    .local v2, "lightPosition_tmp":[F
    move-object v5, v1

    const-string v6, "lightPosition"

    move-object v7, v2

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object v8, v2

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object v9, v2

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFF)V

    .line 170
    move-object v5, v1

    const-string v6, "lightSpecularExponent"

    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getLightSpecularExponent()F

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;F)V

    .line 171
    move-object v5, v1

    const-string v6, "specularExponent"

    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getSpecularExponent()F

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;F)V

    .line 172
    move-object v5, v1

    const-string v6, "kvals"

    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getKvals()Ljava/nio/FloatBuffer;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v0

    invoke-direct {v9}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getKvalsArrayLength()I

    move-result v9

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/sun/prism/ps/Shader;->setConstants(Ljava/lang/String;Ljava/nio/FloatBuffer;II)V

    .line 173
    move-object v5, v1

    const-string v6, "diffuseConstant"

    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getDiffuseConstant()F

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;F)V

    .line 174
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getLightColor()[F

    move-result-object v5

    move-object v3, v5

    .line 175
    .local v3, "lightColor_tmp":[F
    move-object v5, v1

    const-string v6, "lightColor"

    move-object v7, v3

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object v8, v3

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object v9, v3

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFF)V

    .line 176
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getNormalizedLightDirection()[F

    move-result-object v5

    move-object v4, v5

    .line 177
    .local v4, "normalizedLightDirection_tmp":[F
    move-object v5, v1

    const-string v6, "normalizedLightDirection"

    move-object v7, v4

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object v8, v4

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object v9, v4

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFF)V

    .line 178
    move-object v5, v1

    const-string v6, "specularConstant"

    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getSpecularConstant()F

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;F)V

    .line 179
    move-object v5, v1

    const-string v6, "surfaceScale"

    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPhongLighting_SPOTPeer;->getSurfaceScale()F

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;F)V

    .line 181
    return-void
.end method

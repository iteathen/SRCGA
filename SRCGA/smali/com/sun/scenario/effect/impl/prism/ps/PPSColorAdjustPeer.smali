.class public Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;
.super Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;
.source "PPSColorAdjustPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;
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

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private getBrightness()F
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;->getEffect()Lcom/sun/scenario/effect/ColorAdjust;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/ColorAdjust;->getBrightness()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;
    return v0
.end method

.method private getContrast()F
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;->getEffect()Lcom/sun/scenario/effect/ColorAdjust;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/scenario/effect/ColorAdjust;->getContrast()F

    move-result v2

    move v1, v2

    .line 70
    .local v1, "c":F
    move v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move v2, v1

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    move v1, v2

    .line 71
    :cond_0
    move v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;
    return v0
.end method

.method private getHue()F
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;->getEffect()Lcom/sun/scenario/effect/ColorAdjust;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/ColorAdjust;->getHue()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;
    return v0
.end method

.method private getSaturation()F
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;->getEffect()Lcom/sun/scenario/effect/ColorAdjust;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/ColorAdjust;->getSaturation()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;
    return v0
.end method


# virtual methods
.method protected createShader()Lcom/sun/prism/ps/Shader;
    .locals 9

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;
    new-instance v3, Ljava/util/HashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v1, v3

    .line 86
    .local v1, "samplers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v3, v1

    const-string v4, "baseImg"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 88
    new-instance v3, Ljava/util/HashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v2, v3

    .line 89
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v3, v2

    const-string v4, "saturation"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 90
    move-object v3, v2

    const-string v4, "brightness"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 91
    move-object v3, v2

    const-string v4, "contrast"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 92
    move-object v3, v2

    const-string v4, "hue"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 94
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;->getRenderer()Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;->getShaderName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->createShader(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/sun/prism/ps/Shader;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;
    return-object v0
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/ColorAdjust;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/ColorAdjust;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;
    return-object v0
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;->getEffect()Lcom/sun/scenario/effect/ColorAdjust;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;
    return-object v0
.end method

.method protected isSamplerLinear(I)Z
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;
    move v1, p1

    .local v1, "i":I
    move v2, v1

    .line 79
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;
    return v0
.end method

.method protected updateShader(Lcom/sun/prism/ps/Shader;)V
    .locals 5

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;
    move-object v1, p1

    .local v1, "shader":Lcom/sun/prism/ps/Shader;
    move-object v2, v1

    const-string v3, "saturation"

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;->getSaturation()F

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;F)V

    .line 101
    move-object v2, v1

    const-string v3, "brightness"

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;->getBrightness()F

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;F)V

    .line 102
    move-object v2, v1

    const-string v3, "contrast"

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;->getContrast()F

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;F)V

    .line 103
    move-object v2, v1

    const-string v3, "hue"

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSColorAdjustPeer;->getHue()F

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;F)V

    .line 105
    return-void
.end method

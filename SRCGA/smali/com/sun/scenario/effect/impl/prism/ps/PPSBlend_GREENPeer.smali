.class public Lcom/sun/scenario/effect/impl/prism/ps/PPSBlend_GREENPeer;
.super Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;
.source "PPSBlend_GREENPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSBlend_GREENPeer;
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

.method private getOpacity()F
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSBlend_GREENPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSBlend_GREENPeer;->getEffect()Lcom/sun/scenario/effect/Blend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Blend;->getOpacity()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSBlend_GREENPeer;
    return v0
.end method


# virtual methods
.method protected createShader()Lcom/sun/prism/ps/Shader;
    .locals 9

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSBlend_GREENPeer;
    new-instance v3, Ljava/util/HashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v1, v3

    .line 72
    .local v1, "samplers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v3, v1

    const-string v4, "botImg"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 73
    move-object v3, v1

    const-string v4, "topImg"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 75
    new-instance v3, Ljava/util/HashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v2, v3

    .line 76
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v3, v2

    const-string v4, "opacity"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 78
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/scenario/effect/impl/prism/ps/PPSBlend_GREENPeer;->getRenderer()Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSBlend_GREENPeer;->getShaderName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->createShader(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/sun/prism/ps/Shader;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSBlend_GREENPeer;
    return-object v0
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/Blend;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSBlend_GREENPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Blend;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSBlend_GREENPeer;
    return-object v0
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSBlend_GREENPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSBlend_GREENPeer;->getEffect()Lcom/sun/scenario/effect/Blend;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSBlend_GREENPeer;
    return-object v0
.end method

.method protected isSamplerLinear(I)Z
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSBlend_GREENPeer;
    move v1, p1

    .local v1, "i":I
    move v2, v1

    .line 65
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSBlend_GREENPeer;
    return v0
.end method

.method protected updateShader(Lcom/sun/prism/ps/Shader;)V
    .locals 5

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSBlend_GREENPeer;
    move-object v1, p1

    .local v1, "shader":Lcom/sun/prism/ps/Shader;
    move-object v2, v1

    const-string v3, "opacity"

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSBlend_GREENPeer;->getOpacity()F

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;F)V

    .line 86
    return-void
.end method

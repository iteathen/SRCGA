.class public Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;
.super Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;
.source "PPSLinearConvolveShadowPeer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer",
        "<",
        "Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;
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

.method private getCount()I
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;->getRenderState()Lcom/sun/scenario/effect/impl/state/RenderState;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPassKernelSize()I

    move-result v1

    const/4 v2, 0x3

    add-int/lit8 v1, v1, 0x3

    const/4 v2, 0x4

    div-int/lit8 v1, v1, 0x4

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;
    return v0
.end method

.method private getOffset()[F
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;->getRenderState()Lcom/sun/scenario/effect/impl/state/RenderState;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPassVector()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;
    return-object v0
.end method

.method private getShadowColor()[F
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;->getRenderState()Lcom/sun/scenario/effect/impl/state/RenderState;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPassShadowColorComponents()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;
    return-object v0
.end method

.method private getWeights()Ljava/nio/FloatBuffer;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;->getRenderState()Lcom/sun/scenario/effect/impl/state/RenderState;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPassWeights()Ljava/nio/FloatBuffer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;
    return-object v0
.end method

.method private getWeightsArrayLength()I
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;->getRenderState()Lcom/sun/scenario/effect/impl/state/RenderState;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPassWeightsArrayLength()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;
    return v0
.end method


# virtual methods
.method protected createShader()Lcom/sun/prism/ps/Shader;
    .locals 9

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;
    new-instance v3, Ljava/util/HashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v1, v3

    .line 97
    .local v1, "samplers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v3, v1

    const-string v4, "img"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 99
    new-instance v3, Ljava/util/HashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v2, v3

    .line 100
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v3, v2

    const-string v4, "offset"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 101
    move-object v3, v2

    const-string v4, "count"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 102
    move-object v3, v2

    const-string v4, "weights"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 103
    move-object v3, v2

    const-string v4, "shadowColor"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 105
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;->getRenderer()Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;->getShaderName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->createShader(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/sun/prism/ps/Shader;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;
    return-object v0
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;
    return-object v0
.end method

.method public varargs getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;
    .locals 8

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, p3

    .local v3, "inputDatas":[Lcom/sun/scenario/effect/ImageData;
    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    move-object v4, v5

    .line 61
    .local v4, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;->getRenderState()Lcom/sun/scenario/effect/impl/state/RenderState;

    move-result-object v5

    check-cast v5, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;

    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPassResultBounds(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    move-object v4, v5

    .line 62
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;
    return-object v0
.end method

.method protected isSamplerLinear(I)Z
    .locals 3

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;
    move v1, p1

    .local v1, "i":I
    move v2, v1

    .line 90
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;
    return v0
.end method

.method protected updateShader(Lcom/sun/prism/ps/Shader;)V
    .locals 11

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;
    move-object v1, p1

    .local v1, "shader":Lcom/sun/prism/ps/Shader;
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;->getOffset()[F

    move-result-object v4

    move-object v2, v4

    .line 112
    .local v2, "offset_tmp":[F
    move-object v4, v1

    const-string v5, "offset"

    move-object v6, v2

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object v7, v2

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object v8, v2

    const/4 v9, 0x2

    aget v8, v8, v9

    move-object v9, v2

    const/4 v10, 0x3

    aget v9, v9, v10

    invoke-interface/range {v4 .. v9}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFFF)V

    .line 113
    move-object v4, v1

    const-string v5, "count"

    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;->getCount()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;I)V

    .line 114
    move-object v4, v1

    const-string v5, "weights"

    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;->getWeights()Ljava/nio/FloatBuffer;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;->getWeightsArrayLength()I

    move-result v8

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/sun/prism/ps/Shader;->setConstants(Ljava/lang/String;Ljava/nio/FloatBuffer;II)V

    .line 115
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSLinearConvolveShadowPeer;->getShadowColor()[F

    move-result-object v4

    move-object v3, v4

    .line 116
    .local v3, "shadowColor_tmp":[F
    move-object v4, v1

    const-string v5, "shadowColor"

    move-object v6, v3

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object v7, v3

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object v8, v3

    const/4 v9, 0x2

    aget v8, v8, v9

    move-object v9, v3

    const/4 v10, 0x3

    aget v9, v9, v10

    invoke-interface/range {v4 .. v9}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFFF)V

    .line 118
    return-void
.end method

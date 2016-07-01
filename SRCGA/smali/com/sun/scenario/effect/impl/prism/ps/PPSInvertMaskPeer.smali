.class public Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;
.super Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;
.source "PPSInvertMaskPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;
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

.method private getOffset()[F
    .locals 13

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;->getEffect()Lcom/sun/scenario/effect/InvertMask;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/scenario/effect/InvertMask;->getOffsetX()I

    move-result v5

    int-to-float v5, v5

    move v1, v5

    .line 58
    .local v1, "xoff":F
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;->getEffect()Lcom/sun/scenario/effect/InvertMask;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/scenario/effect/InvertMask;->getOffsetY()I

    move-result v5

    int-to-float v5, v5

    move v2, v5

    .line 59
    .local v2, "yoff":F
    const/4 v5, 0x2

    new-array v5, v5, [F

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    move v8, v1

    aput v8, v6, v7

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x1

    move v8, v2

    aput v8, v6, v7

    move-object v3, v5

    .line 61
    .local v3, "offsets":[F
    move-object v5, v0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;->getInputTransform(I)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v5

    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->inverseDeltaTransform([FI[FII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    :goto_0
    move-object v5, v3

    const/4 v6, 0x0

    move-object v11, v5

    move v12, v6

    move-object v5, v11

    move v6, v12

    move-object v7, v11

    move v8, v12

    aget v7, v7, v8

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v8

    iget v8, v8, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    aput v7, v5, v6

    .line 65
    move-object v5, v3

    const/4 v6, 0x1

    move-object v11, v5

    move v12, v6

    move-object v5, v11

    move v6, v12

    move-object v7, v11

    move v8, v12

    aget v7, v7, v8

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v8

    iget v8, v8, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    aput v7, v5, v6

    .line 66
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;
    return-object v0

    .line 62
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;
    :catch_0
    move-exception v5

    move-object v4, v5

    goto :goto_0
.end method


# virtual methods
.method protected createShader()Lcom/sun/prism/ps/Shader;
    .locals 9

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;
    new-instance v3, Ljava/util/HashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v1, v3

    .line 81
    .local v1, "samplers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v3, v1

    const-string v4, "baseImg"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 83
    new-instance v3, Ljava/util/HashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v2, v3

    .line 84
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v3, v2

    const-string v4, "offset"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 86
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;->getRenderer()Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;->getShaderName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->createShader(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/sun/prism/ps/Shader;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;
    return-object v0
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;->getEffect()Lcom/sun/scenario/effect/InvertMask;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;
    return-object v0
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/InvertMask;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/InvertMask;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;
    return-object v0
.end method

.method protected isSamplerLinear(I)Z
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;
    move v1, p1

    .local v1, "i":I
    move v2, v1

    .line 74
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;
    return v0
.end method

.method protected updateShader(Lcom/sun/prism/ps/Shader;)V
    .locals 8

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;
    move-object v1, p1

    .local v1, "shader":Lcom/sun/prism/ps/Shader;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/scenario/effect/impl/prism/ps/PPSInvertMaskPeer;->getOffset()[F

    move-result-object v3

    move-object v2, v3

    .line 93
    .local v2, "offset_tmp":[F
    move-object v3, v1

    const-string v4, "offset"

    move-object v5, v2

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object v6, v2

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-interface {v3, v4, v5, v6}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FF)V

    .line 95
    return-void
.end method

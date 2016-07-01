.class public Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
.super Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;
.source "PPSPerspectiveTransformPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
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

.method private getITX()[[F
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
    move-object v2, v0

    .line 58
    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;->getEffect()Lcom/sun/scenario/effect/PerspectiveTransform;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/scenario/effect/impl/state/AccessHelper;->getState(Lcom/sun/scenario/effect/Effect;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;

    move-object v1, v2

    .line 59
    .local v1, "state":Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->getITX()[[F

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
    return-object v0
.end method

.method private getTx0()[F
    .locals 11

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;->getInputBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    move-object v1, v5

    .line 64
    .local v1, "ib":Lcom/sun/javafx/geom/Rectangle;
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    move-object v2, v5

    .line 65
    .local v2, "nb":Lcom/sun/javafx/geom/Rectangle;
    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v5, v5

    move-object v6, v2

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v3, v5

    .line 66
    .local v3, "scalex":F
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;->getITX()[[F

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v4, v5

    .line 67
    .local v4, "itx0":[F
    const/4 v5, 0x3

    new-array v5, v5, [F

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move-object v8, v4

    const/4 v9, 0x0

    aget v8, v8, v9

    move v9, v3

    mul-float/2addr v8, v9

    aput v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    move-object v8, v4

    const/4 v9, 0x1

    aget v8, v8, v9

    move v9, v3

    mul-float/2addr v8, v9

    aput v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x2

    move-object v8, v4

    const/4 v9, 0x2

    aget v8, v8, v9

    move v9, v3

    mul-float/2addr v8, v9

    aput v8, v6, v7

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
    return-object v0
.end method

.method private getTx1()[F
    .locals 11

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;->getInputBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    move-object v1, v5

    .line 71
    .local v1, "ib":Lcom/sun/javafx/geom/Rectangle;
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    move-object v2, v5

    .line 72
    .local v2, "nb":Lcom/sun/javafx/geom/Rectangle;
    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v5, v5

    move-object v6, v2

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v3, v5

    .line 73
    .local v3, "scaley":F
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;->getITX()[[F

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object v4, v5

    .line 74
    .local v4, "itx1":[F
    const/4 v5, 0x3

    new-array v5, v5, [F

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move-object v8, v4

    const/4 v9, 0x0

    aget v8, v8, v9

    move v9, v3

    mul-float/2addr v8, v9

    aput v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    move-object v8, v4

    const/4 v9, 0x1

    aget v8, v8, v9

    move v9, v3

    mul-float/2addr v8, v9

    aput v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x2

    move-object v8, v4

    const/4 v9, 0x2

    aget v8, v8, v9

    move v9, v3

    mul-float/2addr v8, v9

    aput v8, v6, v7

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
    return-object v0
.end method

.method private getTx2()[F
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;->getITX()[[F

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
    return-object v0
.end method


# virtual methods
.method protected createShader()Lcom/sun/prism/ps/Shader;
    .locals 9

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
    new-instance v3, Ljava/util/HashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v1, v3

    .line 110
    .local v1, "samplers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v3, v1

    const-string v4, "baseImg"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 112
    new-instance v3, Ljava/util/HashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v2, v3

    .line 113
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v3, v2

    const-string v4, "tx1"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 114
    move-object v3, v2

    const-string v4, "tx0"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 115
    move-object v3, v2

    const-string v4, "tx2"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 117
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;->getRenderer()Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;->getShaderName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->createShader(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/sun/prism/ps/Shader;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
    return-object v0
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;->getEffect()Lcom/sun/scenario/effect/PerspectiveTransform;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
    return-object v0
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/PerspectiveTransform;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/PerspectiveTransform;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
    return-object v0
.end method

.method public getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I
    .locals 13

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
    move v1, p1

    .local v1, "inputIndex":I
    move-object v2, p2

    .local v2, "coords":[F
    move/from16 v3, p3

    .local v3, "srcX":F
    move/from16 v4, p4

    .local v4, "srcY":F
    move/from16 v5, p5

    .local v5, "srcNativeWidth":F
    move/from16 v6, p6

    .local v6, "srcNativeHeight":F
    move-object/from16 v7, p7

    .local v7, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v8, p8

    .local v8, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v9, v2

    const/4 v10, 0x0

    move-object v11, v7

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v11, v11

    aput v11, v9, v10

    .line 89
    move-object v9, v2

    const/4 v10, 0x1

    move-object v11, v7

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v11, v11

    aput v11, v9, v10

    .line 90
    move-object v9, v2

    const/4 v10, 0x2

    move-object v11, v7

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->x:I

    move-object v12, v7

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->width:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    aput v11, v9, v10

    .line 91
    move-object v9, v2

    const/4 v10, 0x3

    move-object v11, v7

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->y:I

    move-object v12, v7

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->height:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    aput v11, v9, v10

    .line 92
    const/4 v9, 0x4

    move v0, v9

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
    return v0
.end method

.method protected isSamplerLinear(I)Z
    .locals 3

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
    move v1, p1

    .local v1, "i":I
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 103
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
    :goto_0
    return v0

    .line 100
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
    :pswitch_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected updateShader(Lcom/sun/prism/ps/Shader;)V
    .locals 11

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;
    move-object v1, p1

    .local v1, "shader":Lcom/sun/prism/ps/Shader;
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;->getTx1()[F

    move-result-object v5

    move-object v2, v5

    .line 124
    .local v2, "tx1_tmp":[F
    move-object v5, v1

    const-string v6, "tx1"

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

    .line 125
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;->getTx0()[F

    move-result-object v5

    move-object v3, v5

    .line 126
    .local v3, "tx0_tmp":[F
    move-object v5, v1

    const-string v6, "tx0"

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

    .line 127
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/scenario/effect/impl/prism/ps/PPSPerspectiveTransformPeer;->getTx2()[F

    move-result-object v5

    move-object v4, v5

    .line 128
    .local v4, "tx2_tmp":[F
    move-object v5, v1

    const-string v6, "tx2"

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

    .line 130
    return-void
.end method

.class public Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
.super Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;
.source "PPSDisplacementMapPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
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

.method private getImagetx()[F
    .locals 9

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/scenario/effect/DisplacementMap;->getWrap()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f000000    # 0.5f

    :goto_0
    move v1, v2

    .line 66
    .local v1, "inset":F
    const/4 v2, 0x4

    new-array v2, v2, [F

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x0

    move v5, v1

    move-object v6, v0

    const/4 v7, 0x0

    .line 67
    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v6

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v3, v4

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x1

    move v5, v1

    move-object v6, v0

    const/4 v7, 0x0

    .line 68
    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v6

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v3, v4

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x2

    move-object v5, v0

    const/4 v6, 0x0

    .line 69
    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;->getInputBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    move v7, v1

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v6

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v3, v4

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x3

    move-object v5, v0

    const/4 v6, 0x0

    .line 70
    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;->getInputBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    move v7, v1

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v6

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v3, v4

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    return-object v0

    .line 65
    .end local v1    # "inset":F
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSampletx()[F
    .locals 6

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    const/4 v1, 0x4

    new-array v1, v1, [F

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    move-object v4, v0

    .line 58
    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/scenario/effect/DisplacementMap;->getOffsetX()F

    move-result v4

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    move-object v4, v0

    .line 59
    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/scenario/effect/DisplacementMap;->getOffsetY()F

    move-result v4

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x2

    move-object v4, v0

    .line 60
    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/scenario/effect/DisplacementMap;->getScaleX()F

    move-result v4

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x3

    move-object v4, v0

    .line 61
    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/scenario/effect/DisplacementMap;->getScaleY()F

    move-result v4

    aput v4, v2, v3

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    return-object v0
.end method

.method private getWrap()F
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/DisplacementMap;->getWrap()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createShader()Lcom/sun/prism/ps/Shader;
    .locals 9

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    new-instance v3, Ljava/util/HashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v1, v3

    .line 112
    .local v1, "samplers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v3, v1

    const-string v4, "origImg"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 113
    move-object v3, v1

    const-string v4, "mapImg"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 115
    new-instance v3, Ljava/util/HashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v2, v3

    .line 116
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v3, v2

    const-string v4, "imagetx"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 117
    move-object v3, v2

    const-string v4, "wrap"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 118
    move-object v3, v2

    const-string v4, "sampletx"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 120
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;->getRenderer()Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;->getShaderName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->createShader(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/sun/prism/ps/Shader;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    return-object v0
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/DisplacementMap;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/DisplacementMap;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    return-object v0
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    return-object v0
.end method

.method protected getSamplerData(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;->getEffect()Lcom/sun/scenario/effect/DisplacementMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/scenario/effect/DisplacementMap;->getMapData()Lcom/sun/scenario/effect/FloatMap;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    return-object v0
.end method

.method public getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I
    .locals 18

    .prologue
    .line 90
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    move/from16 v1, p1

    .local v1, "inputIndex":I
    move-object/from16 v2, p2

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

    move-object v11, v2

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v15, v11

    move/from16 v16, v12

    move/from16 v17, v13

    move/from16 v11, v17

    move-object v12, v15

    move/from16 v13, v16

    move/from16 v14, v17

    aput v14, v12, v13

    aput v11, v9, v10

    .line 91
    move-object v9, v2

    const/4 v10, 0x2

    move-object v11, v2

    const/4 v12, 0x3

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v15, v11

    move/from16 v16, v12

    move/from16 v17, v13

    move/from16 v11, v17

    move-object v12, v15

    move/from16 v13, v16

    move/from16 v14, v17

    aput v14, v12, v13

    aput v11, v9, v10

    .line 92
    const/4 v9, 0x4

    move v0, v9

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    return v0
.end method

.method protected isSamplerLinear(I)Z
    .locals 3

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    move v1, p1

    .local v1, "i":I
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 105
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    :goto_0
    return v0

    .line 100
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    :pswitch_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 102
    :pswitch_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected updateShader(Lcom/sun/prism/ps/Shader;)V
    .locals 11

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;
    move-object v1, p1

    .local v1, "shader":Lcom/sun/prism/ps/Shader;
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;->getImagetx()[F

    move-result-object v4

    move-object v2, v4

    .line 127
    .local v2, "imagetx_tmp":[F
    move-object v4, v1

    const-string v5, "imagetx"

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

    .line 128
    move-object v4, v1

    const-string v5, "wrap"

    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;->getWrap()F

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;F)V

    .line 129
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDisplacementMapPeer;->getSampletx()[F

    move-result-object v4

    move-object v3, v4

    .line 130
    .local v3, "sampletx_tmp":[F
    move-object v4, v1

    const-string v5, "sampletx"

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

    .line 132
    return-void
.end method

.class public abstract Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;
.super Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer;
.source "PPSZeroSamplerPeer.java"


# instance fields
.field private shader:Lcom/sun/prism/ps/Shader;


# direct methods
.method protected constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;
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

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    if-eqz v1, :cond_0

    .line 47
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    invoke-interface {v1}, Lcom/sun/prism/ps/Shader;->dispose()V

    .line 49
    :cond_0
    return-void
.end method

.method varargs filterImpl([Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 18

    .prologue
    .line 53
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;
    move-object/from16 v1, p1

    .local v1, "inputs":[Lcom/sun/scenario/effect/ImageData;
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;->getDestBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v12

    move-object v2, v12

    .line 54
    .local v2, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v12, v2

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->width:I

    move v3, v12

    .line 55
    .local v3, "dstw":I
    move-object v12, v2

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->height:I

    move v4, v12

    .line 57
    .local v4, "dsth":I
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;->getRenderer()Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;

    move-result-object v12

    move-object v5, v12

    .line 58
    .local v5, "renderer":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move-object v12, v5

    move v13, v3

    move v14, v4

    invoke-virtual {v12, v13, v14}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;

    move-result-object v12

    move-object v6, v12

    .line 59
    .local v6, "dst":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move-object v12, v6

    if-nez v12, :cond_0

    .line 60
    move-object v12, v5

    invoke-virtual {v12}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->markLost()V

    .line 61
    new-instance v12, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v14

    move-object v15, v6

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v16}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v0, v12

    .line 89
    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;
    :goto_0
    return-object v0

    .line 63
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;
    :cond_0
    move-object v12, v0

    move-object v13, v6

    invoke-virtual {v13}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->getPhysicalWidth()I

    move-result v13

    move-object v14, v6

    invoke-virtual {v14}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->getPhysicalHeight()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;->setDestNativeBounds(II)V

    .line 65
    move-object v12, v6

    invoke-virtual {v12}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->createGraphics()Lcom/sun/prism/ps/ShaderGraphics;

    move-result-object v12

    move-object v7, v12

    .line 66
    .local v7, "g":Lcom/sun/prism/ps/ShaderGraphics;
    move-object v12, v7

    if-nez v12, :cond_1

    .line 67
    move-object v12, v5

    invoke-virtual {v12}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->markLost()V

    .line 68
    new-instance v12, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v14

    move-object v15, v6

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v16}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v0, v12

    goto :goto_0

    .line 70
    :cond_1
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    if-nez v12, :cond_2

    .line 71
    move-object v12, v0

    move-object v13, v0

    invoke-virtual {v13}, Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;->createShader()Lcom/sun/prism/ps/Shader;

    move-result-object v13

    iput-object v13, v12, Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    .line 73
    :cond_2
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    if-eqz v12, :cond_3

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    invoke-interface {v12}, Lcom/sun/prism/ps/Shader;->isValid()Z

    move-result v12

    if-nez v12, :cond_4

    .line 74
    :cond_3
    move-object v12, v5

    invoke-virtual {v12}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->markLost()V

    .line 75
    new-instance v12, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v14

    move-object v15, v6

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v16}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v0, v12

    goto :goto_0

    .line 77
    :cond_4
    move-object v12, v7

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    invoke-interface {v12, v13}, Lcom/sun/prism/ps/ShaderGraphics;->setExternalShader(Lcom/sun/prism/ps/Shader;)V

    .line 78
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    invoke-virtual {v12, v13}, Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;->updateShader(Lcom/sun/prism/ps/Shader;)V

    .line 80
    const/4 v12, 0x0

    move v8, v12

    .line 81
    .local v8, "dx1":F
    const/4 v12, 0x0

    move v9, v12

    .line 82
    .local v9, "dy1":F
    move v12, v3

    int-to-float v12, v12

    move v10, v12

    .line 83
    .local v10, "dx2":F
    move v12, v4

    int-to-float v12, v12

    move v11, v12

    .line 85
    .local v11, "dy2":F
    move-object v12, v7

    sget-object v13, Lcom/sun/prism/paint/Color;->WHITE:Lcom/sun/prism/paint/Color;

    invoke-interface {v12, v13}, Lcom/sun/prism/ps/ShaderGraphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 86
    move-object v12, v7

    move v13, v8

    move v14, v9

    move v15, v10

    move/from16 v16, v11

    invoke-interface/range {v12 .. v16}, Lcom/sun/prism/ps/ShaderGraphics;->fillQuad(FFFF)V

    .line 87
    move-object v12, v7

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/sun/prism/ps/ShaderGraphics;->setExternalShader(Lcom/sun/prism/ps/Shader;)V

    .line 89
    new-instance v12, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/scenario/effect/impl/prism/ps/PPSZeroSamplerPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v14

    move-object v15, v6

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v16}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v0, v12

    goto/16 :goto_0
.end method

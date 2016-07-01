.class public abstract Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;
.super Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer;
.source "PPSOneSamplerPeer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sun/scenario/effect/impl/state/RenderState;",
        ">",
        "Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private shader:Lcom/sun/prism/ps/Shader;


# direct methods
.method protected constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;, "Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer<TT;>;"
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

    .line 46
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;, "Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    if-eqz v1, :cond_0

    .line 51
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    invoke-interface {v1}, Lcom/sun/prism/ps/Shader;->dispose()V

    .line 53
    :cond_0
    return-void
.end method

.method varargs filterImpl([Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 46

    .prologue
    .line 57
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;, "Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer<TT;>;"
    move-object/from16 v3, p1

    .local v3, "inputs":[Lcom/sun/scenario/effect/ImageData;
    move-object/from16 v31, v3

    const/16 v32, 0x0

    aget-object v31, v31, v32

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v31

    move-object/from16 v4, v31

    .line 58
    .local v4, "srcF":Lcom/sun/scenario/effect/Filterable;
    move-object/from16 v31, v4

    check-cast v31, Lcom/sun/scenario/effect/impl/prism/PrTexture;

    move-object/from16 v5, v31

    .line 59
    .local v5, "srcTex":Lcom/sun/scenario/effect/impl/prism/PrTexture;
    move-object/from16 v31, v3

    const/16 v32, 0x0

    aget-object v31, v31, v32

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v31

    move-object/from16 v6, v31

    .line 60
    .local v6, "srcBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v31, v2

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->getDestBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v31

    move-object/from16 v7, v31

    .line 61
    .local v7, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v31, v7

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v31, v0

    move/from16 v8, v31

    .line 62
    .local v8, "dstw":I
    move-object/from16 v31, v7

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v31, v0

    move/from16 v9, v31

    .line 64
    .local v9, "dsth":I
    move-object/from16 v31, v2

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->getRenderer()Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;

    move-result-object v31

    move-object/from16 v10, v31

    .line 65
    .local v10, "renderer":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move-object/from16 v31, v10

    move/from16 v32, v8

    move/from16 v33, v9

    invoke-virtual/range {v31 .. v33}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;

    move-result-object v31

    move-object/from16 v11, v31

    .line 66
    .local v11, "dst":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move-object/from16 v31, v11

    if-nez v31, :cond_0

    .line 67
    move-object/from16 v31, v10

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->markLost()V

    .line 68
    new-instance v31, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v45, v31

    move-object/from16 v31, v45

    move-object/from16 v32, v45

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v33

    move-object/from16 v34, v11

    move-object/from16 v35, v7

    invoke-direct/range {v32 .. v35}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v31

    .line 133
    .end local v2    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;, "Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer<TT;>;"
    :goto_0
    return-object v2

    .line 70
    .restart local v2    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;, "Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer<TT;>;"
    :cond_0
    move-object/from16 v31, v2

    move-object/from16 v32, v11

    invoke-virtual/range {v32 .. v32}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->getPhysicalWidth()I

    move-result v32

    move-object/from16 v33, v11

    invoke-virtual/range {v33 .. v33}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->getPhysicalHeight()I

    move-result v33

    invoke-virtual/range {v31 .. v33}, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->setDestNativeBounds(II)V

    .line 72
    move-object/from16 v31, v3

    const/16 v32, 0x0

    aget-object v31, v31, v32

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/ImageData;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v31

    move-object/from16 v12, v31

    .line 73
    .local v12, "srcTransform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v31, v2

    const/16 v32, 0x0

    move-object/from16 v33, v6

    invoke-virtual/range {v31 .. v33}, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 74
    move-object/from16 v31, v2

    const/16 v32, 0x0

    move-object/from16 v33, v12

    invoke-virtual/range {v31 .. v33}, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->setInputTransform(ILcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 75
    move-object/from16 v31, v2

    const/16 v32, 0x0

    move-object/from16 v33, v5

    invoke-virtual/range {v33 .. v33}, Lcom/sun/scenario/effect/impl/prism/PrTexture;->getNativeBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 76
    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    move-object/from16 v13, v31

    .line 77
    .local v13, "srcRect":[F
    move-object/from16 v31, v2

    const/16 v32, 0x0

    move-object/from16 v33, v13

    move-object/from16 v34, v6

    move-object/from16 v0, v34

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v35, v6

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v36, v4

    .line 79
    invoke-interface/range {v36 .. v36}, Lcom/sun/scenario/effect/Filterable;->getPhysicalWidth()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v37, v4

    .line 80
    invoke-interface/range {v37 .. v37}, Lcom/sun/scenario/effect/Filterable;->getPhysicalHeight()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v38, v7

    move-object/from16 v39, v12

    .line 77
    invoke-virtual/range {v31 .. v39}, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v31

    move/from16 v14, v31

    .line 84
    .local v14, "srcCoords":I
    move-object/from16 v31, v11

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->createGraphics()Lcom/sun/prism/ps/ShaderGraphics;

    move-result-object v31

    move-object/from16 v15, v31

    .line 85
    .local v15, "g":Lcom/sun/prism/ps/ShaderGraphics;
    move-object/from16 v31, v15

    if-nez v31, :cond_1

    .line 86
    move-object/from16 v31, v10

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->markLost()V

    .line 87
    new-instance v31, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v45, v31

    move-object/from16 v31, v45

    move-object/from16 v32, v45

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v33

    move-object/from16 v34, v11

    move-object/from16 v35, v7

    invoke-direct/range {v32 .. v35}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v31

    goto/16 :goto_0

    .line 89
    :cond_1
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    move-object/from16 v31, v0

    if-nez v31, :cond_2

    .line 90
    move-object/from16 v31, v2

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->createShader()Lcom/sun/prism/ps/Shader;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    .line 92
    :cond_2
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/sun/prism/ps/Shader;->isValid()Z

    move-result v31

    if-nez v31, :cond_4

    .line 93
    :cond_3
    move-object/from16 v31, v10

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->markLost()V

    .line 94
    new-instance v31, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v45, v31

    move-object/from16 v31, v45

    move-object/from16 v32, v45

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v33

    move-object/from16 v34, v11

    move-object/from16 v35, v7

    invoke-direct/range {v32 .. v35}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v31

    goto/16 :goto_0

    .line 96
    :cond_4
    move-object/from16 v31, v15

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    move-object/from16 v32, v0

    invoke-interface/range {v31 .. v32}, Lcom/sun/prism/ps/ShaderGraphics;->setExternalShader(Lcom/sun/prism/ps/Shader;)V

    .line 97
    move-object/from16 v31, v2

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->updateShader(Lcom/sun/prism/ps/Shader;)V

    .line 99
    const/16 v31, 0x0

    move/from16 v16, v31

    .line 100
    .local v16, "dx1":F
    const/16 v31, 0x0

    move/from16 v17, v31

    .line 101
    .local v17, "dy1":F
    move/from16 v31, v8

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v18, v31

    .line 102
    .local v18, "dx2":F
    move/from16 v31, v9

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v19, v31

    .line 105
    .local v19, "dy2":F
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/prism/PrTexture;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v31

    move-object/from16 v20, v31

    .line 106
    .local v20, "ptex":Lcom/sun/prism/Texture;
    move-object/from16 v31, v20

    if-nez v31, :cond_5

    .line 107
    move-object/from16 v31, v10

    invoke-virtual/range {v31 .. v31}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->markLost()V

    .line 108
    new-instance v31, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v45, v31

    move-object/from16 v31, v45

    move-object/from16 v32, v45

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v33

    move-object/from16 v34, v11

    move-object/from16 v35, v7

    invoke-direct/range {v32 .. v35}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v31

    goto/16 :goto_0

    .line 110
    :cond_5
    move-object/from16 v31, v20

    invoke-interface/range {v31 .. v31}, Lcom/sun/prism/Texture;->getContentX()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v32, v20

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v31, v31, v32

    move/from16 v21, v31

    .line 111
    .local v21, "txoff":F
    move-object/from16 v31, v20

    invoke-interface/range {v31 .. v31}, Lcom/sun/prism/Texture;->getContentY()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v32, v20

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v31, v31, v32

    move/from16 v22, v31

    .line 112
    .local v22, "tyoff":F
    move/from16 v31, v21

    move-object/from16 v32, v13

    const/16 v33, 0x0

    aget v32, v32, v33

    add-float v31, v31, v32

    move/from16 v23, v31

    .line 113
    .local v23, "tx11":F
    move/from16 v31, v22

    move-object/from16 v32, v13

    const/16 v33, 0x1

    aget v32, v32, v33

    add-float v31, v31, v32

    move/from16 v24, v31

    .line 114
    .local v24, "ty11":F
    move/from16 v31, v21

    move-object/from16 v32, v13

    const/16 v33, 0x2

    aget v32, v32, v33

    add-float v31, v31, v32

    move/from16 v25, v31

    .line 115
    .local v25, "tx22":F
    move/from16 v31, v22

    move-object/from16 v32, v13

    const/16 v33, 0x3

    aget v32, v32, v33

    add-float v31, v31, v32

    move/from16 v26, v31

    .line 116
    .local v26, "ty22":F
    move/from16 v31, v14

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_6

    .line 117
    move-object/from16 v31, v15

    move-object/from16 v32, v20

    move/from16 v33, v16

    move/from16 v34, v17

    move/from16 v35, v18

    move/from16 v36, v19

    move/from16 v37, v23

    move/from16 v38, v24

    move/from16 v39, v25

    move/from16 v40, v26

    invoke-interface/range {v31 .. v40}, Lcom/sun/prism/ps/ShaderGraphics;->drawTextureRaw(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 131
    :goto_1
    move-object/from16 v31, v15

    const/16 v32, 0x0

    invoke-interface/range {v31 .. v32}, Lcom/sun/prism/ps/ShaderGraphics;->setExternalShader(Lcom/sun/prism/ps/Shader;)V

    .line 133
    new-instance v31, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v45, v31

    move-object/from16 v31, v45

    move-object/from16 v32, v45

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Lcom/sun/scenario/effect/impl/prism/ps/PPSOneSamplerPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v33

    move-object/from16 v34, v11

    move-object/from16 v35, v7

    invoke-direct/range {v32 .. v35}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v31

    goto/16 :goto_0

    .line 121
    :cond_6
    move/from16 v31, v21

    move-object/from16 v32, v13

    const/16 v33, 0x4

    aget v32, v32, v33

    add-float v31, v31, v32

    move/from16 v27, v31

    .line 122
    .local v27, "tx21":F
    move/from16 v31, v22

    move-object/from16 v32, v13

    const/16 v33, 0x5

    aget v32, v32, v33

    add-float v31, v31, v32

    move/from16 v28, v31

    .line 123
    .local v28, "ty21":F
    move/from16 v31, v21

    move-object/from16 v32, v13

    const/16 v33, 0x6

    aget v32, v32, v33

    add-float v31, v31, v32

    move/from16 v29, v31

    .line 124
    .local v29, "tx12":F
    move/from16 v31, v22

    move-object/from16 v32, v13

    const/16 v33, 0x7

    aget v32, v32, v33

    add-float v31, v31, v32

    move/from16 v30, v31

    .line 126
    .local v30, "ty12":F
    move-object/from16 v31, v15

    move-object/from16 v32, v20

    move/from16 v33, v16

    move/from16 v34, v17

    move/from16 v35, v18

    move/from16 v36, v19

    move/from16 v37, v23

    move/from16 v38, v24

    move/from16 v39, v27

    move/from16 v40, v28

    move/from16 v41, v29

    move/from16 v42, v30

    move/from16 v43, v25

    move/from16 v44, v26

    invoke-interface/range {v31 .. v44}, Lcom/sun/prism/ps/ShaderGraphics;->drawMappedTextureRaw(Lcom/sun/prism/Texture;FFFFFFFFFFFF)V

    goto :goto_1
.end method

.class public abstract Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;
.super Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer;
.source "PPSTwoSamplerPeer.java"


# instance fields
.field private shader:Lcom/sun/prism/ps/Shader;


# direct methods
.method protected constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;
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

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    if-eqz v1, :cond_0

    .line 51
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    invoke-interface {v1}, Lcom/sun/prism/ps/Shader;->dispose()V

    .line 53
    :cond_0
    return-void
.end method

.method varargs filterImpl([Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 71

    .prologue
    .line 57
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;
    move-object/from16 v3, p1

    .local v3, "inputs":[Lcom/sun/scenario/effect/ImageData;
    move-object/from16 v45, v2

    invoke-virtual/range {v45 .. v45}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->getDestBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v45

    move-object/from16 v4, v45

    .line 58
    .local v4, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v45, v4

    move-object/from16 v0, v45

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v45, v0

    move/from16 v5, v45

    .line 59
    .local v5, "dstw":I
    move-object/from16 v45, v4

    move-object/from16 v0, v45

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v45, v0

    move/from16 v6, v45

    .line 61
    .local v6, "dsth":I
    move-object/from16 v45, v2

    invoke-virtual/range {v45 .. v45}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->getRenderer()Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;

    move-result-object v45

    move-object/from16 v7, v45

    .line 62
    .local v7, "renderer":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move-object/from16 v45, v7

    move/from16 v46, v5

    move/from16 v47, v6

    invoke-virtual/range {v45 .. v47}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;

    move-result-object v45

    move-object/from16 v8, v45

    .line 63
    .local v8, "dst":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move-object/from16 v45, v8

    if-nez v45, :cond_0

    .line 64
    move-object/from16 v45, v7

    invoke-virtual/range {v45 .. v45}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->markLost()V

    .line 65
    new-instance v45, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v68, v45

    move-object/from16 v45, v68

    move-object/from16 v46, v68

    move-object/from16 v47, v2

    invoke-virtual/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v47

    move-object/from16 v48, v8

    move-object/from16 v49, v4

    invoke-direct/range {v46 .. v49}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v45

    .line 227
    .end local v2    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;
    :goto_0
    return-object v2

    .line 67
    .restart local v2    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;
    :cond_0
    move-object/from16 v45, v2

    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->getPhysicalWidth()I

    move-result v46

    move-object/from16 v47, v8

    invoke-virtual/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->getPhysicalHeight()I

    move-result v47

    invoke-virtual/range {v45 .. v47}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->setDestNativeBounds(II)V

    .line 69
    move-object/from16 v45, v3

    const/16 v46, 0x0

    aget-object v45, v45, v46

    invoke-virtual/range {v45 .. v45}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v45

    move-object/from16 v9, v45

    .line 70
    .local v9, "src0F":Lcom/sun/scenario/effect/Filterable;
    move-object/from16 v45, v9

    check-cast v45, Lcom/sun/scenario/effect/impl/prism/PrTexture;

    move-object/from16 v10, v45

    .line 71
    .local v10, "src0Tex":Lcom/sun/scenario/effect/impl/prism/PrTexture;
    move-object/from16 v45, v3

    const/16 v46, 0x0

    aget-object v45, v45, v46

    invoke-virtual/range {v45 .. v45}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v45

    move-object/from16 v11, v45

    .line 72
    .local v11, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v45, v3

    const/16 v46, 0x0

    aget-object v45, v45, v46

    invoke-virtual/range {v45 .. v45}, Lcom/sun/scenario/effect/ImageData;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v45

    move-object/from16 v12, v45

    .line 73
    .local v12, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v45, v2

    const/16 v46, 0x0

    move-object/from16 v47, v11

    invoke-virtual/range {v45 .. v47}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 74
    move-object/from16 v45, v2

    const/16 v46, 0x0

    move-object/from16 v47, v12

    invoke-virtual/range {v45 .. v47}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->setInputTransform(ILcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 75
    move-object/from16 v45, v2

    const/16 v46, 0x0

    move-object/from16 v47, v10

    invoke-virtual/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/prism/PrTexture;->getNativeBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v47

    invoke-virtual/range {v45 .. v47}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 81
    const/16 v45, 0x8

    move/from16 v0, v45

    new-array v0, v0, [F

    move-object/from16 v45, v0

    move-object/from16 v14, v45

    .line 83
    .local v14, "src1Rect":[F
    move-object/from16 v45, v3

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v45, v0

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-le v0, v1, :cond_2

    .line 85
    move-object/from16 v45, v3

    const/16 v46, 0x1

    aget-object v45, v45, v46

    invoke-virtual/range {v45 .. v45}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v45

    move-object/from16 v16, v45

    .line 86
    .local v16, "src1F":Lcom/sun/scenario/effect/Filterable;
    move-object/from16 v45, v16

    check-cast v45, Lcom/sun/scenario/effect/impl/prism/PrTexture;

    move-object/from16 v13, v45

    .line 87
    .local v13, "src1Tex":Lcom/sun/scenario/effect/impl/prism/PrTexture;
    move-object/from16 v45, v13

    if-nez v45, :cond_1

    .line 88
    move-object/from16 v45, v7

    invoke-virtual/range {v45 .. v45}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->markLost()V

    .line 89
    new-instance v45, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v68, v45

    move-object/from16 v45, v68

    move-object/from16 v46, v68

    move-object/from16 v47, v2

    invoke-virtual/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v47

    move-object/from16 v48, v8

    move-object/from16 v49, v4

    invoke-direct/range {v46 .. v49}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v45

    goto/16 :goto_0

    .line 91
    :cond_1
    move-object/from16 v45, v3

    const/16 v46, 0x1

    aget-object v45, v45, v46

    invoke-virtual/range {v45 .. v45}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v45

    move-object/from16 v17, v45

    .line 92
    .local v17, "src1Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v45, v3

    const/16 v46, 0x1

    aget-object v45, v45, v46

    invoke-virtual/range {v45 .. v45}, Lcom/sun/scenario/effect/ImageData;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v45

    move-object/from16 v18, v45

    .line 93
    .local v18, "src1Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v45, v2

    const/16 v46, 0x1

    move-object/from16 v47, v17

    invoke-virtual/range {v45 .. v47}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 94
    move-object/from16 v45, v2

    const/16 v46, 0x1

    move-object/from16 v47, v18

    invoke-virtual/range {v45 .. v47}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->setInputTransform(ILcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 95
    move-object/from16 v45, v2

    const/16 v46, 0x1

    move-object/from16 v47, v13

    invoke-virtual/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/prism/PrTexture;->getNativeBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v47

    invoke-virtual/range {v45 .. v47}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 96
    move-object/from16 v45, v2

    const/16 v46, 0x1

    move-object/from16 v47, v14

    move-object/from16 v48, v17

    move-object/from16 v0, v48

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v49, v17

    move-object/from16 v0, v49

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    move-object/from16 v50, v16

    .line 98
    invoke-interface/range {v50 .. v50}, Lcom/sun/scenario/effect/Filterable;->getPhysicalWidth()I

    move-result v50

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    move-object/from16 v51, v16

    .line 99
    invoke-interface/range {v51 .. v51}, Lcom/sun/scenario/effect/Filterable;->getPhysicalHeight()I

    move-result v51

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    move-object/from16 v52, v4

    move-object/from16 v53, v18

    .line 96
    invoke-virtual/range {v45 .. v53}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v45

    move/from16 v15, v45

    .line 124
    .end local v16    # "src1F":Lcom/sun/scenario/effect/Filterable;
    .end local v17    # "src1Bounds":Lcom/sun/javafx/geom/Rectangle;
    .end local v18    # "src1Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    .local v15, "src1Coords":I
    :goto_1
    const/16 v45, 0x8

    move/from16 v0, v45

    new-array v0, v0, [F

    move-object/from16 v45, v0

    move-object/from16 v16, v45

    .line 125
    .local v16, "src0Rect":[F
    move-object/from16 v45, v2

    const/16 v46, 0x0

    move-object/from16 v47, v16

    move-object/from16 v48, v11

    move-object/from16 v0, v48

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v49, v11

    move-object/from16 v0, v49

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    move-object/from16 v50, v9

    .line 127
    invoke-interface/range {v50 .. v50}, Lcom/sun/scenario/effect/Filterable;->getPhysicalWidth()I

    move-result v50

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    move-object/from16 v51, v9

    .line 128
    invoke-interface/range {v51 .. v51}, Lcom/sun/scenario/effect/Filterable;->getPhysicalHeight()I

    move-result v51

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    move-object/from16 v52, v4

    move-object/from16 v53, v12

    .line 125
    invoke-virtual/range {v45 .. v53}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v45

    move/from16 v17, v45

    .line 132
    .local v17, "src0Coords":I
    move-object/from16 v45, v8

    invoke-virtual/range {v45 .. v45}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->createGraphics()Lcom/sun/prism/ps/ShaderGraphics;

    move-result-object v45

    move-object/from16 v18, v45

    .line 133
    .local v18, "g":Lcom/sun/prism/ps/ShaderGraphics;
    move-object/from16 v45, v18

    if-nez v45, :cond_4

    .line 134
    move-object/from16 v45, v7

    invoke-virtual/range {v45 .. v45}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->markLost()V

    .line 135
    new-instance v45, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v68, v45

    move-object/from16 v45, v68

    move-object/from16 v46, v68

    move-object/from16 v47, v2

    invoke-virtual/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v47

    move-object/from16 v48, v8

    move-object/from16 v49, v4

    invoke-direct/range {v46 .. v49}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v45

    goto/16 :goto_0

    .line 104
    .end local v13    # "src1Tex":Lcom/sun/scenario/effect/impl/prism/PrTexture;
    .end local v15    # "src1Coords":I
    .end local v16    # "src0Rect":[F
    .end local v17    # "src0Coords":I
    .end local v18    # "g":Lcom/sun/prism/ps/ShaderGraphics;
    :cond_2
    move-object/from16 v45, v2

    const/16 v46, 0x1

    invoke-virtual/range {v45 .. v46}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->getSamplerData(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/sun/scenario/effect/FloatMap;

    move-object/from16 v16, v45

    .line 105
    .local v16, "map":Lcom/sun/scenario/effect/FloatMap;
    move-object/from16 v45, v16

    move-object/from16 v46, v2

    invoke-virtual/range {v46 .. v46}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Lcom/sun/scenario/effect/FloatMap;->getAccelData(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/LockableResource;

    move-result-object v45

    check-cast v45, Lcom/sun/scenario/effect/impl/prism/PrTexture;

    move-object/from16 v13, v45

    .line 106
    .restart local v13    # "src1Tex":Lcom/sun/scenario/effect/impl/prism/PrTexture;
    move-object/from16 v45, v13

    if-nez v45, :cond_3

    .line 107
    move-object/from16 v45, v7

    invoke-virtual/range {v45 .. v45}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->markLost()V

    .line 108
    new-instance v45, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v68, v45

    move-object/from16 v45, v68

    move-object/from16 v46, v68

    move-object/from16 v47, v2

    invoke-virtual/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v47

    move-object/from16 v48, v8

    move-object/from16 v49, v4

    invoke-direct/range {v46 .. v49}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v45

    goto/16 :goto_0

    .line 110
    :cond_3
    new-instance v45, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v68, v45

    move-object/from16 v45, v68

    move-object/from16 v46, v68

    move-object/from16 v47, v16

    invoke-virtual/range {v47 .. v47}, Lcom/sun/scenario/effect/FloatMap;->getWidth()I

    move-result v47

    move-object/from16 v48, v16

    invoke-virtual/range {v48 .. v48}, Lcom/sun/scenario/effect/FloatMap;->getHeight()I

    move-result v48

    invoke-direct/range {v46 .. v48}, Lcom/sun/javafx/geom/Rectangle;-><init>(II)V

    move-object/from16 v17, v45

    .line 111
    .local v17, "b":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v45, v13

    invoke-virtual/range {v45 .. v45}, Lcom/sun/scenario/effect/impl/prism/PrTexture;->getNativeBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v45

    move-object/from16 v18, v45

    .line 112
    .local v18, "nb":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v45, v2

    const/16 v46, 0x1

    move-object/from16 v47, v17

    invoke-virtual/range {v45 .. v47}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 113
    move-object/from16 v45, v2

    const/16 v46, 0x1

    move-object/from16 v47, v18

    invoke-virtual/range {v45 .. v47}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 116
    move-object/from16 v45, v14

    const/16 v46, 0x0

    move-object/from16 v47, v14

    const/16 v48, 0x1

    const/16 v49, 0x0

    move-object/from16 v68, v47

    move/from16 v69, v48

    move/from16 v70, v49

    move/from16 v47, v70

    move-object/from16 v48, v68

    move/from16 v49, v69

    move/from16 v50, v70

    aput v50, v48, v49

    aput v47, v45, v46

    .line 117
    move-object/from16 v45, v14

    const/16 v46, 0x2

    move-object/from16 v47, v17

    move-object/from16 v0, v47

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v47, v0

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    move-object/from16 v48, v18

    move-object/from16 v0, v48

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    div-float v47, v47, v48

    aput v47, v45, v46

    .line 118
    move-object/from16 v45, v14

    const/16 v46, 0x3

    move-object/from16 v47, v17

    move-object/from16 v0, v47

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v47, v0

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    move-object/from16 v48, v18

    move-object/from16 v0, v48

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    div-float v47, v47, v48

    aput v47, v45, v46

    .line 119
    const/16 v45, 0x4

    move/from16 v15, v45

    .restart local v15    # "src1Coords":I
    goto/16 :goto_1

    .line 137
    .local v16, "src0Rect":[F
    .local v17, "src0Coords":I
    .local v18, "g":Lcom/sun/prism/ps/ShaderGraphics;
    :cond_4
    move-object/from16 v45, v2

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    move-object/from16 v45, v0

    if-nez v45, :cond_5

    .line 138
    move-object/from16 v45, v2

    move-object/from16 v46, v2

    invoke-virtual/range {v46 .. v46}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->createShader()Lcom/sun/prism/ps/Shader;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    .line 140
    :cond_5
    move-object/from16 v45, v2

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    move-object/from16 v45, v0

    if-eqz v45, :cond_6

    move-object/from16 v45, v2

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/sun/prism/ps/Shader;->isValid()Z

    move-result v45

    if-nez v45, :cond_7

    .line 141
    :cond_6
    move-object/from16 v45, v7

    invoke-virtual/range {v45 .. v45}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->markLost()V

    .line 142
    new-instance v45, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v68, v45

    move-object/from16 v45, v68

    move-object/from16 v46, v68

    move-object/from16 v47, v2

    invoke-virtual/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v47

    move-object/from16 v48, v8

    move-object/from16 v49, v4

    invoke-direct/range {v46 .. v49}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v45

    goto/16 :goto_0

    .line 144
    :cond_7
    move-object/from16 v45, v18

    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    move-object/from16 v46, v0

    invoke-interface/range {v45 .. v46}, Lcom/sun/prism/ps/ShaderGraphics;->setExternalShader(Lcom/sun/prism/ps/Shader;)V

    .line 145
    move-object/from16 v45, v2

    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->shader:Lcom/sun/prism/ps/Shader;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->updateShader(Lcom/sun/prism/ps/Shader;)V

    .line 147
    const/16 v45, 0x0

    move/from16 v19, v45

    .line 148
    .local v19, "dx1":F
    const/16 v45, 0x0

    move/from16 v20, v45

    .line 149
    .local v20, "dy1":F
    move/from16 v45, v5

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move/from16 v21, v45

    .line 150
    .local v21, "dx2":F
    move/from16 v45, v6

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move/from16 v22, v45

    .line 152
    .local v22, "dy2":F
    move-object/from16 v45, v10

    invoke-virtual/range {v45 .. v45}, Lcom/sun/scenario/effect/impl/prism/PrTexture;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v45

    move-object/from16 v23, v45

    .line 153
    .local v23, "ptex0":Lcom/sun/prism/Texture;
    move-object/from16 v45, v23

    if-nez v45, :cond_8

    .line 154
    move-object/from16 v45, v7

    invoke-virtual/range {v45 .. v45}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->markLost()V

    .line 155
    new-instance v45, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v68, v45

    move-object/from16 v45, v68

    move-object/from16 v46, v68

    move-object/from16 v47, v2

    invoke-virtual/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v47

    move-object/from16 v48, v8

    move-object/from16 v49, v4

    invoke-direct/range {v46 .. v49}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v45

    goto/16 :goto_0

    .line 157
    :cond_8
    move-object/from16 v45, v13

    invoke-virtual/range {v45 .. v45}, Lcom/sun/scenario/effect/impl/prism/PrTexture;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v45

    move-object/from16 v24, v45

    .line 158
    .local v24, "ptex1":Lcom/sun/prism/Texture;
    move-object/from16 v45, v24

    if-nez v45, :cond_9

    .line 159
    move-object/from16 v45, v7

    invoke-virtual/range {v45 .. v45}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->markLost()V

    .line 160
    new-instance v45, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v68, v45

    move-object/from16 v45, v68

    move-object/from16 v46, v68

    move-object/from16 v47, v2

    invoke-virtual/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v47

    move-object/from16 v48, v8

    move-object/from16 v49, v4

    invoke-direct/range {v46 .. v49}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v45

    goto/16 :goto_0

    .line 164
    :cond_9
    move-object/from16 v45, v23

    invoke-interface/range {v45 .. v45}, Lcom/sun/prism/Texture;->getContentX()I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v46, v23

    invoke-interface/range {v46 .. v46}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    div-float v45, v45, v46

    move/from16 v25, v45

    .line 165
    .local v25, "t0xoff":F
    move-object/from16 v45, v23

    invoke-interface/range {v45 .. v45}, Lcom/sun/prism/Texture;->getContentY()I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v46, v23

    invoke-interface/range {v46 .. v46}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    div-float v45, v45, v46

    move/from16 v26, v45

    .line 166
    .local v26, "t0yoff":F
    move/from16 v45, v25

    move-object/from16 v46, v16

    const/16 v47, 0x0

    aget v46, v46, v47

    add-float v45, v45, v46

    move/from16 v27, v45

    .line 167
    .local v27, "t0x11":F
    move/from16 v45, v26

    move-object/from16 v46, v16

    const/16 v47, 0x1

    aget v46, v46, v47

    add-float v45, v45, v46

    move/from16 v28, v45

    .line 168
    .local v28, "t0y11":F
    move/from16 v45, v25

    move-object/from16 v46, v16

    const/16 v47, 0x2

    aget v46, v46, v47

    add-float v45, v45, v46

    move/from16 v29, v45

    .line 169
    .local v29, "t0x22":F
    move/from16 v45, v26

    move-object/from16 v46, v16

    const/16 v47, 0x3

    aget v46, v46, v47

    add-float v45, v45, v46

    move/from16 v30, v45

    .line 172
    .local v30, "t0y22":F
    move-object/from16 v45, v24

    invoke-interface/range {v45 .. v45}, Lcom/sun/prism/Texture;->getContentX()I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v46, v24

    invoke-interface/range {v46 .. v46}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    div-float v45, v45, v46

    move/from16 v31, v45

    .line 173
    .local v31, "t1xoff":F
    move-object/from16 v45, v24

    invoke-interface/range {v45 .. v45}, Lcom/sun/prism/Texture;->getContentY()I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v46, v24

    invoke-interface/range {v46 .. v46}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    div-float v45, v45, v46

    move/from16 v32, v45

    .line 174
    .local v32, "t1yoff":F
    move/from16 v45, v31

    move-object/from16 v46, v14

    const/16 v47, 0x0

    aget v46, v46, v47

    add-float v45, v45, v46

    move/from16 v33, v45

    .line 175
    .local v33, "t1x11":F
    move/from16 v45, v32

    move-object/from16 v46, v14

    const/16 v47, 0x1

    aget v46, v46, v47

    add-float v45, v45, v46

    move/from16 v34, v45

    .line 176
    .local v34, "t1y11":F
    move/from16 v45, v31

    move-object/from16 v46, v14

    const/16 v47, 0x2

    aget v46, v46, v47

    add-float v45, v45, v46

    move/from16 v35, v45

    .line 177
    .local v35, "t1x22":F
    move/from16 v45, v32

    move-object/from16 v46, v14

    const/16 v47, 0x3

    aget v46, v46, v47

    add-float v45, v45, v46

    move/from16 v36, v45

    .line 179
    .local v36, "t1y22":F
    move/from16 v45, v17

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-ge v0, v1, :cond_b

    move/from16 v45, v15

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-ge v0, v1, :cond_b

    .line 180
    move-object/from16 v45, v18

    move-object/from16 v46, v23

    move-object/from16 v47, v24

    move/from16 v48, v19

    move/from16 v49, v20

    move/from16 v50, v21

    move/from16 v51, v22

    move/from16 v52, v27

    move/from16 v53, v28

    move/from16 v54, v29

    move/from16 v55, v30

    move/from16 v56, v33

    move/from16 v57, v34

    move/from16 v58, v35

    move/from16 v59, v36

    invoke-interface/range {v45 .. v59}, Lcom/sun/prism/ps/ShaderGraphics;->drawTextureRaw2(Lcom/sun/prism/Texture;Lcom/sun/prism/Texture;FFFFFFFFFFFF)V

    .line 220
    :goto_2
    move-object/from16 v45, v18

    const/16 v46, 0x0

    invoke-interface/range {v45 .. v46}, Lcom/sun/prism/ps/ShaderGraphics;->setExternalShader(Lcom/sun/prism/ps/Shader;)V

    .line 221
    move-object/from16 v45, v3

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v45, v0

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-gt v0, v1, :cond_a

    .line 224
    move-object/from16 v45, v13

    invoke-virtual/range {v45 .. v45}, Lcom/sun/scenario/effect/impl/prism/PrTexture;->unlock()V

    .line 227
    :cond_a
    new-instance v45, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v68, v45

    move-object/from16 v45, v68

    move-object/from16 v46, v68

    move-object/from16 v47, v2

    invoke-virtual/range {v47 .. v47}, Lcom/sun/scenario/effect/impl/prism/ps/PPSTwoSamplerPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v47

    move-object/from16 v48, v8

    move-object/from16 v49, v4

    invoke-direct/range {v46 .. v49}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v45

    goto/16 :goto_0

    .line 188
    :cond_b
    move/from16 v45, v17

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-ge v0, v1, :cond_c

    .line 189
    move/from16 v45, v29

    move/from16 v37, v45

    .line 190
    .local v37, "t0x21":F
    move/from16 v45, v28

    move/from16 v38, v45

    .line 191
    .local v38, "t0y21":F
    move/from16 v45, v27

    move/from16 v39, v45

    .line 192
    .local v39, "t0x12":F
    move/from16 v45, v30

    move/from16 v40, v45

    .line 200
    .local v40, "t0y12":F
    :goto_3
    move/from16 v45, v15

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-ge v0, v1, :cond_d

    .line 201
    move/from16 v45, v35

    move/from16 v41, v45

    .line 202
    .local v41, "t1x21":F
    move/from16 v45, v34

    move/from16 v42, v45

    .line 203
    .local v42, "t1y21":F
    move/from16 v45, v33

    move/from16 v43, v45

    .line 204
    .local v43, "t1x12":F
    move/from16 v45, v36

    move/from16 v44, v45

    .line 212
    .local v44, "t1y12":F
    :goto_4
    move-object/from16 v45, v18

    move-object/from16 v46, v23

    move-object/from16 v47, v24

    move/from16 v48, v19

    move/from16 v49, v20

    move/from16 v50, v21

    move/from16 v51, v22

    move/from16 v52, v27

    move/from16 v53, v28

    move/from16 v54, v37

    move/from16 v55, v38

    move/from16 v56, v39

    move/from16 v57, v40

    move/from16 v58, v29

    move/from16 v59, v30

    move/from16 v60, v33

    move/from16 v61, v34

    move/from16 v62, v41

    move/from16 v63, v42

    move/from16 v64, v43

    move/from16 v65, v44

    move/from16 v66, v35

    move/from16 v67, v36

    invoke-interface/range {v45 .. v67}, Lcom/sun/prism/ps/ShaderGraphics;->drawMappedTextureRaw2(Lcom/sun/prism/Texture;Lcom/sun/prism/Texture;FFFFFFFFFFFFFFFFFFFF)V

    goto/16 :goto_2

    .line 194
    .end local v37    # "t0x21":F
    .end local v38    # "t0y21":F
    .end local v39    # "t0x12":F
    .end local v40    # "t0y12":F
    .end local v41    # "t1x21":F
    .end local v42    # "t1y21":F
    .end local v43    # "t1x12":F
    .end local v44    # "t1y12":F
    :cond_c
    move/from16 v45, v25

    move-object/from16 v46, v16

    const/16 v47, 0x4

    aget v46, v46, v47

    add-float v45, v45, v46

    move/from16 v37, v45

    .line 195
    .restart local v37    # "t0x21":F
    move/from16 v45, v26

    move-object/from16 v46, v16

    const/16 v47, 0x5

    aget v46, v46, v47

    add-float v45, v45, v46

    move/from16 v38, v45

    .line 196
    .restart local v38    # "t0y21":F
    move/from16 v45, v25

    move-object/from16 v46, v16

    const/16 v47, 0x6

    aget v46, v46, v47

    add-float v45, v45, v46

    move/from16 v39, v45

    .line 197
    .restart local v39    # "t0x12":F
    move/from16 v45, v26

    move-object/from16 v46, v16

    const/16 v47, 0x7

    aget v46, v46, v47

    add-float v45, v45, v46

    move/from16 v40, v45

    .restart local v40    # "t0y12":F
    goto :goto_3

    .line 206
    :cond_d
    move/from16 v45, v31

    move-object/from16 v46, v14

    const/16 v47, 0x4

    aget v46, v46, v47

    add-float v45, v45, v46

    move/from16 v41, v45

    .line 207
    .restart local v41    # "t1x21":F
    move/from16 v45, v32

    move-object/from16 v46, v14

    const/16 v47, 0x5

    aget v46, v46, v47

    add-float v45, v45, v46

    move/from16 v42, v45

    .line 208
    .restart local v42    # "t1y21":F
    move/from16 v45, v31

    move-object/from16 v46, v14

    const/16 v47, 0x6

    aget v46, v46, v47

    add-float v45, v45, v46

    move/from16 v43, v45

    .line 209
    .restart local v43    # "t1x12":F
    move/from16 v45, v32

    move-object/from16 v46, v14

    const/16 v47, 0x7

    aget v46, v46, v47

    add-float v45, v45, v46

    move/from16 v44, v45

    .restart local v44    # "t1y12":F
    goto/16 :goto_4
.end method

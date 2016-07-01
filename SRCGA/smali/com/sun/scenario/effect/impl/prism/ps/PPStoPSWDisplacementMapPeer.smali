.class public Lcom/sun/scenario/effect/impl/prism/ps/PPStoPSWDisplacementMapPeer;
.super Lcom/sun/scenario/effect/impl/EffectPeer;
.source "PPStoPSWDisplacementMapPeer.java"


# instance fields
.field softwarePeer:Lcom/sun/scenario/effect/impl/EffectPeer;

.field softwareRenderer:Lcom/sun/scenario/effect/impl/prism/PrRenderer;


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPStoPSWDisplacementMapPeer;
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

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/EffectPeer;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V

    .line 47
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Lcom/sun/scenario/effect/impl/Renderer;->getRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v5

    check-cast v5, Lcom/sun/scenario/effect/impl/prism/PrRenderer;

    iput-object v5, v4, Lcom/sun/scenario/effect/impl/prism/ps/PPStoPSWDisplacementMapPeer;->softwareRenderer:Lcom/sun/scenario/effect/impl/prism/PrRenderer;

    .line 48
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/impl/prism/ps/PPStoPSWDisplacementMapPeer;->softwareRenderer:Lcom/sun/scenario/effect/impl/prism/PrRenderer;

    move-object v6, v1

    const-string v7, "DisplacementMap"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/scenario/effect/impl/prism/PrRenderer;->getPeerInstance(Lcom/sun/scenario/effect/FilterContext;Ljava/lang/String;I)Lcom/sun/scenario/effect/impl/EffectPeer;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/scenario/effect/impl/prism/ps/PPStoPSWDisplacementMapPeer;->softwarePeer:Lcom/sun/scenario/effect/impl/EffectPeer;

    .line 49
    return-void
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 23

    .prologue
    .line 58
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPStoPSWDisplacementMapPeer;
    move-object/from16 v2, p1

    .local v2, "effect":Lcom/sun/scenario/effect/Effect;
    move-object/from16 v3, p2

    .local v3, "rstate":Lcom/sun/scenario/effect/impl/state/RenderState;
    move-object/from16 v4, p3

    .local v4, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v5, p4

    .local v5, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v6, p5

    .local v6, "inputs":[Lcom/sun/scenario/effect/ImageData;
    move-object v13, v6

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object v7, v13

    .line 59
    .local v7, "input":Lcom/sun/scenario/effect/ImageData;
    move-object v13, v7

    invoke-virtual {v13}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v13

    check-cast v13, Lcom/sun/scenario/effect/impl/prism/PrTexture;

    move-object v8, v13

    .line 60
    .local v8, "srcTex":Lcom/sun/scenario/effect/impl/prism/PrTexture;
    move-object v13, v8

    invoke-virtual {v13}, Lcom/sun/scenario/effect/impl/prism/PrTexture;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v13

    check-cast v13, Lcom/sun/prism/RTTexture;

    move-object v9, v13

    .line 62
    .local v9, "srcRT":Lcom/sun/prism/RTTexture;
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/scenario/effect/impl/prism/ps/PPStoPSWDisplacementMapPeer;->softwareRenderer:Lcom/sun/scenario/effect/impl/prism/PrRenderer;

    move-object v14, v9

    invoke-virtual {v13, v14}, Lcom/sun/scenario/effect/impl/prism/PrRenderer;->createDrawable(Lcom/sun/prism/RTTexture;)Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    move-result-object v13

    move-object v10, v13

    .line 63
    .local v10, "srcDrawable":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    new-instance v13, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move-object v15, v1

    invoke-virtual {v15}, Lcom/sun/scenario/effect/impl/prism/ps/PPStoPSWDisplacementMapPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v15

    move-object/from16 v16, v10

    move-object/from16 v17, v7

    .line 64
    invoke-virtual/range {v17 .. v17}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v17

    invoke-direct/range {v14 .. v17}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v11, v13

    .line 65
    .local v11, "heapinput":Lcom/sun/scenario/effect/ImageData;
    move-object v13, v11

    move-object v14, v7

    invoke-virtual {v14}, Lcom/sun/scenario/effect/ImageData;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sun/scenario/effect/ImageData;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v13

    move-object v11, v13

    .line 69
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/scenario/effect/impl/prism/ps/PPStoPSWDisplacementMapPeer;->softwarePeer:Lcom/sun/scenario/effect/impl/EffectPeer;

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v18, v0

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const/16 v20, 0x0

    move-object/from16 v21, v11

    aput-object v21, v19, v20

    invoke-virtual/range {v13 .. v18}, Lcom/sun/scenario/effect/impl/EffectPeer;->filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v13

    move-object v12, v13

    .line 72
    .local v12, "ret":Lcom/sun/scenario/effect/ImageData;
    move-object v13, v12

    move-object v1, v13

    .end local v1    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPStoPSWDisplacementMapPeer;
    return-object v1
.end method

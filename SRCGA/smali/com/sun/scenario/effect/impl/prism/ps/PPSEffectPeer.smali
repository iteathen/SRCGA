.class public abstract Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer;
.super Lcom/sun/scenario/effect/impl/EffectPeer;
.source "PPSEffectPeer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sun/scenario/effect/impl/state/RenderState;",
        ">",
        "Lcom/sun/scenario/effect/impl/EffectPeer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer;, "Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer<TT;>;"
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

    .line 42
    return-void
.end method


# virtual methods
.method protected abstract createShader()Lcom/sun/prism/ps/Shader;
.end method

.method public abstract dispose()V
.end method

.method public final varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/scenario/effect/Effect;",
            "TT;",
            "Lcom/sun/javafx/geom/transform/BaseTransform;",
            "Lcom/sun/javafx/geom/Rectangle;",
            "[",
            "Lcom/sun/scenario/effect/ImageData;",
            ")",
            "Lcom/sun/scenario/effect/ImageData;"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer;, "Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer<TT;>;"
    move-object v1, p1

    .local v1, "effect":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "renderState":Lcom/sun/scenario/effect/impl/state/RenderState;, "TT;"
    move-object v3, p3

    .local v3, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v4, p4

    .local v4, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v5, p5

    .local v5, "inputs":[Lcom/sun/scenario/effect/ImageData;
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 52
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer;->setRenderState(Lcom/sun/scenario/effect/impl/state/RenderState;)V

    .line 53
    move-object v6, v0

    move-object v7, v0

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 54
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer;->filterImpl([Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer;, "Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer<TT;>;"
    return-object v0
.end method

.method varargs abstract filterImpl([Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
.end method

.method protected bridge synthetic getRenderer()Lcom/sun/scenario/effect/impl/Renderer;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer;, "Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer;->getRenderer()Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer;, "Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer<TT;>;"
    return-object v0
.end method

.method protected final getRenderer()Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer;, "Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/EffectPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer;, "Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer<TT;>;"
    return-object v0
.end method

.method protected final getShaderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer;, "Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer;->getUniqueName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer;, "Lcom/sun/scenario/effect/impl/prism/ps/PPSEffectPeer<TT;>;"
    return-object v0
.end method

.method protected abstract isSamplerLinear(I)Z
.end method

.method protected abstract updateShader(Lcom/sun/prism/ps/Shader;)V
.end method

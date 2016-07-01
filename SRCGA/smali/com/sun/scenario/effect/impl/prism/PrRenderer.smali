.class public abstract Lcom/sun/scenario/effect/impl/prism/PrRenderer;
.super Lcom/sun/scenario/effect/impl/Renderer;
.source "PrRenderer.java"


# static fields
.field private static final intrinsicPeerNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashSet;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/sun/scenario/effect/impl/prism/PrRenderer;->intrinsicPeerNames:Ljava/util/Set;

    .line 48
    sget-object v0, Lcom/sun/scenario/effect/impl/prism/PrRenderer;->intrinsicPeerNames:Ljava/util/Set;

    const-string v1, "Crop"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 49
    sget-object v0, Lcom/sun/scenario/effect/impl/prism/PrRenderer;->intrinsicPeerNames:Ljava/util/Set;

    const-string v1, "Flood"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 50
    sget-object v0, Lcom/sun/scenario/effect/impl/prism/PrRenderer;->intrinsicPeerNames:Ljava/util/Set;

    const-string v1, "Merge"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 51
    sget-object v0, Lcom/sun/scenario/effect/impl/prism/PrRenderer;->intrinsicPeerNames:Ljava/util/Set;

    const-string v1, "Reflection"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 52
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrRenderer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/effect/impl/Renderer;-><init>()V

    .line 58
    return-void
.end method

.method public static createRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;
    .locals 6

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/scenario/effect/FilterContext;->getReferent()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 64
    .local v1, "ref":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Lcom/sun/glass/ui/Screen;

    if-nez v4, :cond_0

    .line 65
    const/4 v4, 0x0

    move-object v0, v4

    .line 77
    .end local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    :goto_0
    return-object v0

    .line 68
    .restart local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    :cond_0
    move-object v4, v0

    check-cast v4, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->isForceSoftware()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    const/4 v4, 0x0

    move v2, v4

    .line 77
    .local v2, "isHW":Z
    :goto_1
    move-object v4, v0

    move v5, v2

    invoke-static {v4, v5}, Lcom/sun/scenario/effect/impl/prism/PrRenderer;->createRenderer(Lcom/sun/scenario/effect/FilterContext;Z)Lcom/sun/scenario/effect/impl/prism/PrRenderer;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 71
    .end local v2    # "isHW":Z
    :cond_1
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v4

    move-object v3, v4

    .line 72
    .local v3, "pipe":Lcom/sun/prism/GraphicsPipeline;
    move-object v4, v3

    if-nez v4, :cond_2

    .line 73
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 75
    :cond_2
    move-object v4, v3

    sget-object v5, Lcom/sun/prism/GraphicsPipeline$ShaderModel;->SM3:Lcom/sun/prism/GraphicsPipeline$ShaderModel;

    invoke-virtual {v4, v5}, Lcom/sun/prism/GraphicsPipeline;->supportsShaderModel(Lcom/sun/prism/GraphicsPipeline$ShaderModel;)Z

    move-result v4

    move v2, v4

    .restart local v2    # "isHW":Z
    goto :goto_1
.end method

.method private static createRenderer(Lcom/sun/scenario/effect/FilterContext;Z)Lcom/sun/scenario/effect/impl/prism/PrRenderer;
    .locals 12

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move v1, p1

    .local v1, "isHW":Z
    move v5, v1

    if-eqz v5, :cond_0

    const-string v5, "com.sun.scenario.effect.impl.prism.ps.PPSRenderer"

    :goto_0
    move-object v2, v5

    .line 85
    .local v2, "klassName":Ljava/lang/String;
    move-object v5, v2

    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 86
    .local v3, "klass":Ljava/lang/Class;
    move-object v5, v3

    const-string v6, "createRenderer"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const-class v10, Lcom/sun/scenario/effect/FilterContext;

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v4, v5

    .line 87
    .local v4, "m":Ljava/lang/reflect/Method;
    move-object v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/scenario/effect/impl/prism/PrRenderer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 89
    .end local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    .end local v3    # "klass":Ljava/lang/Class;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :goto_1
    return-object v0

    .line 81
    .end local v2    # "klassName":Ljava/lang/String;
    .restart local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    :cond_0
    const-string v5, "com.sun.scenario.effect.impl.prism.sw.PSWRenderer"

    goto :goto_0

    .line 88
    .restart local v2    # "klassName":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 89
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method public static isIntrinsicPeer(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lcom/sun/scenario/effect/impl/prism/PrRenderer;->intrinsicPeerNames:Ljava/util/Set;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return v0
.end method


# virtual methods
.method public abstract createDrawable(Lcom/sun/prism/RTTexture;)Lcom/sun/scenario/effect/impl/prism/PrDrawable;
.end method

.class public Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
.super Lcom/sun/scenario/effect/impl/prism/PrRenderer;
.source "PPSRenderer.java"


# instance fields
.field private final listener:Lcom/sun/prism/ResourceFactoryListener;

.field private needsSWDispMap:Z

.field private final rf:Lcom/sun/prism/ResourceFactory;

.field private final shaderSource:Lcom/sun/scenario/effect/impl/hw/ShaderSource;

.field private state:Lcom/sun/scenario/effect/impl/Renderer$RendererState;


# direct methods
.method private constructor <init>(Lcom/sun/glass/ui/Screen;Lcom/sun/scenario/effect/impl/hw/ShaderSource;)V
    .locals 10

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move-object v1, p1

    .local v1, "screen":Lcom/sun/glass/ui/Screen;
    move-object v2, p2

    .local v2, "shaderSource":Lcom/sun/scenario/effect/impl/hw/ShaderSource;
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/scenario/effect/impl/prism/PrRenderer;-><init>()V

    .line 74
    move-object v5, v0

    new-instance v6, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer$1;-><init>(Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;)V

    iput-object v6, v5, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->listener:Lcom/sun/prism/ResourceFactoryListener;

    .line 87
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->shaderSource:Lcom/sun/scenario/effect/impl/hw/ShaderSource;

    .line 88
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v3, v6

    monitor-enter v5

    .line 89
    move-object v5, v0

    :try_start_0
    sget-object v6, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->OK:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    iput-object v6, v5, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->state:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    .line 90
    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    move-object v5, v0

    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/prism/GraphicsPipeline;->getResourceFactory(Lcom/sun/glass/ui/Screen;)Lcom/sun/prism/ResourceFactory;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->rf:Lcom/sun/prism/ResourceFactory;

    .line 92
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->rf:Lcom/sun/prism/ResourceFactory;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->listener:Lcom/sun/prism/ResourceFactoryListener;

    invoke-interface {v5, v6}, Lcom/sun/prism/ResourceFactory;->addFactoryListener(Lcom/sun/prism/ResourceFactoryListener;)V

    .line 93
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->rf:Lcom/sun/prism/ResourceFactory;

    sget-object v7, Lcom/sun/prism/PixelFormat;->FLOAT_XYZW:Lcom/sun/prism/PixelFormat;

    invoke-interface {v6, v7}, Lcom/sun/prism/ResourceFactory;->isFormatSupported(Lcom/sun/prism/PixelFormat;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, v5, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->needsSWDispMap:Z

    .line 94
    return-void

    .line 90
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    throw v5

    .line 93
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private createIntrinsicPeer(Lcom/sun/scenario/effect/FilterContext;Ljava/lang/String;)Lcom/sun/scenario/effect/impl/EffectPeer;
    .locals 12

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v3, v6

    .line 223
    .local v3, "klass":Ljava/lang/Class;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.sun.scenario.effect.impl.prism.Pr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Peer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    .line 224
    move-object v6, v3

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const-class v10, Lcom/sun/scenario/effect/FilterContext;

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    const-class v10, Lcom/sun/scenario/effect/impl/Renderer;

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    move-object v5, v6

    .line 226
    .local v5, "ctor":Ljava/lang/reflect/Constructor;
    move-object v6, v5

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v0

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move-object v10, v2

    aput-object v10, v8, v9

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/scenario/effect/impl/EffectPeer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    .line 230
    .line 231
    .local v4, "peer":Lcom/sun/scenario/effect/impl/EffectPeer;
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    .end local v4    # "peer":Lcom/sun/scenario/effect/impl/EffectPeer;
    .end local v5    # "ctor":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v0

    .line 228
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 229
    .local v5, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method private createPlatformPeer(Lcom/sun/scenario/effect/FilterContext;Ljava/lang/String;I)Lcom/sun/scenario/effect/impl/EffectPeer;
    .locals 14

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object/from16 v2, p2

    .local v2, "name":Ljava/lang/String;
    move/from16 v3, p3

    .local v3, "unrollCount":I
    move-object v8, v2

    move-object v5, v8

    .line 249
    .local v5, "shaderName":Ljava/lang/String;
    move v8, v3

    if-lez v8, :cond_0

    .line 250
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 253
    :cond_0
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "com.sun.scenario.effect.impl.prism.ps.PPS"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Peer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    move-object v6, v8

    .line 254
    .local v6, "klass":Ljava/lang/Class;
    move-object v8, v6

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const-class v12, Lcom/sun/scenario/effect/FilterContext;

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    const-class v12, Lcom/sun/scenario/effect/impl/Renderer;

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    move-object v7, v8

    .line 256
    .local v7, "ctor":Ljava/lang/reflect/Constructor;
    move-object v8, v7

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v0

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move-object v12, v5

    aput-object v12, v10, v11

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/scenario/effect/impl/EffectPeer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v8

    .line 262
    .line 263
    .local v4, "peer":Lcom/sun/scenario/effect/impl/EffectPeer;
    move-object v8, v4

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    .end local v4    # "peer":Lcom/sun/scenario/effect/impl/EffectPeer;
    .end local v6    # "klass":Ljava/lang/Class;
    .end local v7    # "ctor":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v0

    .line 258
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    :catch_0
    move-exception v8

    move-object v6, v8

    .line 259
    .local v6, "e":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Prism peer not found for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " due to error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    .line 260
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 259
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 261
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0
.end method

.method public static createRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;
    .locals 10

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/scenario/effect/FilterContext;->getReferent()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .line 392
    .local v1, "ref":Ljava/lang/Object;
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v5

    move-object v2, v5

    .line 393
    .local v2, "pipe":Lcom/sun/prism/GraphicsPipeline;
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v1

    instance-of v5, v5, Lcom/sun/glass/ui/Screen;

    if-nez v5, :cond_1

    .line 394
    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    .line 408
    .end local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    :goto_0
    return-object v0

    .line 396
    .restart local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    :cond_1
    move-object v5, v1

    check-cast v5, Lcom/sun/glass/ui/Screen;

    move-object v3, v5

    .line 397
    .local v3, "screen":Lcom/sun/glass/ui/Screen;
    const/4 v5, 0x0

    move-object v4, v5

    .line 398
    .local v4, "shaderSource":Lcom/sun/scenario/effect/impl/hw/ShaderSource;
    move-object v5, v2

    sget-object v6, Lcom/sun/prism/GraphicsPipeline$ShaderType;->HLSL:Lcom/sun/prism/GraphicsPipeline$ShaderType;

    sget-object v7, Lcom/sun/prism/GraphicsPipeline$ShaderModel;->SM3:Lcom/sun/prism/GraphicsPipeline$ShaderModel;

    invoke-virtual {v5, v6, v7}, Lcom/sun/prism/GraphicsPipeline;->supportsShader(Lcom/sun/prism/GraphicsPipeline$ShaderType;Lcom/sun/prism/GraphicsPipeline$ShaderModel;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 399
    const-string v5, "com.sun.scenario.effect.impl.hw.d3d.D3DShaderSource"

    invoke-static {v5}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->createShaderSource(Ljava/lang/String;)Lcom/sun/scenario/effect/impl/hw/ShaderSource;

    move-result-object v5

    move-object v4, v5

    .line 405
    :goto_1
    move-object v5, v4

    if-nez v5, :cond_4

    .line 406
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 400
    :cond_2
    move-object v5, v2

    sget-object v6, Lcom/sun/prism/GraphicsPipeline$ShaderType;->GLSL:Lcom/sun/prism/GraphicsPipeline$ShaderType;

    sget-object v7, Lcom/sun/prism/GraphicsPipeline$ShaderModel;->SM3:Lcom/sun/prism/GraphicsPipeline$ShaderModel;

    invoke-virtual {v5, v6, v7}, Lcom/sun/prism/GraphicsPipeline;->supportsShader(Lcom/sun/prism/GraphicsPipeline$ShaderType;Lcom/sun/prism/GraphicsPipeline$ShaderModel;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 401
    const-string v5, "com.sun.scenario.effect.impl.es2.ES2ShaderSource"

    invoke-static {v5}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->createShaderSource(Ljava/lang/String;)Lcom/sun/scenario/effect/impl/hw/ShaderSource;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 403
    :cond_3
    new-instance v5, Ljava/lang/InternalError;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "Unknown GraphicsPipeline"

    invoke-direct {v6, v7}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 408
    :cond_4
    new-instance v5, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;-><init>(Lcom/sun/glass/ui/Screen;Lcom/sun/scenario/effect/impl/hw/ShaderSource;)V

    move-object v0, v5

    goto :goto_0
.end method

.method private static createShaderSource(Ljava/lang/String;)Lcom/sun/scenario/effect/impl/hw/ShaderSource;
    .locals 7

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v1, v3

    .line 378
    .local v1, "klass":Ljava/lang/Class;
    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    .line 379
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/scenario/effect/impl/hw/ShaderSource;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v3

    .line 386
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 380
    .restart local v0    # "name":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 381
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " class not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 382
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 383
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 386
    .local v2, "t":Ljava/lang/Throwable;
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public clearImage(Lcom/sun/scenario/effect/Filterable;)V
    .locals 4

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move-object v1, p1

    .local v1, "filterable":Lcom/sun/scenario/effect/Filterable;
    move-object v3, v1

    check-cast v3, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;

    move-object v2, v3

    .line 294
    .local v2, "img":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->clear()V

    .line 295
    return-void
.end method

.method public bridge synthetic createCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;
    .locals 6

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->createCompatibleImage(II)Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    return-object v0
.end method

.method public final createCompatibleImage(II)Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    .locals 6

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->rf:Lcom/sun/prism/ResourceFactory;

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->create(Lcom/sun/prism/ResourceFactory;II)Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    return-object v0
.end method

.method public createDrawable(Lcom/sun/prism/RTTexture;)Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    .locals 3

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move-object v1, p1

    .local v1, "rtt":Lcom/sun/prism/RTTexture;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->create(Lcom/sun/prism/RTTexture;)Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    return-object v0
.end method

.method public createFloatTexture(II)Lcom/sun/scenario/effect/LockableResource;
    .locals 8

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->rf:Lcom/sun/prism/ResourceFactory;

    move v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Lcom/sun/prism/ResourceFactory;->createFloatTexture(II)Lcom/sun/prism/Texture;

    move-result-object v4

    move-object v3, v4

    .line 179
    .local v3, "prismTex":Lcom/sun/prism/Texture;
    new-instance v4, Lcom/sun/scenario/effect/impl/prism/PrTexture;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/sun/scenario/effect/impl/prism/PrTexture;-><init>(Lcom/sun/prism/Texture;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    return-object v0
.end method

.method public createImageData(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;)Lcom/sun/scenario/effect/ImageData;
    .locals 25

    .prologue
    .line 299
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move-object/from16 v4, p1

    .local v4, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object/from16 v5, p2

    .local v5, "src":Lcom/sun/scenario/effect/Filterable;
    move-object/from16 v16, v5

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/sun/scenario/effect/impl/prism/PrImage;

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 300
    new-instance v16, Ljava/lang/IllegalArgumentException;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    const-string v18, "Identity source must be PrImage"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 302
    :cond_0
    move-object/from16 v16, v5

    check-cast v16, Lcom/sun/scenario/effect/impl/prism/PrImage;

    invoke-virtual/range {v16 .. v16}, Lcom/sun/scenario/effect/impl/prism/PrImage;->getImage()Lcom/sun/prism/Image;

    move-result-object v16

    move-object/from16 v6, v16

    .line 303
    .local v6, "img":Lcom/sun/prism/Image;
    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Lcom/sun/prism/Image;->getWidth()I

    move-result v16

    move/from16 v7, v16

    .line 304
    .local v7, "w":I
    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Lcom/sun/prism/Image;->getHeight()I

    move-result v16

    move/from16 v8, v16

    .line 305
    .local v8, "h":I
    move-object/from16 v16, v3

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-virtual/range {v16 .. v18}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->createCompatibleImage(II)Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;

    move-result-object v16

    move-object/from16 v9, v16

    .line 306
    .local v9, "dst":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move-object/from16 v16, v9

    if-nez v16, :cond_1

    .line 307
    const/16 v16, 0x0

    move-object/from16 v3, v16

    .line 331
    .end local v3    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    :goto_0
    return-object v3

    .line 312
    .restart local v3    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    :cond_1
    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->createGraphics()Lcom/sun/prism/ps/ShaderGraphics;

    move-result-object v16

    move-object/from16 v10, v16

    .line 313
    .local v10, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v16, v10

    invoke-interface/range {v16 .. v16}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v16

    move-object/from16 v11, v16

    .line 314
    .local v11, "factory":Lcom/sun/prism/ResourceFactory;
    move-object/from16 v16, v11

    move-object/from16 v17, v6

    sget-object v18, Lcom/sun/prism/Texture$Usage;->DEFAULT:Lcom/sun/prism/Texture$Usage;

    sget-object v19, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface/range {v16 .. v19}, Lcom/sun/prism/ResourceFactory;->createTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v16

    move-object/from16 v12, v16

    .line 316
    .local v12, "tex":Lcom/sun/prism/Texture;
    move-object/from16 v16, v10

    move-object/from16 v17, v12

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v7

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v8

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-interface/range {v16 .. v21}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFF)V

    .line 320
    move-object/from16 v16, v10

    invoke-interface/range {v16 .. v16}, Lcom/sun/prism/Graphics;->sync()V

    .line 321
    move-object/from16 v16, v12

    invoke-interface/range {v16 .. v16}, Lcom/sun/prism/Texture;->dispose()V

    .line 323
    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Lcom/sun/prism/Image;->getPixelScale()F

    move-result v16

    move/from16 v14, v16

    .line 324
    .local v14, "ps":F
    move/from16 v16, v14

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_2

    .line 325
    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v17, v14

    div-float v16, v16, v17

    move/from16 v14, v16

    .line 326
    move/from16 v16, v14

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v18, v14

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Lcom/sun/javafx/geom/transform/BaseTransform;->getScaleInstance(DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v16

    move-object/from16 v13, v16

    .line 330
    .local v13, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :goto_1
    new-instance v16, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    move-object/from16 v18, v4

    move-object/from16 v19, v9

    new-instance v20, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move/from16 v22, v7

    move/from16 v23, v8

    invoke-direct/range {v21 .. v23}, Lcom/sun/javafx/geom/Rectangle;-><init>(II)V

    move-object/from16 v21, v13

    invoke-direct/range {v17 .. v21}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object/from16 v15, v16

    .line 331
    .local v15, "id":Lcom/sun/scenario/effect/ImageData;
    move-object/from16 v16, v15

    move-object/from16 v3, v16

    goto/16 :goto_0

    .line 328
    .end local v13    # "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v15    # "id":Lcom/sun/scenario/effect/ImageData;
    :cond_2
    sget-object v16, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v13, v16

    .restart local v13    # "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    goto :goto_1
.end method

.method protected createPeer(Lcom/sun/scenario/effect/FilterContext;Ljava/lang/String;I)Lcom/sun/scenario/effect/impl/EffectPeer;
    .locals 11

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move v3, p3

    .local v3, "unrollCount":I
    move-object v5, v2

    invoke-static {v5}, Lcom/sun/scenario/effect/impl/prism/PrRenderer;->isIntrinsicPeer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 272
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->createIntrinsicPeer(Lcom/sun/scenario/effect/FilterContext;Ljava/lang/String;)Lcom/sun/scenario/effect/impl/EffectPeer;

    move-result-object v5

    move-object v0, v5

    .line 278
    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    :goto_0
    return-object v0

    .line 273
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    :cond_0
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->needsSWDispMap:Z

    if-eqz v5, :cond_1

    move-object v5, v2

    const-string v6, "DisplacementMap"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 274
    move-object v5, v1

    check-cast v5, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    invoke-virtual {v5}, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->getSoftwareInstance()Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    move-result-object v5

    move-object v4, v5

    .line 275
    .local v4, "swctx":Lcom/sun/scenario/effect/impl/prism/PrFilterContext;
    new-instance v5, Lcom/sun/scenario/effect/impl/prism/ps/PPStoPSWDisplacementMapPeer;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v4

    move-object v8, v0

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/scenario/effect/impl/prism/ps/PPStoPSWDisplacementMapPeer;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_0

    .line 278
    .end local v4    # "swctx":Lcom/sun/scenario/effect/impl/prism/PrFilterContext;
    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->createPlatformPeer(Lcom/sun/scenario/effect/FilterContext;Ljava/lang/String;I)Lcom/sun/scenario/effect/impl/EffectPeer;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public createShader(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/sun/prism/ps/Shader;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Lcom/sun/prism/ps/Shader;"
        }
    .end annotation

    .prologue
    .line 197
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move-object/from16 v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "samplers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v3, p3

    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move/from16 v4, p4

    .local v4, "isPixcoordUsed":Z
    sget-boolean v8, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v8, :cond_0

    .line 198
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PPSRenderer: scenario.effect - createShader: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->shaderSource:Lcom/sun/scenario/effect/impl/hw/ShaderSource;

    move-object v9, v1

    invoke-interface {v8, v9}, Lcom/sun/scenario/effect/impl/hw/ShaderSource;->loadSource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    move-object v5, v8

    .line 201
    .local v5, "pscode":Ljava/io/InputStream;
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v6, v8

    .line 202
    .local v6, "maxTexCoordIndex":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->rf:Lcom/sun/prism/ResourceFactory;

    check-cast v8, Lcom/sun/prism/ps/ShaderFactory;

    move-object v7, v8

    .line 203
    .local v7, "factory":Lcom/sun/prism/ps/ShaderFactory;
    move-object v8, v7

    move-object v9, v5

    move-object v10, v2

    move-object v11, v3

    move v12, v6

    move v13, v4

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lcom/sun/prism/ps/ShaderFactory;->createShader(Ljava/io/InputStream;Ljava/util/Map;Ljava/util/Map;IZZ)Lcom/sun/prism/ps/Shader;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    return-object v0
.end method

.method protected dispose()V
    .locals 7

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->getPeers()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/scenario/effect/impl/EffectPeer;

    move-object v2, v4

    .line 132
    .local v2, "peer":Lcom/sun/scenario/effect/impl/EffectPeer;
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/EffectPeer;->dispose()V

    .line 133
    goto :goto_0

    .line 134
    .end local v2    # "peer":Lcom/sun/scenario/effect/impl/EffectPeer;
    :cond_0
    move-object v4, v0

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v1, v5

    monitor-enter v4

    .line 135
    move-object v4, v0

    :try_start_0
    sget-object v5, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->DISPOSED:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    iput-object v5, v4, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->state:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    .line 136
    move-object v4, v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->rf:Lcom/sun/prism/ResourceFactory;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->listener:Lcom/sun/prism/ResourceFactoryListener;

    invoke-interface {v4, v5}, Lcom/sun/prism/ResourceFactory;->removeFactoryListener(Lcom/sun/prism/ResourceFactoryListener;)V

    .line 138
    return-void

    .line 136
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public getAccelType()Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->shaderSource:Lcom/sun/scenario/effect/impl/hw/ShaderSource;

    invoke-interface {v1}, Lcom/sun/scenario/effect/impl/hw/ShaderSource;->getAccelType()Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    return-object v0
.end method

.method protected getBackupRenderer()Lcom/sun/scenario/effect/impl/Renderer;
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    return-object v0
.end method

.method public getCompatibleHeight(I)I
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move v1, p1

    .local v1, "h":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->rf:Lcom/sun/prism/ResourceFactory;

    move v3, v1

    invoke-static {v2, v3}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->getCompatibleHeight(Lcom/sun/prism/ResourceFactory;I)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    return v0
.end method

.method public bridge synthetic getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;
    .locals 6

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    return-object v0
.end method

.method public getCompatibleImage(II)Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    .locals 7

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Lcom/sun/scenario/effect/impl/prism/PrRenderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v4

    check-cast v4, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;

    move-object v3, v4

    .line 170
    .local v3, "im":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 171
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->markLost()V

    .line 173
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    return-object v0
.end method

.method public getCompatibleWidth(I)I
    .locals 4

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move v1, p1

    .local v1, "w":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->rf:Lcom/sun/prism/ResourceFactory;

    move v3, v1

    invoke-static {v2, v3}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->getCompatibleWidth(Lcom/sun/prism/ResourceFactory;I)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    return v0
.end method

.method public declared-synchronized getRendererState()Lcom/sun/scenario/effect/impl/Renderer$RendererState;
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->state:Lcom/sun/scenario/effect/impl/Renderer$RendererState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    monitor-exit v2

    return-object v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    throw v0
.end method

.method public isImageDataCompatible(Lcom/sun/scenario/effect/ImageData;)Z
    .locals 5

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move-object v1, p1

    .local v1, "id":Lcom/sun/scenario/effect/ImageData;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->getRendererState()Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    move-result-object v3

    sget-object v4, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->OK:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    if-ne v3, v4, :cond_1

    .line 285
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v3

    move-object v2, v3

    .line 286
    .local v2, "f":Lcom/sun/scenario/effect/Filterable;
    move-object v3, v2

    instance-of v3, v3, Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/scenario/effect/Filterable;->isLost()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 288
    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    .end local v2    # "f":Lcom/sun/scenario/effect/Filterable;
    :goto_1
    return v0

    .line 286
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    .restart local v2    # "f":Lcom/sun/scenario/effect/Filterable;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 288
    .end local v2    # "f":Lcom/sun/scenario/effect/Filterable;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method protected final declared-synchronized markLost()V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->state:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    sget-object v2, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->OK:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    if-ne v1, v2, :cond_0

    .line 147
    move-object v1, v0

    sget-object v2, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->LOST:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    iput-object v2, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->state:Lcom/sun/scenario/effect/impl/Renderer$RendererState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    monitor-exit v3

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    throw v0
.end method

.method public transform(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;
    .locals 14

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object/from16 v2, p2

    .local v2, "original":Lcom/sun/scenario/effect/Filterable;
    move-object/from16 v3, p3

    .local v3, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v4, p4

    .local v4, "origBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v5, p5

    .local v5, "xformBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v8, v0

    move-object v9, v5

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v10, v5

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->height:I

    .line 342
    invoke-virtual {v8, v9, v10}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;

    move-result-object v8

    move-object v6, v8

    .line 343
    .local v6, "dst":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move-object v8, v6

    if-eqz v8, :cond_0

    .line 344
    move-object v8, v6

    invoke-virtual {v8}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->createGraphics()Lcom/sun/prism/ps/ShaderGraphics;

    move-result-object v8

    move-object v7, v8

    .line 345
    .local v7, "g":Lcom/sun/prism/Graphics;
    move-object v8, v7

    move-object v9, v5

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->x:I

    neg-int v9, v9

    int-to-float v9, v9

    move-object v10, v5

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->y:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-interface {v8, v9, v10}, Lcom/sun/prism/Graphics;->translate(FF)V

    .line 346
    move-object v8, v7

    move-object v9, v3

    invoke-interface {v8, v9}, Lcom/sun/prism/Graphics;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 347
    move-object v8, v7

    move-object v9, v2

    check-cast v9, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;

    invoke-virtual {v9}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v9

    move-object v10, v4

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v10, v10

    move-object v11, v4

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v11, v11

    move-object v12, v4

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v12, v12

    move-object v13, v4

    iget v13, v13, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v13, v13

    invoke-interface/range {v8 .. v13}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFF)V

    .line 351
    .end local v7    # "g":Lcom/sun/prism/Graphics;
    :cond_0
    move-object v8, v6

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    return-object v0
.end method

.method public transform(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/ImageData;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/ImageData;
    .locals 16

    .prologue
    .line 360
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move-object/from16 v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object/from16 v2, p2

    .local v2, "original":Lcom/sun/scenario/effect/ImageData;
    move-object/from16 v3, p3

    .local v3, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v4, p4

    .local v4, "origBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v5, p5

    .local v5, "xformBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v9, v0

    move-object v10, v5

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v11, v5

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->height:I

    .line 361
    invoke-virtual {v9, v10, v11}, Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;

    move-result-object v9

    move-object v6, v9

    .line 362
    .local v6, "dst":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move-object v9, v6

    if-eqz v9, :cond_0

    .line 363
    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v9

    check-cast v9, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;

    move-object v7, v9

    .line 364
    .local v7, "orig":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move-object v9, v6

    invoke-virtual {v9}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->createGraphics()Lcom/sun/prism/ps/ShaderGraphics;

    move-result-object v9

    move-object v8, v9

    .line 365
    .local v8, "g":Lcom/sun/prism/Graphics;
    move-object v9, v8

    move-object v10, v5

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->x:I

    neg-int v10, v10

    int-to-float v10, v10

    move-object v11, v5

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->y:I

    neg-int v11, v11

    int-to-float v11, v11

    invoke-interface {v9, v10, v11}, Lcom/sun/prism/Graphics;->translate(FF)V

    .line 366
    move-object v9, v8

    move-object v10, v3

    invoke-interface {v9, v10}, Lcom/sun/prism/Graphics;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 367
    move-object v9, v8

    move-object v10, v7

    invoke-virtual {v10}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v10

    move-object v11, v4

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v11, v11

    move-object v12, v4

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v12, v12

    move-object v13, v4

    iget v13, v13, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v13, v13

    move-object v14, v4

    iget v14, v14, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v14, v14

    invoke-interface/range {v9 .. v14}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFF)V

    .line 371
    .end local v7    # "orig":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    .end local v8    # "g":Lcom/sun/prism/Graphics;
    :cond_0
    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 372
    new-instance v9, Lcom/sun/scenario/effect/ImageData;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v1

    move-object v12, v6

    move-object v13, v5

    invoke-direct {v10, v11, v12, v13}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v0, v9

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    return-object v0
.end method

.method public updateFloatTexture(Lcom/sun/scenario/effect/LockableResource;Lcom/sun/scenario/effect/FloatMap;)V
    .locals 11

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSRenderer;
    move-object v1, p1

    .local v1, "texture":Lcom/sun/scenario/effect/LockableResource;
    move-object v2, p2

    .local v2, "map":Lcom/sun/scenario/effect/FloatMap;
    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/scenario/effect/FloatMap;->getBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    move-object v3, v8

    .line 185
    .local v3, "buf":Ljava/nio/FloatBuffer;
    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/scenario/effect/FloatMap;->getWidth()I

    move-result v8

    move v4, v8

    .line 186
    .local v4, "w":I
    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/scenario/effect/FloatMap;->getHeight()I

    move-result v8

    move v5, v8

    .line 187
    .local v5, "h":I
    move-object v8, v3

    move v9, v4

    move v10, v5

    invoke-static {v8, v9, v10}, Lcom/sun/prism/Image;->fromFloatMapData(Ljava/nio/FloatBuffer;II)Lcom/sun/prism/Image;

    move-result-object v8

    move-object v6, v8

    .line 188
    .local v6, "img":Lcom/sun/prism/Image;
    move-object v8, v1

    check-cast v8, Lcom/sun/scenario/effect/impl/prism/PrTexture;

    invoke-virtual {v8}, Lcom/sun/scenario/effect/impl/prism/PrTexture;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v8

    move-object v7, v8

    .line 189
    .local v7, "prismTex":Lcom/sun/prism/Texture;
    move-object v8, v7

    move-object v9, v6

    invoke-interface {v8, v9}, Lcom/sun/prism/Texture;->update(Lcom/sun/prism/Image;)V

    .line 190
    return-void
.end method

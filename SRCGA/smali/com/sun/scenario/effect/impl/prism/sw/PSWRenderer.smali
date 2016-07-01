.class public Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
.super Lcom/sun/scenario/effect/impl/prism/PrRenderer;
.source "PSWRenderer.java"


# instance fields
.field private final delegate:Lcom/sun/scenario/effect/impl/sw/RendererDelegate;

.field private final resourceFactory:Lcom/sun/prism/ResourceFactory;

.field private final screen:Lcom/sun/glass/ui/Screen;

.field private state:Lcom/sun/scenario/effect/impl/Renderer$RendererState;


# direct methods
.method private constructor <init>(Lcom/sun/glass/ui/Screen;Lcom/sun/scenario/effect/impl/sw/RendererDelegate;)V
    .locals 8

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    move-object v1, p1

    .local v1, "screen":Lcom/sun/glass/ui/Screen;
    move-object v2, p2

    .local v2, "delegate":Lcom/sun/scenario/effect/impl/sw/RendererDelegate;
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/scenario/effect/impl/prism/PrRenderer;-><init>()V

    .line 61
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->screen:Lcom/sun/glass/ui/Screen;

    .line 62
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->resourceFactory:Lcom/sun/prism/ResourceFactory;

    .line 63
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->delegate:Lcom/sun/scenario/effect/impl/sw/RendererDelegate;

    .line 64
    move-object v5, v0

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v3, v6

    monitor-enter v5

    .line 65
    move-object v5, v0

    :try_start_0
    sget-object v6, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->OK:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    iput-object v6, v5, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->state:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    .line 66
    move-object v5, v3

    monitor-exit v5

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method private constructor <init>(Lcom/sun/prism/ResourceFactory;Lcom/sun/scenario/effect/impl/sw/RendererDelegate;)V
    .locals 8

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    move-object v1, p1

    .local v1, "factory":Lcom/sun/prism/ResourceFactory;
    move-object v2, p2

    .local v2, "delegate":Lcom/sun/scenario/effect/impl/sw/RendererDelegate;
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/scenario/effect/impl/prism/PrRenderer;-><init>()V

    .line 70
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->screen:Lcom/sun/glass/ui/Screen;

    .line 71
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->resourceFactory:Lcom/sun/prism/ResourceFactory;

    .line 72
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->delegate:Lcom/sun/scenario/effect/impl/sw/RendererDelegate;

    .line 73
    move-object v5, v0

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v3, v6

    monitor-enter v5

    .line 74
    move-object v5, v0

    :try_start_0
    sget-object v6, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->OK:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    iput-object v6, v5, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->state:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    .line 75
    move-object v5, v3

    monitor-exit v5

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method private createIntrinsicPeer(Lcom/sun/scenario/effect/FilterContext;Ljava/lang/String;)Lcom/sun/scenario/effect/impl/EffectPeer;
    .locals 12

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v3, v6

    .line 248
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

    .line 249
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

    .line 251
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

    .line 254
    .line 255
    .local v4, "peer":Lcom/sun/scenario/effect/impl/EffectPeer;
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    .end local v4    # "peer":Lcom/sun/scenario/effect/impl/EffectPeer;
    .end local v5    # "ctor":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v0

    .line 252
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 253
    .local v5, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public static declared-synchronized createJSWInstance(Lcom/sun/glass/ui/Screen;)Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    .locals 10

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "screen":Lcom/sun/glass/ui/Screen;
    const-class v8, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;

    monitor-enter v8

    const/4 v4, 0x0

    move-object v1, v4

    .line 91
    .local v1, "ret":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    :try_start_0
    const-string v4, "com.sun.scenario.effect.impl.sw.java.JSWRendererDelegate"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v2, v4

    .line 92
    .local v2, "klass":Ljava/lang/Class;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/scenario/effect/impl/sw/RendererDelegate;

    move-object v3, v4

    .line 93
    .local v3, "delegate":Lcom/sun/scenario/effect/impl/sw/RendererDelegate;
    new-instance v4, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;-><init>(Lcom/sun/glass/ui/Screen;Lcom/sun/scenario/effect/impl/sw/RendererDelegate;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 94
    .line 95
    .end local v2    # "klass":Ljava/lang/Class;
    .end local v3    # "delegate":Lcom/sun/scenario/effect/impl/sw/RendererDelegate;
    :goto_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "screen":Lcom/sun/glass/ui/Screen;
    monitor-exit v8

    return-object v0

    .line 94
    .restart local v0    # "screen":Lcom/sun/glass/ui/Screen;
    :catch_0
    move-exception v4

    move-object v2, v4

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "screen":Lcom/sun/glass/ui/Screen;
    throw v0
.end method

.method public static declared-synchronized createJSWInstance(Lcom/sun/prism/ResourceFactory;)Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    .locals 10

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "factory":Lcom/sun/prism/ResourceFactory;
    const-class v8, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;

    monitor-enter v8

    const/4 v4, 0x0

    move-object v1, v4

    .line 106
    .local v1, "ret":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    :try_start_0
    const-string v4, "com.sun.scenario.effect.impl.sw.java.JSWRendererDelegate"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v2, v4

    .line 107
    .local v2, "klass":Ljava/lang/Class;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/scenario/effect/impl/sw/RendererDelegate;

    move-object v3, v4

    .line 108
    .local v3, "delegate":Lcom/sun/scenario/effect/impl/sw/RendererDelegate;
    new-instance v4, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;-><init>(Lcom/sun/prism/ResourceFactory;Lcom/sun/scenario/effect/impl/sw/RendererDelegate;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 109
    .line 110
    .end local v2    # "klass":Ljava/lang/Class;
    .end local v3    # "delegate":Lcom/sun/scenario/effect/impl/sw/RendererDelegate;
    :goto_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "factory":Lcom/sun/prism/ResourceFactory;
    monitor-exit v8

    return-object v0

    .line 109
    .restart local v0    # "factory":Lcom/sun/prism/ResourceFactory;
    :catch_0
    move-exception v4

    move-object v2, v4

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "factory":Lcom/sun/prism/ResourceFactory;
    throw v0
.end method

.method public static declared-synchronized createJSWInstance(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    .locals 5

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "fctx":Lcom/sun/scenario/effect/FilterContext;
    const-class v4, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;

    monitor-enter v4

    const/4 v3, 0x0

    move-object v1, v3

    .line 116
    .local v1, "ret":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lcom/sun/scenario/effect/FilterContext;->getReferent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/prism/ResourceFactory;

    move-object v2, v3

    .line 117
    .local v2, "factory":Lcom/sun/prism/ResourceFactory;
    move-object v3, v2

    invoke-static {v3}, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->createJSWInstance(Lcom/sun/prism/ResourceFactory;)Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    move-object v1, v3

    .line 118
    .line 119
    .end local v2    # "factory":Lcom/sun/prism/ResourceFactory;
    :goto_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    monitor-exit v4

    return-object v0

    .line 118
    .restart local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    throw v0
.end method

.method private createPlatformPeer(Lcom/sun/scenario/effect/FilterContext;Ljava/lang/String;I)Lcom/sun/scenario/effect/impl/EffectPeer;
    .locals 14

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object/from16 v2, p2

    .local v2, "name":Ljava/lang/String;
    move/from16 v3, p3

    .local v3, "unrollCount":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->delegate:Lcom/sun/scenario/effect/impl/sw/RendererDelegate;

    move-object v9, v2

    move v10, v3

    invoke-interface {v8, v9, v10}, Lcom/sun/scenario/effect/impl/sw/RendererDelegate;->getPlatformPeerName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 273
    .local v4, "klassName":Ljava/lang/String;
    move-object v8, v4

    :try_start_0
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    move-object v6, v8

    .line 274
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

    .line 276
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

    move-object v12, v2

    aput-object v12, v10, v11

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/scenario/effect/impl/EffectPeer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v8

    .line 282
    .line 283
    .local v5, "peer":Lcom/sun/scenario/effect/impl/EffectPeer;
    move-object v8, v5

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    .end local v5    # "peer":Lcom/sun/scenario/effect/impl/EffectPeer;
    .end local v6    # "klass":Ljava/lang/Class;
    .end local v7    # "ctor":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v0

    .line 277
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    :catch_0
    move-exception v8

    move-object v6, v8

    .line 278
    .local v6, "e":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->getAccelType()Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " peer not found for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " due to error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    .line 280
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 278
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 281
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0
.end method

.method public static createRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;
    .locals 6

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/scenario/effect/FilterContext;->getReferent()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .line 139
    .local v1, "ref":Ljava/lang/Object;
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v5

    move-object v2, v5

    .line 140
    .local v2, "pipe":Lcom/sun/prism/GraphicsPipeline;
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v1

    instance-of v5, v5, Lcom/sun/glass/ui/Screen;

    if-nez v5, :cond_1

    .line 141
    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    .line 148
    .end local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    :goto_0
    return-object v0

    .line 143
    .restart local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    :cond_1
    move-object v5, v1

    check-cast v5, Lcom/sun/glass/ui/Screen;

    move-object v3, v5

    .line 144
    .local v3, "screen":Lcom/sun/glass/ui/Screen;
    move-object v5, v3

    invoke-static {v5}, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->createSSEInstance(Lcom/sun/glass/ui/Screen;)Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;

    move-result-object v5

    move-object v4, v5

    .line 145
    .local v4, "renderer":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v5, v4

    if-nez v5, :cond_2

    .line 146
    move-object v5, v3

    invoke-static {v5}, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->createJSWInstance(Lcom/sun/glass/ui/Screen;)Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;

    move-result-object v5

    move-object v4, v5

    .line 148
    :cond_2
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method private static declared-synchronized createSSEInstance(Lcom/sun/glass/ui/Screen;)Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    .locals 10

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "screen":Lcom/sun/glass/ui/Screen;
    const-class v8, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;

    monitor-enter v8

    const/4 v4, 0x0

    move-object v1, v4

    .line 130
    .local v1, "ret":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    :try_start_0
    const-string v4, "com.sun.scenario.effect.impl.sw.sse.SSERendererDelegate"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v2, v4

    .line 131
    .local v2, "klass":Ljava/lang/Class;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/scenario/effect/impl/sw/RendererDelegate;

    move-object v3, v4

    .line 132
    .local v3, "delegate":Lcom/sun/scenario/effect/impl/sw/RendererDelegate;
    new-instance v4, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;-><init>(Lcom/sun/glass/ui/Screen;Lcom/sun/scenario/effect/impl/sw/RendererDelegate;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 133
    .line 134
    .end local v2    # "klass":Ljava/lang/Class;
    .end local v3    # "delegate":Lcom/sun/scenario/effect/impl/sw/RendererDelegate;
    :goto_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "screen":Lcom/sun/glass/ui/Screen;
    monitor-exit v8

    return-object v0

    .line 133
    .restart local v0    # "screen":Lcom/sun/glass/ui/Screen;
    :catch_0
    move-exception v4

    move-object v2, v4

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "screen":Lcom/sun/glass/ui/Screen;
    throw v0
.end method


# virtual methods
.method public clearImage(Lcom/sun/scenario/effect/Filterable;)V
    .locals 4

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    move-object v1, p1

    .local v1, "filterable":Lcom/sun/scenario/effect/Filterable;
    move-object v3, v1

    check-cast v3, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;

    move-object v2, v3

    .line 308
    .local v2, "img":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->clear()V

    .line 309
    return-void
.end method

.method public bridge synthetic createCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;
    .locals 6

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->createCompatibleImage(II)Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    return-object v0
.end method

.method public final createCompatibleImage(II)Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    .locals 8

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->screen:Lcom/sun/glass/ui/Screen;

    if-eqz v4, :cond_0

    .line 215
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->screen:Lcom/sun/glass/ui/Screen;

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->create(Lcom/sun/glass/ui/Screen;II)Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;

    move-result-object v4

    move-object v0, v4

    .line 219
    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    :goto_0
    return-object v0

    .line 217
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->resourceFactory:Lcom/sun/prism/ResourceFactory;

    move v5, v1

    move v6, v2

    sget-object v7, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    .line 218
    invoke-interface {v4, v5, v6, v7}, Lcom/sun/prism/ResourceFactory;->createRTTexture(IILcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/RTTexture;

    move-result-object v4

    move-object v3, v4

    .line 219
    .local v3, "rtt":Lcom/sun/prism/RTTexture;
    move-object v4, v3

    invoke-static {v4}, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->create(Lcom/sun/prism/RTTexture;)Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public createDrawable(Lcom/sun/prism/RTTexture;)Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    .locals 3

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    move-object v1, p1

    .local v1, "rtt":Lcom/sun/prism/RTTexture;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->create(Lcom/sun/prism/RTTexture;)Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    return-object v0
.end method

.method public createImageData(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;)Lcom/sun/scenario/effect/ImageData;
    .locals 19

    .prologue
    .line 313
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    move-object/from16 v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object/from16 v2, p2

    .local v2, "src":Lcom/sun/scenario/effect/Filterable;
    move-object v10, v2

    instance-of v10, v10, Lcom/sun/scenario/effect/impl/prism/PrImage;

    if-nez v10, :cond_0

    .line 314
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    const-string v12, "Identity source must be PrImage"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 316
    :cond_0
    move-object v10, v2

    check-cast v10, Lcom/sun/scenario/effect/impl/prism/PrImage;

    invoke-virtual {v10}, Lcom/sun/scenario/effect/impl/prism/PrImage;->getImage()Lcom/sun/prism/Image;

    move-result-object v10

    move-object v3, v10

    .line 317
    .local v3, "img":Lcom/sun/prism/Image;
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/prism/Image;->getWidth()I

    move-result v10

    move v4, v10

    .line 318
    .local v4, "w":I
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/prism/Image;->getHeight()I

    move-result v10

    move v5, v10

    .line 319
    .local v5, "h":I
    move-object v10, v0

    move v11, v4

    move v12, v5

    invoke-virtual {v10, v11, v12}, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->createCompatibleImage(II)Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;

    move-result-object v10

    move-object v6, v10

    .line 320
    .local v6, "dst":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v10, v6

    if-nez v10, :cond_1

    .line 321
    const/4 v10, 0x0

    move-object v0, v10

    .line 336
    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    :goto_0
    return-object v0

    .line 326
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    :cond_1
    move-object v10, v6

    invoke-virtual {v10}, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v10

    move-object v7, v10

    .line 327
    .local v7, "g":Lcom/sun/prism/Graphics;
    move-object v10, v7

    invoke-interface {v10}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v10

    move-object v8, v10

    .line 328
    .local v8, "factory":Lcom/sun/prism/ResourceFactory;
    move-object v10, v8

    move-object v11, v3

    sget-object v12, Lcom/sun/prism/Texture$Usage;->DEFAULT:Lcom/sun/prism/Texture$Usage;

    sget-object v13, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    .line 329
    invoke-interface {v10, v11, v12, v13}, Lcom/sun/prism/ResourceFactory;->createTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v10

    move-object v9, v10

    .line 330
    .local v9, "tex":Lcom/sun/prism/Texture;
    move-object v10, v7

    move-object v11, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v14, v4

    int-to-float v14, v14

    move v15, v5

    int-to-float v15, v15

    invoke-interface/range {v10 .. v15}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFF)V

    .line 334
    move-object v10, v7

    invoke-interface {v10}, Lcom/sun/prism/Graphics;->sync()V

    .line 335
    move-object v10, v9

    invoke-interface {v10}, Lcom/sun/prism/Texture;->dispose()V

    .line 336
    new-instance v10, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v1

    move-object v13, v6

    new-instance v14, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/geom/Rectangle;-><init>(II)V

    invoke-direct {v11, v12, v13, v14}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v0, v10

    goto :goto_0
.end method

.method protected createPeer(Lcom/sun/scenario/effect/FilterContext;Ljava/lang/String;I)Lcom/sun/scenario/effect/impl/EffectPeer;
    .locals 8

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move v3, p3

    .local v3, "unrollCount":I
    move-object v4, v2

    invoke-static {v4}, Lcom/sun/scenario/effect/impl/prism/PrRenderer;->isIntrinsicPeer(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 292
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->createIntrinsicPeer(Lcom/sun/scenario/effect/FilterContext;Ljava/lang/String;)Lcom/sun/scenario/effect/impl/EffectPeer;

    move-result-object v4

    move-object v0, v4

    .line 295
    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->createPlatformPeer(Lcom/sun/scenario/effect/FilterContext;Ljava/lang/String;I)Lcom/sun/scenario/effect/impl/EffectPeer;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method protected dispose()V
    .locals 6

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    move-object v3, v0

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 179
    move-object v3, v0

    :try_start_0
    sget-object v4, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->DISPOSED:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    iput-object v4, v3, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->state:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    .line 180
    move-object v3, v1

    monitor-exit v3

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public getAccelType()Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->delegate:Lcom/sun/scenario/effect/impl/sw/RendererDelegate;

    invoke-interface {v1}, Lcom/sun/scenario/effect/impl/sw/RendererDelegate;->getAccelType()Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    return-object v0
.end method

.method protected getBackupRenderer()Lcom/sun/scenario/effect/impl/Renderer;
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    return-object v0
.end method

.method public getCompatibleHeight(I)I
    .locals 5

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    move v1, p1

    .local v1, "h":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->screen:Lcom/sun/glass/ui/Screen;

    if-eqz v2, :cond_0

    .line 206
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->screen:Lcom/sun/glass/ui/Screen;

    move v3, v1

    invoke-static {v2, v3}, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->getCompatibleHeight(Lcom/sun/glass/ui/Screen;I)I

    move-result v2

    move v0, v2

    .line 208
    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->resourceFactory:Lcom/sun/prism/ResourceFactory;

    move v3, v1

    sget-object v4, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface {v2, v3, v4}, Lcom/sun/prism/ResourceFactory;->getRTTHeight(ILcom/sun/prism/Texture$WrapMode;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public bridge synthetic getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;
    .locals 6

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    return-object v0
.end method

.method public getCompatibleImage(II)Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    .locals 7

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Lcom/sun/scenario/effect/impl/prism/PrRenderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v4

    check-cast v4, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;

    move-object v3, v4

    .line 227
    .local v3, "im":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 228
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->markLost()V

    .line 230
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    return-object v0
.end method

.method public getCompatibleWidth(I)I
    .locals 5

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    move v1, p1

    .local v1, "w":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->screen:Lcom/sun/glass/ui/Screen;

    if-eqz v2, :cond_0

    .line 197
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->screen:Lcom/sun/glass/ui/Screen;

    move v3, v1

    invoke-static {v2, v3}, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->getCompatibleWidth(Lcom/sun/glass/ui/Screen;I)I

    move-result v2

    move v0, v2

    .line 199
    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->resourceFactory:Lcom/sun/prism/ResourceFactory;

    move v3, v1

    sget-object v4, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface {v2, v3, v4}, Lcom/sun/prism/ResourceFactory;->getRTTWidth(ILcom/sun/prism/Texture$WrapMode;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public declared-synchronized getRendererState()Lcom/sun/scenario/effect/impl/Renderer$RendererState;
    .locals 3

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->state:Lcom/sun/scenario/effect/impl/Renderer$RendererState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    monitor-exit v2

    return-object v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    throw v0
.end method

.method public isImageDataCompatible(Lcom/sun/scenario/effect/ImageData;)Z
    .locals 4

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    move-object v1, p1

    .local v1, "id":Lcom/sun/scenario/effect/ImageData;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->getRendererState()Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    move-result-object v2

    sget-object v3, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->OK:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    if-ne v2, v3, :cond_0

    move-object v2, v1

    .line 302
    invoke-virtual {v2}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v2

    instance-of v2, v2, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected final declared-synchronized markLost()V
    .locals 4

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->state:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    sget-object v2, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->OK:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    if-ne v1, v2, :cond_0

    .line 190
    move-object v1, v0

    sget-object v2, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->LOST:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    iput-object v2, v1, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->state:Lcom/sun/scenario/effect/impl/Renderer$RendererState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_0
    monitor-exit v3

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    throw v0
.end method

.method public transform(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;
    .locals 14

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
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

    .line 347
    invoke-virtual {v8, v9, v10}, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;

    move-result-object v8

    move-object v6, v8

    .line 348
    .local v6, "dst":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v8, v6

    if-eqz v8, :cond_0

    .line 349
    move-object v8, v6

    invoke-virtual {v8}, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v8

    move-object v7, v8

    .line 350
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

    .line 351
    move-object v8, v7

    move-object v9, v3

    invoke-interface {v8, v9}, Lcom/sun/prism/Graphics;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 352
    move-object v8, v7

    move-object v9, v2

    check-cast v9, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;

    invoke-virtual {v9}, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->getTextureObject()Lcom/sun/prism/RTTexture;

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

    .line 356
    .end local v7    # "g":Lcom/sun/prism/Graphics;
    :cond_0
    move-object v8, v6

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    return-object v0
.end method

.method public transform(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/ImageData;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/ImageData;
    .locals 16

    .prologue
    .line 365
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
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

    .line 366
    invoke-virtual {v9, v10, v11}, Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;

    move-result-object v9

    move-object v6, v9

    .line 367
    .local v6, "dst":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v9, v6

    if-eqz v9, :cond_0

    .line 368
    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v9

    check-cast v9, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;

    move-object v7, v9

    .line 369
    .local v7, "orig":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v9, v6

    invoke-virtual {v9}, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v9

    move-object v8, v9

    .line 370
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

    .line 371
    move-object v9, v8

    move-object v10, v3

    invoke-interface {v9, v10}, Lcom/sun/prism/Graphics;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 372
    move-object v9, v8

    move-object v10, v7

    invoke-virtual {v10}, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->getTextureObject()Lcom/sun/prism/RTTexture;

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

    .line 376
    .end local v7    # "orig":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    .end local v8    # "g":Lcom/sun/prism/Graphics;
    :cond_0
    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 377
    new-instance v9, Lcom/sun/scenario/effect/ImageData;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v1

    move-object v12, v6

    move-object v13, v5

    invoke-direct {v10, v11, v12, v13}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v0, v9

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWRenderer;
    return-object v0
.end method

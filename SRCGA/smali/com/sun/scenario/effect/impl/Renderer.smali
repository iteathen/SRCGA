.class public abstract Lcom/sun/scenario/effect/impl/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/scenario/effect/impl/Renderer$RendererState;
    }
.end annotation


# static fields
.field private static final rendererMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/scenario/effect/FilterContext;",
            "Lcom/sun/scenario/effect/impl/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field public static final rootPkg:Ljava/lang/String; = "com.sun.scenario.effect"

.field protected static final verbose:Z


# instance fields
.field private final imagePool:Lcom/sun/scenario/effect/impl/ImagePool;

.field private peerCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/scenario/effect/impl/EffectPeer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 82
    new-instance v0, Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/sun/scenario/effect/impl/Renderer;->rendererMap:Ljava/util/Map;

    .line 88
    invoke-static {}, Lcom/sun/scenario/effect/impl/Renderer$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/scenario/effect/impl/Renderer;->verbose:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 6

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 84
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 85
    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/scenario/effect/impl/Renderer;->peerCache:Ljava/util/Map;

    .line 92
    move-object v1, v0

    new-instance v2, Lcom/sun/scenario/effect/impl/ImagePool;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/scenario/effect/impl/ImagePool;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/effect/impl/Renderer;->imagePool:Lcom/sun/scenario/effect/impl/ImagePool;

    .line 93
    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/scenario/effect/impl/Renderer;->lambda$static$35()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;
    .locals 11

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "fctx":Lcom/sun/scenario/effect/FilterContext;
    const-class v9, Lcom/sun/scenario/effect/impl/Renderer;

    monitor-enter v9

    move-object v6, v0

    if-nez v6, :cond_0

    .line 337
    :try_start_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "FilterContext must be non-null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    throw v0

    .line 340
    .restart local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    :cond_0
    :try_start_1
    sget-object v6, Lcom/sun/scenario/effect/impl/Renderer;->rendererMap:Ljava/util/Map;

    move-object v7, v0

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/scenario/effect/impl/Renderer;

    move-object v1, v6

    .line 341
    .local v1, "r":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v6, v1

    if-eqz v6, :cond_3

    .line 342
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/scenario/effect/impl/Renderer;->getRendererState()Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    move-result-object v6

    sget-object v7, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->OK:Lcom/sun/scenario/effect/impl/Renderer$RendererState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v6, v7, :cond_1

    .line 343
    move-object v6, v1

    move-object v0, v6

    .line 387
    .end local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    :goto_0
    monitor-exit v9

    return-object v0

    .line 345
    .restart local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    :cond_1
    move-object v6, v1

    :try_start_2
    invoke-virtual {v6}, Lcom/sun/scenario/effect/impl/Renderer;->getRendererState()Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    move-result-object v6

    sget-object v7, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->LOST:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    if-ne v6, v7, :cond_2

    .line 350
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/scenario/effect/impl/Renderer;->getBackupRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 352
    :cond_2
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/scenario/effect/impl/Renderer;->getRendererState()Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    move-result-object v6

    sget-object v7, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->DISPOSED:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    if-ne v6, v7, :cond_3

    .line 353
    const/4 v6, 0x0

    move-object v1, v6

    .line 360
    :cond_3
    move-object v6, v1

    if-nez v6, :cond_8

    .line 362
    sget-object v6, Lcom/sun/scenario/effect/impl/Renderer;->rendererMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    move-object v2, v6

    .line 363
    .local v2, "renderers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sun/scenario/effect/impl/Renderer;>;"
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/scenario/effect/impl/Renderer;>;"
    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 365
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/scenario/effect/impl/Renderer;

    move-object v4, v6

    .line 366
    .local v4, "ren":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v6, v4

    invoke-virtual {v6}, Lcom/sun/scenario/effect/impl/Renderer;->getRendererState()Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    move-result-object v6

    sget-object v7, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->DISPOSED:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    if-ne v6, v7, :cond_4

    .line 367
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/scenario/effect/impl/Renderer;->imagePool:Lcom/sun/scenario/effect/impl/ImagePool;

    invoke-virtual {v6}, Lcom/sun/scenario/effect/impl/ImagePool;->dispose()V

    .line 368
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 370
    :cond_4
    goto :goto_1

    .line 372
    .end local v4    # "ren":Lcom/sun/scenario/effect/impl/Renderer;
    :cond_5
    move-object v6, v0

    invoke-static {v6}, Lcom/sun/scenario/effect/impl/RendererFactory;->createRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v6

    move-object v1, v6

    .line 373
    move-object v6, v1

    if-nez v6, :cond_6

    .line 374
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Error creating a Renderer"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 376
    :cond_6
    sget-boolean v6, Lcom/sun/scenario/effect/impl/Renderer;->verbose:Z

    if-eqz v6, :cond_7

    .line 377
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 378
    .local v3, "klassName":Ljava/lang/String;
    move-object v6, v3

    move-object v7, v3

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 379
    .local v4, "rname":Ljava/lang/String;
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/scenario/effect/FilterContext;->getReferent()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 380
    .local v5, "screen":Ljava/lang/Object;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Created "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (AccelType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    .line 381
    invoke-virtual {v8}, Lcom/sun/scenario/effect/impl/Renderer;->getAccelType()Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 380
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 385
    .end local v3    # "klassName":Ljava/lang/String;
    .end local v4    # "rname":Ljava/lang/String;
    .end local v5    # "screen":Ljava/lang/Object;
    :cond_7
    sget-object v6, Lcom/sun/scenario/effect/impl/Renderer;->rendererMap:Ljava/util/Map;

    move-object v7, v0

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 387
    .end local v2    # "renderers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sun/scenario/effect/impl/Renderer;>;"
    :cond_8
    move-object v6, v1

    move-object v0, v6

    goto/16 :goto_0
.end method

.method public static getRenderer(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Effect;II)Lcom/sun/scenario/effect/impl/Renderer;
    .locals 8

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v1, p1

    .local v1, "effect":Lcom/sun/scenario/effect/Effect;
    move v2, p2

    .local v2, "approxW":I
    move v3, p3

    .local v3, "approxH":I
    move-object v4, v0

    invoke-static {v4}, Lcom/sun/scenario/effect/impl/Renderer;->getRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v4

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/Renderer;->getRendererForSize(Lcom/sun/scenario/effect/Effect;II)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    return-object v0
.end method

.method protected static getSoftwareRenderer()Lcom/sun/scenario/effect/impl/Renderer;
    .locals 1

    .prologue
    .line 298
    invoke-static {}, Lcom/sun/scenario/effect/impl/RendererFactory;->getSoftwareRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$35()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 89
    const-string v0, "decora.verbose"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract clearImage(Lcom/sun/scenario/effect/Filterable;)V
.end method

.method public abstract createCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;
.end method

.method public createFloatTexture(II)Lcom/sun/scenario/effect/LockableResource;
    .locals 6

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/Renderer;
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    new-instance v3, Ljava/lang/InternalError;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/InternalError;-><init>()V

    throw v3
.end method

.method public abstract createImageData(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;)Lcom/sun/scenario/effect/ImageData;
.end method

.method protected abstract createPeer(Lcom/sun/scenario/effect/FilterContext;Ljava/lang/String;I)Lcom/sun/scenario/effect/impl/EffectPeer;
.end method

.method public abstract getAccelType()Lcom/sun/scenario/effect/Effect$AccelType;
.end method

.method protected abstract getBackupRenderer()Lcom/sun/scenario/effect/impl/Renderer;
.end method

.method public abstract getCompatibleHeight(I)I
.end method

.method public getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;
    .locals 7

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/Renderer;
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/impl/Renderer;->imagePool:Lcom/sun/scenario/effect/impl/ImagePool;

    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/scenario/effect/impl/ImagePool;->checkOut(Lcom/sun/scenario/effect/impl/Renderer;II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/Renderer;
    return-object v0
.end method

.method public abstract getCompatibleWidth(I)I
.end method

.method public final declared-synchronized getPeerInstance(Lcom/sun/scenario/effect/FilterContext;Ljava/lang/String;I)Lcom/sun/scenario/effect/impl/EffectPeer;
    .locals 11

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move v3, p3

    .local v3, "unrollCount":I
    move-object v9, p0

    monitor-enter v9

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/scenario/effect/impl/Renderer;->peerCache:Ljava/util/Map;

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/scenario/effect/impl/EffectPeer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    .line 240
    .local v4, "peer":Lcom/sun/scenario/effect/impl/EffectPeer;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 241
    move-object v5, v4

    move-object v0, v5

    .line 260
    .end local v0    # "this":Lcom/sun/scenario/effect/impl/Renderer;
    :goto_0
    monitor-exit v9

    return-object v0

    .line 245
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/Renderer;
    :cond_0
    move v5, v3

    if-lez v5, :cond_1

    .line 246
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lcom/sun/scenario/effect/impl/Renderer;->peerCache:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/scenario/effect/impl/EffectPeer;

    move-object v4, v5

    .line 247
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 248
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 252
    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/scenario/effect/impl/Renderer;->createPeer(Lcom/sun/scenario/effect/FilterContext;Ljava/lang/String;I)Lcom/sun/scenario/effect/impl/EffectPeer;

    move-result-object v5

    move-object v4, v5

    .line 253
    move-object v5, v4

    if-nez v5, :cond_2

    .line 254
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not create peer  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for renderer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    .end local v4    # "peer":Lcom/sun/scenario/effect/impl/EffectPeer;
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/Renderer;
    throw v0

    .line 258
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/Renderer;
    .restart local v4    # "peer":Lcom/sun/scenario/effect/impl/EffectPeer;
    :cond_2
    move-object v5, v0

    :try_start_2
    iget-object v5, v5, Lcom/sun/scenario/effect/impl/Renderer;->peerCache:Ljava/util/Map;

    move-object v6, v4

    invoke-virtual {v6}, Lcom/sun/scenario/effect/impl/EffectPeer;->getUniqueName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v4

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 260
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method protected getPeers()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/sun/scenario/effect/impl/EffectPeer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/Renderer;->peerCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/Renderer;
    return-object v0
.end method

.method protected getRendererForSize(Lcom/sun/scenario/effect/Effect;II)Lcom/sun/scenario/effect/impl/Renderer;
    .locals 5

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v1, p1

    .local v1, "effect":Lcom/sun/scenario/effect/Effect;
    move v2, p2

    .local v2, "approxW":I
    move v3, p3

    .local v3, "approxH":I
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/Renderer;
    return-object v0
.end method

.method public abstract getRendererState()Lcom/sun/scenario/effect/impl/Renderer$RendererState;
.end method

.method public abstract isImageDataCompatible(Lcom/sun/scenario/effect/ImageData;)Z
.end method

.method public releaseCompatibleImage(Lcom/sun/scenario/effect/Filterable;)V
    .locals 5

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v1, p1

    .local v1, "image":Lcom/sun/scenario/effect/Filterable;
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/scenario/effect/impl/PoolFilterable;

    if-eqz v3, :cond_0

    .line 121
    move-object v3, v1

    check-cast v3, Lcom/sun/scenario/effect/impl/PoolFilterable;

    invoke-interface {v3}, Lcom/sun/scenario/effect/impl/PoolFilterable;->getImagePool()Lcom/sun/scenario/effect/impl/ImagePool;

    move-result-object v3

    move-object v2, v3

    .line 122
    .local v2, "pool":Lcom/sun/scenario/effect/impl/ImagePool;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 123
    move-object v3, v2

    move-object v4, v1

    check-cast v4, Lcom/sun/scenario/effect/impl/PoolFilterable;

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/impl/ImagePool;->checkIn(Lcom/sun/scenario/effect/impl/PoolFilterable;)V

    .line 124
    .line 130
    .end local v2    # "pool":Lcom/sun/scenario/effect/impl/ImagePool;
    :goto_0
    return-void

    .line 129
    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Lcom/sun/scenario/effect/Filterable;->unlock()V

    .line 130
    goto :goto_0
.end method

.method public releasePurgatory()V
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/Renderer;->imagePool:Lcom/sun/scenario/effect/impl/ImagePool;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/ImagePool;->releasePurgatory()V

    .line 138
    return-void
.end method

.method public abstract transform(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;
.end method

.method public transform(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/ImageData;II)Lcom/sun/scenario/effect/ImageData;
    .locals 19

    .prologue
    .line 164
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/Renderer;
    move-object/from16 v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object/from16 v2, p2

    .local v2, "img":Lcom/sun/scenario/effect/ImageData;
    move/from16 v3, p3

    .local v3, "xpow2scales":I
    move/from16 v4, p4

    .local v4, "ypow2scales":I
    move-object v12, v2

    invoke-virtual {v12}, Lcom/sun/scenario/effect/ImageData;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v12

    if-nez v12, :cond_0

    .line 165
    new-instance v12, Ljava/lang/InternalError;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const-string v14, "transform by powers of 2 requires untransformed source"

    invoke-direct {v13, v14}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v12

    .line 167
    :cond_0
    move v12, v3

    move v13, v4

    or-int/2addr v12, v13

    if-nez v12, :cond_1

    .line 168
    move-object v12, v2

    move-object v0, v12

    .line 202
    .end local v0    # "this":Lcom/sun/scenario/effect/impl/Renderer;
    :goto_0
    return-object v0

    .line 170
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/Renderer;
    :cond_1
    new-instance v12, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    move-object v5, v12

    .line 173
    .local v5, "at":Lcom/sun/javafx/geom/transform/Affine2D;
    :goto_1
    move v12, v3

    const/4 v13, -0x1

    if-lt v12, v13, :cond_2

    move v12, v4

    const/4 v13, -0x1

    if-ge v12, v13, :cond_5

    .line 174
    :cond_2
    move-object v12, v2

    invoke-virtual {v12}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v12

    move-object v6, v12

    .line 175
    .local v6, "origbounds":Lcom/sun/javafx/geom/Rectangle;
    new-instance v12, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v6

    invoke-direct {v13, v14}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v7, v12

    .line 176
    .local v7, "newbounds":Lcom/sun/javafx/geom/Rectangle;
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-wide v8, v12

    .line 177
    .local v8, "xscale":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-wide v10, v12

    .line 178
    .local v10, "yscale":D
    move v12, v3

    if-gez v12, :cond_3

    .line 180
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    move-wide v8, v12

    .line 181
    move-object v12, v7

    move-object v13, v6

    iget v13, v13, Lcom/sun/javafx/geom/Rectangle;->width:I

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    iput v13, v12, Lcom/sun/javafx/geom/Rectangle;->width:I

    .line 182
    move-object v12, v7

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    iget v13, v13, Lcom/sun/javafx/geom/Rectangle;->x:I

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    iput v13, v12, Lcom/sun/javafx/geom/Rectangle;->x:I

    .line 183
    add-int/lit8 v3, v3, 0x1

    .line 185
    :cond_3
    move v12, v4

    if-gez v12, :cond_4

    .line 187
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    move-wide v10, v12

    .line 188
    move-object v12, v7

    move-object v13, v6

    iget v13, v13, Lcom/sun/javafx/geom/Rectangle;->height:I

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    iput v13, v12, Lcom/sun/javafx/geom/Rectangle;->height:I

    .line 189
    move-object v12, v7

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    iget v13, v13, Lcom/sun/javafx/geom/Rectangle;->y:I

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    iput v13, v12, Lcom/sun/javafx/geom/Rectangle;->y:I

    .line 190
    add-int/lit8 v4, v4, 0x1

    .line 192
    :cond_4
    move-object v12, v5

    move-wide v13, v8

    move-wide v15, v10

    invoke-virtual/range {v12 .. v16}, Lcom/sun/javafx/geom/transform/Affine2D;->setToScale(DD)V

    .line 193
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Lcom/sun/scenario/effect/impl/Renderer;->transform(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/ImageData;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v12

    move-object v2, v12

    .line 194
    goto :goto_1

    .line 195
    .end local v6    # "origbounds":Lcom/sun/javafx/geom/Rectangle;
    .end local v7    # "newbounds":Lcom/sun/javafx/geom/Rectangle;
    .end local v8    # "xscale":D
    .end local v10    # "yscale":D
    :cond_5
    move v12, v3

    move v13, v4

    or-int/2addr v12, v13

    if-eqz v12, :cond_6

    .line 197
    move v12, v3

    if-gez v12, :cond_7

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    :goto_2
    move-wide v6, v12

    .line 198
    .local v6, "xscale":D
    move v12, v4

    if-gez v12, :cond_8

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    :goto_3
    move-wide v8, v12

    .line 199
    .local v8, "yscale":D
    move-object v12, v5

    move-wide v13, v6

    move-wide v15, v8

    invoke-virtual/range {v12 .. v16}, Lcom/sun/javafx/geom/transform/Affine2D;->setToScale(DD)V

    .line 200
    move-object v12, v2

    move-object v13, v5

    invoke-virtual {v12, v13}, Lcom/sun/scenario/effect/ImageData;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v12

    move-object v2, v12

    .line 202
    .end local v6    # "xscale":D
    .end local v8    # "yscale":D
    :cond_6
    move-object v12, v2

    move-object v0, v12

    goto/16 :goto_0

    .line 197
    :cond_7
    const/4 v12, 0x1

    move v13, v3

    shl-int/2addr v12, v13

    int-to-double v12, v12

    goto :goto_2

    .line 198
    .restart local v6    # "xscale":D
    :cond_8
    const/4 v12, 0x1

    move v13, v4

    shl-int/2addr v12, v13

    int-to-double v12, v12

    goto :goto_3
.end method

.method public abstract transform(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/ImageData;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/ImageData;
.end method

.method public updateFloatTexture(Lcom/sun/scenario/effect/LockableResource;Lcom/sun/scenario/effect/FloatMap;)V
    .locals 6

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v1, p1

    .local v1, "texture":Lcom/sun/scenario/effect/LockableResource;
    move-object v2, p2

    .local v2, "map":Lcom/sun/scenario/effect/FloatMap;
    new-instance v3, Ljava/lang/InternalError;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/InternalError;-><init>()V

    throw v3
.end method

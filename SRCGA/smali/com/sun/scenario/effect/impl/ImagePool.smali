.class public Lcom/sun/scenario/effect/impl/ImagePool;
.super Ljava/lang/Object;
.source "ImagePool.java"


# static fields
.field static final QUANT:I = 0x20

.field static numAccessed:J

.field static numCreated:J

.field public static numEffects:J

.field static pixelsAccessed:J

.field static pixelsCreated:J


# instance fields
.field private final hardPurgatory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/scenario/effect/Filterable;",
            ">;"
        }
    .end annotation
.end field

.field private final locked:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/sun/scenario/effect/impl/PoolFilterable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final softPurgatory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/sun/scenario/effect/impl/PoolFilterable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final unlocked:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/sun/scenario/effect/impl/PoolFilterable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final usePurgatory:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/sun/scenario/effect/impl/ImagePool$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/ImagePool;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 79
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/effect/impl/ImagePool;->unlocked:Ljava/util/List;

    .line 81
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/effect/impl/ImagePool;->locked:Ljava/util/List;

    .line 98
    move-object v1, v0

    const-string v2, "decora.purgatory"

    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/sun/scenario/effect/impl/ImagePool;->usePurgatory:Z

    .line 99
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/effect/impl/ImagePool;->hardPurgatory:Ljava/util/List;

    .line 100
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/effect/impl/ImagePool;->softPurgatory:Ljava/util/List;

    .line 107
    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/sun/scenario/effect/impl/ImagePool;->lambda$static$36()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$36()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 52
    const-string v0, "decora.showstats"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Lcom/sun/scenario/effect/impl/ImagePool$1;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/scenario/effect/impl/ImagePool$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 59
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static printStats()V
    .locals 9

    .prologue
    .line 64
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "effects executed:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/sun/scenario/effect/impl/ImagePool;->numEffects:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "images created:    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/sun/scenario/effect/impl/ImagePool;->numCreated:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pixels created:    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/sun/scenario/effect/impl/ImagePool;->pixelsCreated:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "images accessed:   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/sun/scenario/effect/impl/ImagePool;->numAccessed:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pixels accessed:   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/sun/scenario/effect/impl/ImagePool;->pixelsAccessed:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    sget-wide v4, Lcom/sun/scenario/effect/impl/ImagePool;->numEffects:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 70
    sget-wide v4, Lcom/sun/scenario/effect/impl/ImagePool;->numAccessed:J

    long-to-double v4, v4

    sget-wide v6, Lcom/sun/scenario/effect/impl/ImagePool;->numEffects:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    move-wide v0, v4

    .line 71
    .local v0, "avgImgs":D
    sget-wide v4, Lcom/sun/scenario/effect/impl/ImagePool;->pixelsAccessed:J

    long-to-double v4, v4

    sget-wide v6, Lcom/sun/scenario/effect/impl/ImagePool;->numEffects:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    move-wide v2, v4

    .line 72
    .local v2, "avgPxls":D
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "images per effect: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pixels per effect: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method private pruneCache()V
    .locals 5

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/ImagePool;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/ImagePool;->unlocked:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    move-object v2, v4

    .line 249
    .local v2, "r":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/sun/scenario/effect/impl/PoolFilterable;>;"
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/scenario/effect/Filterable;

    move-object v3, v4

    .line 250
    .local v3, "image":Lcom/sun/scenario/effect/Filterable;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 251
    move-object v4, v3

    invoke-interface {v4}, Lcom/sun/scenario/effect/Filterable;->flush()V

    .line 253
    :cond_0
    goto :goto_0

    .line 254
    .end local v2    # "r":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/sun/scenario/effect/impl/PoolFilterable;>;"
    .end local v3    # "image":Lcom/sun/scenario/effect/Filterable;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/ImagePool;->unlocked:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 257
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 258
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 259
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 260
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 261
    return-void
.end method


# virtual methods
.method public declared-synchronized checkIn(Lcom/sun/scenario/effect/impl/PoolFilterable;)V
    .locals 10

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/ImagePool;
    move-object v1, p1

    .local v1, "img":Lcom/sun/scenario/effect/impl/PoolFilterable;
    move-object v9, p0

    monitor-enter v9

    const/4 v7, 0x0

    move-object v2, v7

    .line 204
    .local v2, "chosenEntry":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/sun/scenario/effect/impl/PoolFilterable;>;"
    const/4 v7, 0x0

    move-object v3, v7

    .line 205
    .local v3, "chosenImage":Lcom/sun/scenario/effect/Filterable;
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/sun/scenario/effect/impl/ImagePool;->locked:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    .line 206
    .local v4, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Lcom/sun/scenario/effect/impl/PoolFilterable;>;>;"
    :goto_0
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 207
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/SoftReference;

    move-object v5, v7

    .line 208
    .local v5, "entry":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/sun/scenario/effect/impl/PoolFilterable;>;"
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/scenario/effect/Filterable;

    move-object v6, v7

    .line 209
    .local v6, "eimg":Lcom/sun/scenario/effect/Filterable;
    move-object v7, v6

    if-nez v7, :cond_1

    .line 210
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 217
    :cond_0
    goto :goto_0

    .line 211
    :cond_1
    move-object v7, v6

    move-object v8, v1

    if-ne v7, v8, :cond_0

    .line 212
    move-object v7, v5

    move-object v2, v7

    .line 213
    move-object v7, v6

    move-object v3, v7

    .line 214
    move-object v7, v1

    invoke-interface {v7}, Lcom/sun/scenario/effect/impl/PoolFilterable;->unlock()V

    .line 215
    .line 219
    .end local v5    # "entry":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/sun/scenario/effect/impl/PoolFilterable;>;"
    .end local v6    # "eimg":Lcom/sun/scenario/effect/Filterable;
    :cond_2
    move-object v7, v2

    if-eqz v7, :cond_3

    .line 220
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/impl/ImagePool;->locked:Ljava/util/List;

    move-object v8, v2

    invoke-interface {v7, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 221
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/scenario/effect/impl/ImagePool;->usePurgatory:Z

    if-eqz v7, :cond_4

    .line 228
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/impl/ImagePool;->hardPurgatory:Ljava/util/List;

    move-object v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 229
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/impl/ImagePool;->softPurgatory:Ljava/util/List;

    move-object v8, v2

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 234
    :cond_3
    :goto_1
    monitor-exit v9

    return-void

    .line 231
    :cond_4
    move-object v7, v0

    :try_start_1
    iget-object v7, v7, Lcom/sun/scenario/effect/impl/ImagePool;->unlocked:Ljava/util/List;

    move-object v8, v2

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    goto :goto_1

    .line 203
    .end local v4    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Lcom/sun/scenario/effect/impl/PoolFilterable;>;>;"
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/ImagePool;
    throw v0
.end method

.method public declared-synchronized checkOut(Lcom/sun/scenario/effect/impl/Renderer;II)Lcom/sun/scenario/effect/impl/PoolFilterable;
    .locals 24

    .prologue
    .line 110
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/scenario/effect/impl/ImagePool;
    move-object/from16 v4, p1

    .local v4, "renderer":Lcom/sun/scenario/effect/impl/Renderer;
    move/from16 v5, p2

    .local v5, "w":I
    move/from16 v6, p3

    .local v6, "h":I
    move-object/from16 v22, p0

    monitor-enter v22

    move/from16 v16, v5

    if-lez v16, :cond_0

    move/from16 v16, v6

    if-gtz v16, :cond_1

    .line 112
    :cond_0
    const/16 v16, 0x1

    move/from16 v23, v16

    move/from16 v16, v23

    move/from16 v17, v23

    move/from16 v6, v17

    move/from16 v5, v16

    .line 115
    :cond_1
    move/from16 v16, v5

    const/16 v17, 0x20

    add-int/lit8 v16, v16, 0x20

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    const/16 v17, 0x20

    :try_start_0
    div-int/lit8 v16, v16, 0x20

    const/16 v17, 0x20

    mul-int/lit8 v16, v16, 0x20

    move/from16 v5, v16

    .line 116
    move/from16 v16, v6

    const/16 v17, 0x20

    add-int/lit8 v16, v16, 0x20

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    const/16 v17, 0x20

    div-int/lit8 v16, v16, 0x20

    const/16 v17, 0x20

    mul-int/lit8 v16, v16, 0x20

    move/from16 v6, v16

    .line 119
    move-object/from16 v16, v4

    move/from16 v17, v5

    invoke-virtual/range {v16 .. v17}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleWidth(I)I

    move-result v16

    move/from16 v5, v16

    .line 120
    move-object/from16 v16, v4

    move/from16 v17, v6

    invoke-virtual/range {v16 .. v17}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleHeight(I)I

    move-result v16

    move/from16 v6, v16

    .line 122
    sget-wide v16, Lcom/sun/scenario/effect/impl/ImagePool;->numAccessed:J

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    sput-wide v16, Lcom/sun/scenario/effect/impl/ImagePool;->numAccessed:J

    .line 123
    sget-wide v16, Lcom/sun/scenario/effect/impl/ImagePool;->pixelsAccessed:J

    move/from16 v18, v5

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move/from16 v20, v6

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    add-long v16, v16, v18

    sput-wide v16, Lcom/sun/scenario/effect/impl/ImagePool;->pixelsAccessed:J

    .line 126
    const/16 v16, 0x0

    move-object/from16 v7, v16

    .line 127
    .local v7, "chosenEntry":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/sun/scenario/effect/impl/PoolFilterable;>;"
    const/16 v16, 0x0

    move-object/from16 v8, v16

    .line 128
    .local v8, "chosenImage":Lcom/sun/scenario/effect/impl/PoolFilterable;
    const v16, 0x7fffffff

    move/from16 v9, v16

    .line 129
    .local v9, "mindiff":I
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/ImagePool;->unlocked:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-object/from16 v10, v16

    .line 130
    .local v10, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Lcom/sun/scenario/effect/impl/PoolFilterable;>;>;"
    :goto_0
    move-object/from16 v16, v10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 131
    move-object/from16 v16, v10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/ref/SoftReference;

    move-object/from16 v11, v16

    .line 132
    .local v11, "entry":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/sun/scenario/effect/impl/PoolFilterable;>;"
    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-object/from16 v12, v16

    .line 133
    .local v12, "eimg":Lcom/sun/scenario/effect/impl/PoolFilterable;
    move-object/from16 v16, v12

    if-nez v16, :cond_2

    .line 134
    move-object/from16 v16, v10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    .line 135
    goto :goto_0

    .line 137
    :cond_2
    move-object/from16 v16, v12

    invoke-interface/range {v16 .. v16}, Lcom/sun/scenario/effect/impl/PoolFilterable;->getMaxContentWidth()I

    move-result v16

    move/from16 v13, v16

    .line 138
    .local v13, "ew":I
    move-object/from16 v16, v12

    invoke-interface/range {v16 .. v16}, Lcom/sun/scenario/effect/impl/PoolFilterable;->getMaxContentHeight()I

    move-result v16

    move/from16 v14, v16

    .line 139
    .local v14, "eh":I
    move/from16 v16, v13

    move/from16 v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_6

    move/from16 v16, v14

    move/from16 v17, v6

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_6

    move/from16 v16, v13

    move/from16 v17, v14

    mul-int v16, v16, v17

    const/16 v17, 0x2

    div-int/lit8 v16, v16, 0x2

    move/from16 v17, v5

    move/from16 v18, v6

    mul-int v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_6

    .line 140
    move/from16 v16, v13

    move/from16 v17, v5

    sub-int v16, v16, v17

    move/from16 v17, v14

    move/from16 v18, v6

    sub-int v17, v17, v18

    mul-int v16, v16, v17

    move/from16 v15, v16

    .line 141
    .local v15, "diff":I
    move-object/from16 v16, v7

    if-eqz v16, :cond_3

    move/from16 v16, v15

    move/from16 v17, v9

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 142
    :cond_3
    move-object/from16 v16, v12

    invoke-interface/range {v16 .. v16}, Lcom/sun/scenario/effect/impl/PoolFilterable;->lock()V

    .line 143
    move-object/from16 v16, v12

    invoke-interface/range {v16 .. v16}, Lcom/sun/scenario/effect/impl/PoolFilterable;->isLost()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 144
    move-object/from16 v16, v10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    .line 145
    goto/16 :goto_0

    .line 147
    :cond_4
    move-object/from16 v16, v8

    if-eqz v16, :cond_5

    .line 148
    move-object/from16 v16, v8

    invoke-interface/range {v16 .. v16}, Lcom/sun/scenario/effect/impl/PoolFilterable;->unlock()V

    .line 150
    :cond_5
    move-object/from16 v16, v11

    move-object/from16 v7, v16

    .line 157
    move-object/from16 v16, v12

    move-object/from16 v8, v16

    .line 158
    move/from16 v16, v15

    move/from16 v9, v16

    .line 161
    .end local v15    # "diff":I
    :cond_6
    goto/16 :goto_0

    .line 163
    .end local v11    # "entry":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/sun/scenario/effect/impl/PoolFilterable;>;"
    .end local v12    # "eimg":Lcom/sun/scenario/effect/impl/PoolFilterable;
    .end local v13    # "ew":I
    .end local v14    # "eh":I
    :cond_7
    move-object/from16 v16, v7

    if-eqz v16, :cond_8

    .line 164
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/ImagePool;->unlocked:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v16

    .line 165
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/ImagePool;->locked:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 166
    move-object/from16 v16, v4

    move-object/from16 v17, v8

    invoke-virtual/range {v16 .. v17}, Lcom/sun/scenario/effect/impl/Renderer;->clearImage(Lcom/sun/scenario/effect/Filterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    move-object/from16 v16, v8

    move-object/from16 v3, v16

    .line 199
    .end local v3    # "this":Lcom/sun/scenario/effect/impl/ImagePool;
    :goto_1
    monitor-exit v22

    return-object v3

    .line 171
    .restart local v3    # "this":Lcom/sun/scenario/effect/impl/ImagePool;
    :cond_8
    move-object/from16 v16, v3

    :try_start_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/ImagePool;->locked:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-object/from16 v10, v16

    .line 172
    :goto_2
    move-object/from16 v16, v10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 173
    move-object/from16 v16, v10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/ref/SoftReference;

    move-object/from16 v11, v16

    .line 174
    .restart local v11    # "entry":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/sun/scenario/effect/impl/PoolFilterable;>;"
    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sun/scenario/effect/Filterable;

    move-object/from16 v12, v16

    .line 175
    .local v12, "eimg":Lcom/sun/scenario/effect/Filterable;
    move-object/from16 v16, v12

    if-nez v16, :cond_9

    .line 176
    move-object/from16 v16, v10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :cond_9
    goto :goto_2

    .line 181
    .end local v11    # "entry":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/sun/scenario/effect/impl/PoolFilterable;>;"
    .end local v12    # "eimg":Lcom/sun/scenario/effect/Filterable;
    :cond_a
    const/16 v16, 0x0

    move-object/from16 v11, v16

    .line 183
    .local v11, "img":Lcom/sun/scenario/effect/impl/PoolFilterable;
    move-object/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    :try_start_2
    invoke-virtual/range {v16 .. v18}, Lcom/sun/scenario/effect/impl/Renderer;->createCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v16

    move-object/from16 v11, v16

    .line 184
    .line 186
    :goto_3
    move-object/from16 v16, v11

    if-nez v16, :cond_b

    .line 188
    move-object/from16 v16, v3

    :try_start_3
    invoke-direct/range {v16 .. v16}, Lcom/sun/scenario/effect/impl/ImagePool;->pruneCache()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    move-object/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    :try_start_4
    invoke-virtual/range {v16 .. v18}, Lcom/sun/scenario/effect/impl/Renderer;->createCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v16

    move-object/from16 v11, v16

    .line 191
    .line 193
    :cond_b
    :goto_4
    move-object/from16 v16, v11

    if-eqz v16, :cond_c

    .line 194
    move-object/from16 v16, v11

    move-object/from16 v17, v3

    :try_start_5
    invoke-interface/range {v16 .. v17}, Lcom/sun/scenario/effect/impl/PoolFilterable;->setImagePool(Lcom/sun/scenario/effect/impl/ImagePool;)V

    .line 195
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/ImagePool;->locked:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/ref/SoftReference;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v11

    invoke-direct/range {v18 .. v19}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 196
    sget-wide v16, Lcom/sun/scenario/effect/impl/ImagePool;->numCreated:J

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    sput-wide v16, Lcom/sun/scenario/effect/impl/ImagePool;->numCreated:J

    .line 197
    sget-wide v16, Lcom/sun/scenario/effect/impl/ImagePool;->pixelsCreated:J

    move/from16 v18, v5

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move/from16 v20, v6

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    add-long v16, v16, v18

    sput-wide v16, Lcom/sun/scenario/effect/impl/ImagePool;->pixelsCreated:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 199
    :cond_c
    move-object/from16 v16, v11

    move-object/from16 v3, v16

    goto/16 :goto_1

    .line 184
    :catch_0
    move-exception v16

    move-object/from16 v12, v16

    goto :goto_3

    .line 191
    :catch_1
    move-exception v16

    move-object/from16 v12, v16

    goto :goto_4

    .line 110
    .end local v7    # "chosenEntry":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/sun/scenario/effect/impl/PoolFilterable;>;"
    .end local v8    # "chosenImage":Lcom/sun/scenario/effect/impl/PoolFilterable;
    .end local v9    # "mindiff":I
    .end local v10    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Lcom/sun/scenario/effect/impl/PoolFilterable;>;>;"
    .end local v11    # "img":Lcom/sun/scenario/effect/impl/PoolFilterable;
    :catchall_0
    move-exception v3

    monitor-exit v22

    .end local v3    # "this":Lcom/sun/scenario/effect/impl/ImagePool;
    throw v3
.end method

.method public declared-synchronized dispose()V
    .locals 6

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/ImagePool;
    move-object v5, p0

    monitor-enter v5

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/scenario/effect/impl/ImagePool;->unlocked:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    move-object v2, v4

    .line 265
    .local v2, "r":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/sun/scenario/effect/impl/PoolFilterable;>;"
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/scenario/effect/Filterable;

    move-object v3, v4

    .line 266
    .local v3, "image":Lcom/sun/scenario/effect/Filterable;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 267
    move-object v4, v3

    invoke-interface {v4}, Lcom/sun/scenario/effect/Filterable;->flush()V

    .line 269
    :cond_0
    goto :goto_0

    .line 270
    .end local v2    # "r":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/sun/scenario/effect/impl/PoolFilterable;>;"
    .end local v3    # "image":Lcom/sun/scenario/effect/Filterable;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/ImagePool;->unlocked:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 272
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/ImagePool;->locked:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    monitor-exit v5

    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/ImagePool;
    throw v0
.end method

.method public declared-synchronized releasePurgatory()V
    .locals 4

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/ImagePool;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Lcom/sun/scenario/effect/impl/ImagePool;->usePurgatory:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/ImagePool;->softPurgatory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/ImagePool;->unlocked:Ljava/util/List;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/impl/ImagePool;->softPurgatory:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v1

    .line 241
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/ImagePool;->softPurgatory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 242
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/ImagePool;->hardPurgatory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_0
    monitor-exit v3

    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/ImagePool;
    throw v0
.end method

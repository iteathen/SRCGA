.class public Lcom/sun/media/jfxmediaimpl/MediaDisposer;
.super Ljava/lang/Object;
.source "MediaDisposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposerRecord;,
        Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;,
        Lcom/sun/media/jfxmediaimpl/MediaDisposer$Disposable;
    }
.end annotation


# static fields
.field private static theDisposinator:Lcom/sun/media/jfxmediaimpl/MediaDisposer;


# instance fields
.field private final disposers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ref/Reference;",
            "Lcom/sun/media/jfxmediaimpl/MediaDisposer$Disposable;",
            ">;"
        }
    .end annotation
.end field

.field private final purgatory:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MediaDisposer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 119
    move-object v1, v0

    new-instance v2, Ljava/lang/ref/ReferenceQueue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v2, v1, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->purgatory:Ljava/lang/ref/ReferenceQueue;

    .line 122
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->disposers:Ljava/util/Map;

    .line 123
    return-void
.end method

.method static synthetic access$lambda$0()V
    .locals 0

    invoke-static {}, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->lambda$disposinator$2()V

    return-void
.end method

.method public static addDisposable(Ljava/lang/Object;Lcom/sun/media/jfxmediaimpl/MediaDisposer$Disposable;)V
    .locals 5

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "referent":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "disposable":Lcom/sun/media/jfxmediaimpl/MediaDisposer$Disposable;
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->disposinator()Lcom/sun/media/jfxmediaimpl/MediaDisposer;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->implAddDisposable(Ljava/lang/Object;Lcom/sun/media/jfxmediaimpl/MediaDisposer$Disposable;)V

    .line 96
    return-void
.end method

.method public static addResourceDisposer(Ljava/lang/Object;Ljava/lang/Object;Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;)V
    .locals 7

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "referent":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "resource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "disposer":Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->disposinator()Lcom/sun/media/jfxmediaimpl/MediaDisposer;

    move-result-object v3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->implAddResourceDisposer(Ljava/lang/Object;Ljava/lang/Object;Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;)V

    .line 75
    return-void
.end method

.method private disposerLoop()V
    .locals 10

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MediaDisposer;
    :goto_0
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->purgatory:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v5}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v5

    move-object v1, v5

    .line 132
    .local v1, "denizen":Ljava/lang/ref/Reference;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->disposers:Ljava/util/Map;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v3, v6

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->disposers:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/media/jfxmediaimpl/MediaDisposer$Disposable;

    move-object v2, v5

    .line 134
    .local v2, "disposer":Lcom/sun/media/jfxmediaimpl/MediaDisposer$Disposable;
    move-object v5, v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    move-object v5, v1

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->clear()V

    .line 137
    const/4 v5, 0x0

    move-object v6, v2

    if-eq v5, v6, :cond_0

    .line 138
    move-object v5, v2

    invoke-interface {v5}, Lcom/sun/media/jfxmediaimpl/MediaDisposer$Disposable;->dispose()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    :cond_0
    const/4 v5, 0x0

    move-object v1, v5

    .line 141
    const/4 v5, 0x0

    move-object v2, v5

    .line 147
    .end local v2    # "disposer":Lcom/sun/media/jfxmediaimpl/MediaDisposer$Disposable;
    goto :goto_0

    .line 134
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v4

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 142
    .end local v1    # "denizen":Ljava/lang/ref/Reference;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 143
    .local v1, "ex":Ljava/lang/InterruptedException;
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    const/4 v5, 0x1

    const-class v6, Lcom/sun/media/jfxmediaimpl/MediaDisposer;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "disposerLoop"

    const-string v8, "Disposer loop interrupted, terminating"

    invoke-static {v5, v6, v7, v8}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_1
    goto :goto_0
.end method

.method private static declared-synchronized disposinator()Lcom/sun/media/jfxmediaimpl/MediaDisposer;
    .locals 7

    .prologue
    .line 103
    const-class v5, Lcom/sun/media/jfxmediaimpl/MediaDisposer;

    monitor-enter v5

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->theDisposinator:Lcom/sun/media/jfxmediaimpl/MediaDisposer;

    if-ne v1, v2, :cond_0

    .line 104
    new-instance v1, Lcom/sun/media/jfxmediaimpl/MediaDisposer;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    invoke-direct {v2}, Lcom/sun/media/jfxmediaimpl/MediaDisposer;-><init>()V

    sput-object v1, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->theDisposinator:Lcom/sun/media/jfxmediaimpl/MediaDisposer;

    .line 107
    new-instance v1, Ljava/lang/Thread;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    invoke-static {}, Lcom/sun/media/jfxmediaimpl/MediaDisposer$$Lambda$1;->lambdaFactory$()Ljava/lang/Runnable;

    move-result-object v3

    const-string v4, "Media Resource Disposer"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object v0, v1

    .line 112
    .local v0, "disposerThread":Ljava/lang/Thread;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 113
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 115
    :cond_0
    sget-object v1, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->theDisposinator:Lcom/sun/media/jfxmediaimpl/MediaDisposer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .end local v0    # "disposerThread":Ljava/lang/Thread;
    monitor-exit v5

    return-object v0

    .line 103
    .restart local v0    # "disposerThread":Ljava/lang/Thread;
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "disposerThread":Ljava/lang/Thread;
    throw v0
.end method

.method private implAddDisposable(Ljava/lang/Object;Lcom/sun/media/jfxmediaimpl/MediaDisposer$Disposable;)V
    .locals 11

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MediaDisposer;
    move-object v1, p1

    .local v1, "referent":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "disposer":Lcom/sun/media/jfxmediaimpl/MediaDisposer$Disposable;
    new-instance v6, Ljava/lang/ref/PhantomReference;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->purgatory:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v7, v8, v9}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    move-object v3, v6

    .line 181
    .local v3, "denizen":Ljava/lang/ref/Reference;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->disposers:Ljava/util/Map;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v4, v7

    monitor-enter v6

    .line 182
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->disposers:Ljava/util/Map;

    move-object v7, v3

    move-object v8, v2

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 183
    move-object v6, v4

    monitor-exit v6

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method private implAddResourceDisposer(Ljava/lang/Object;Ljava/lang/Object;Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;)V
    .locals 14

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MediaDisposer;
    move-object v1, p1

    .local v1, "referent":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "resource":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "disposer":Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;
    new-instance v7, Ljava/lang/ref/PhantomReference;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->purgatory:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v8, v9, v10}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    move-object v4, v7

    .line 153
    .local v4, "denizen":Ljava/lang/ref/Reference;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->disposers:Ljava/util/Map;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v5, v8

    monitor-enter v7

    .line 154
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->disposers:Ljava/util/Map;

    move-object v8, v4

    new-instance v9, Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposerRecord;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v2

    move-object v12, v3

    invoke-direct {v10, v11, v12}, Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposerRecord;-><init>(Ljava/lang/Object;Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 155
    move-object v7, v5

    monitor-exit v7

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v6

    throw v7
.end method

.method private implRemoveResourceDisposer(Ljava/lang/Object;)V
    .locals 12

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MediaDisposer;
    move-object v1, p1

    .local v1, "resource":Ljava/lang/Object;
    const/4 v9, 0x0

    move-object v2, v9

    .line 161
    .local v2, "resourceKey":Ljava/lang/ref/Reference;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->disposers:Ljava/util/Map;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    move-object v3, v10

    monitor-enter v9

    .line 162
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->disposers:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v9

    :goto_0
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    move-object v5, v9

    .line 163
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ref/Reference;Lcom/sun/media/jfxmediaimpl/MediaDisposer$Disposable;>;"
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/media/jfxmediaimpl/MediaDisposer$Disposable;

    move-object v6, v9

    .line 164
    .local v6, "disposer":Lcom/sun/media/jfxmediaimpl/MediaDisposer$Disposable;
    move-object v9, v6

    instance-of v9, v9, Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposerRecord;

    if-eqz v9, :cond_2

    .line 165
    move-object v9, v6

    check-cast v9, Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposerRecord;

    move-object v7, v9

    .line 166
    .local v7, "rd":Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposerRecord;
    move-object v9, v7

    iget-object v9, v9, Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposerRecord;->resource:Ljava/lang/Object;

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 167
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/Reference;

    move-object v2, v9

    .line 173
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ref/Reference;Lcom/sun/media/jfxmediaimpl/MediaDisposer$Disposable;>;"
    .end local v6    # "disposer":Lcom/sun/media/jfxmediaimpl/MediaDisposer$Disposable;
    .end local v7    # "rd":Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposerRecord;
    :cond_0
    const/4 v9, 0x0

    move-object v10, v2

    if-eq v9, v10, :cond_1

    .line 174
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->disposers:Ljava/util/Map;

    move-object v10, v2

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 176
    :cond_1
    move-object v9, v3

    monitor-exit v9

    .line 177
    return-void

    .line 171
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ref/Reference;Lcom/sun/media/jfxmediaimpl/MediaDisposer$Disposable;>;"
    .restart local v6    # "disposer":Lcom/sun/media/jfxmediaimpl/MediaDisposer$Disposable;
    :cond_2
    goto :goto_0

    .line 176
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ref/Reference;Lcom/sun/media/jfxmediaimpl/MediaDisposer$Disposable;>;"
    .end local v6    # "disposer":Lcom/sun/media/jfxmediaimpl/MediaDisposer$Disposable;
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v3

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v8

    throw v9
.end method

.method private static synthetic lambda$disposinator$2()V
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->theDisposinator:Lcom/sun/media/jfxmediaimpl/MediaDisposer;

    invoke-direct {v0}, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->disposerLoop()V

    .line 110
    return-void
.end method

.method public static removeResourceDisposer(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "resource":Ljava/lang/Object;
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->disposinator()Lcom/sun/media/jfxmediaimpl/MediaDisposer;

    move-result-object v1

    move-object v2, v0

    invoke-direct {v1, v2}, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->implRemoveResourceDisposer(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

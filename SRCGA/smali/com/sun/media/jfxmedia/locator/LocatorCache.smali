.class public Lcom/sun/media/jfxmedia/locator/LocatorCache;
.super Ljava/lang/Object;
.source "LocatorCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheDisposer;,
        Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;,
        Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheInitializer;
    }
.end annotation


# instance fields
.field private final cacheDisposer:Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheDisposer;

.field private final uriCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/URI;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/LocatorCache;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/media/jfxmedia/locator/LocatorCache;->uriCache:Ljava/util/Map;

    .line 52
    move-object v1, v0

    new-instance v2, Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheDisposer;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheDisposer;-><init>(Lcom/sun/media/jfxmedia/locator/LocatorCache;Lcom/sun/media/jfxmedia/locator/LocatorCache$1;)V

    iput-object v2, v1, Lcom/sun/media/jfxmedia/locator/LocatorCache;->cacheDisposer:Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheDisposer;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/media/jfxmedia/locator/LocatorCache$1;)V
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/LocatorCache;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/media/jfxmedia/locator/LocatorCache$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/media/jfxmedia/locator/LocatorCache;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/sun/media/jfxmedia/locator/LocatorCache;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/LocatorCache;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/LocatorCache;->uriCache:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/LocatorCache;
    return-object v0
.end method

.method public static locatorCache()Lcom/sun/media/jfxmedia/locator/LocatorCache;
    .locals 1

    .prologue
    .line 44
    # getter for: Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheInitializer;->globalInstance:Lcom/sun/media/jfxmedia/locator/LocatorCache;
    invoke-static {}, Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheInitializer;->access$100()Lcom/sun/media/jfxmedia/locator/LocatorCache;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public fetchURICache(Ljava/net/URI;)Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;
    .locals 10

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/LocatorCache;
    move-object v1, p1

    .local v1, "sourceURI":Ljava/net/URI;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmedia/locator/LocatorCache;->uriCache:Ljava/util/Map;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v2, v7

    monitor-enter v6

    .line 87
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/sun/media/jfxmedia/locator/LocatorCache;->uriCache:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    move-object v3, v6

    .line 88
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;>;"
    const/4 v6, 0x0

    move-object v7, v3

    if-ne v6, v7, :cond_0

    .line 89
    const/4 v6, 0x0

    move-object v7, v2

    monitor-exit v7

    move-object v0, v6

    .line 104
    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/LocatorCache;
    :goto_0
    return-object v0

    .line 92
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/LocatorCache;
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;

    move-object v4, v6

    .line 93
    .local v4, "cacheData":Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;
    const/4 v6, 0x0

    move-object v7, v4

    if-eq v6, v7, :cond_2

    .line 94
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 95
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fetched cache entry: URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", buffer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    .line 96
    invoke-virtual {v8}, Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", MIME type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    .line 97
    invoke-virtual {v8}, Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;->getMIMEType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 95
    invoke-static {v6, v7}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 101
    :cond_1
    move-object v6, v4

    move-object v7, v2

    monitor-exit v7

    move-object v0, v6

    goto :goto_0

    .line 103
    :cond_2
    move-object v6, v2

    monitor-exit v6

    .line 104
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 103
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;>;"
    .end local v4    # "cacheData":Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public isCached(Ljava/net/URI;)Z
    .locals 7

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/LocatorCache;
    move-object v1, p1

    .local v1, "sourceURI":Ljava/net/URI;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/LocatorCache;->uriCache:Ljava/util/Map;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 109
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/LocatorCache;->uriCache:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/LocatorCache;
    return v0

    .line 110
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/LocatorCache;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public registerURICache(Ljava/net/URI;Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;
    .locals 13

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/LocatorCache;
    move-object v1, p1

    .local v1, "sourceURI":Ljava/net/URI;
    move-object v2, p2

    .local v2, "data":Ljava/nio/ByteBuffer;
    move-object/from16 v3, p3

    .local v3, "mimeType":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 61
    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New cache entry: URI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", buffer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", MIME type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 67
    :cond_0
    move-object v7, v2

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v7

    if-nez v7, :cond_1

    .line 68
    move-object v7, v2

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v7

    .line 69
    move-object v7, v2

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    move-object v4, v7

    .line 70
    .local v4, "newData":Ljava/nio/ByteBuffer;
    move-object v7, v4

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 71
    move-object v7, v4

    move-object v2, v7

    .line 74
    .end local v4    # "newData":Ljava/nio/ByteBuffer;
    :cond_1
    new-instance v7, Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    move-object v4, v7

    .line 75
    .local v4, "ref":Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/LocatorCache;->uriCache:Ljava/util/Map;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v5, v8

    monitor-enter v7

    .line 76
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/LocatorCache;->uriCache:Ljava/util/Map;

    move-object v8, v1

    new-instance v9, Ljava/lang/ref/WeakReference;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v4

    invoke-direct {v10, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 77
    move-object v7, v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    move-object v7, v4

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/LocatorCache;->cacheDisposer:Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheDisposer;

    invoke-static {v7, v8, v9}, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->addResourceDisposer(Ljava/lang/Object;Ljava/lang/Object;Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;)V

    .line 82
    move-object v7, v4

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/LocatorCache;
    return-object v0

    .line 77
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/LocatorCache;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v5

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v6

    throw v7
.end method

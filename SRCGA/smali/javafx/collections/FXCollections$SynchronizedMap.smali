.class Ljavafx/collections/FXCollections$SynchronizedMap;
.super Ljava/lang/Object;
.source "FXCollections.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/FXCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final backingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final mutex:Ljava/lang/Object;

.field private transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2530
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-direct {v2, v3, v4}, Ljavafx/collections/FXCollections$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 2531
    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2524
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v2, p2

    .local v2, "mutex":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2596
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->keySet:Ljava/util/Set;

    .line 2597
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->entrySet:Ljava/util/Set;

    .line 2598
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->values:Ljava/util/Collection;

    .line 2525
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->backingMap:Ljava/util/Map;

    .line 2526
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    .line 2527
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    .line 2591
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 2592
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->backingMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 2593
    move-object v3, v1

    monitor-exit v3

    .line 2594
    return-void

    .line 2593
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

.method public containsKey(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 2549
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 2550
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedMap;->backingMap:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    return v0

    .line 2551
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
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

.method public containsValue(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 2556
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 2557
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedMap;->backingMap:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    return v0

    .line 2558
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
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

.method public entrySet()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2620
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v1, v4

    monitor-enter v3

    .line 2621
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->entrySet:Ljava/util/Set;

    if-nez v3, :cond_0

    .line 2622
    move-object v3, v0

    new-instance v4, Ljavafx/collections/FXCollections$SynchronizedSet;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/FXCollections$SynchronizedMap;->backingMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/FXCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v5, v6, v7}, Ljavafx/collections/FXCollections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->entrySet:Ljava/util/Set;

    .line 2623
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->entrySet:Ljava/util/Set;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    return-object v0

    .line 2624
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
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

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 2629
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v0

    if-ne v4, v5, :cond_0

    .line 2630
    const/4 v4, 0x1

    move v0, v4

    .line 2633
    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    :goto_0
    return v0

    .line 2632
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 2633
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedMap;->backingMap:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    goto :goto_0

    .line 2634
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

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 2563
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 2564
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedMap;->backingMap:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v2

    monitor-exit v5

    move-object v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    return-object v0

    .line 2565
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
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

.method public hashCode()I
    .locals 6

    .prologue
    .line 2639
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 2640
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->backingMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    return v0

    .line 2641
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
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

.method public isEmpty()Z
    .locals 6

    .prologue
    .line 2542
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 2543
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->backingMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    return v0

    .line 2544
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
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

.method public keySet()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2602
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v1, v4

    monitor-enter v3

    .line 2603
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->keySet:Ljava/util/Set;

    if-nez v3, :cond_0

    .line 2604
    move-object v3, v0

    new-instance v4, Ljavafx/collections/FXCollections$SynchronizedSet;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/FXCollections$SynchronizedMap;->backingMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/FXCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v5, v6, v7}, Ljavafx/collections/FXCollections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->keySet:Ljava/util/Set;

    .line 2605
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->keySet:Ljava/util/Set;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    return-object v0

    .line 2606
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
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

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2570
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TV;"
    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 2571
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedMap;->backingMap:Ljava/util/Map;

    move-object v6, v1

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v3

    monitor-exit v6

    move-object v0, v5

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    return-object v0

    .line 2572
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
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

.method public putAll(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2584
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 2585
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedMap;->backingMap:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2586
    move-object v4, v2

    monitor-exit v4

    .line 2587
    return-void

    .line 2586
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

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 2577
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 2578
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedMap;->backingMap:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v2

    monitor-exit v5

    move-object v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    return-object v0

    .line 2579
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
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

.method public size()I
    .locals 6

    .prologue
    .line 2535
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 2536
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->backingMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    return v0

    .line 2537
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
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

.method public values()Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2611
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v1, v4

    monitor-enter v3

    .line 2612
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->values:Ljava/util/Collection;

    if-nez v3, :cond_0

    .line 2613
    move-object v3, v0

    new-instance v4, Ljavafx/collections/FXCollections$SynchronizedCollection;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/FXCollections$SynchronizedMap;->backingMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/FXCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v5, v6, v7}, Ljavafx/collections/FXCollections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->values:Ljava/util/Collection;

    .line 2614
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedMap;->values:Ljava/util/Collection;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
    return-object v0

    .line 2615
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedMap;, "Ljavafx/collections/FXCollections$SynchronizedMap<TK;TV;>;"
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

.class Ljavafx/collections/FXCollections$SynchronizedCollection;
.super Ljava/lang/Object;
.source "FXCollections.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/FXCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final backingCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation
.end field

.field final mutex:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 2657
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-direct {v2, v3, v4}, Ljavafx/collections/FXCollections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 2658
    return-void
.end method

.method constructor <init>(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2651
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    move-object v2, p2

    .local v2, "mutex":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2652
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/collections/FXCollections$SynchronizedCollection;->backingCollection:Ljava/util/Collection;

    .line 2653
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/collections/FXCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    .line 2654
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 2702
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 2703
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedCollection;->backingCollection:Ljava/util/Collection;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    return v0

    .line 2704
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
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

.method public addAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 2723
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 2724
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedCollection;->backingCollection:Ljava/util/Collection;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    return v0

    .line 2725
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
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

.method public clear()V
    .locals 6

    .prologue
    .line 2744
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 2745
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedCollection;->backingCollection:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    .line 2746
    move-object v3, v1

    monitor-exit v3

    .line 2747
    return-void

    .line 2746
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

.method public contains(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 2676
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 2677
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedCollection;->backingCollection:Ljava/util/Collection;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    return v0

    .line 2678
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
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

.method public containsAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2716
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 2717
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedCollection;->backingCollection:Ljava/util/Collection;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    return v0

    .line 2718
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
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

.method public isEmpty()Z
    .locals 6

    .prologue
    .line 2669
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 2670
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedCollection;->backingCollection:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    return v0

    .line 2671
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
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

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2683
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$SynchronizedCollection;->backingCollection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 2709
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 2710
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedCollection;->backingCollection:Ljava/util/Collection;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    return v0

    .line 2711
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
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

.method public removeAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2730
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 2731
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedCollection;->backingCollection:Ljava/util/Collection;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    return v0

    .line 2732
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
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

.method public retainAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2737
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 2738
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedCollection;->backingCollection:Ljava/util/Collection;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    return v0

    .line 2739
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
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
    .line 2662
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 2663
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedCollection;->backingCollection:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    return v0

    .line 2664
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
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

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 2688
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 2689
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedCollection;->backingCollection:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    return-object v0

    .line 2690
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
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

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 2695
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    move-object v1, p1

    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 2696
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedCollection;->backingCollection:Ljava/util/Collection;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v5, v2

    monitor-exit v5

    move-object v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
    return-object v0

    .line 2697
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedCollection;, "Ljavafx/collections/FXCollections$SynchronizedCollection<TE;>;"
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

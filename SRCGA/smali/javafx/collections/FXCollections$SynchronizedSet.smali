.class Ljavafx/collections/FXCollections$SynchronizedSet;
.super Ljava/lang/Object;
.source "FXCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/FXCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final backingSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field final mutex:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1746
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    move-object v1, p1

    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-direct {v2, v3, v4}, Ljavafx/collections/FXCollections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    .line 1747
    return-void
.end method

.method constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1740
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    move-object v1, p1

    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    move-object v2, p2

    .local v2, "mutex":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1741
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/collections/FXCollections$SynchronizedSet;->backingSet:Ljava/util/Set;

    .line 1742
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/collections/FXCollections$SynchronizedSet;->mutex:Ljava/lang/Object;

    .line 1743
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
    .line 1791
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedSet;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1792
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedSet;->backingSet:Ljava/util/Set;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    return v0

    .line 1793
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
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
    .line 1812
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedSet;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1813
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedSet;->backingSet:Ljava/util/Set;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    return v0

    .line 1814
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
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
    .line 1833
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedSet;->mutex:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 1834
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedSet;->backingSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1835
    move-object v3, v1

    monitor-exit v3

    .line 1836
    return-void

    .line 1835
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
    .line 1765
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedSet;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1766
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedSet;->backingSet:Ljava/util/Set;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    return v0

    .line 1767
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
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
    .line 1805
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedSet;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1806
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedSet;->backingSet:Ljava/util/Set;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    return v0

    .line 1807
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
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

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 1840
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v0

    if-ne v4, v5, :cond_0

    .line 1841
    const/4 v4, 0x1

    move v0, v4

    .line 1844
    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    :goto_0
    return v0

    .line 1843
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedSet;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1844
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedSet;->backingSet:Ljava/util/Set;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    goto :goto_0

    .line 1845
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
    .line 1850
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedSet;->mutex:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 1851
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedSet;->backingSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->hashCode()I

    move-result v3

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    return v0

    .line 1852
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
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
    .line 1758
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedSet;->mutex:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 1759
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedSet;->backingSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    return v0

    .line 1760
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
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
    .line 1772
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$SynchronizedSet;->backingSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 1798
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedSet;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1799
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedSet;->backingSet:Ljava/util/Set;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    return v0

    .line 1800
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
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
    .line 1826
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedSet;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1827
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedSet;->backingSet:Ljava/util/Set;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    return v0

    .line 1828
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
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
    .line 1819
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedSet;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1820
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedSet;->backingSet:Ljava/util/Set;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    return v0

    .line 1821
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
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
    .line 1751
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedSet;->mutex:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 1752
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedSet;->backingSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    return v0

    .line 1753
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
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
    .line 1777
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedSet;->mutex:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 1778
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedSet;->backingSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    return-object v0

    .line 1779
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
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
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .prologue
    .line 1784
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    move-object v1, p1

    .local v1, "a":[Ljava/lang/Object;, "[TE;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedSet;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1785
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedSet;->backingSet:Ljava/util/Set;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v5, v2

    monitor-exit v5

    move-object v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
    return-object v0

    .line 1786
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedSet;, "Ljavafx/collections/FXCollections$SynchronizedSet<TE;>;"
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

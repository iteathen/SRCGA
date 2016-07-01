.class Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;
.super Ljava/lang/Object;
.source "FXCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/FXCollections$CheckedObservableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckedEntrySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2282
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    move-object v1, p1

    .local v1, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    move-object v2, p2

    .local v2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2283
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->s:Ljava/util/Set;

    .line 2284
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    .line 2285
    return-void
.end method

.method private batchRemove(Ljava/util/Collection;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    .line 2431
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move v2, p2

    .local v2, "complement":Z
    const/4 v5, 0x0

    move v3, v5

    .line 2432
    .local v3, "modified":Z
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v4, v5

    .line 2433
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    :goto_0
    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2434
    move-object v5, v1

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    move v6, v2

    if-eq v5, v6, :cond_0

    .line 2435
    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 2436
    const/4 v5, 0x1

    move v3, v5

    goto :goto_0

    .line 2439
    :cond_1
    move v5, v3

    move v0, v5

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    return v0
.end method

.method static checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry",
            "<TK;TV;TT;>;"
        }
    .end annotation

    .prologue
    .line 2455
    move-object v0, p0

    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    move-object v1, p1

    .local v1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v2, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    move-object v0, v2

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 2278
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    invoke-virtual {v2, v3}, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    return v0
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 2314
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    move-object v1, p1

    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 2319
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    move-object v1, p1

    .local v1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 2309
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2310
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 2392
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Ljava/util/Map$Entry;

    if-nez v3, :cond_0

    .line 2393
    const/4 v3, 0x0

    move v0, v3

    .line 2395
    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    :goto_0
    return v0

    .line 2394
    .restart local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    :cond_0
    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    move-object v2, v3

    .line 2395
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->s:Ljava/util/Set;

    move-object v4, v2

    instance-of v4, v4, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;

    if-eqz v4, :cond_1

    move-object v4, v2

    :goto_1
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    :cond_1
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    .line 2396
    invoke-static {v4, v5}, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;

    move-result-object v4

    goto :goto_1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2406
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 2407
    .local v3, "o":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2408
    const/4 v4, 0x0

    move v0, v4

    .line 2409
    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    .end local v3    # "o":Ljava/lang/Object;
    :goto_1
    return v0

    .line 2407
    .restart local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 2409
    .end local v3    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 2444
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_0

    .line 2445
    const/4 v3, 0x1

    move v0, v3

    .line 2450
    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    :goto_0
    return v0

    .line 2446
    .restart local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/util/Set;

    if-nez v3, :cond_1

    .line 2447
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 2448
    :cond_1
    move-object v3, v1

    check-cast v3, Ljava/util/Set;

    move-object v2, v3

    .line 2449
    .local v2, "that":Ljava/util/Set;, "Ljava/util/Set<*>;"
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    move-object v3, v0

    move-object v4, v2

    .line 2450
    invoke-virtual {v3, v4}, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 2304
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 2294
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2324
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    .line 2325
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    move-object v2, v3

    .line 2327
    .local v2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v3, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;-><init>(Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;Ljava/util/Iterator;Ljava/lang/Class;)V

    move-object v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 2414
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Ljava/util/Map$Entry;

    if-nez v2, :cond_0

    .line 2415
    const/4 v2, 0x0

    move v0, v2

    .line 2416
    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->s:Ljava/util/Set;

    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    check-cast v5, Ljava/util/Map$Entry;

    invoke-direct {v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2422
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->batchRemove(Ljava/util/Collection;Z)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2427
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->batchRemove(Ljava/util/Collection;Z)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    return v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 2289
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 8

    .prologue
    .line 2348
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 2354
    .local v1, "source":[Ljava/lang/Object;
    const-class v4, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;

    move-object v5, v1

    .line 2355
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 2354
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    :goto_0
    move-object v2, v4

    .line 2358
    .local v2, "dest":[Ljava/lang/Object;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 2359
    move-object v4, v2

    move v5, v3

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    check-cast v6, Ljava/util/Map$Entry;

    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    invoke-static {v6, v7}, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2358
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2354
    .end local v2    # "dest":[Ljava/lang/Object;
    .end local v3    # "i":I
    :cond_0
    move-object v4, v1

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/Object;

    goto :goto_0

    .line 2361
    .restart local v2    # "dest":[Ljava/lang/Object;
    .restart local v3    # "i":I
    :cond_1
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 2370
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    move-object v1, p1

    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->s:Ljava/util/Set;

    move-object v5, v1

    array-length v5, v5

    if-nez v5, :cond_0

    move-object v5, v1

    :goto_0
    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 2372
    .local v2, "arr":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 2373
    move-object v4, v2

    move v5, v3

    move-object v6, v2

    move v7, v3

    aget-object v6, v6, v7

    check-cast v6, Ljava/util/Map$Entry;

    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    invoke-static {v6, v7}, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2372
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2370
    .end local v2    # "arr":[Ljava/lang/Object;, "[TT;"
    .end local v3    # "i":I
    :cond_0
    move-object v5, v1

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 2375
    .restart local v2    # "arr":[Ljava/lang/Object;, "[TT;"
    .restart local v3    # "i":I
    :cond_1
    move-object v4, v2

    array-length v4, v4

    move-object v5, v1

    array-length v5, v5

    if-le v4, v5, :cond_2

    .line 2376
    move-object v4, v2

    move-object v0, v4

    .line 2381
    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    :goto_2
    return-object v0

    .line 2378
    .restart local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    :cond_2
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v2

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2379
    move-object v4, v1

    array-length v4, v4

    move-object v5, v2

    array-length v5, v5

    if-le v4, v5, :cond_3

    .line 2380
    move-object v4, v1

    move-object v5, v2

    array-length v5, v5

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 2381
    :cond_3
    move-object v4, v1

    move-object v0, v4

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2299
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet<TK;TV;>;"
    return-object v0
.end method

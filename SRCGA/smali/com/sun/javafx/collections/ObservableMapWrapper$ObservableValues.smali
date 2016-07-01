.class Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;
.super Ljava/lang/Object;
.source "ObservableMapWrapper.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/ObservableMapWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObservableValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/collections/ObservableMapWrapper;)V
    .locals 4

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;->this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/collections/ObservableMapWrapper;Lcom/sun/javafx/collections/ObservableMapWrapper$1;)V
    .locals 5

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/collections/ObservableMapWrapper;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/collections/ObservableMapWrapper$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;-><init>(Lcom/sun/javafx/collections/ObservableMapWrapper;)V

    return-void
.end method

.method private removeRetain(Ljava/util/Collection;Z)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    .line 457
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    move-object/from16 v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move/from16 v2, p2

    .local v2, "remove":Z
    const/4 v8, 0x0

    move v3, v8

    .line 458
    .local v3, "removed":Z
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;->this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

    invoke-static {v8}, Lcom/sun/javafx/collections/ObservableMapWrapper;->access$300(Lcom/sun/javafx/collections/ObservableMapWrapper;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 459
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v5, v8

    .line 460
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    move v8, v2

    move-object v9, v1

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-ne v8, v9, :cond_0

    .line 461
    const/4 v8, 0x1

    move v3, v8

    .line 462
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    .line 463
    .local v6, "key":Ljava/lang/Object;, "TK;"
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 464
    .local v7, "value":Ljava/lang/Object;, "TV;"
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 465
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;->this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

    new-instance v9, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;->this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

    move-object v12, v6

    move-object v13, v7

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-direct/range {v10 .. v16}, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;-><init>(Lcom/sun/javafx/collections/ObservableMapWrapper;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    invoke-virtual {v8, v9}, Lcom/sun/javafx/collections/ObservableMapWrapper;->callObservers(Ljavafx/collections/MapChangeListener$Change;)V

    .line 467
    .end local v6    # "key":Ljava/lang/Object;, "TK;"
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    goto :goto_0

    .line 468
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    move v8, v3

    move v0, v8

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TV;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;->this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

    invoke-virtual {v1}, Lcom/sun/javafx/collections/ObservableMapWrapper;->clear()V

    .line 479
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;->this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

    invoke-static {v2}, Lcom/sun/javafx/collections/ObservableMapWrapper;->access$300(Lcom/sun/javafx/collections/ObservableMapWrapper;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;->this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

    invoke-static {v2}, Lcom/sun/javafx/collections/ObservableMapWrapper;->access$300(Lcom/sun/javafx/collections/ObservableMapWrapper;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;->this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

    invoke-static {v2}, Lcom/sun/javafx/collections/ObservableMapWrapper;->access$300(Lcom/sun/javafx/collections/ObservableMapWrapper;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;->this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

    invoke-static {v1}, Lcom/sun/javafx/collections/ObservableMapWrapper;->access$300(Lcom/sun/javafx/collections/ObservableMapWrapper;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;->this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

    invoke-static {v1}, Lcom/sun/javafx/collections/ObservableMapWrapper;->access$300(Lcom/sun/javafx/collections/ObservableMapWrapper;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    new-instance v1, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues$1;-><init>(Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 433
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 435
    const/4 v3, 0x1

    move v0, v3

    .line 438
    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    :cond_1
    const/4 v3, 0x0

    move v0, v3

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
    .line 453
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;->removeRetain(Ljava/util/Collection;Z)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
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
    .line 473
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;->removeRetain(Ljava/util/Collection;Z)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    return v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;->this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

    invoke-static {v1}, Lcom/sun/javafx/collections/ObservableMapWrapper;->access$300(Lcom/sun/javafx/collections/ObservableMapWrapper;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;->this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

    invoke-static {v1}, Lcom/sun/javafx/collections/ObservableMapWrapper;->access$300(Lcom/sun/javafx/collections/ObservableMapWrapper;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    move-object v1, p1

    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;->this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

    invoke-static {v2}, Lcom/sun/javafx/collections/ObservableMapWrapper;->access$300(Lcom/sun/javafx/collections/ObservableMapWrapper;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;->this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

    invoke-static {v1}, Lcom/sun/javafx/collections/ObservableMapWrapper;->access$300(Lcom/sun/javafx/collections/ObservableMapWrapper;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableValues;"
    return-object v0
.end method

.class Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;
.super Ljava/lang/Object;
.source "BidirectionalContentBinding.java"

# interfaces
.implements Ljavafx/collections/MapChangeListener;
.implements Ljavafx/beans/WeakListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/BidirectionalContentBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapContentBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/collections/MapChangeListener",
        "<TK;TV;>;",
        "Ljavafx/beans/WeakListener;"
    }
.end annotation


# instance fields
.field private final propertyRef1:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final propertyRef2:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private updating:Z


# direct methods
.method public constructor <init>(Ljavafx/collections/ObservableMap;Ljavafx/collections/ObservableMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding<TK;TV;>;"
    move-object v1, p1

    .local v1, "list1":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, p2

    .local v2, "list2":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 285
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->updating:Z

    .line 289
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    .line 290
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    .line 291
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding<TK;TV;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v7, v0

    move-object v8, v1

    if-ne v7, v8, :cond_0

    .line 338
    const/4 v7, 0x1

    move v0, v7

    .line 362
    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding<TK;TV;>;"
    :goto_0
    return v0

    .line 341
    .restart local v0    # "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding<TK;TV;>;"
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    .line 342
    .local v2, "propertyA1":Ljava/lang/Object;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 343
    .local v3, "propertyA2":Ljava/lang/Object;
    move-object v7, v2

    if-eqz v7, :cond_1

    move-object v7, v3

    if-nez v7, :cond_2

    .line 344
    :cond_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 347
    :cond_2
    move-object v7, v1

    instance-of v7, v7, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;

    if-eqz v7, :cond_6

    .line 348
    move-object v7, v1

    check-cast v7, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;

    move-object v4, v7

    .line 349
    .local v4, "otherBinding":Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;
    move-object v7, v4

    iget-object v7, v7, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 350
    .local v5, "propertyB1":Ljava/lang/Object;
    move-object v7, v4

    iget-object v7, v7, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 351
    .local v6, "propertyB2":Ljava/lang/Object;
    move-object v7, v5

    if-eqz v7, :cond_3

    move-object v7, v6

    if-nez v7, :cond_4

    .line 352
    :cond_3
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 355
    :cond_4
    move-object v7, v2

    move-object v8, v5

    if-ne v7, v8, :cond_5

    move-object v7, v3

    move-object v8, v6

    if-ne v7, v8, :cond_5

    .line 356
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 358
    :cond_5
    move-object v7, v2

    move-object v8, v6

    if-ne v7, v8, :cond_6

    move-object v7, v3

    move-object v8, v5

    if-ne v7, v8, :cond_6

    .line 359
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 362
    .end local v4    # "otherBinding":Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;
    .end local v5    # "propertyB1":Ljava/lang/Object;
    .end local v6    # "propertyB2":Ljava/lang/Object;
    :cond_6
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding<TK;TV;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableMap;

    move-object v1, v5

    .line 329
    .local v1, "map1":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableMap;

    move-object v2, v5

    .line 330
    .local v2, "map2":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    move v3, v5

    .line 331
    .local v3, "hc1":I
    move-object v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    move v4, v5

    .line 332
    .local v4, "hc2":I
    move v5, v3

    move v6, v4

    mul-int/2addr v5, v6

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding<TK;TV;>;"
    return v0

    .line 330
    .end local v3    # "hc1":I
    .end local v4    # "hc2":I
    .restart local v0    # "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding<TK;TV;>;"
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_0

    .line 331
    .restart local v3    # "hc1":I
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_1
.end method

.method public onChanged(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding<TK;TV;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<+TK;+TV;>;"
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->updating:Z

    if-nez v6, :cond_2

    .line 296
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/collections/ObservableMap;

    move-object v2, v6

    .line 297
    .local v2, "map1":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/collections/ObservableMap;

    move-object v3, v6

    .line 298
    .local v3, "map2":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v3

    if-nez v6, :cond_3

    .line 299
    :cond_0
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 300
    move-object v6, v2

    move-object v7, v0

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableMap;->removeListener(Ljavafx/collections/MapChangeListener;)V

    .line 302
    :cond_1
    move-object v6, v3

    if-eqz v6, :cond_2

    .line 303
    move-object v6, v3

    move-object v7, v0

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableMap;->removeListener(Ljavafx/collections/MapChangeListener;)V

    .line 319
    .end local v2    # "map1":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    .end local v3    # "map2":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    :cond_2
    :goto_0
    return-void

    .line 307
    .restart local v2    # "map1":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    .restart local v3    # "map2":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    :cond_3
    move-object v6, v0

    const/4 v7, 0x1

    :try_start_0
    iput-boolean v7, v6, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->updating:Z

    .line 308
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/MapChangeListener$Change;->getMap()Ljavafx/collections/ObservableMap;

    move-result-object v7

    if-ne v6, v7, :cond_4

    move-object v6, v3

    :goto_1
    move-object v4, v6

    .line 309
    .local v4, "dest":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/MapChangeListener$Change;->wasRemoved()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 310
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 315
    :goto_2
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->updating:Z

    .line 316
    goto :goto_0

    .line 308
    .end local v4    # "dest":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_4
    move-object v6, v2

    goto :goto_1

    .line 312
    .restart local v4    # "dest":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_5
    move-object v6, v4

    move-object v7, v1

    :try_start_1
    invoke-virtual {v7}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/MapChangeListener$Change;->getValueAdded()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_2

    .line 315
    .end local v4    # "dest":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->updating:Z

    move-object v6, v5

    throw v6
.end method

.method public wasGarbageCollected()Z
    .locals 2

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding<TK;TV;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding<TK;TV;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

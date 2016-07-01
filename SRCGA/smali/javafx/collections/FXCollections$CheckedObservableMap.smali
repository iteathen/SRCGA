.class Ljavafx/collections/FXCollections$CheckedObservableMap;
.super Ljava/util/AbstractMap;
.source "FXCollections.java"

# interfaces
.implements Ljavafx/collections/ObservableMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/FXCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedObservableMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljavafx/collections/ObservableMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final backingMap:Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableMap",
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

.field private final keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final listener:Ljavafx/collections/MapChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/MapChangeListener",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavafx/collections/ObservableMap;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2137
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, p2

    .local v2, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    move-object v3, p3

    .local v3, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/util/AbstractMap;-><init>()V

    .line 2259
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/collections/FXCollections$CheckedObservableMap;->entrySet:Ljava/util/Set;

    .line 2138
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/collections/FXCollections$CheckedObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    .line 2139
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/collections/FXCollections$CheckedObservableMap;->keyType:Ljava/lang/Class;

    .line 2140
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/collections/FXCollections$CheckedObservableMap;->valueType:Ljava/lang/Class;

    .line 2141
    move-object v4, v0

    move-object v5, v0

    invoke-static {v5}, Ljavafx/collections/FXCollections$CheckedObservableMap$$Lambda$1;->lambdaFactory$(Ljavafx/collections/FXCollections$CheckedObservableMap;)Ljavafx/collections/MapChangeListener;

    move-result-object v5

    iput-object v5, v4, Ljavafx/collections/FXCollections$CheckedObservableMap;->listener:Ljavafx/collections/MapChangeListener;

    .line 2144
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$CheckedObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    new-instance v5, Ljavafx/collections/WeakMapChangeListener;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/FXCollections$CheckedObservableMap;->listener:Ljavafx/collections/MapChangeListener;

    invoke-direct {v6, v7}, Ljavafx/collections/WeakMapChangeListener;-><init>(Ljavafx/collections/MapChangeListener;)V

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 2145
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/collections/FXCollections$CheckedObservableMap;Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$CheckedObservableMap;->lambda$new$56(Ljavafx/collections/MapChangeListener$Change;)V

    return-void
.end method

.method private callObservers(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2148
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<+TK;+TV;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/collections/MapListenerHelper;->fireValueChangedEvent(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/collections/MapChangeListener$Change;)V

    .line 2149
    return-void
.end method

.method private synthetic lambda$new$56(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 8

    .prologue
    .line 2142
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/MapChangeListener$Change;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/collections/MapAdapterChange;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/collections/MapAdapterChange;-><init>(Ljavafx/collections/ObservableMap;Ljavafx/collections/MapChangeListener$Change;)V

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$CheckedObservableMap;->callObservers(Ljavafx/collections/MapChangeListener$Change;)V

    .line 2143
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 2167
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/MapListenerHelper;->addListener(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/MapListenerHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/FXCollections$CheckedObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    .line 2168
    return-void
.end method

.method public addListener(Ljavafx/collections/MapChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2177
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/MapListenerHelper;->addListener(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/collections/MapListenerHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/FXCollections$CheckedObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    .line 2178
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 2246
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    invoke-interface {v1}, Ljavafx/collections/ObservableMap;->clear()V

    .line 2247
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 2197
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 2202
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 7

    .prologue
    .line 2263
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableMap;->entrySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 2264
    move-object v1, v0

    new-instance v2, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$CheckedObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    invoke-interface {v4}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/FXCollections$CheckedObservableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;-><init>(Ljava/util/Set;Ljava/lang/Class;)V

    iput-object v2, v1, Ljavafx/collections/FXCollections$CheckedObservableMap;->entrySet:Ljava/util/Set;

    .line 2265
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableMap;->entrySet:Ljava/util/Set;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 2270
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    move-object v3, v0

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    return v0

    .restart local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 2207
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 2275
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 2192
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    invoke-interface {v1}, Ljavafx/collections/ObservableMap;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2251
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    invoke-interface {v1}, Ljavafx/collections/ObservableMap;->keySet()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2212
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TV;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/collections/FXCollections$CheckedObservableMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2213
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 17

    .prologue
    .line 2229
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object/from16 v1, p1

    .local v1, "t":Ljava/util/Map;
    move-object v11, v1

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v11

    move-object v2, v11

    .line 2230
    .local v2, "entries":[Ljava/lang/Object;
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v2

    array-length v13, v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v11

    .line 2232
    .local v3, "checked":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<TK;TV;>;>;"
    move-object v11, v2

    move-object v4, v11

    move-object v11, v4

    array-length v11, v11

    move v5, v11

    const/4 v11, 0x0

    move v6, v11

    :goto_0
    move v11, v6

    move v12, v5

    if-ge v11, v12, :cond_0

    move-object v11, v4

    move v12, v6

    aget-object v11, v11, v12

    move-object v7, v11

    .line 2233
    .local v7, "o":Ljava/lang/Object;
    move-object v11, v7

    check-cast v11, Ljava/util/Map$Entry;

    move-object v8, v11

    .line 2234
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    move-object v11, v8

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    .line 2235
    .local v9, "k":Ljava/lang/Object;
    move-object v11, v8

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    move-object v10, v11

    .line 2236
    .local v10, "v":Ljava/lang/Object;
    move-object v11, v0

    move-object v12, v9

    move-object v13, v10

    invoke-virtual {v11, v12, v13}, Ljavafx/collections/FXCollections$CheckedObservableMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2237
    move-object v11, v3

    new-instance v12, Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v9

    move-object v15, v10

    invoke-direct {v13, v14, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 2232
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2240
    .end local v7    # "o":Ljava/lang/Object;
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v9    # "k":Ljava/lang/Object;
    .end local v10    # "v":Ljava/lang/Object;
    :cond_0
    move-object v11, v3

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v4, v11

    :goto_1
    move-object v11, v4

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v11, v4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    move-object v5, v11

    .line 2241
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    move-object v11, v0

    iget-object v11, v11, Ljavafx/collections/FXCollections$CheckedObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    move-object v12, v5

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v5

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_1

    .line 2242
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 2218
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    return-object v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 2172
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/MapListenerHelper;->removeListener(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/MapListenerHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/FXCollections$CheckedObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    .line 2173
    return-void
.end method

.method public removeListener(Ljavafx/collections/MapChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2182
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/MapListenerHelper;->removeListener(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/collections/MapListenerHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/FXCollections$CheckedObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    .line 2183
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 2187
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    invoke-interface {v1}, Ljavafx/collections/ObservableMap;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    return v0
.end method

.method typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 2152
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableMap;->keyType:Ljava/lang/Class;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2153
    new-instance v3, Ljava/lang/ClassCastException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to insert "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    .line 2154
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " key into map with key type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/FXCollections$CheckedObservableMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2158
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableMap;->valueType:Ljava/lang/Class;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2159
    new-instance v3, Ljava/lang/ClassCastException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to insert "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    .line 2160
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value into map with value type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/FXCollections$CheckedObservableMap;->valueType:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2163
    :cond_1
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2256
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    invoke-interface {v1}, Ljavafx/collections/ObservableMap;->values()Ljava/util/Collection;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap;, "Ljavafx/collections/FXCollections$CheckedObservableMap<TK;TV;>;"
    return-object v0
.end method

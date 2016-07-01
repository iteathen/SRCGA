.class public Lcom/sun/javafx/collections/ObservableMapWrapper;
.super Ljava/lang/Object;
.source "ObservableMapWrapper.java"

# interfaces
.implements Ljavafx/collections/ObservableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntrySet;,
        Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;,
        Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;,
        Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet;,
        Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;
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
        "Ljavafx/collections/ObservableMap",
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

.field private entrySet:Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/collections/ObservableMapWrapper",
            "<TK;TV;>.ObservableEntrySet;"
        }
    .end annotation
.end field

.field private keySet:Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/collections/ObservableMapWrapper",
            "<TK;TV;>.ObservableKeySet;"
        }
    .end annotation
.end field

.field private listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/collections/MapListenerHelper",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private values:Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/collections/ObservableMapWrapper",
            "<TK;TV;>.ObservableValues;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 50
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableMapWrapper;->backingMap:Ljava/util/Map;

    .line 51
    return-void
.end method

.method static synthetic access$300(Lcom/sun/javafx/collections/ObservableMapWrapper;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ObservableMapWrapper;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper;->backingMap:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/collections/ObservableMapWrapper;
    return-object v0
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableMapWrapper;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/MapListenerHelper;->addListener(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/MapListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableMapWrapper;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    .line 121
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
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "observer":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableMapWrapper;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/MapListenerHelper;->addListener(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/collections/MapListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableMapWrapper;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    .line 131
    return-void
.end method

.method protected callObservers(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<TK;TV;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableMapWrapper;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/collections/MapListenerHelper;->fireValueChangedEvent(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/collections/MapChangeListener$Change;)V

    .line 116
    return-void
.end method

.method public clear()V
    .locals 15

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ObservableMapWrapper;->backingMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v5

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 199
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v2, v5

    .line 200
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 201
    .local v3, "key":Ljava/lang/Object;, "TK;"
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 202
    .local v4, "val":Ljava/lang/Object;, "TV;"
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 203
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;-><init>(Lcom/sun/javafx/collections/ObservableMapWrapper;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    invoke-virtual {v5, v6}, Lcom/sun/javafx/collections/ObservableMapWrapper;->callObservers(Ljavafx/collections/MapChangeListener$Change;)V

    .line 204
    goto :goto_0

    .line 205
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "val":Ljava/lang/Object;, "TV;"
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableMapWrapper;->backingMap:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableMapWrapper;->backingMap:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 7
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
    .line 225
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper;->entrySet:Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntrySet;

    if-nez v1, :cond_0

    .line 226
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntrySet;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntrySet;-><init>(Lcom/sun/javafx/collections/ObservableMapWrapper;Lcom/sun/javafx/collections/ObservableMapWrapper$1;)V

    iput-object v2, v1, Lcom/sun/javafx/collections/ObservableMapWrapper;->entrySet:Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntrySet;

    .line 228
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper;->entrySet:Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntrySet;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableMapWrapper;->backingMap:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    return v0
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
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableMapWrapper;->backingMap:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper;->keySet:Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet;

    if-nez v1, :cond_0

    .line 210
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet;-><init>(Lcom/sun/javafx/collections/ObservableMapWrapper;Lcom/sun/javafx/collections/ObservableMapWrapper$1;)V

    iput-object v2, v1, Lcom/sun/javafx/collections/ObservableMapWrapper;->keySet:Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet;

    .line 212
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper;->keySet:Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object/from16 v2, p2

    .local v2, "value":Ljava/lang/Object;, "TV;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableMapWrapper;->backingMap:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 167
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableMapWrapper;->backingMap:Ljava/util/Map;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 168
    .local v3, "ret":Ljava/lang/Object;, "TV;"
    move-object v4, v3

    if-nez v4, :cond_0

    move-object v4, v2

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 169
    :cond_1
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    move-object v10, v2

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-direct/range {v6 .. v12}, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;-><init>(Lcom/sun/javafx/collections/ObservableMapWrapper;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    invoke-virtual {v4, v5}, Lcom/sun/javafx/collections/ObservableMapWrapper;->callObservers(Ljavafx/collections/MapChangeListener$Change;)V

    .line 175
    :cond_2
    :goto_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    return-object v0

    .line 172
    .end local v3    # "ret":Ljava/lang/Object;, "TV;"
    .restart local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableMapWrapper;->backingMap:Ljava/util/Map;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 173
    .restart local v3    # "ret":Ljava/lang/Object;, "TV;"
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    move-object v10, v2

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;-><init>(Lcom/sun/javafx/collections/ObservableMapWrapper;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    invoke-virtual {v4, v5}, Lcom/sun/javafx/collections/ObservableMapWrapper;->callObservers(Ljavafx/collections/MapChangeListener$Change;)V

    goto :goto_0
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
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v3, v4

    .line 192
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    move-object v4, v0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/collections/ObservableMapWrapper;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 193
    goto :goto_0

    .line 194
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableMapWrapper;->backingMap:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    const/4 v3, 0x0

    move-object v0, v3

    .line 186
    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    :goto_0
    return-object v0

    .line 184
    .restart local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableMapWrapper;->backingMap:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 185
    .local v2, "ret":Ljava/lang/Object;, "TV;"
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct/range {v5 .. v11}, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;-><init>(Lcom/sun/javafx/collections/ObservableMapWrapper;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    invoke-virtual {v3, v4}, Lcom/sun/javafx/collections/ObservableMapWrapper;->callObservers(Ljavafx/collections/MapChangeListener$Change;)V

    .line 186
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableMapWrapper;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/MapListenerHelper;->removeListener(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/MapListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableMapWrapper;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    .line 126
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
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "observer":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableMapWrapper;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/MapListenerHelper;->removeListener(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/collections/MapListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableMapWrapper;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    .line 136
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper;->backingMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper;->values:Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;

    if-nez v1, :cond_0

    .line 218
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;-><init>(Lcom/sun/javafx/collections/ObservableMapWrapper;Lcom/sun/javafx/collections/ObservableMapWrapper$1;)V

    iput-object v2, v1, Lcom/sun/javafx/collections/ObservableMapWrapper;->values:Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;

    .line 220
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper;->values:Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableValues;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>;"
    return-object v0
.end method

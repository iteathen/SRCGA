.class public Lcom/sun/javafx/collections/UnmodifiableObservableMap;
.super Ljava/util/AbstractMap;
.source "UnmodifiableObservableMap.java"

# interfaces
.implements Ljavafx/collections/ObservableMap;


# annotations
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

.field private entryset:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private keyset:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/collections/MapListenerHelper",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/collections/ObservableMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/util/AbstractMap;-><init>()V

    .line 57
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    .line 58
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/collections/UnmodifiableObservableMap$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/collections/UnmodifiableObservableMap;)Ljavafx/collections/MapChangeListener;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->listener:Ljavafx/collections/MapChangeListener;

    .line 61
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    new-instance v3, Ljavafx/collections/WeakMapChangeListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->listener:Ljavafx/collections/MapChangeListener;

    invoke-direct {v4, v5}, Ljavafx/collections/WeakMapChangeListener;-><init>(Ljavafx/collections/MapChangeListener;)V

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 62
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/collections/UnmodifiableObservableMap;Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->lambda$new$18(Ljavafx/collections/MapChangeListener$Change;)V

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
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<+TK;+TV;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/collections/MapListenerHelper;->fireValueChangedEvent(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/collections/MapChangeListener$Change;)V

    .line 66
    return-void
.end method

.method private synthetic lambda$new$18(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 8

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
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

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->callObservers(Ljavafx/collections/MapChangeListener$Change;)V

    .line 60
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/MapListenerHelper;->addListener(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/MapListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    .line 71
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
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "observer":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/MapListenerHelper;->addListener(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/collections/MapListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    .line 81
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
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
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->entryset:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 132
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->entryset:Ljava/util/Set;

    .line 134
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->entryset:Ljava/util/Set;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    return-object v0
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
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    invoke-interface {v1}, Ljavafx/collections/ObservableMap;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->keyset:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 116
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    invoke-interface {v2}, Ljavafx/collections/ObservableMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->keyset:Ljava/util/Set;

    .line 118
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->keyset:Ljava/util/Set;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    return-object v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/MapListenerHelper;->removeListener(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/MapListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    .line 76
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
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "observer":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/MapListenerHelper;->removeListener(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/collections/MapListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    .line 86
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    invoke-interface {v1}, Ljavafx/collections/ObservableMap;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->values:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 124
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    invoke-interface {v2}, Ljavafx/collections/ObservableMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->values:Ljava/util/Collection;

    .line 126
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/UnmodifiableObservableMap;->values:Ljava/util/Collection;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/UnmodifiableObservableMap;, "Lcom/sun/javafx/collections/UnmodifiableObservableMap<TK;TV;>;"
    return-object v0
.end method

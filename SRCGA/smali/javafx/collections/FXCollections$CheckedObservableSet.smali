.class Ljavafx/collections/FXCollections$CheckedObservableSet;
.super Ljava/util/AbstractSet;
.source "FXCollections.java"

# interfaces
.implements Ljavafx/collections/ObservableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/FXCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedObservableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljavafx/collections/ObservableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final backingSet:Ljavafx/collections/ObservableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableSet",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final listener:Ljavafx/collections/SetChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/SetChangeListener",
            "<TE;>;"
        }
    .end annotation
.end field

.field private listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavafx/collections/ObservableSet;Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1910
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v2, p2

    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/util/AbstractSet;-><init>()V

    .line 1911
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    .line 1912
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1914
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/collections/FXCollections$CheckedObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    .line 1915
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/collections/FXCollections$CheckedObservableSet;->type:Ljava/lang/Class;

    .line 1916
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljavafx/collections/FXCollections$CheckedObservableSet$$Lambda$1;->lambdaFactory$(Ljavafx/collections/FXCollections$CheckedObservableSet;)Ljavafx/collections/SetChangeListener;

    move-result-object v4

    iput-object v4, v3, Ljavafx/collections/FXCollections$CheckedObservableSet;->listener:Ljavafx/collections/SetChangeListener;

    .line 1919
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    new-instance v4, Ljavafx/collections/WeakSetChangeListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/FXCollections$CheckedObservableSet;->listener:Ljavafx/collections/SetChangeListener;

    invoke-direct {v5, v6}, Ljavafx/collections/WeakSetChangeListener;-><init>(Ljavafx/collections/SetChangeListener;)V

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->addListener(Ljavafx/collections/SetChangeListener;)V

    .line 1920
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/collections/FXCollections$CheckedObservableSet;Ljavafx/collections/SetChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$CheckedObservableSet;->lambda$new$55(Ljavafx/collections/SetChangeListener$Change;)V

    return-void
.end method

.method private callObservers(Ljavafx/collections/SetChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1923
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/SetChangeListener$Change;, "Ljavafx/collections/SetChangeListener$Change<+TE;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/collections/SetListenerHelper;->fireValueChangedEvent(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/collections/SetChangeListener$Change;)V

    .line 1924
    return-void
.end method

.method private synthetic lambda$new$55(Ljavafx/collections/SetChangeListener$Change;)V
    .locals 8

    .prologue
    .line 1917
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/SetChangeListener$Change;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/collections/SetAdapterChange;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/collections/SetAdapterChange;-><init>(Ljavafx/collections/ObservableSet;Ljavafx/collections/SetChangeListener$Change;)V

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$CheckedObservableSet;->callObservers(Ljavafx/collections/SetChangeListener$Change;)V

    .line 1918
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 1981
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/collections/FXCollections$CheckedObservableSet;->typeCheck(Ljava/lang/Object;)V

    .line 1982
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableSet;->add(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 1998
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v4, 0x0

    move-object v2, v4

    .line 2000
    .local v2, "a":[Ljava/lang/Object;, "[TE;"
    move-object v4, v1

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/FXCollections$CheckedObservableSet;->type:Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .line 2003
    .line 2005
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$CheckedObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    move-object v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableSet;->addAll(Ljava/util/Collection;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    return v0

    .line 2001
    .restart local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 2002
    .local v3, "e":Ljava/lang/ArrayStoreException;
    new-instance v4, Ljava/lang/ClassCastException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/ClassCastException;-><init>()V

    throw v4
.end method

.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 1936
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/SetListenerHelper;->addListener(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/SetListenerHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/FXCollections$CheckedObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    .line 1937
    return-void
.end method

.method public addListener(Ljavafx/collections/SetChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1946
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/SetListenerHelper;->addListener(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/collections/SetListenerHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/FXCollections$CheckedObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    .line 1947
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 2020
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    invoke-interface {v1}, Ljavafx/collections/ObservableSet;->clear()V

    .line 2021
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 1966
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
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
    .line 1992
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableSet;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 2025
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    move-object v3, v0

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 2030
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 1961
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    invoke-interface {v1}, Ljavafx/collections/ObservableSet;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2035
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    invoke-interface {v2}, Ljavafx/collections/ObservableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    .line 2037
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    new-instance v2, Ljavafx/collections/FXCollections$CheckedObservableSet$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/collections/FXCollections$CheckedObservableSet$1;-><init>(Ljavafx/collections/FXCollections$CheckedObservableSet;Ljava/util/Iterator;)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 1987
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2015
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableSet;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    return v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 1941
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/SetListenerHelper;->removeListener(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/SetListenerHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/FXCollections$CheckedObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    .line 1942
    return-void
.end method

.method public removeListener(Ljavafx/collections/SetChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1951
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/SetListenerHelper;->removeListener(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/collections/SetListenerHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/FXCollections$CheckedObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    .line 1952
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2010
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableSet;->retainAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    return v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 1956
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    invoke-interface {v1}, Ljavafx/collections/ObservableSet;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1971
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    invoke-interface {v1}, Ljavafx/collections/ObservableSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
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
    .line 1976
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    return-object v0
.end method

.method typeCheck(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 1927
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet;, "Ljavafx/collections/FXCollections$CheckedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableSet;->type:Ljava/lang/Class;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1928
    new-instance v2, Ljava/lang/ClassCastException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to insert "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    .line 1929
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " element into collection with element type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/FXCollections$CheckedObservableSet;->type:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1932
    :cond_0
    return-void
.end method

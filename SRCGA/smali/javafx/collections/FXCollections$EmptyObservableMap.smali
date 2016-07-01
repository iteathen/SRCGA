.class Ljavafx/collections/FXCollections$EmptyObservableMap;
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
    name = "EmptyObservableMap"
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


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 2059
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/AbstractMap;-><init>()V

    .line 2060
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 0
    .param p1, "listener"    # Ljavafx/beans/InvalidationListener;

    .prologue
    .line 2064
    .local p0, "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    return-void
.end method

.method public addListener(Ljavafx/collections/MapChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2072
    .local p0, "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    .local p1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 2090
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 2095
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
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
    .line 2115
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableSet()Ljavafx/collections/ObservableSet;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 2120
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Ljava/util/Map;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    return v0

    .restart local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 2100
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 2125
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 2085
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
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
    .line 2105
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableSet()Ljavafx/collections/ObservableSet;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    return-object v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 0
    .param p1, "listener"    # Ljavafx/beans/InvalidationListener;

    .prologue
    .line 2068
    .local p0, "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    return-void
.end method

.method public removeListener(Ljavafx/collections/MapChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2076
    .local p0, "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    .local p1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 2080
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    return v0
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
    .line 2110
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableSet()Ljavafx/collections/ObservableSet;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableMap;, "Ljavafx/collections/FXCollections$EmptyObservableMap<TK;TV;>;"
    return-object v0
.end method

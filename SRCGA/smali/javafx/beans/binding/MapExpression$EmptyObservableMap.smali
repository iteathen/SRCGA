.class Ljavafx/beans/binding/MapExpression$EmptyObservableMap;
.super Ljava/util/AbstractMap;
.source "MapExpression.java"

# interfaces
.implements Ljavafx/collections/ObservableMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/binding/MapExpression;
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
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression$EmptyObservableMap;, "Ljavafx/beans/binding/MapExpression$EmptyObservableMap<TK;TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/MapExpression$1;)V
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression$EmptyObservableMap;, "Ljavafx/beans/binding/MapExpression$EmptyObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/MapExpression$1;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/binding/MapExpression$EmptyObservableMap;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 0
    .param p1, "listener"    # Ljavafx/beans/InvalidationListener;

    .prologue
    .line 82
    .local p0, "this":Ljavafx/beans/binding/MapExpression$EmptyObservableMap;, "Ljavafx/beans/binding/MapExpression$EmptyObservableMap<TK;TV;>;"
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
    .line 72
    .local p0, "this":Ljavafx/beans/binding/MapExpression$EmptyObservableMap;, "Ljavafx/beans/binding/MapExpression$EmptyObservableMap<TK;TV;>;"
    .local p1, "mapChangeListener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    return-void
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
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression$EmptyObservableMap;, "Ljavafx/beans/binding/MapExpression$EmptyObservableMap<TK;TV;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/MapExpression$EmptyObservableMap;, "Ljavafx/beans/binding/MapExpression$EmptyObservableMap<TK;TV;>;"
    return-object v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 0
    .param p1, "listener"    # Ljavafx/beans/InvalidationListener;

    .prologue
    .line 87
    .local p0, "this":Ljavafx/beans/binding/MapExpression$EmptyObservableMap;, "Ljavafx/beans/binding/MapExpression$EmptyObservableMap<TK;TV;>;"
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
    .line 77
    .local p0, "this":Ljavafx/beans/binding/MapExpression$EmptyObservableMap;, "Ljavafx/beans/binding/MapExpression$EmptyObservableMap<TK;TV;>;"
    .local p1, "mapChangeListener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    return-void
.end method

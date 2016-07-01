.class public Lcom/sun/javafx/collections/MapAdapterChange;
.super Ljavafx/collections/MapChangeListener$Change;
.source "MapAdapterChange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/collections/MapChangeListener$Change",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final change:Ljavafx/collections/MapChangeListener$Change;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/collections/ObservableMap;Ljavafx/collections/MapChangeListener$Change;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MapAdapterChange;, "Lcom/sun/javafx/collections/MapAdapterChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, p2

    .local v2, "change":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<+TK;+TV;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/collections/MapChangeListener$Change;-><init>(Ljavafx/collections/ObservableMap;)V

    .line 37
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/collections/MapAdapterChange;->change:Ljavafx/collections/MapChangeListener$Change;

    .line 38
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MapAdapterChange;, "Lcom/sun/javafx/collections/MapAdapterChange<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/MapAdapterChange;->change:Ljavafx/collections/MapChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/MapAdapterChange;, "Lcom/sun/javafx/collections/MapAdapterChange<TK;TV;>;"
    return-object v0
.end method

.method public getValueAdded()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MapAdapterChange;, "Lcom/sun/javafx/collections/MapAdapterChange<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/MapAdapterChange;->change:Ljavafx/collections/MapChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/MapChangeListener$Change;->getValueAdded()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/MapAdapterChange;, "Lcom/sun/javafx/collections/MapAdapterChange<TK;TV;>;"
    return-object v0
.end method

.method public getValueRemoved()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MapAdapterChange;, "Lcom/sun/javafx/collections/MapAdapterChange<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/MapAdapterChange;->change:Ljavafx/collections/MapChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/MapChangeListener$Change;->getValueRemoved()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/MapAdapterChange;, "Lcom/sun/javafx/collections/MapAdapterChange<TK;TV;>;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MapAdapterChange;, "Lcom/sun/javafx/collections/MapAdapterChange<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/MapAdapterChange;->change:Ljavafx/collections/MapChangeListener$Change;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/MapAdapterChange;, "Lcom/sun/javafx/collections/MapAdapterChange<TK;TV;>;"
    return-object v0
.end method

.method public wasAdded()Z
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MapAdapterChange;, "Lcom/sun/javafx/collections/MapAdapterChange<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/MapAdapterChange;->change:Ljavafx/collections/MapChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/MapChangeListener$Change;->wasAdded()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/MapAdapterChange;, "Lcom/sun/javafx/collections/MapAdapterChange<TK;TV;>;"
    return v0
.end method

.method public wasRemoved()Z
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MapAdapterChange;, "Lcom/sun/javafx/collections/MapAdapterChange<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/MapAdapterChange;->change:Ljavafx/collections/MapChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/MapChangeListener$Change;->wasRemoved()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/MapAdapterChange;, "Lcom/sun/javafx/collections/MapAdapterChange<TK;TV;>;"
    return v0
.end method

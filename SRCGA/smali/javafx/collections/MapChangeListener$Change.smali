.class public abstract Ljavafx/collections/MapChangeListener$Change;
.super Ljava/lang/Object;
.source "MapChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/MapChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Change"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final map:Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/collections/ObservableMap;)V
    .locals 4
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

    .local v0, "this":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<TK;TV;>;"
    move-object v1, p1

    .local v1, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/collections/MapChangeListener$Change;->map:Ljavafx/collections/ObservableMap;

    .line 58
    return-void
.end method


# virtual methods
.method public abstract getKey()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public getMap()Ljavafx/collections/ObservableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/MapChangeListener$Change;->map:Ljavafx/collections/ObservableMap;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<TK;TV;>;"
    return-object v0
.end method

.method public abstract getValueAdded()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public abstract getValueRemoved()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public abstract wasAdded()Z
.end method

.method public abstract wasRemoved()Z
.end method

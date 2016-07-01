.class public interface abstract Ljavafx/collections/ObservableMap;
.super Ljava/lang/Object;
.source "ObservableMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljavafx/beans/Observable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljavafx/beans/Observable;"
    }
.end annotation


# virtual methods
.method public abstract addListener(Ljavafx/collections/MapChangeListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation
.end method

.method public abstract removeListener(Ljavafx/collections/MapChangeListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation
.end method

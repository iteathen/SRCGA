.class public interface abstract Ljavafx/collections/ObservableList;
.super Ljava/lang/Object;
.source "ObservableList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljavafx/beans/Observable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljavafx/beans/Observable;"
    }
.end annotation


# virtual methods
.method public varargs abstract addAll([Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation
.end method

.method public abstract addListener(Ljavafx/collections/ListChangeListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation
.end method

.method public abstract remove(II)V
.end method

.method public varargs abstract removeAll([Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation
.end method

.method public abstract removeListener(Ljavafx/collections/ListChangeListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation
.end method

.method public varargs abstract retainAll([Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation
.end method

.method public abstract setAll(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation
.end method

.method public varargs abstract setAll([Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation
.end method

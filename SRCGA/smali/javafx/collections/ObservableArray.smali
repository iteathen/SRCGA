.class public interface abstract Ljavafx/collections/ObservableArray;
.super Ljava/lang/Object;
.source "ObservableArray.java"

# interfaces
.implements Ljavafx/beans/Observable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljavafx/collections/ObservableArray",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/beans/Observable;"
    }
.end annotation


# virtual methods
.method public abstract addListener(Ljavafx/collections/ArrayChangeListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ArrayChangeListener",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract ensureCapacity(I)V
.end method

.method public abstract removeListener(Ljavafx/collections/ArrayChangeListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ArrayChangeListener",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract resize(I)V
.end method

.method public abstract size()I
.end method

.method public abstract trimToSize()V
.end method

.class public interface abstract Ljavafx/collections/ObservableSet;
.super Ljava/lang/Object;
.source "ObservableSet.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljavafx/beans/Observable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<TE;>;",
        "Ljavafx/beans/Observable;"
    }
.end annotation


# virtual methods
.method public abstract addListener(Ljavafx/collections/SetChangeListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation
.end method

.method public abstract removeListener(Ljavafx/collections/SetChangeListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation
.end method

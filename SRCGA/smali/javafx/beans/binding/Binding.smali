.class public interface abstract Ljavafx/beans/binding/Binding;
.super Ljava/lang/Object;
.source "Binding.java"

# interfaces
.implements Ljavafx/beans/value/ObservableValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/ObservableValue",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getDependencies()Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract invalidate()V
.end method

.method public abstract isValid()Z
.end method

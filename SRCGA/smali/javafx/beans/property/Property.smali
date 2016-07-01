.class public interface abstract Ljavafx/beans/property/Property;
.super Ljava/lang/Object;
.source "Property.java"

# interfaces
.implements Ljavafx/beans/property/ReadOnlyProperty;
.implements Ljavafx/beans/value/WritableValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/beans/property/ReadOnlyProperty",
        "<TT;>;",
        "Ljavafx/beans/value/WritableValue",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract bind(Ljavafx/beans/value/ObservableValue;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+TT;>;)V"
        }
    .end annotation
.end method

.method public abstract bindBidirectional(Ljavafx/beans/property/Property;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract isBound()Z
.end method

.method public abstract unbind()V
.end method

.method public abstract unbindBidirectional(Ljavafx/beans/property/Property;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<TT;>;)V"
        }
    .end annotation
.end method

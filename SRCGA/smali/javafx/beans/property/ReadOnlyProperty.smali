.class public interface abstract Ljavafx/beans/property/ReadOnlyProperty;
.super Ljava/lang/Object;
.source "ReadOnlyProperty.java"

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
.method public abstract getBean()Ljava/lang/Object;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

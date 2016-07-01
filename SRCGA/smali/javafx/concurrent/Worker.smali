.class public interface abstract Ljavafx/concurrent/Worker;
.super Ljava/lang/Object;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/concurrent/Worker$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract cancel()Z
.end method

.method public abstract exceptionProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getException()Ljava/lang/Throwable;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getProgress()D
.end method

.method public abstract getState()Ljavafx/concurrent/Worker$State;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTotalWork()D
.end method

.method public abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public abstract getWorkDone()D
.end method

.method public abstract isRunning()Z
.end method

.method public abstract messageProperty()Ljavafx/beans/property/ReadOnlyStringProperty;
.end method

.method public abstract progressProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
.end method

.method public abstract runningProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
.end method

.method public abstract stateProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/concurrent/Worker$State;",
            ">;"
        }
    .end annotation
.end method

.method public abstract titleProperty()Ljavafx/beans/property/ReadOnlyStringProperty;
.end method

.method public abstract totalWorkProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
.end method

.method public abstract valueProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<TV;>;"
        }
    .end annotation
.end method

.method public abstract workDoneProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
.end method

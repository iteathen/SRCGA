.class public interface abstract Ljavafx/event/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"

# interfaces
.implements Ljava/util/EventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljavafx/event/Event;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/EventListener;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract handle(Ljavafx/event/Event;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

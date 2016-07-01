.class public interface abstract Lcom/sun/javafx/event/CompositeEventTarget;
.super Ljava/lang/Object;
.source "CompositeEventTarget.java"

# interfaces
.implements Ljavafx/event/EventTarget;


# virtual methods
.method public abstract containsTarget(Ljavafx/event/EventTarget;)Z
.end method

.method public abstract getTargets()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavafx/event/EventTarget;",
            ">;"
        }
    .end annotation
.end method

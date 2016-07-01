.class public interface abstract Lcom/sun/javafx/event/EventDispatchTree;
.super Ljava/lang/Object;
.source "EventDispatchTree.java"

# interfaces
.implements Ljavafx/event/EventDispatchChain;


# virtual methods
.method public abstract append(Ljavafx/event/EventDispatcher;)Lcom/sun/javafx/event/EventDispatchTree;
.end method

.method public abstract createTree()Lcom/sun/javafx/event/EventDispatchTree;
.end method

.method public abstract mergeTree(Lcom/sun/javafx/event/EventDispatchTree;)Lcom/sun/javafx/event/EventDispatchTree;
.end method

.method public abstract prepend(Ljavafx/event/EventDispatcher;)Lcom/sun/javafx/event/EventDispatchTree;
.end method

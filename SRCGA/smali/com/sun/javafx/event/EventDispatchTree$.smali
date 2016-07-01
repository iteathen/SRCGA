.class public Lcom/sun/javafx/event/EventDispatchTree$;
.super Ljava/lang/Object;
.source "EventDispatchTree.java"

# interfaces
.implements Ljavafx/event/EventDispatchChain;


# direct methods
.method public static bridge synthetic append(Lcom/sun/javafx/event/EventDispatchTree;Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchTree;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/event/EventDispatchTree;->append(Ljavafx/event/EventDispatcher;)Lcom/sun/javafx/event/EventDispatchTree;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/event/EventDispatchTree;
    return-object v0
.end method

.method public static bridge synthetic prepend(Lcom/sun/javafx/event/EventDispatchTree;Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchTree;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/event/EventDispatchTree;->prepend(Ljavafx/event/EventDispatcher;)Lcom/sun/javafx/event/EventDispatchTree;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/event/EventDispatchTree;
    return-object v0
.end method

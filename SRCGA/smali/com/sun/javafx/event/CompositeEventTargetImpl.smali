.class public Lcom/sun/javafx/event/CompositeEventTargetImpl;
.super Ljava/lang/Object;
.source "CompositeEventTargetImpl.java"

# interfaces
.implements Lcom/sun/javafx/event/CompositeEventTarget;


# instance fields
.field private final eventTargets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavafx/event/EventTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Ljavafx/event/EventTarget;)V
    .locals 7

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventTargetImpl;
    move-object v1, p1

    .local v1, "eventTargets":[Ljavafx/event/EventTarget;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v3, Ljava/util/HashSet;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    array-length v5, v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    move-object v2, v3

    .line 41
    .local v2, "mutableSet":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/event/EventTarget;>;"
    move-object v3, v2

    move-object v4, v1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 43
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/event/CompositeEventTargetImpl;->eventTargets:Ljava/util/Set;

    .line 44
    return-void
.end method


# virtual methods
.method public buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;
    .locals 9

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventTargetImpl;
    move-object v1, p1

    .local v1, "tail":Ljavafx/event/EventDispatchChain;
    move-object v6, v1

    check-cast v6, Lcom/sun/javafx/event/EventDispatchTree;

    move-object v2, v6

    .line 61
    .local v2, "eventDispatchTree":Lcom/sun/javafx/event/EventDispatchTree;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/event/CompositeEventTargetImpl;->eventTargets:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/event/EventTarget;

    move-object v4, v6

    .line 62
    .local v4, "eventTarget":Ljavafx/event/EventTarget;
    move-object v6, v2

    .line 63
    invoke-interface {v6}, Lcom/sun/javafx/event/EventDispatchTree;->createTree()Lcom/sun/javafx/event/EventDispatchTree;

    move-result-object v6

    move-object v5, v6

    .line 64
    .local v5, "targetDispatchTree":Lcom/sun/javafx/event/EventDispatchTree;
    move-object v6, v2

    move-object v7, v4

    move-object v8, v5

    .line 65
    invoke-interface {v7, v8}, Ljavafx/event/EventTarget;->buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/event/EventDispatchTree;

    .line 64
    invoke-interface {v6, v7}, Lcom/sun/javafx/event/EventDispatchTree;->mergeTree(Lcom/sun/javafx/event/EventDispatchTree;)Lcom/sun/javafx/event/EventDispatchTree;

    move-result-object v6

    move-object v2, v6

    .line 67
    goto :goto_0

    .line 69
    .end local v4    # "eventTarget":Ljavafx/event/EventTarget;
    .end local v5    # "targetDispatchTree":Lcom/sun/javafx/event/EventDispatchTree;
    :cond_0
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/event/CompositeEventTargetImpl;
    return-object v0
.end method

.method public containsTarget(Ljavafx/event/EventTarget;)Z
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventTargetImpl;
    move-object v1, p1

    .local v1, "target":Ljavafx/event/EventTarget;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/CompositeEventTargetImpl;->eventTargets:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/event/CompositeEventTargetImpl;
    return v0
.end method

.method public getTargets()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavafx/event/EventTarget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventTargetImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/event/CompositeEventTargetImpl;->eventTargets:Ljava/util/Set;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/event/CompositeEventTargetImpl;
    return-object v0
.end method

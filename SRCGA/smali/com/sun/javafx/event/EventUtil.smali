.class public final Lcom/sun/javafx/event/EventUtil;
.super Ljava/lang/Object;
.source "EventUtil.java"


# static fields
.field private static final eventDispatchChain:Lcom/sun/javafx/event/EventDispatchChainImpl;

.field private static final eventDispatchChainInUse:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcom/sun/javafx/event/EventDispatchChainImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/event/EventDispatchChainImpl;-><init>()V

    sput-object v0, Lcom/sun/javafx/event/EventUtil;->eventDispatchChain:Lcom/sun/javafx/event/EventDispatchChainImpl;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/sun/javafx/event/EventUtil;->eventDispatchChainInUse:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs fireEvent(Ljavafx/event/Event;[Ljavafx/event/EventTarget;)Ljavafx/event/Event;
    .locals 7

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "event":Ljavafx/event/Event;
    move-object v1, p1

    .local v1, "eventTargets":[Ljavafx/event/EventTarget;
    new-instance v2, Lcom/sun/javafx/event/EventDispatchTreeImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lcom/sun/javafx/event/EventDispatchTreeImpl;-><init>()V

    new-instance v3, Lcom/sun/javafx/event/CompositeEventTargetImpl;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/event/CompositeEventTargetImpl;-><init>([Ljavafx/event/EventTarget;)V

    move-object v4, v0

    invoke-static {v2, v3, v4}, Lcom/sun/javafx/event/EventUtil;->fireEventImpl(Ljavafx/event/EventDispatchChain;Ljavafx/event/EventTarget;Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "event":Ljavafx/event/Event;
    return-object v0
.end method

.method public static fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)Ljavafx/event/Event;
    .locals 8

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "eventTarget":Ljavafx/event/EventTarget;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    move-object v5, v0

    if-eq v4, v5, :cond_0

    .line 43
    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->getSource()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Ljavafx/event/Event;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;

    move-result-object v4

    move-object v1, v4

    .line 46
    :cond_0
    sget-object v4, Lcom/sun/javafx/event/EventUtil;->eventDispatchChainInUse:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    new-instance v4, Lcom/sun/javafx/event/EventDispatchChainImpl;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/sun/javafx/event/EventDispatchChainImpl;-><init>()V

    move-object v5, v0

    move-object v6, v1

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/event/EventUtil;->fireEventImpl(Ljavafx/event/EventDispatchChain;Ljavafx/event/EventTarget;Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v4

    move-object v0, v4

    .line 59
    .end local v0    # "eventTarget":Ljavafx/event/EventTarget;
    :goto_0
    return-object v0

    .line 54
    .restart local v0    # "eventTarget":Ljavafx/event/EventTarget;
    :cond_1
    :try_start_0
    sget-object v4, Lcom/sun/javafx/event/EventUtil;->eventDispatchChain:Lcom/sun/javafx/event/EventDispatchChainImpl;

    move-object v5, v0

    move-object v6, v1

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/event/EventUtil;->fireEventImpl(Ljavafx/event/EventDispatchChain;Ljavafx/event/EventTarget;Ljavafx/event/Event;)Ljavafx/event/Event;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v2, v4

    .line 58
    sget-object v4, Lcom/sun/javafx/event/EventUtil;->eventDispatchChain:Lcom/sun/javafx/event/EventDispatchChainImpl;

    invoke-virtual {v4}, Lcom/sun/javafx/event/EventDispatchChainImpl;->reset()V

    .line 59
    sget-object v4, Lcom/sun/javafx/event/EventUtil;->eventDispatchChainInUse:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object v4, v2

    move-object v0, v4

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v4

    move-object v3, v4

    sget-object v4, Lcom/sun/javafx/event/EventUtil;->eventDispatchChain:Lcom/sun/javafx/event/EventDispatchChainImpl;

    invoke-virtual {v4}, Lcom/sun/javafx/event/EventDispatchChainImpl;->reset()V

    .line 59
    sget-object v4, Lcom/sun/javafx/event/EventUtil;->eventDispatchChainInUse:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object v4, v3

    throw v4
.end method

.method private static fireEventImpl(Ljavafx/event/EventDispatchChain;Ljavafx/event/EventTarget;Ljavafx/event/Event;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "eventDispatchChain":Ljavafx/event/EventDispatchChain;
    move-object v1, p1

    .local v1, "eventTarget":Ljavafx/event/EventTarget;
    move-object v2, p2

    .local v2, "event":Ljavafx/event/Event;
    move-object v4, v1

    move-object v5, v0

    .line 73
    invoke-interface {v4, v5}, Ljavafx/event/EventTarget;->buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;

    move-result-object v4

    move-object v3, v4

    .line 74
    .local v3, "targetDispatchChain":Ljavafx/event/EventDispatchChain;
    move-object v4, v3

    move-object v5, v2

    invoke-interface {v4, v5}, Ljavafx/event/EventDispatchChain;->dispatchEvent(Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "eventDispatchChain":Ljavafx/event/EventDispatchChain;
    return-object v0
.end method

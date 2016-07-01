.class public Lcom/sun/javafx/event/EventRedirector;
.super Lcom/sun/javafx/event/BasicEventDispatcher;
.source "EventRedirector.java"


# instance fields
.field private final eventDispatchChain:Lcom/sun/javafx/event/EventDispatchChainImpl;

.field private final eventDispatchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/event/EventDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final eventSource:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventRedirector;
    move-object v1, p1

    .local v1, "eventSource":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/event/BasicEventDispatcher;-><init>()V

    .line 69
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/event/EventRedirector;->eventDispatchers:Ljava/util/List;

    .line 70
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/event/EventDispatchChainImpl;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/javafx/event/EventDispatchChainImpl;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/event/EventRedirector;->eventDispatchChain:Lcom/sun/javafx/event/EventDispatchChainImpl;

    .line 71
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/event/EventRedirector;->eventSource:Ljava/lang/Object;

    .line 72
    return-void
.end method

.method private redirectEvent(Ljavafx/event/Event;)V
    .locals 11

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventRedirector;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/event/EventRedirector;->eventDispatchers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 117
    move-object v5, v1

    .line 118
    invoke-virtual {v5}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v5

    sget-object v6, Lcom/sun/javafx/event/RedirectedEvent;->REDIRECTED:Ljavafx/event/EventType;

    if-ne v5, v6, :cond_0

    move-object v5, v1

    check-cast v5, Lcom/sun/javafx/event/RedirectedEvent;

    :goto_0
    move-object v2, v5

    .line 122
    .local v2, "redirectedEvent":Lcom/sun/javafx/event/RedirectedEvent;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/event/EventRedirector;->eventDispatchers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/event/EventDispatcher;

    move-object v4, v5

    .line 123
    .local v4, "eventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/event/EventRedirector;->eventDispatchChain:Lcom/sun/javafx/event/EventDispatchChainImpl;

    invoke-virtual {v5}, Lcom/sun/javafx/event/EventDispatchChainImpl;->reset()V

    .line 124
    move-object v5, v4

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/event/EventRedirector;->eventDispatchChain:Lcom/sun/javafx/event/EventDispatchChainImpl;

    invoke-interface {v5, v6, v7}, Ljavafx/event/EventDispatcher;->dispatchEvent(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v5

    .line 126
    goto :goto_1

    .line 118
    .end local v2    # "redirectedEvent":Lcom/sun/javafx/event/RedirectedEvent;
    .end local v4    # "eventDispatcher":Ljavafx/event/EventDispatcher;
    :cond_0
    new-instance v5, Lcom/sun/javafx/event/RedirectedEvent;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/event/EventRedirector;->eventSource:Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/event/RedirectedEvent;-><init>(Ljavafx/event/Event;Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    goto :goto_0

    .line 128
    :cond_1
    return-void
.end method


# virtual methods
.method public final addEventDispatcher(Ljavafx/event/EventDispatcher;)V
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventRedirector;
    move-object v1, p1

    .local v1, "eventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/EventRedirector;->eventDispatchers:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 88
    return-void
.end method

.method public final dispatchCapturingEvent(Ljavafx/event/Event;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventRedirector;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v3

    move-object v2, v3

    .line 99
    .local v2, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<*>;"
    move-object v3, v2

    sget-object v4, Lcom/sun/javafx/event/DirectEvent;->DIRECT:Ljavafx/event/EventType;

    if-ne v3, v4, :cond_1

    .line 101
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/event/DirectEvent;

    invoke-virtual {v3}, Lcom/sun/javafx/event/DirectEvent;->getOriginalEvent()Ljavafx/event/Event;

    move-result-object v3

    move-object v1, v3

    .line 112
    :cond_0
    :goto_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/event/EventRedirector;
    return-object v0

    .line 103
    .restart local v0    # "this":Lcom/sun/javafx/event/EventRedirector;
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/event/EventRedirector;->redirectEvent(Ljavafx/event/Event;)V

    .line 105
    move-object v3, v2

    sget-object v4, Lcom/sun/javafx/event/RedirectedEvent;->REDIRECTED:Ljavafx/event/EventType;

    if-ne v3, v4, :cond_0

    .line 106
    move-object v3, v0

    move-object v4, v1

    .line 107
    invoke-virtual {v4}, Ljavafx/event/Event;->getSource()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lcom/sun/javafx/event/RedirectedEvent;

    .line 108
    invoke-virtual {v5}, Lcom/sun/javafx/event/RedirectedEvent;->getOriginalEvent()Ljavafx/event/Event;

    move-result-object v5

    .line 106
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventRedirector;->handleRedirectedEvent(Ljava/lang/Object;Ljavafx/event/Event;)V

    goto :goto_0
.end method

.method protected handleRedirectedEvent(Ljava/lang/Object;Ljavafx/event/Event;)V
    .locals 0
    .param p1, "eventSource"    # Ljava/lang/Object;
    .param p2, "event"    # Ljavafx/event/Event;

    .prologue
    .line 83
    return-void
.end method

.method public final removeEventDispatcher(Ljavafx/event/EventDispatcher;)V
    .locals 4

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventRedirector;
    move-object v1, p1

    .local v1, "eventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/EventRedirector;->eventDispatchers:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 93
    return-void
.end method

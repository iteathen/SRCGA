.class public Lcom/sun/javafx/event/EventHandlerManager;
.super Lcom/sun/javafx/event/BasicEventDispatcher;
.source "EventHandlerManager.java"


# instance fields
.field private final eventHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/event/Event;",
            ">;",
            "Lcom/sun/javafx/event/CompositeEventHandler",
            "<+",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field private final eventSource:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventHandlerManager;
    move-object v1, p1

    .local v1, "eventSource":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/event/BasicEventDispatcher;-><init>()V

    .line 47
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/event/EventHandlerManager;->eventSource:Ljava/lang/Object;

    .line 49
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/event/EventHandlerManager;->eventHandlerMap:Ljava/util/Map;

    .line 52
    return-void
.end method

.method private createGetCompositeEventHandler(Ljavafx/event/EventType;)Lcom/sun/javafx/event/CompositeEventHandler;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;)",
            "Lcom/sun/javafx/event/CompositeEventHandler",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventHandlerManager;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/event/EventHandlerManager;->eventHandlerMap:Ljava/util/Map;

    move-object v4, v1

    .line 201
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/event/CompositeEventHandler;

    move-object v2, v3

    .line 202
    .local v2, "compositeEventHandler":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 203
    new-instance v3, Lcom/sun/javafx/event/CompositeEventHandler;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/event/CompositeEventHandler;-><init>()V

    move-object v2, v3

    .line 204
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/event/EventHandlerManager;->eventHandlerMap:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 207
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/event/EventHandlerManager;
    return-object v0
.end method

.method private dispatchBubblingEvent(Ljavafx/event/EventType;Ljavafx/event/Event;)Ljavafx/event/Event;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/event/Event;",
            ">;",
            "Ljavafx/event/Event;",
            ")",
            "Ljavafx/event/Event;"
        }
    .end annotation

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventHandlerManager;
    move-object v1, p1

    .local v1, "handlerType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/event/Event;>;"
    move-object v2, p2

    .local v2, "event":Ljavafx/event/Event;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/event/EventHandlerManager;->eventHandlerMap:Ljava/util/Map;

    move-object v5, v1

    .line 232
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/event/CompositeEventHandler;

    move-object v3, v4

    .line 234
    .local v3, "compositeEventHandler":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<+Ljavafx/event/Event;>;"
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 237
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/event/EventHandlerManager;->eventSource:Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->fixEventSource(Ljavafx/event/Event;Ljava/lang/Object;)Ljavafx/event/Event;

    move-result-object v4

    move-object v2, v4

    .line 238
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler;->dispatchBubblingEvent(Ljavafx/event/Event;)V

    .line 241
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/event/EventHandlerManager;
    return-object v0
.end method

.method private dispatchCapturingEvent(Ljavafx/event/EventType;Ljavafx/event/Event;)Ljavafx/event/Event;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/event/Event;",
            ">;",
            "Ljavafx/event/Event;",
            ")",
            "Ljavafx/event/Event;"
        }
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventHandlerManager;
    move-object v1, p1

    .local v1, "handlerType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/event/Event;>;"
    move-object v2, p2

    .local v2, "event":Ljavafx/event/Event;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/event/EventHandlerManager;->eventHandlerMap:Ljava/util/Map;

    move-object v5, v1

    .line 217
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/event/CompositeEventHandler;

    move-object v3, v4

    .line 219
    .local v3, "compositeEventHandler":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<+Ljavafx/event/Event;>;"
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 222
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/event/EventHandlerManager;->eventSource:Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->fixEventSource(Ljavafx/event/Event;Ljava/lang/Object;)Ljavafx/event/Event;

    move-result-object v4

    move-object v2, v4

    .line 223
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler;->dispatchCapturingEvent(Ljavafx/event/Event;)V

    .line 226
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/event/EventHandlerManager;
    return-object v0
.end method

.method private static fixEventSource(Ljavafx/event/Event;Ljava/lang/Object;)Ljavafx/event/Event;
    .locals 5

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "event":Ljavafx/event/Event;
    move-object v1, p1

    .local v1, "eventSource":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/event/Event;->getSource()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    .line 247
    invoke-virtual {v4}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/event/Event;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "event":Ljavafx/event/Event;
    return-object v0

    .restart local v0    # "event":Ljavafx/event/Event;
    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method private static validateEventFilter(Ljavafx/event/EventHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "eventFilter":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<*>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 267
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Event filter must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_0
    return-void
.end method

.method private static validateEventHandler(Ljavafx/event/EventHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<*>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 260
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Event handler must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_0
    return-void
.end method

.method private static validateEventType(Ljavafx/event/EventType;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<*>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 253
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Event type must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_0
    return-void
.end method


# virtual methods
.method public final addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventHandlerManager;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventFilter":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/event/EventHandlerManager;->validateEventType(Ljavafx/event/EventType;)V

    .line 108
    move-object v4, v2

    invoke-static {v4}, Lcom/sun/javafx/event/EventHandlerManager;->validateEventFilter(Ljavafx/event/EventHandler;)V

    .line 110
    move-object v4, v0

    move-object v5, v1

    .line 111
    invoke-direct {v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->createGetCompositeEventHandler(Ljavafx/event/EventType;)Lcom/sun/javafx/event/CompositeEventHandler;

    move-result-object v4

    move-object v3, v4

    .line 113
    .local v3, "compositeEventHandler":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler;->addEventFilter(Ljavafx/event/EventHandler;)V

    .line 114
    return-void
.end method

.method public final addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventHandlerManager;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/event/EventHandlerManager;->validateEventType(Ljavafx/event/EventType;)V

    .line 66
    move-object v4, v2

    invoke-static {v4}, Lcom/sun/javafx/event/EventHandlerManager;->validateEventHandler(Ljavafx/event/EventHandler;)V

    .line 68
    move-object v4, v0

    move-object v5, v1

    .line 69
    invoke-direct {v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->createGetCompositeEventHandler(Ljavafx/event/EventType;)Lcom/sun/javafx/event/CompositeEventHandler;

    move-result-object v4

    move-object v3, v4

    .line 71
    .local v3, "compositeEventHandler":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler;->addEventHandler(Ljavafx/event/EventHandler;)V

    .line 72
    return-void
.end method

.method public final dispatchBubblingEvent(Ljavafx/event/Event;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventHandlerManager;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v3

    move-object v2, v3

    .line 191
    .local v2, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/event/Event;>;"
    :cond_0
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->dispatchBubblingEvent(Ljavafx/event/EventType;Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v3

    move-object v1, v3

    .line 192
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/event/EventType;->getSuperType()Ljavafx/event/EventType;

    move-result-object v3

    move-object v2, v3

    .line 193
    move-object v3, v2

    if-nez v3, :cond_0

    .line 195
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/event/EventHandlerManager;
    return-object v0
.end method

.method public final dispatchCapturingEvent(Ljavafx/event/Event;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventHandlerManager;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v3

    move-object v2, v3

    .line 180
    .local v2, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/event/Event;>;"
    :cond_0
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->dispatchCapturingEvent(Ljavafx/event/EventType;Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v3

    move-object v1, v3

    .line 181
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/event/EventType;->getSuperType()Ljavafx/event/EventType;

    move-result-object v3

    move-object v2, v3

    .line 182
    move-object v3, v2

    if-nez v3, :cond_0

    .line 184
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/event/EventHandlerManager;
    return-object v0
.end method

.method public final getEventHandler(Ljavafx/event/EventType;)Ljavafx/event/EventHandler;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;)",
            "Ljavafx/event/EventHandler",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventHandlerManager;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/event/EventHandlerManager;->eventHandlerMap:Ljava/util/Map;

    move-object v4, v1

    .line 169
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/event/CompositeEventHandler;

    move-object v2, v3

    .line 171
    .local v2, "compositeEventHandler":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 172
    invoke-virtual {v3}, Lcom/sun/javafx/event/CompositeEventHandler;->getEventHandler()Ljavafx/event/EventHandler;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/event/EventHandlerManager;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/event/EventHandlerManager;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected getEventSource()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventHandlerManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/event/EventHandlerManager;->eventSource:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/event/EventHandlerManager;
    return-object v0
.end method

.method public final removeEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventHandlerManager;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventFilter":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/event/EventHandlerManager;->validateEventType(Ljavafx/event/EventType;)V

    .line 128
    move-object v4, v2

    invoke-static {v4}, Lcom/sun/javafx/event/EventHandlerManager;->validateEventFilter(Ljavafx/event/EventHandler;)V

    .line 130
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/event/EventHandlerManager;->eventHandlerMap:Ljava/util/Map;

    move-object v5, v1

    .line 131
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/event/CompositeEventHandler;

    move-object v3, v4

    .line 133
    .local v3, "compositeEventHandler":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 134
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler;->removeEventFilter(Ljavafx/event/EventHandler;)V

    .line 136
    :cond_0
    return-void
.end method

.method public final removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventHandlerManager;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/event/EventHandlerManager;->validateEventType(Ljavafx/event/EventType;)V

    .line 86
    move-object v4, v2

    invoke-static {v4}, Lcom/sun/javafx/event/EventHandlerManager;->validateEventHandler(Ljavafx/event/EventHandler;)V

    .line 88
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/event/EventHandlerManager;->eventHandlerMap:Ljava/util/Map;

    move-object v5, v1

    .line 89
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/event/CompositeEventHandler;

    move-object v3, v4

    .line 91
    .local v3, "compositeEventHandler":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 92
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler;->removeEventHandler(Ljavafx/event/EventHandler;)V

    .line 94
    :cond_0
    return-void
.end method

.method public final setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventHandlerManager;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/event/EventHandlerManager;->validateEventType(Ljavafx/event/EventType;)V

    .line 152
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/event/EventHandlerManager;->eventHandlerMap:Ljava/util/Map;

    move-object v5, v1

    .line 153
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/event/CompositeEventHandler;

    move-object v3, v4

    .line 155
    .local v3, "compositeEventHandler":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v4, v3

    if-nez v4, :cond_1

    .line 156
    move-object v4, v2

    if-nez v4, :cond_0

    .line 157
    .line 164
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v4, Lcom/sun/javafx/event/CompositeEventHandler;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/sun/javafx/event/CompositeEventHandler;-><init>()V

    move-object v3, v4

    .line 160
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/event/EventHandlerManager;->eventHandlerMap:Ljava/util/Map;

    move-object v5, v1

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 163
    :cond_1
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler;->setEventHandler(Ljavafx/event/EventHandler;)V

    .line 164
    goto :goto_0
.end method

.class Ljavafx/concurrent/EventHelper;
.super Ljava/lang/Object;
.source "EventHelper.java"


# instance fields
.field private internalEventDispatcher:Lcom/sun/javafx/event/EventHandlerManager;

.field private final onCancelled:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onFailed:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onReady:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onRunning:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onScheduled:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onSucceeded:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final target:Ljavafx/event/EventTarget;


# direct methods
.method constructor <init>(Ljavafx/event/EventTarget;)V
    .locals 9

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, p1

    .local v1, "bean":Ljavafx/event/EventTarget;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 77
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/concurrent/EventHelper;->target:Ljavafx/event/EventTarget;

    .line 78
    move-object v2, v0

    new-instance v3, Ljavafx/concurrent/EventHelper$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    const-string v7, "onReady"

    invoke-direct {v4, v5, v6, v7}, Ljavafx/concurrent/EventHelper$1;-><init>(Ljavafx/concurrent/EventHelper;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/concurrent/EventHelper;->onReady:Ljavafx/beans/property/ObjectProperty;

    .line 84
    move-object v2, v0

    new-instance v3, Ljavafx/concurrent/EventHelper$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    const-string v7, "onScheduled"

    invoke-direct {v4, v5, v6, v7}, Ljavafx/concurrent/EventHelper$2;-><init>(Ljavafx/concurrent/EventHelper;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/concurrent/EventHelper;->onScheduled:Ljavafx/beans/property/ObjectProperty;

    .line 90
    move-object v2, v0

    new-instance v3, Ljavafx/concurrent/EventHelper$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    const-string v7, "onRunning"

    invoke-direct {v4, v5, v6, v7}, Ljavafx/concurrent/EventHelper$3;-><init>(Ljavafx/concurrent/EventHelper;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/concurrent/EventHelper;->onRunning:Ljavafx/beans/property/ObjectProperty;

    .line 96
    move-object v2, v0

    new-instance v3, Ljavafx/concurrent/EventHelper$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    const-string v7, "onSucceeded"

    invoke-direct {v4, v5, v6, v7}, Ljavafx/concurrent/EventHelper$4;-><init>(Ljavafx/concurrent/EventHelper;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/concurrent/EventHelper;->onSucceeded:Ljavafx/beans/property/ObjectProperty;

    .line 102
    move-object v2, v0

    new-instance v3, Ljavafx/concurrent/EventHelper$5;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    const-string v7, "onCancelled"

    invoke-direct {v4, v5, v6, v7}, Ljavafx/concurrent/EventHelper$5;-><init>(Ljavafx/concurrent/EventHelper;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/concurrent/EventHelper;->onCancelled:Ljavafx/beans/property/ObjectProperty;

    .line 108
    move-object v2, v0

    new-instance v3, Ljavafx/concurrent/EventHelper$6;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    const-string v7, "onFailed"

    invoke-direct {v4, v5, v6, v7}, Ljavafx/concurrent/EventHelper$6;-><init>(Ljavafx/concurrent/EventHelper;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/concurrent/EventHelper;->onFailed:Ljavafx/beans/property/ObjectProperty;

    .line 114
    return-void
.end method

.method private getInternalEventDispatcher()Lcom/sun/javafx/event/EventHandlerManager;
    .locals 6

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/EventHelper;->internalEventDispatcher:Lcom/sun/javafx/event/EventHandlerManager;

    if-nez v1, :cond_0

    .line 202
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/event/EventHandlerManager;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Ljavafx/concurrent/EventHelper;->target:Ljavafx/event/EventTarget;

    invoke-direct {v3, v4}, Lcom/sun/javafx/event/EventHandlerManager;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/concurrent/EventHelper;->internalEventDispatcher:Lcom/sun/javafx/event/EventHandlerManager;

    .line 204
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/EventHelper;->internalEventDispatcher:Lcom/sun/javafx/event/EventHandlerManager;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/EventHelper;
    return-object v0
.end method


# virtual methods
.method final addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
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
    .line 162
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventFilter":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/EventHelper;->getInternalEventDispatcher()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 163
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 164
    return-void
.end method

.method final addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
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
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/EventHelper;->getInternalEventDispatcher()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 131
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 132
    return-void
.end method

.method buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;
    .locals 4

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, p1

    .local v1, "tail":Ljavafx/event/EventDispatchChain;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/EventHelper;->internalEventDispatcher:Lcom/sun/javafx/event/EventHandlerManager;

    if-nez v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/concurrent/EventHelper;
    return-object v0

    .restart local v0    # "this":Ljavafx/concurrent/EventHelper;
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/EventHelper;->getInternalEventDispatcher()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/event/EventDispatchChain;->append(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v2

    goto :goto_0
.end method

.method final fireEvent(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/EventHelper;->target:Ljavafx/event/EventTarget;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 220
    return-void
.end method

.method final getOnCancelled()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/EventHelper;->onCancelled:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/EventHelper;
    return-object v0
.end method

.method final getOnFailed()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/EventHelper;->onFailed:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/EventHelper;
    return-object v0
.end method

.method final getOnReady()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/EventHelper;->onReady:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/EventHelper;
    return-object v0
.end method

.method final getOnRunning()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/EventHelper;->onRunning:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/EventHelper;
    return-object v0
.end method

.method final getOnScheduled()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/EventHelper;->onScheduled:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/EventHelper;
    return-object v0
.end method

.method final getOnSucceeded()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/EventHelper;->onSucceeded:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/EventHelper;
    return-object v0
.end method

.method final onCancelledProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/EventHelper;->onCancelled:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/EventHelper;
    return-object v0
.end method

.method final onFailedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/EventHelper;->onFailed:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/EventHelper;
    return-object v0
.end method

.method final onReadyProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/EventHelper;->onReady:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/EventHelper;
    return-object v0
.end method

.method final onRunningProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/EventHelper;->onRunning:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/EventHelper;
    return-object v0
.end method

.method final onScheduledProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/EventHelper;->onScheduled:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/EventHelper;
    return-object v0
.end method

.method final onSucceededProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/EventHelper;->onSucceeded:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/EventHelper;
    return-object v0
.end method

.method final removeEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
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
    .line 179
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventFilter":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/EventHelper;->getInternalEventDispatcher()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 180
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->removeEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 181
    return-void
.end method

.method final removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
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
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/EventHelper;->getInternalEventDispatcher()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 148
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 149
    return-void
.end method

.method final setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
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
    .line 196
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/EventHelper;->getInternalEventDispatcher()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 197
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 198
    return-void
.end method

.method final setOnCancelled(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/concurrent/WorkerStateEvent;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/EventHelper;->onCancelled:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method final setOnFailed(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/concurrent/WorkerStateEvent;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/EventHelper;->onFailed:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method final setOnReady(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/concurrent/WorkerStateEvent;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/EventHelper;->onReady:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method final setOnRunning(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/concurrent/WorkerStateEvent;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/EventHelper;->onRunning:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method final setOnScheduled(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/concurrent/WorkerStateEvent;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/EventHelper;->onScheduled:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method final setOnSucceeded(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/concurrent/WorkerStateEvent;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/EventHelper;->onSucceeded:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

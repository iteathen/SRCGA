.class public Lcom/sun/javafx/stage/WindowEventDispatcher;
.super Lcom/sun/javafx/event/CompositeEventDispatcher;
.source "WindowEventDispatcher.java"


# instance fields
.field private final eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

.field private final eventRedirector:Lcom/sun/javafx/event/EventRedirector;

.field private final windowCloseRequestHandler:Lcom/sun/javafx/stage/WindowCloseRequestHandler;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/event/EventRedirector;Lcom/sun/javafx/stage/WindowCloseRequestHandler;Lcom/sun/javafx/event/EventHandlerManager;)V
    .locals 6

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/WindowEventDispatcher;
    move-object v1, p1

    .local v1, "eventRedirector":Lcom/sun/javafx/event/EventRedirector;
    move-object v2, p2

    .local v2, "windowCloseRequestHandler":Lcom/sun/javafx/stage/WindowCloseRequestHandler;
    move-object v3, p3

    .local v3, "eventHandlerManager":Lcom/sun/javafx/event/EventHandlerManager;
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/event/CompositeEventDispatcher;-><init>()V

    .line 58
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/stage/WindowEventDispatcher;->eventRedirector:Lcom/sun/javafx/event/EventRedirector;

    .line 59
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/stage/WindowEventDispatcher;->windowCloseRequestHandler:Lcom/sun/javafx/stage/WindowCloseRequestHandler;

    .line 60
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/stage/WindowEventDispatcher;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    .line 62
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/event/EventRedirector;->insertNextDispatcher(Lcom/sun/javafx/event/BasicEventDispatcher;)V

    .line 63
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/stage/WindowCloseRequestHandler;->insertNextDispatcher(Lcom/sun/javafx/event/BasicEventDispatcher;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljavafx/stage/Window;)V
    .locals 9

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/WindowEventDispatcher;
    move-object v1, p1

    .local v1, "window":Ljavafx/stage/Window;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/event/EventRedirector;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/event/EventRedirector;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/sun/javafx/stage/WindowCloseRequestHandler;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/stage/WindowCloseRequestHandler;-><init>(Ljavafx/stage/Window;)V

    new-instance v5, Lcom/sun/javafx/event/EventHandlerManager;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/javafx/event/EventHandlerManager;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/stage/WindowEventDispatcher;-><init>(Lcom/sun/javafx/event/EventRedirector;Lcom/sun/javafx/stage/WindowCloseRequestHandler;Lcom/sun/javafx/event/EventHandlerManager;)V

    .line 52
    return-void
.end method


# virtual methods
.method public final getEventHandlerManager()Lcom/sun/javafx/event/EventHandlerManager;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/WindowEventDispatcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/stage/WindowEventDispatcher;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/stage/WindowEventDispatcher;
    return-object v0
.end method

.method public final getEventRedirector()Lcom/sun/javafx/event/EventRedirector;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/WindowEventDispatcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/stage/WindowEventDispatcher;->eventRedirector:Lcom/sun/javafx/event/EventRedirector;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/stage/WindowEventDispatcher;
    return-object v0
.end method

.method public getFirstDispatcher()Lcom/sun/javafx/event/BasicEventDispatcher;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/WindowEventDispatcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/stage/WindowEventDispatcher;->eventRedirector:Lcom/sun/javafx/event/EventRedirector;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/stage/WindowEventDispatcher;
    return-object v0
.end method

.method public getLastDispatcher()Lcom/sun/javafx/event/BasicEventDispatcher;
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/WindowEventDispatcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/stage/WindowEventDispatcher;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/stage/WindowEventDispatcher;
    return-object v0
.end method

.method public final getWindowCloseRequestHandler()Lcom/sun/javafx/stage/WindowCloseRequestHandler;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/WindowEventDispatcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/stage/WindowEventDispatcher;->windowCloseRequestHandler:Lcom/sun/javafx/stage/WindowCloseRequestHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/stage/WindowEventDispatcher;
    return-object v0
.end method

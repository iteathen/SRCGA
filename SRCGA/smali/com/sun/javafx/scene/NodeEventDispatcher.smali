.class public Lcom/sun/javafx/scene/NodeEventDispatcher;
.super Lcom/sun/javafx/event/CompositeEventDispatcher;
.source "NodeEventDispatcher.java"


# instance fields
.field private final enteredExitedHandler:Lcom/sun/javafx/scene/EnteredExitedHandler;

.field private final eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/EnteredExitedHandler;Lcom/sun/javafx/event/EventHandlerManager;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/NodeEventDispatcher;
    move-object v1, p1

    .local v1, "enteredExitedHandler":Lcom/sun/javafx/scene/EnteredExitedHandler;
    move-object v2, p2

    .local v2, "eventHandlerManager":Lcom/sun/javafx/event/EventHandlerManager;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/event/CompositeEventDispatcher;-><init>()V

    .line 49
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/NodeEventDispatcher;->enteredExitedHandler:Lcom/sun/javafx/scene/EnteredExitedHandler;

    .line 50
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/NodeEventDispatcher;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    .line 52
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/EnteredExitedHandler;->insertNextDispatcher(Lcom/sun/javafx/event/BasicEventDispatcher;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/NodeEventDispatcher;
    move-object v1, p1

    .local v1, "eventSource":Ljava/lang/Object;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/EnteredExitedHandler;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/EnteredExitedHandler;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/sun/javafx/event/EventHandlerManager;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/event/EventHandlerManager;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/NodeEventDispatcher;-><init>(Lcom/sun/javafx/scene/EnteredExitedHandler;Lcom/sun/javafx/event/EventHandlerManager;)V

    .line 44
    return-void
.end method


# virtual methods
.method public final getEnteredExitedHandler()Lcom/sun/javafx/scene/EnteredExitedHandler;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/NodeEventDispatcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/NodeEventDispatcher;->enteredExitedHandler:Lcom/sun/javafx/scene/EnteredExitedHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/NodeEventDispatcher;
    return-object v0
.end method

.method public final getEventHandlerManager()Lcom/sun/javafx/event/EventHandlerManager;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/NodeEventDispatcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/NodeEventDispatcher;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/NodeEventDispatcher;
    return-object v0
.end method

.method public getFirstDispatcher()Lcom/sun/javafx/event/BasicEventDispatcher;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/NodeEventDispatcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/NodeEventDispatcher;->enteredExitedHandler:Lcom/sun/javafx/scene/EnteredExitedHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/NodeEventDispatcher;
    return-object v0
.end method

.method public getLastDispatcher()Lcom/sun/javafx/event/BasicEventDispatcher;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/NodeEventDispatcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/NodeEventDispatcher;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/NodeEventDispatcher;
    return-object v0
.end method

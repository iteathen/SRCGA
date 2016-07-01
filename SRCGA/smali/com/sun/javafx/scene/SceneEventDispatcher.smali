.class public Lcom/sun/javafx/scene/SceneEventDispatcher;
.super Lcom/sun/javafx/event/CompositeEventDispatcher;
.source "SceneEventDispatcher.java"


# instance fields
.field private final enteredExitedHandler:Lcom/sun/javafx/scene/EnteredExitedHandler;

.field private final eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

.field private final keyboardShortcutsHandler:Lcom/sun/javafx/scene/KeyboardShortcutsHandler;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/KeyboardShortcutsHandler;Lcom/sun/javafx/scene/EnteredExitedHandler;Lcom/sun/javafx/event/EventHandlerManager;)V
    .locals 6

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/SceneEventDispatcher;
    move-object v1, p1

    .local v1, "keyboardShortcutsHandler":Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
    move-object v2, p2

    .local v2, "enteredExitedHandler":Lcom/sun/javafx/scene/EnteredExitedHandler;
    move-object v3, p3

    .local v3, "eventHandlerManager":Lcom/sun/javafx/event/EventHandlerManager;
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/event/CompositeEventDispatcher;-><init>()V

    .line 54
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/scene/SceneEventDispatcher;->keyboardShortcutsHandler:Lcom/sun/javafx/scene/KeyboardShortcutsHandler;

    .line 55
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/scene/SceneEventDispatcher;->enteredExitedHandler:Lcom/sun/javafx/scene/EnteredExitedHandler;

    .line 56
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/scene/SceneEventDispatcher;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    .line 58
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->insertNextDispatcher(Lcom/sun/javafx/event/BasicEventDispatcher;)V

    .line 59
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/EnteredExitedHandler;->insertNextDispatcher(Lcom/sun/javafx/event/BasicEventDispatcher;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/SceneEventDispatcher;
    move-object v1, p1

    .local v1, "eventSource":Ljava/lang/Object;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;-><init>()V

    new-instance v4, Lcom/sun/javafx/scene/EnteredExitedHandler;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/EnteredExitedHandler;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lcom/sun/javafx/event/EventHandlerManager;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/javafx/event/EventHandlerManager;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/SceneEventDispatcher;-><init>(Lcom/sun/javafx/scene/KeyboardShortcutsHandler;Lcom/sun/javafx/scene/EnteredExitedHandler;Lcom/sun/javafx/event/EventHandlerManager;)V

    .line 48
    return-void
.end method


# virtual methods
.method public final getEnteredExitedHandler()Lcom/sun/javafx/scene/EnteredExitedHandler;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/SceneEventDispatcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/SceneEventDispatcher;->enteredExitedHandler:Lcom/sun/javafx/scene/EnteredExitedHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/SceneEventDispatcher;
    return-object v0
.end method

.method public final getEventHandlerManager()Lcom/sun/javafx/event/EventHandlerManager;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/SceneEventDispatcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/SceneEventDispatcher;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/SceneEventDispatcher;
    return-object v0
.end method

.method public getFirstDispatcher()Lcom/sun/javafx/event/BasicEventDispatcher;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/SceneEventDispatcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/SceneEventDispatcher;->keyboardShortcutsHandler:Lcom/sun/javafx/scene/KeyboardShortcutsHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/SceneEventDispatcher;
    return-object v0
.end method

.method public final getKeyboardShortcutsHandler()Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/SceneEventDispatcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/SceneEventDispatcher;->keyboardShortcutsHandler:Lcom/sun/javafx/scene/KeyboardShortcutsHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/SceneEventDispatcher;
    return-object v0
.end method

.method public getLastDispatcher()Lcom/sun/javafx/event/BasicEventDispatcher;
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/SceneEventDispatcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/SceneEventDispatcher;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/SceneEventDispatcher;
    return-object v0
.end method

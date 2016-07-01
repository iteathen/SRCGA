.class public Lcom/sun/javafx/scene/EnteredExitedHandler;
.super Lcom/sun/javafx/event/BasicEventDispatcher;
.source "EnteredExitedHandler.java"


# instance fields
.field private final eventSource:Ljava/lang/Object;

.field private eventTypeModified:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/EnteredExitedHandler;
    move-object v1, p1

    .local v1, "eventSource":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/event/BasicEventDispatcher;-><init>()V

    .line 45
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventSource:Ljava/lang/Object;

    .line 46
    return-void
.end method


# virtual methods
.method public final dispatchBubblingEvent(Ljavafx/event/Event;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/EnteredExitedHandler;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventTypeModified:Z

    if-eqz v2, :cond_5

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventSource:Ljava/lang/Object;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 95
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_0

    .line 96
    move-object v2, v1

    check-cast v2, Ljavafx/scene/input/MouseEvent;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventSource:Ljava/lang/Object;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED_TARGET:Ljavafx/event/EventType;

    invoke-virtual {v2, v3, v4, v5}, Ljavafx/scene/input/MouseEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/MouseEvent;

    move-result-object v2

    move-object v0, v2

    .line 128
    .end local v0    # "this":Lcom/sun/javafx/scene/EnteredExitedHandler;
    :goto_0
    return-object v0

    .line 100
    .restart local v0    # "this":Lcom/sun/javafx/scene/EnteredExitedHandler;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_1

    .line 101
    move-object v2, v1

    check-cast v2, Ljavafx/scene/input/MouseEvent;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventSource:Ljava/lang/Object;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED_TARGET:Ljavafx/event/EventType;

    invoke-virtual {v2, v3, v4, v5}, Ljavafx/scene/input/MouseEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/MouseEvent;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 105
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_ENTERED:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_2

    .line 106
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventTypeModified:Z

    .line 107
    move-object v2, v1

    check-cast v2, Ljavafx/scene/input/MouseDragEvent;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventSource:Ljava/lang/Object;

    move-object v4, v1

    .line 108
    invoke-virtual {v4}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_ENTERED_TARGET:Ljavafx/event/EventType;

    .line 107
    invoke-virtual {v2, v3, v4, v5}, Ljavafx/scene/input/MouseDragEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/MouseDragEvent;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 111
    :cond_2
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_EXITED:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_3

    .line 112
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventTypeModified:Z

    .line 113
    move-object v2, v1

    check-cast v2, Ljavafx/scene/input/MouseDragEvent;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventSource:Ljava/lang/Object;

    move-object v4, v1

    .line 114
    invoke-virtual {v4}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_EXITED_TARGET:Ljavafx/event/EventType;

    .line 113
    invoke-virtual {v2, v3, v4, v5}, Ljavafx/scene/input/MouseDragEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/MouseDragEvent;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 117
    :cond_3
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/DragEvent;->DRAG_ENTERED:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_4

    .line 118
    move-object v2, v1

    check-cast v2, Ljavafx/scene/input/DragEvent;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventSource:Ljava/lang/Object;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/DragEvent;->DRAG_ENTERED_TARGET:Ljavafx/event/EventType;

    invoke-virtual {v2, v3, v4, v5}, Ljavafx/scene/input/DragEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/DragEvent;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 122
    :cond_4
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/DragEvent;->DRAG_EXITED:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_5

    .line 123
    move-object v2, v1

    check-cast v2, Ljavafx/scene/input/DragEvent;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventSource:Ljava/lang/Object;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/DragEvent;->DRAG_EXITED_TARGET:Ljavafx/event/EventType;

    invoke-virtual {v2, v3, v4, v5}, Ljavafx/scene/input/DragEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/DragEvent;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0

    .line 128
    :cond_5
    move-object v2, v1

    move-object v0, v2

    goto/16 :goto_0
.end method

.method public final dispatchCapturingEvent(Ljavafx/event/Event;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/EnteredExitedHandler;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventSource:Ljava/lang/Object;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 51
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED_TARGET:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_0

    .line 52
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventTypeModified:Z

    .line 53
    move-object v2, v1

    check-cast v2, Ljavafx/scene/input/MouseEvent;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventSource:Ljava/lang/Object;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    invoke-virtual {v2, v3, v4, v5}, Ljavafx/scene/input/MouseEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/MouseEvent;

    move-result-object v2

    move-object v0, v2

    .line 89
    .end local v0    # "this":Lcom/sun/javafx/scene/EnteredExitedHandler;
    :goto_0
    return-object v0

    .line 57
    .restart local v0    # "this":Lcom/sun/javafx/scene/EnteredExitedHandler;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED_TARGET:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_1

    .line 58
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventTypeModified:Z

    .line 59
    move-object v2, v1

    check-cast v2, Ljavafx/scene/input/MouseEvent;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventSource:Ljava/lang/Object;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    invoke-virtual {v2, v3, v4, v5}, Ljavafx/scene/input/MouseEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/MouseEvent;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 63
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_ENTERED_TARGET:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_2

    .line 64
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventTypeModified:Z

    .line 65
    move-object v2, v1

    check-cast v2, Ljavafx/scene/input/MouseDragEvent;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventSource:Ljava/lang/Object;

    move-object v4, v1

    .line 66
    invoke-virtual {v4}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_ENTERED:Ljavafx/event/EventType;

    .line 65
    invoke-virtual {v2, v3, v4, v5}, Ljavafx/scene/input/MouseDragEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/MouseDragEvent;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 69
    :cond_2
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_EXITED_TARGET:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_3

    .line 70
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventTypeModified:Z

    .line 71
    move-object v2, v1

    check-cast v2, Ljavafx/scene/input/MouseDragEvent;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventSource:Ljava/lang/Object;

    move-object v4, v1

    .line 72
    invoke-virtual {v4}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_EXITED:Ljavafx/event/EventType;

    .line 71
    invoke-virtual {v2, v3, v4, v5}, Ljavafx/scene/input/MouseDragEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/MouseDragEvent;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 75
    :cond_3
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/DragEvent;->DRAG_ENTERED_TARGET:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_4

    .line 76
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventTypeModified:Z

    .line 77
    move-object v2, v1

    check-cast v2, Ljavafx/scene/input/DragEvent;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventSource:Ljava/lang/Object;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/DragEvent;->DRAG_ENTERED:Ljavafx/event/EventType;

    invoke-virtual {v2, v3, v4, v5}, Ljavafx/scene/input/DragEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/DragEvent;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 81
    :cond_4
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/DragEvent;->DRAG_EXITED_TARGET:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_5

    .line 82
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventTypeModified:Z

    .line 83
    move-object v2, v1

    check-cast v2, Ljavafx/scene/input/DragEvent;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventSource:Ljava/lang/Object;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/DragEvent;->DRAG_EXITED:Ljavafx/event/EventType;

    invoke-virtual {v2, v3, v4, v5}, Ljavafx/scene/input/DragEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/DragEvent;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0

    .line 88
    :cond_5
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/EnteredExitedHandler;->eventTypeModified:Z

    .line 89
    move-object v2, v1

    move-object v0, v2

    goto/16 :goto_0
.end method

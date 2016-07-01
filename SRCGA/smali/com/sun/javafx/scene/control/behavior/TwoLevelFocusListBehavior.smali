.class public Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;
.super Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
.source "TwoLevelFocusListBehavior.java"


# instance fields
.field final focusListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final keyEventListener:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mouseEventListener:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field final preemptiveEventDispatcher:Ljavafx/event/EventDispatcher;

.field final tlfEventDispatcher:Ljavafx/event/EventDispatcher;


# direct methods
.method public constructor <init>(Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;-><init>()V

    .line 73
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;)Ljavafx/event/EventDispatcher;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->preemptiveEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 128
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;)Ljavafx/event/EventDispatcher;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->tlfEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 171
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;)Ljavafx/event/EventHandler;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->keyEventListener:Ljavafx/event/EventHandler;

    .line 179
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->focusListener:Ljavafx/beans/value/ChangeListener;

    .line 203
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;)Ljavafx/event/EventHandler;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->mouseEventListener:Ljavafx/event/EventHandler;

    .line 46
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->tlNode:Ljavafx/scene/Node;

    .line 49
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->tlNode:Ljavafx/scene/Node;

    sget-object v3, Ljavafx/scene/input/KeyEvent;->ANY:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->keyEventListener:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Node;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 50
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->tlNode:Ljavafx/scene/Node;

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->mouseEventListener:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Node;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 51
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->tlNode:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->focusListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 54
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->tlNode:Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->getEventDispatcher()Ljavafx/event/EventDispatcher;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->origEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 55
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->tlNode:Ljavafx/scene/Node;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->tlfEventDispatcher:Ljavafx/event/EventDispatcher;

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->setEventDispatcher(Ljavafx/event/EventDispatcher;)V

    .line 56
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->lambda$new$179(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->lambda$new$180(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->lambda$new$181(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->lambda$new$182(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->lambda$new$183(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method private synthetic lambda$new$179(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 7

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, p2

    .local v2, "tail":Ljavafx/event/EventDispatchChain;
    move-object v5, v1

    instance-of v5, v5, Ljavafx/scene/input/KeyEvent;

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    if-ne v5, v6, :cond_0

    .line 77
    move-object v5, v1

    check-cast v5, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->isMetaDown()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v1

    check-cast v5, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->isControlDown()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v1

    check-cast v5, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->isAltDown()Z

    move-result v5

    if-nez v5, :cond_0

    .line 78
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->isExternalFocus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v5

    move-object v3, v5

    .line 85
    .local v3, "obj":Ljavafx/event/EventTarget;
    sget-object v5, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    move-object v6, v1

    check-cast v6, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v6}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 117
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->tlNode:Ljavafx/scene/Node;

    invoke-virtual {v5}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    move-object v4, v5

    .line 118
    .local v4, "s":Ljavafx/scene/Scene;
    move-object v5, v4

    move-object v6, v1

    invoke-static {v5, v6}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 119
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 125
    .end local v3    # "obj":Ljavafx/event/EventTarget;
    .end local v4    # "s":Ljavafx/scene/Scene;
    :cond_0
    :goto_0
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;
    return-object v0

    .line 87
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;
    .restart local v3    # "obj":Ljavafx/event/EventTarget;
    :pswitch_0
    move-object v5, v1

    check-cast v5, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->isShiftDown()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 88
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->PREVIOUS:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 93
    :goto_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 94
    goto :goto_0

    .line 91
    :cond_1
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->NEXT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    goto :goto_1

    .line 96
    :pswitch_1
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 97
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 98
    goto :goto_0

    .line 100
    :pswitch_2
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 101
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 102
    goto :goto_0

    .line 104
    :pswitch_3
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 105
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 106
    goto :goto_0

    .line 108
    :pswitch_4
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->RIGHT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 109
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 110
    goto :goto_0

    .line 112
    :pswitch_5
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->setExternalFocus(Z)V

    .line 113
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 114
    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private synthetic lambda$new$180(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, p2

    .local v2, "tail":Ljavafx/event/EventDispatchChain;
    move-object v3, v1

    instance-of v3, v3, Ljavafx/scene/input/KeyEvent;

    if-eqz v3, :cond_0

    .line 130
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->isExternalFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->preemptiveEventDispatcher:Ljavafx/event/EventDispatcher;

    invoke-interface {v3, v4}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v3

    move-object v2, v3

    .line 132
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/event/EventDispatchChain;->dispatchEvent(Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    .line 135
    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->origEventDispatcher:Ljavafx/event/EventDispatcher;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljavafx/event/EventDispatcher;->dispatchEvent(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private synthetic lambda$new$181(Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->postDispatchTidyup(Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v2

    .line 173
    return-void
.end method

.method private synthetic lambda$new$182(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldVal":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newVal":Ljava/lang/Boolean;
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->tlPopup:Ljavafx/scene/control/PopupControl;

    if-eqz v6, :cond_0

    .line 182
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->setExternalFocus(Z)V

    .line 201
    :goto_0
    return-void

    .line 185
    :cond_0
    const/4 v6, 0x1

    move v4, v6

    .line 186
    .local v4, "b":Z
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->tlNode:Ljavafx/scene/Node;

    if-eqz v6, :cond_1

    .line 191
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->tlNode:Ljavafx/scene/Node;

    invoke-virtual {v6}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v6

    move-object v5, v6

    .line 192
    .local v5, "p":Ljavafx/scene/Parent;
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 193
    const-string v6, "combo-box-popup"

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/Parent;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 194
    const/4 v6, 0x0

    move v4, v6

    .line 199
    .end local v5    # "p":Ljavafx/scene/Parent;
    :cond_1
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->setExternalFocus(Z)V

    goto :goto_0
.end method

.method private synthetic lambda$new$183(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->setExternalFocus(Z)V

    .line 205
    return-void
.end method

.method private postDispatchTidyup(Ljavafx/event/Event;)Ljavafx/event/Event;
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, v1

    instance-of v2, v2, Ljavafx/scene/input/KeyEvent;

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_0

    .line 142
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->isExternalFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    move-object v2, v1

    check-cast v2, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->isMetaDown()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->isControlDown()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->isAltDown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    sget-object v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 167
    :cond_0
    :goto_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;
    return-object v0

    .line 154
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;
    :pswitch_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->consume()V

    .line 155
    goto :goto_0

    .line 158
    :pswitch_1
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->setExternalFocus(Z)V

    .line 159
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->consume()V

    .line 160
    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->tlNode:Ljavafx/scene/Node;

    sget-object v2, Ljavafx/scene/input/KeyEvent;->ANY:Ljavafx/event/EventType;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->keyEventListener:Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/Node;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 64
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->tlNode:Ljavafx/scene/Node;

    sget-object v2, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->mouseEventListener:Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/Node;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 65
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->tlNode:Ljavafx/scene/Node;

    invoke-virtual {v1}, Ljavafx/scene/Node;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->focusListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 66
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->tlNode:Ljavafx/scene/Node;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->origEventDispatcher:Ljavafx/event/EventDispatcher;

    invoke-virtual {v1, v2}, Ljavafx/scene/Node;->setEventDispatcher(Ljavafx/event/EventDispatcher;)V

    .line 67
    return-void
.end method

.class public Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;
.super Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
.source "TwoLevelFocusComboBehavior.java"


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
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;-><init>()V

    .line 71
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;)Ljavafx/event/EventDispatcher;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->preemptiveEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 126
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;)Ljavafx/event/EventDispatcher;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->tlfEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 169
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;)Ljavafx/event/EventHandler;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->keyEventListener:Ljavafx/event/EventHandler;

    .line 177
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->focusListener:Ljavafx/beans/value/ChangeListener;

    .line 181
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;)Ljavafx/event/EventHandler;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->mouseEventListener:Ljavafx/event/EventHandler;

    .line 44
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->tlNode:Ljavafx/scene/Node;

    .line 47
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->tlNode:Ljavafx/scene/Node;

    sget-object v3, Ljavafx/scene/input/KeyEvent;->ANY:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->keyEventListener:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Node;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 48
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->tlNode:Ljavafx/scene/Node;

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->mouseEventListener:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Node;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 49
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->tlNode:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->focusListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 52
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->tlNode:Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->getEventDispatcher()Ljavafx/event/EventDispatcher;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->origEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 53
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->tlNode:Ljavafx/scene/Node;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->tlfEventDispatcher:Ljavafx/event/EventDispatcher;

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->setEventDispatcher(Ljavafx/event/EventDispatcher;)V

    .line 54
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->lambda$new$146(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->lambda$new$147(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->lambda$new$148(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->lambda$new$149(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->lambda$new$150(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method private synthetic lambda$new$146(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 8

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;
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

    .line 75
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

    .line 76
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->isExternalFocus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v5

    move-object v3, v5

    .line 83
    .local v3, "obj":Ljavafx/event/EventTarget;
    sget-object v5, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    move-object v6, v1

    check-cast v6, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v6}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 115
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->tlNode:Ljavafx/scene/Node;

    invoke-virtual {v5}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    move-object v4, v5

    .line 116
    .local v4, "s":Ljavafx/scene/Scene;
    move-object v5, v4

    move-object v6, v1

    invoke-static {v5, v6}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 117
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 123
    .end local v3    # "obj":Ljavafx/event/EventTarget;
    .end local v4    # "s":Ljavafx/scene/Scene;
    :cond_0
    :goto_0
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;
    return-object v0

    .line 85
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;
    .restart local v3    # "obj":Ljavafx/event/EventTarget;
    :pswitch_0
    move-object v5, v1

    check-cast v5, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->isShiftDown()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->PREVIOUS:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 91
    :goto_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 92
    goto :goto_0

    .line 89
    :cond_1
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->NEXT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    goto :goto_1

    .line 94
    :pswitch_1
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 95
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 96
    goto :goto_0

    .line 98
    :pswitch_2
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 99
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 100
    goto :goto_0

    .line 102
    :pswitch_3
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 103
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 104
    goto :goto_0

    .line 106
    :pswitch_4
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->RIGHT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 107
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 108
    goto :goto_0

    .line 110
    :pswitch_5
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->setExternalFocus(Z)V

    .line 111
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->origEventDispatcher:Ljavafx/event/EventDispatcher;

    move-object v6, v1

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Ljavafx/event/EventDispatcher;->dispatchEvent(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v5

    .line 112
    goto :goto_0

    .line 83
    nop

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

.method private synthetic lambda$new$147(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, p2

    .local v2, "tail":Ljavafx/event/EventDispatchChain;
    move-object v3, v1

    instance-of v3, v3, Ljavafx/scene/input/KeyEvent;

    if-eqz v3, :cond_0

    .line 128
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->isExternalFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->preemptiveEventDispatcher:Ljavafx/event/EventDispatcher;

    invoke-interface {v3, v4}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v3

    move-object v2, v3

    .line 130
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/event/EventDispatchChain;->dispatchEvent(Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    .line 133
    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->origEventDispatcher:Ljavafx/event/EventDispatcher;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljavafx/event/EventDispatcher;->dispatchEvent(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private synthetic lambda$new$148(Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->postDispatchTidyup(Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v2

    .line 171
    return-void
.end method

.method private synthetic lambda$new$149(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldVal":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newVal":Ljava/lang/Boolean;
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->setExternalFocus(Z)V

    .line 179
    return-void
.end method

.method private synthetic lambda$new$150(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->setExternalFocus(Z)V

    .line 183
    return-void
.end method

.method private postDispatchTidyup(Ljavafx/event/Event;)Ljavafx/event/Event;
    .locals 4

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;
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

    .line 140
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->isExternalFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
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

    .line 146
    sget-object v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 165
    :cond_0
    :goto_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;
    return-object v0

    .line 152
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;
    :pswitch_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->consume()V

    .line 153
    goto :goto_0

    .line 156
    :pswitch_1
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->setExternalFocus(Z)V

    .line 157
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->consume()V

    .line 158
    goto :goto_0

    .line 146
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
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->tlNode:Ljavafx/scene/Node;

    sget-object v2, Ljavafx/scene/input/KeyEvent;->ANY:Ljavafx/event/EventType;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->keyEventListener:Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/Node;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 62
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->tlNode:Ljavafx/scene/Node;

    sget-object v2, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->mouseEventListener:Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/Node;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 63
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->tlNode:Ljavafx/scene/Node;

    invoke-virtual {v1}, Ljavafx/scene/Node;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->focusListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 64
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->tlNode:Ljavafx/scene/Node;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->origEventDispatcher:Ljavafx/event/EventDispatcher;

    invoke-virtual {v1, v2}, Ljavafx/scene/Node;->setEventDispatcher(Ljavafx/event/EventDispatcher;)V

    .line 65
    return-void
.end method

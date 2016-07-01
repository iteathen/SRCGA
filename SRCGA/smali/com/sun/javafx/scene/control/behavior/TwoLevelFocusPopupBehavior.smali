.class public Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;
.super Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
.source "TwoLevelFocusPopupBehavior.java"


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

.field final preemptivePopupEventDispatcher:Ljavafx/event/EventDispatcher;

.field final tlfEventDispatcher:Ljavafx/event/EventDispatcher;


# direct methods
.method public constructor <init>(Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;-><init>()V

    .line 92
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;)Ljavafx/event/EventDispatcher;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->preemptiveEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 146
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$8;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;)Ljavafx/event/EventDispatcher;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->preemptivePopupEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 209
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$9;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;)Ljavafx/event/EventDispatcher;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlfEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 260
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$10;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;)Ljavafx/event/EventHandler;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->keyEventListener:Ljavafx/event/EventHandler;

    .line 268
    move-object v2, v0

    invoke-static {}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$11;->lambdaFactory$()Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->focusListener:Ljavafx/beans/value/ChangeListener;

    .line 271
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$12;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;)Ljavafx/event/EventHandler;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->mouseEventListener:Ljavafx/event/EventHandler;

    .line 62
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlNode:Ljavafx/scene/Node;

    .line 64
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->setExternalFocus(Z)V

    .line 67
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlNode:Ljavafx/scene/Node;

    sget-object v3, Ljavafx/scene/input/KeyEvent;->ANY:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->keyEventListener:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Node;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 68
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlNode:Ljavafx/scene/Node;

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->mouseEventListener:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Node;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 69
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlNode:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->focusListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 72
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlNode:Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->getEventDispatcher()Ljavafx/event/EventDispatcher;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->origEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 74
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlNode:Ljavafx/scene/Node;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlfEventDispatcher:Ljavafx/event/EventDispatcher;

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->setEventDispatcher(Ljavafx/event/EventDispatcher;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/PopupControl;)V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;
    move-object v1, p1

    .local v1, "popup":Ljavafx/scene/control/PopupControl;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;-><init>()V

    .line 92
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;)Ljavafx/event/EventDispatcher;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->preemptiveEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 146
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;)Ljavafx/event/EventDispatcher;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->preemptivePopupEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 209
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;)Ljavafx/event/EventDispatcher;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlfEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 260
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;)Ljavafx/event/EventHandler;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->keyEventListener:Ljavafx/event/EventHandler;

    .line 268
    move-object v2, v0

    invoke-static {}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$5;->lambdaFactory$()Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->focusListener:Ljavafx/beans/value/ChangeListener;

    .line 271
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;)Ljavafx/event/EventHandler;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->mouseEventListener:Ljavafx/event/EventHandler;

    .line 45
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlPopup:Ljavafx/scene/control/PopupControl;

    .line 47
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->setExternalFocus(Z)V

    .line 49
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlPopup:Ljavafx/scene/control/PopupControl;

    sget-object v3, Ljavafx/scene/input/KeyEvent;->ANY:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->keyEventListener:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/PopupControl;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 50
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlPopup:Ljavafx/scene/control/PopupControl;

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->mouseEventListener:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/PopupControl;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 51
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlPopup:Ljavafx/scene/control/PopupControl;

    invoke-virtual {v2}, Ljavafx/scene/control/PopupControl;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->focusListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 54
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlPopup:Ljavafx/scene/control/PopupControl;

    invoke-virtual {v3}, Ljavafx/scene/control/PopupControl;->getEventDispatcher()Ljavafx/event/EventDispatcher;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->origEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 56
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlPopup:Ljavafx/scene/control/PopupControl;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlfEventDispatcher:Ljavafx/event/EventDispatcher;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/PopupControl;->setEventDispatcher(Ljavafx/event/EventDispatcher;)V

    .line 57
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->lambda$new$268(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->lambda$new$269(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$10(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->lambda$new$272(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$11(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->lambda$new$273(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->lambda$new$270(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->lambda$new$271(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->lambda$new$272(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->lambda$new$273(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->lambda$new$268(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$7(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->lambda$new$269(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$8(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->lambda$new$270(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$9(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->lambda$new$271(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method private synthetic lambda$new$268(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 7

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;
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

    .line 96
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

    .line 97
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->isExternalFocus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v5

    move-object v3, v5

    .line 104
    .local v3, "obj":Ljavafx/event/EventTarget;
    sget-object v5, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    move-object v6, v1

    check-cast v6, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v6}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 136
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlNode:Ljavafx/scene/Node;

    invoke-virtual {v5}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    move-object v4, v5

    .line 137
    .local v4, "s":Ljavafx/scene/Scene;
    move-object v5, v4

    move-object v6, v1

    invoke-static {v5, v6}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 138
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 144
    .end local v3    # "obj":Ljavafx/event/EventTarget;
    .end local v4    # "s":Ljavafx/scene/Scene;
    :cond_0
    :goto_0
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;
    return-object v0

    .line 106
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;
    .restart local v3    # "obj":Ljavafx/event/EventTarget;
    :pswitch_0
    move-object v5, v1

    check-cast v5, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->isShiftDown()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->PREVIOUS:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 112
    :goto_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 113
    goto :goto_0

    .line 110
    :cond_1
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->NEXT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    goto :goto_1

    .line 115
    :pswitch_1
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 116
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 117
    goto :goto_0

    .line 119
    :pswitch_2
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 120
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 121
    goto :goto_0

    .line 123
    :pswitch_3
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 124
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 125
    goto :goto_0

    .line 127
    :pswitch_4
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->RIGHT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 128
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 129
    goto :goto_0

    .line 131
    :pswitch_5
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->setExternalFocus(Z)V

    .line 132
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 133
    goto :goto_0

    .line 104
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

.method private synthetic lambda$new$269(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 7

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, p2

    .local v2, "tail":Ljavafx/event/EventDispatchChain;
    move-object v5, v1

    instance-of v5, v5, Ljavafx/scene/input/KeyEvent;

    if-eqz v5, :cond_1

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    if-ne v5, v6, :cond_1

    .line 150
    move-object v5, v1

    check-cast v5, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->isMetaDown()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v1

    check-cast v5, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->isControlDown()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v1

    check-cast v5, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->isAltDown()Z

    move-result v5

    if-nez v5, :cond_1

    .line 151
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->isExternalFocus()Z

    move-result v5

    if-nez v5, :cond_1

    .line 156
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v5

    move-object v3, v5

    .line 157
    .local v3, "obj":Ljavafx/event/EventTarget;
    sget-object v5, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    move-object v6, v1

    check-cast v6, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v6}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 194
    const/4 v5, 0x0

    move-object v4, v5

    .line 195
    .local v4, "s":Ljavafx/scene/Scene;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlNode:Ljavafx/scene/Node;

    if-eqz v5, :cond_0

    .line 196
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlNode:Ljavafx/scene/Node;

    invoke-virtual {v5}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    move-object v4, v5

    .line 197
    move-object v5, v4

    move-object v6, v1

    invoke-static {v5, v6}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 199
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 205
    .end local v3    # "obj":Ljavafx/event/EventTarget;
    .end local v4    # "s":Ljavafx/scene/Scene;
    :cond_1
    :goto_0
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;
    return-object v0

    .line 160
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;
    .restart local v3    # "obj":Ljavafx/event/EventTarget;
    :pswitch_0
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 161
    goto :goto_0

    .line 164
    :pswitch_1
    goto :goto_0

    .line 166
    :pswitch_2
    move-object v5, v3

    instance-of v5, v5, Ljavafx/scene/Node;

    if-eqz v5, :cond_2

    .line 167
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 168
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    goto :goto_0

    .line 170
    :cond_2
    move-object v5, v3

    instance-of v5, v5, Ljavafx/scene/Scene;

    if-eqz v5, :cond_1

    .line 171
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Scene;

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getFocusOwner()Ljavafx/scene/Node;

    move-result-object v5

    move-object v4, v5

    .line 172
    .local v4, "node":Ljavafx/scene/Node;
    move-object v5, v4

    if-eqz v5, :cond_3

    .line 173
    move-object v5, v4

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 174
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 176
    :cond_3
    goto :goto_0

    .line 179
    .end local v4    # "node":Ljavafx/scene/Node;
    :pswitch_3
    move-object v5, v3

    instance-of v5, v5, Ljavafx/scene/Node;

    if-eqz v5, :cond_4

    .line 180
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->RIGHT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 181
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    goto :goto_0

    .line 183
    :cond_4
    move-object v5, v3

    instance-of v5, v5, Ljavafx/scene/Scene;

    if-eqz v5, :cond_1

    .line 184
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Scene;

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getFocusOwner()Ljavafx/scene/Node;

    move-result-object v5

    move-object v4, v5

    .line 185
    .restart local v4    # "node":Ljavafx/scene/Node;
    move-object v5, v4

    if-eqz v5, :cond_5

    .line 186
    move-object v5, v4

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->RIGHT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 187
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 189
    :cond_5
    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$new$270(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, p2

    .local v2, "tail":Ljavafx/event/EventDispatchChain;
    move-object v3, v1

    instance-of v3, v3, Ljavafx/scene/input/KeyEvent;

    if-eqz v3, :cond_1

    .line 213
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->isExternalFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->preemptiveEventDispatcher:Ljavafx/event/EventDispatcher;

    invoke-interface {v3, v4}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v3

    move-object v2, v3

    .line 215
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/event/EventDispatchChain;->dispatchEvent(Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    .line 223
    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;
    :goto_0
    return-object v0

    .line 218
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;
    :cond_0
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->preemptivePopupEventDispatcher:Ljavafx/event/EventDispatcher;

    invoke-interface {v3, v4}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v3

    move-object v2, v3

    .line 219
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->origEventDispatcher:Ljavafx/event/EventDispatcher;

    invoke-interface {v3, v4}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v3

    move-object v2, v3

    .line 220
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/event/EventDispatchChain;->dispatchEvent(Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 223
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->origEventDispatcher:Ljavafx/event/EventDispatcher;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljavafx/event/EventDispatcher;->dispatchEvent(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private synthetic lambda$new$271(Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->postDispatchTidyup(Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v2

    .line 262
    return-void
.end method

.method private static synthetic lambda$new$272(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "observable"    # Ljavafx/beans/value/ObservableValue;
    .param p1, "oldVal"    # Ljava/lang/Boolean;
    .param p2, "newVal"    # Ljava/lang/Boolean;

    .prologue
    .line 269
    return-void
.end method

.method private synthetic lambda$new$273(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->setExternalFocus(Z)V

    .line 273
    return-void
.end method

.method private postDispatchTidyup(Ljavafx/event/Event;)Ljavafx/event/Event;
    .locals 4

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;
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

    .line 229
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->isExternalFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
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

    .line 237
    sget-object v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 256
    :cond_0
    :goto_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;
    return-object v0

    .line 243
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;
    :pswitch_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->consume()V

    .line 244
    goto :goto_0

    .line 247
    :pswitch_1
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->setExternalFocus(Z)V

    .line 248
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->consume()V

    .line 249
    goto :goto_0

    .line 237
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
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlNode:Ljavafx/scene/Node;

    sget-object v2, Ljavafx/scene/input/KeyEvent;->ANY:Ljavafx/event/EventType;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->keyEventListener:Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/Node;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 83
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlNode:Ljavafx/scene/Node;

    sget-object v2, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->mouseEventListener:Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/Node;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 84
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlNode:Ljavafx/scene/Node;

    invoke-virtual {v1}, Ljavafx/scene/Node;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->focusListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 85
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->tlNode:Ljavafx/scene/Node;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->origEventDispatcher:Ljavafx/event/EventDispatcher;

    invoke-virtual {v1, v2}, Ljavafx/scene/Node;->setEventDispatcher(Ljavafx/event/EventDispatcher;)V

    .line 86
    return-void
.end method

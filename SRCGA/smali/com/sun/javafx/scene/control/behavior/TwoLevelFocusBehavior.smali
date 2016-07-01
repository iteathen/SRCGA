.class public Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
.super Ljava/lang/Object;
.source "TwoLevelFocusBehavior.java"


# static fields
.field private static final EXTERNAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final INTERNAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;


# instance fields
.field private externalFocus:Z

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

.field origEventDispatcher:Ljavafx/event/EventDispatcher;

.field final preemptiveEventDispatcher:Ljavafx/event/EventDispatcher;

.field tlNode:Ljavafx/scene/Node;

.field tlPopup:Ljavafx/scene/control/PopupControl;

.field final tlfEventDispatcher:Ljavafx/event/EventDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    const-string v0, "internal-focus"

    .line 218
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->INTERNAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 219
    const-string v0, "external-focus"

    .line 220
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->EXTERNAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 219
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 56
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlNode:Ljavafx/scene/Node;

    .line 57
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlPopup:Ljavafx/scene/control/PopupControl;

    .line 58
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->origEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 91
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;)Ljavafx/event/EventDispatcher;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->preemptiveEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 147
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;)Ljavafx/event/EventDispatcher;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlfEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 190
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;)Ljavafx/event/EventHandler;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->keyEventListener:Ljavafx/event/EventHandler;

    .line 198
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;)Ljavafx/beans/value/ChangeListener;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->focusListener:Ljavafx/beans/value/ChangeListener;

    .line 207
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;)Ljavafx/event/EventHandler;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->mouseEventListener:Ljavafx/event/EventHandler;

    .line 211
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->externalFocus:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 56
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlNode:Ljavafx/scene/Node;

    .line 57
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlPopup:Ljavafx/scene/control/PopupControl;

    .line 58
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->origEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 91
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;)Ljavafx/event/EventDispatcher;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->preemptiveEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 147
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;)Ljavafx/event/EventDispatcher;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlfEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 190
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior$$Lambda$8;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;)Ljavafx/event/EventHandler;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->keyEventListener:Ljavafx/event/EventHandler;

    .line 198
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior$$Lambda$9;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->focusListener:Ljavafx/beans/value/ChangeListener;

    .line 207
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior$$Lambda$10;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;)Ljavafx/event/EventHandler;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->mouseEventListener:Ljavafx/event/EventHandler;

    .line 211
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->externalFocus:Z

    .line 64
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlNode:Ljavafx/scene/Node;

    .line 65
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlPopup:Ljavafx/scene/control/PopupControl;

    .line 67
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlNode:Ljavafx/scene/Node;

    sget-object v3, Ljavafx/scene/input/KeyEvent;->ANY:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->keyEventListener:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Node;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 68
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlNode:Ljavafx/scene/Node;

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->mouseEventListener:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Node;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 69
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlNode:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->focusListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 72
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlNode:Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->getEventDispatcher()Ljavafx/event/EventDispatcher;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->origEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 73
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlNode:Ljavafx/scene/Node;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlfEventDispatcher:Ljavafx/event/EventDispatcher;

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->setEventDispatcher(Ljavafx/event/EventDispatcher;)V

    .line 74
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->lambda$new$141(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->lambda$new$142(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->lambda$new$143(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->lambda$new$144(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->lambda$new$145(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->lambda$new$141(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->lambda$new$142(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$7(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->lambda$new$143(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->lambda$new$144(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$9(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->lambda$new$145(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method private synthetic lambda$new$141(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 7

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
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

    .line 95
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

    .line 96
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->isExternalFocus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v5

    move-object v3, v5

    .line 103
    .local v3, "obj":Ljavafx/event/EventTarget;
    sget-object v5, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    move-object v6, v1

    check-cast v6, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v6}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 135
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlNode:Ljavafx/scene/Node;

    invoke-virtual {v5}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    move-object v4, v5

    .line 136
    .local v4, "s":Ljavafx/scene/Scene;
    move-object v5, v4

    move-object v6, v1

    invoke-static {v5, v6}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 137
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 144
    .end local v3    # "obj":Ljavafx/event/EventTarget;
    .end local v4    # "s":Ljavafx/scene/Scene;
    :cond_0
    :goto_0
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
    return-object v0

    .line 105
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
    .restart local v3    # "obj":Ljavafx/event/EventTarget;
    :pswitch_0
    move-object v5, v1

    check-cast v5, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->isShiftDown()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 106
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->PREVIOUS:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 111
    :goto_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 112
    goto :goto_0

    .line 109
    :cond_1
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->NEXT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    goto :goto_1

    .line 114
    :pswitch_1
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 115
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 116
    goto :goto_0

    .line 118
    :pswitch_2
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 119
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 120
    goto :goto_0

    .line 122
    :pswitch_3
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 123
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 124
    goto :goto_0

    .line 126
    :pswitch_4
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->RIGHT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v5

    .line 127
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 128
    goto :goto_0

    .line 130
    :pswitch_5
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->setExternalFocus(Z)V

    .line 131
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->consume()V

    .line 132
    goto :goto_0

    .line 103
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

.method private synthetic lambda$new$142(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, p2

    .local v2, "tail":Ljavafx/event/EventDispatchChain;
    move-object v3, v1

    instance-of v3, v3, Ljavafx/scene/input/KeyEvent;

    if-eqz v3, :cond_0

    .line 150
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->isExternalFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->preemptiveEventDispatcher:Ljavafx/event/EventDispatcher;

    invoke-interface {v3, v4}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v3

    move-object v2, v3

    .line 152
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/event/EventDispatchChain;->dispatchEvent(Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    .line 155
    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->origEventDispatcher:Ljavafx/event/EventDispatcher;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljavafx/event/EventDispatcher;->dispatchEvent(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private synthetic lambda$new$143(Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->postDispatchTidyup(Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v2

    .line 192
    return-void
.end method

.method private synthetic lambda$new$144(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldVal":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newVal":Ljava/lang/Boolean;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlPopup:Ljavafx/scene/control/PopupControl;

    if-eqz v4, :cond_0

    .line 200
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->setExternalFocus(Z)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->setExternalFocus(Z)V

    goto :goto_0
.end method

.method private synthetic lambda$new$145(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->setExternalFocus(Z)V

    .line 209
    return-void
.end method

.method private postDispatchTidyup(Ljavafx/event/Event;)Ljavafx/event/Event;
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
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

    .line 161
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->isExternalFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
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

    .line 168
    sget-object v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 186
    :cond_0
    :goto_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
    return-object v0

    .line 174
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
    :pswitch_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->consume()V

    .line 175
    goto :goto_0

    .line 177
    :pswitch_1
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->setExternalFocus(Z)V

    .line 178
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->consume()V

    .line 179
    goto :goto_0

    .line 168
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
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlNode:Ljavafx/scene/Node;

    sget-object v2, Ljavafx/scene/input/KeyEvent;->ANY:Ljavafx/event/EventType;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->keyEventListener:Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/Node;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 82
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlNode:Ljavafx/scene/Node;

    sget-object v2, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->mouseEventListener:Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/Node;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 83
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlNode:Ljavafx/scene/Node;

    invoke-virtual {v1}, Ljavafx/scene/Node;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->focusListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 84
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlNode:Ljavafx/scene/Node;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->origEventDispatcher:Ljavafx/event/EventDispatcher;

    invoke-virtual {v1, v2}, Ljavafx/scene/Node;->setEventDispatcher(Ljavafx/event/EventDispatcher;)V

    .line 85
    return-void
.end method

.method public isExternalFocus()Z
    .locals 2

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->externalFocus:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
    return v0
.end method

.method public setExternalFocus(Z)V
    .locals 5

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->externalFocus:Z

    .line 225
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlNode:Ljavafx/scene/Node;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlNode:Ljavafx/scene/Node;

    instance-of v2, v2, Ljavafx/scene/control/Control;

    if-eqz v2, :cond_2

    .line 226
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlNode:Ljavafx/scene/Node;

    sget-object v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->INTERNAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    move v4, v1

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Node;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 227
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlNode:Ljavafx/scene/Node;

    sget-object v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->EXTERNAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    move v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Node;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 233
    :cond_0
    :goto_1
    return-void

    .line 226
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 229
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlPopup:Ljavafx/scene/control/PopupControl;

    if-eqz v2, :cond_0

    .line 230
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlPopup:Ljavafx/scene/control/PopupControl;

    sget-object v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->INTERNAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    move v4, v1

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/PopupControl;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 231
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->tlPopup:Ljavafx/scene/control/PopupControl;

    sget-object v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->EXTERNAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    move v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/PopupControl;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    goto :goto_1

    .line 230
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

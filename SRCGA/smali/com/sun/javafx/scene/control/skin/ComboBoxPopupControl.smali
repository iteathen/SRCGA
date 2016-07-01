.class public abstract Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;
.super Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;
.source "ComboBoxPopupControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$FakeFocusTextField;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final COMBO_BOX_STYLE_CLASS:Ljava/lang/String; = "combo-box-popup"

.field private static CONTAINS_FOCUS_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;


# instance fields
.field private final comboBoxBase:Ljavafx/scene/control/ComboBoxBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/ComboBoxBase",
            "<TT;>;"
        }
    .end annotation
.end field

.field private initialTextFieldValue:Ljava/lang/String;

.field protected popup:Ljavafx/scene/control/PopupControl;

.field private popupNeedsReconfiguring:Z

.field private textField:Ljavafx/scene/control/TextField;

.field private textFieldDragEventHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private textFieldMouseEventHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 551
    const-string v0, "contains-focus"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->CONTAINS_FOCUS_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/ComboBoxBase;Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ComboBoxBase",
            "<TT;>;",
            "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v1, p1

    .local v1, "comboBoxBase":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v2, p2

    .local v2, "behavior":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;-><init>(Ljavafx/scene/control/ComboBoxBase;Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;)V

    .line 56
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popupNeedsReconfiguring:Z

    .line 333
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;)Ljavafx/event/EventHandler;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textFieldMouseEventHandler:Ljavafx/event/EventHandler;

    .line 340
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;)Ljavafx/event/EventHandler;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textFieldDragEventHandler:Ljavafx/event/EventHandler;

    .line 364
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->initialTextFieldValue:Ljava/lang/String;

    .line 63
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->comboBoxBase:Ljavafx/scene/control/ComboBoxBase;

    .line 66
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getEditableInputNode()Ljavafx/scene/control/TextField;

    move-result-object v4

    :goto_0
    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    .line 71
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    if-eqz v3, :cond_0

    .line 72
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 76
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBoxBase;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 83
    move-object v3, v1

    sget-object v4, Ljavafx/scene/input/KeyEvent;->ANY:Ljavafx/event/EventType;

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ComboBoxBase;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 113
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBoxBase;->getOnInputMethodTextChanged()Ljavafx/event/EventHandler;

    move-result-object v3

    if-nez v3, :cond_1

    .line 114
    move-object v3, v1

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;Ljavafx/scene/control/ComboBoxBase;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ComboBoxBase;->setOnInputMethodTextChanged(Ljavafx/event/EventHandler;)V

    .line 124
    :cond_1
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    new-instance v7, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$1;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$1;-><init>(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;)V

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;-><init>(Ljavafx/scene/Parent;Lcom/sun/javafx/scene/traversal/Algorithm;)V

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ComboBoxBase;->setImpl_traversalEngine(Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;)V

    .line 138
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->updateEditable()V

    .line 139
    return-void

    .line 66
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->lambda$new$299(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;Ljavafx/scene/input/DragEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->lambda$new$300(Ljavafx/scene/input/DragEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->lambda$new$291(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->lambda$new$292(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;Ljavafx/scene/control/ComboBoxBase;Ljavafx/scene/input/InputMethodEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->lambda$new$293(Ljavafx/scene/control/ComboBoxBase;Ljavafx/scene/input/InputMethodEvent;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;Ljavafx/event/Event;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->lambda$createPopup$294(Ljavafx/event/Event;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->lambda$createPopup$295(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;Ljavafx/stage/WindowEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->lambda$createPopup$296(Ljavafx/stage/WindowEvent;)V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->lambda$createPopup$297(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$9(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->lambda$createPopup$298(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private createPopup()V
    .locals 7

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;-><init>(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popup:Ljavafx/scene/control/PopupControl;

    .line 243
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popup:Ljavafx/scene/control/PopupControl;

    invoke-virtual {v2}, Ljavafx/scene/control/PopupControl;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "combo-box-popup"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 244
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popup:Ljavafx/scene/control/PopupControl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/PopupControl;->setConsumeAutoHidingEvents(Z)V

    .line 245
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popup:Ljavafx/scene/control/PopupControl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/PopupControl;->setAutoHide(Z)V

    .line 246
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popup:Ljavafx/scene/control/PopupControl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/PopupControl;->setAutoFix(Z)V

    .line 247
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popup:Ljavafx/scene/control/PopupControl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/PopupControl;->setHideOnEscape(Z)V

    .line 248
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popup:Ljavafx/scene/control/PopupControl;

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;)Ljavafx/event/EventHandler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/PopupControl;->setOnAutoHide(Ljavafx/event/EventHandler;)V

    .line 251
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popup:Ljavafx/scene/control/PopupControl;

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_CLICKED:Ljavafx/event/EventType;

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/PopupControl;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 258
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popup:Ljavafx/scene/control/PopupControl;

    sget-object v3, Ljavafx/stage/WindowEvent;->WINDOW_HIDDEN:Ljavafx/event/EventType;

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$$Lambda$8;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/PopupControl;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 265
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$$Lambda$9;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    move-object v1, v2

    .line 269
    .local v1, "layoutPosListener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->layoutXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 270
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->layoutYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 271
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 272
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 275
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->sceneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$$Lambda$10;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 281
    return-void
.end method

.method private forwardToParent(Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/KeyEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->comboBoxBase:Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 453
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->comboBoxBase:Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/Parent;->fireEvent(Ljavafx/event/Event;)V

    .line 455
    :cond_0
    return-void
.end method

.method private getPrefPopupPosition()Ljavafx/geometry/Point2D;
    .locals 11

    .prologue
    .line 176
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getPopupContent()Ljavafx/scene/Node;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v5, Ljavafx/geometry/VPos;->BOTTOM:Ljavafx/geometry/VPos;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    invoke-static/range {v2 .. v10}, Lcom/sun/javafx/util/Utils;->pointRelativeTo(Ljavafx/scene/Node;Ljavafx/scene/Node;Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;DDZ)Ljavafx/geometry/Point2D;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    return-object v1
.end method

.method private handleKeyEvent(Ljavafx/scene/input/KeyEvent;Z)V
    .locals 5

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v1, p1

    .local v1, "ke":Ljavafx/scene/input/KeyEvent;
    move v2, p2

    .local v2, "doConsume":Z
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->ENTER:Ljavafx/scene/input/KeyCode;

    if-ne v3, v4, :cond_2

    .line 435
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->setTextFromTextFieldIntoComboBoxValue()V

    .line 437
    move v3, v2

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->comboBoxBase:Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBoxBase;->getOnAction()Ljavafx/event/EventHandler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 438
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->forwardToParent(Ljavafx/scene/input/KeyEvent;)V

    goto :goto_0

    .line 442
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->F4:Ljavafx/scene/input/KeyCode;

    if-ne v3, v4, :cond_0

    .line 443
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_RELEASED:Ljavafx/event/EventType;

    if-ne v3, v4, :cond_3

    .line 444
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->comboBoxBase:Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBoxBase;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->comboBoxBase:Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBoxBase;->hide()V

    .line 447
    :cond_3
    :goto_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->consume()V

    goto :goto_0

    .line 445
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->comboBoxBase:Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBoxBase;->show()V

    goto :goto_1
.end method

.method private synthetic lambda$createPopup$294(Ljavafx/event/Event;)V
    .locals 3

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/event/Event;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->onAutoHide()V

    .line 250
    return-void
.end method

.method private synthetic lambda$createPopup$295(Ljavafx/scene/input/MouseEvent;)V
    .locals 3

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v1, p1

    .local v1, "t":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->onAutoHide()V

    .line 257
    return-void
.end method

.method private synthetic lambda$createPopup$296(Ljavafx/stage/WindowEvent;)V
    .locals 4

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v1, p1

    .local v1, "t":Ljavafx/stage/WindowEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ComboBoxBase;

    sget-object v3, Ljavafx/scene/AccessibleAttribute;->FOCUS_NODE:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ComboBoxBase;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 262
    return-void
.end method

.method private synthetic lambda$createPopup$297(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popupNeedsReconfiguring:Z

    .line 267
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->reconfigurePopup()V

    .line 268
    return-void
.end method

.method private synthetic lambda$createPopup$298(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v2, v1

    check-cast v2, Ljavafx/beans/value/ObservableValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 277
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->hide()V

    .line 279
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$291(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v1, p1

    .local v1, "ov":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "hasFocus":Ljava/lang/Boolean;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 79
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    check-cast v4, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$FakeFocusTextField;

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$FakeFocusTextField;->setFakeFocus(Z)V

    .line 81
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$292(Ljavafx/scene/input/KeyEvent;)V
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v1, p1

    .local v1, "ke":Ljavafx/scene/input/KeyEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v2

    if-nez v2, :cond_1

    .line 85
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->handleKeyEvent(Ljavafx/scene/input/KeyEvent;Z)V

    .line 110
    :goto_0
    return-void

    .line 90
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 92
    :cond_2
    sget-object v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$4;->$SwitchMap$javafx$scene$input$KeyCode:[I

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 106
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/input/KeyEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/KeyEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextField;->fireEvent(Ljavafx/event/Event;)V

    .line 107
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->consume()V

    goto :goto_0

    .line 96
    :pswitch_0
    goto :goto_0

    .line 99
    :pswitch_1
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->handleKeyEvent(Ljavafx/scene/input/KeyEvent;Z)V

    .line 100
    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private synthetic lambda$new$293(Ljavafx/scene/control/ComboBoxBase;Ljavafx/scene/input/InputMethodEvent;)V
    .locals 5

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v1, p1

    .local v1, "comboBoxBase":Ljavafx/scene/control/ComboBoxBase;
    move-object v2, p2

    .local v2, "event":Ljavafx/scene/input/InputMethodEvent;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBoxBase;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getFocusOwner()Ljavafx/scene/Node;

    move-result-object v3

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 116
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->getOnInputMethodTextChanged()Ljavafx/event/EventHandler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 117
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->getOnInputMethodTextChanged()Ljavafx/event/EventHandler;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 120
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$299(Ljavafx/scene/input/MouseEvent;)V
    .locals 7

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/MouseEvent;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ComboBoxBase;

    move-object v2, v3

    .line 335
    .local v2, "comboBoxBase":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 336
    move-object v3, v2

    move-object v4, v1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/input/MouseEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/MouseEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ComboBoxBase;->fireEvent(Ljavafx/event/Event;)V

    .line 337
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 339
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$300(Ljavafx/scene/input/DragEvent;)V
    .locals 7

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/DragEvent;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ComboBoxBase;

    move-object v2, v3

    .line 342
    .local v2, "comboBoxBase":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/DragEvent;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 343
    move-object v3, v2

    move-object v4, v1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/input/DragEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/DragEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ComboBoxBase;->fireEvent(Ljavafx/event/Event;)V

    .line 344
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/DragEvent;->consume()V

    .line 346
    :cond_0
    return-void
.end method

.method private positionAndShowPopup()V
    .locals 12

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getPopup()Ljavafx/scene/control/PopupControl;

    move-result-object v5

    move-object v1, v5

    .line 181
    .local v1, "_popup":Ljavafx/scene/control/PopupControl;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/PopupControl;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v6}, Ljavafx/scene/control/ComboBoxBase;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/Scene;->setNodeOrientation(Ljavafx/geometry/NodeOrientation;)V

    .line 184
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getPopupContent()Ljavafx/scene/Node;

    move-result-object v5

    move-object v2, v5

    .line 185
    .local v2, "popupContent":Ljavafx/scene/Node;
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->sizePopup()V

    .line 187
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getPrefPopupPosition()Ljavafx/geometry/Point2D;

    move-result-object v5

    move-object v3, v5

    .line 189
    .local v3, "p":Ljavafx/geometry/Point2D;
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popupNeedsReconfiguring:Z

    .line 190
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->reconfigurePopup()V

    .line 192
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/ComboBoxBase;

    move-object v4, v5

    .line 193
    .local v4, "comboBoxBase":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/ComboBoxBase;->getScene()Ljavafx/scene/Scene;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v6

    move-object v7, v0

    move-object v8, v3

    .line 194
    invoke-virtual {v8}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->snapPosition(D)D

    move-result-wide v7

    move-object v9, v0

    move-object v10, v3

    .line 195
    invoke-virtual {v10}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->snapPosition(D)D

    move-result-wide v9

    .line 193
    invoke-virtual/range {v5 .. v10}, Ljavafx/scene/control/PopupControl;->show(Ljavafx/stage/Window;DD)V

    .line 197
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/Node;->requestFocus()V

    .line 201
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->sizePopup()V

    .line 202
    return-void
.end method

.method private sizePopup()V
    .locals 27

    .prologue
    .line 205
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getPopupContent()Ljavafx/scene/Node;

    move-result-object v20

    move-object/from16 v2, v20

    .line 207
    .local v2, "popupContent":Ljavafx/scene/Node;
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    instance-of v0, v0, Ljavafx/scene/layout/Region;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 209
    move-object/from16 v20, v2

    check-cast v20, Ljavafx/scene/layout/Region;

    move-object/from16 v3, v20

    .line 212
    .local v3, "r":Ljavafx/scene/layout/Region;
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    const-wide/16 v22, 0x0

    invoke-virtual/range {v21 .. v23}, Ljavafx/scene/layout/Region;->prefHeight(D)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v4, v20

    .line 213
    .local v4, "prefHeight":D
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    const-wide/16 v22, 0x0

    invoke-virtual/range {v21 .. v23}, Ljavafx/scene/layout/Region;->minHeight(D)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v6, v20

    .line 214
    .local v6, "minHeight":D
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    const-wide/16 v22, 0x0

    invoke-virtual/range {v21 .. v23}, Ljavafx/scene/layout/Region;->maxHeight(D)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v8, v20

    .line 215
    .local v8, "maxHeight":D
    move-object/from16 v20, v1

    move-wide/from16 v21, v4

    move-wide/from16 v23, v6

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->max(DD)D

    move-result-wide v21

    move-wide/from16 v23, v6

    move-wide/from16 v25, v8

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->max(DD)D

    move-result-wide v23

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->min(DD)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v10, v20

    .line 217
    .local v10, "h":D
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move-wide/from16 v22, v10

    invoke-virtual/range {v21 .. v23}, Ljavafx/scene/layout/Region;->prefWidth(D)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 218
    .local v12, "prefWidth":D
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move-wide/from16 v22, v10

    invoke-virtual/range {v21 .. v23}, Ljavafx/scene/layout/Region;->minWidth(D)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 219
    .local v14, "minWidth":D
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move-wide/from16 v22, v10

    invoke-virtual/range {v21 .. v23}, Ljavafx/scene/layout/Region;->maxWidth(D)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 220
    .local v16, "maxWidth":D
    move-object/from16 v20, v1

    move-wide/from16 v21, v12

    move-wide/from16 v23, v14

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->max(DD)D

    move-result-wide v21

    move-wide/from16 v23, v14

    move-wide/from16 v25, v16

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->max(DD)D

    move-result-wide v23

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->min(DD)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 222
    .local v18, "w":D
    move-object/from16 v20, v2

    move-wide/from16 v21, v18

    move-wide/from16 v23, v10

    invoke-virtual/range {v20 .. v24}, Ljavafx/scene/Node;->resize(DD)V

    .line 223
    .line 226
    .end local v3    # "r":Ljavafx/scene/layout/Region;
    .end local v4    # "prefHeight":D
    .end local v6    # "minHeight":D
    .end local v8    # "maxHeight":D
    .end local v10    # "h":D
    .end local v12    # "prefWidth":D
    .end local v14    # "minWidth":D
    .end local v16    # "maxWidth":D
    .end local v18    # "w":D
    :goto_0
    return-void

    .line 224
    :cond_0
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Node;->autosize()V

    goto :goto_0
.end method


# virtual methods
.method protected abstract getConverter()Ljavafx/util/StringConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/StringConverter",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected getEditableInputNode()Ljavafx/scene/control/TextField;
    .locals 3

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 367
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    .line 368
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TextField;->setFocusTraversable(Z)V

    .line 369
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v1}, Ljavafx/scene/control/TextField;->promptTextProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->comboBoxBase:Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->promptTextProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/StringProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 370
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v1}, Ljavafx/scene/control/TextField;->tooltipProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->comboBoxBase:Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->tooltipProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 373
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v2}, Ljavafx/scene/control/TextField;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->initialTextFieldValue:Ljava/lang/String;

    .line 377
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    return-object v0
.end method

.method protected abstract getEditor()Ljavafx/scene/control/TextField;
.end method

.method protected getPopup()Ljavafx/scene/control/PopupControl;
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popup:Ljavafx/scene/control/PopupControl;

    if-nez v1, :cond_0

    .line 149
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->createPopup()V

    .line 151
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popup:Ljavafx/scene/control/PopupControl;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    return-object v0
.end method

.method protected abstract getPopupContent()Ljavafx/scene/Node;
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popup:Ljavafx/scene/control/PopupControl;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popup:Ljavafx/scene/control/PopupControl;

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControl;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popup:Ljavafx/scene/control/PopupControl;

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControl;->hide()V

    .line 173
    :cond_0
    return-void
.end method

.method reconfigurePopup()V
    .locals 25

    .prologue
    .line 287
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popup:Ljavafx/scene/control/PopupControl;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 321
    :goto_0
    return-void

    .line 289
    :cond_0
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popup:Ljavafx/scene/control/PopupControl;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/PopupControl;->isShowing()Z

    move-result v20

    move/from16 v4, v20

    .line 290
    .local v4, "isShowing":Z
    move/from16 v20, v4

    if-nez v20, :cond_1

    goto :goto_0

    .line 292
    :cond_1
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popupNeedsReconfiguring:Z

    move/from16 v20, v0

    if-nez v20, :cond_2

    goto :goto_0

    .line 293
    :cond_2
    move-object/from16 v20, v3

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popupNeedsReconfiguring:Z

    .line 295
    move-object/from16 v20, v3

    invoke-direct/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getPrefPopupPosition()Ljavafx/geometry/Point2D;

    move-result-object v20

    move-object/from16 v5, v20

    .line 297
    .local v5, "p":Ljavafx/geometry/Point2D;
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getPopupContent()Ljavafx/scene/Node;

    move-result-object v20

    move-object/from16 v6, v20

    .line 298
    .local v6, "popupContent":Ljavafx/scene/Node;
    move-object/from16 v20, v6

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v20

    move-wide/from16 v7, v20

    .line 299
    .local v7, "minWidth":D
    move-object/from16 v20, v6

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v20

    move-wide/from16 v9, v20

    .line 301
    .local v9, "minHeight":D
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v20

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popup:Ljavafx/scene/control/PopupControl;

    move-object/from16 v20, v0

    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/control/PopupControl;->setAnchorX(D)V

    .line 302
    :cond_3
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v20

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_4

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popup:Ljavafx/scene/control/PopupControl;

    move-object/from16 v20, v0

    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/control/PopupControl;->setAnchorY(D)V

    .line 303
    :cond_4
    move-wide/from16 v20, v7

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_5

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popup:Ljavafx/scene/control/PopupControl;

    move-object/from16 v20, v0

    move-wide/from16 v21, v7

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/control/PopupControl;->setMinWidth(D)V

    .line 304
    :cond_5
    move-wide/from16 v20, v9

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_6

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->popup:Ljavafx/scene/control/PopupControl;

    move-object/from16 v20, v0

    move-wide/from16 v21, v9

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/control/PopupControl;->setMinHeight(D)V

    .line 306
    :cond_6
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v20

    move-object/from16 v11, v20

    .line 307
    .local v11, "b":Ljavafx/geometry/Bounds;
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 308
    .local v12, "currentWidth":D
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 309
    .local v14, "currentHeight":D
    move-wide/from16 v20, v12

    move-wide/from16 v22, v7

    cmpg-double v20, v20, v22

    if-gez v20, :cond_9

    move-wide/from16 v20, v7

    :goto_1
    move-wide/from16 v16, v20

    .line 310
    .local v16, "newWidth":D
    move-wide/from16 v20, v14

    move-wide/from16 v22, v9

    cmpg-double v20, v20, v22

    if-gez v20, :cond_a

    move-wide/from16 v20, v9

    :goto_2
    move-wide/from16 v18, v20

    .line 312
    .local v18, "newHeight":D
    move-wide/from16 v20, v16

    move-wide/from16 v22, v12

    cmpl-double v20, v20, v22

    if-nez v20, :cond_7

    move-wide/from16 v20, v18

    move-wide/from16 v22, v14

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_8

    .line 315
    :cond_7
    move-object/from16 v20, v6

    move-wide/from16 v21, v16

    move-wide/from16 v23, v18

    invoke-virtual/range {v20 .. v24}, Ljavafx/scene/Node;->resize(DD)V

    .line 316
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    instance-of v0, v0, Ljavafx/scene/layout/Region;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 317
    move-object/from16 v20, v6

    check-cast v20, Ljavafx/scene/layout/Region;

    move-wide/from16 v21, v16

    move-wide/from16 v23, v18

    invoke-virtual/range {v20 .. v24}, Ljavafx/scene/layout/Region;->setMinSize(DD)V

    .line 318
    move-object/from16 v20, v6

    check-cast v20, Ljavafx/scene/layout/Region;

    move-wide/from16 v21, v16

    move-wide/from16 v23, v18

    invoke-virtual/range {v20 .. v24}, Ljavafx/scene/layout/Region;->setPrefSize(DD)V

    .line 321
    :cond_8
    goto/16 :goto_0

    .line 309
    .end local v16    # "newWidth":D
    .end local v18    # "newHeight":D
    :cond_9
    move-wide/from16 v20, v12

    goto :goto_1

    .line 310
    .restart local v16    # "newWidth":D
    :cond_a
    move-wide/from16 v20, v14

    goto :goto_2
.end method

.method protected setTextFromTextFieldIntoComboBoxValue()V
    .locals 8

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 382
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v6

    move-object v1, v6

    .line 383
    .local v1, "c":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v6, v1

    if-eqz v6, :cond_4

    .line 384
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->comboBoxBase:Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v6}, Ljavafx/scene/control/ComboBoxBase;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 385
    .local v2, "oldValue":Ljava/lang/Object;, "TT;"
    move-object v6, v2

    move-object v3, v6

    .line 386
    .local v3, "value":Ljava/lang/Object;, "TT;"
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v6}, Ljavafx/scene/control/TextField;->getText()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 389
    .local v4, "text":Ljava/lang/String;
    move-object v6, v2

    if-nez v6, :cond_5

    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 390
    :cond_0
    const/4 v6, 0x0

    move-object v3, v6

    .line 399
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    :goto_0
    move-object v6, v3

    if-nez v6, :cond_1

    move-object v6, v2

    if-eqz v6, :cond_3

    :cond_1
    move-object v6, v3

    if-eqz v6, :cond_2

    move-object v6, v3

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 401
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->comboBoxBase:Ljavafx/scene/control/ComboBoxBase;

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljavafx/scene/control/ComboBoxBase;->setValue(Ljava/lang/Object;)V

    .line 404
    :cond_3
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->updateDisplayNode()V

    .line 407
    .end local v1    # "c":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    .end local v2    # "oldValue":Ljava/lang/Object;, "TT;"
    .end local v4    # "text":Ljava/lang/String;
    :cond_4
    return-void

    .line 393
    .restart local v1    # "c":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    .restart local v2    # "oldValue":Ljava/lang/Object;, "TT;"
    .restart local v3    # "value":Ljava/lang/Object;, "TT;"
    .restart local v4    # "text":Ljava/lang/String;
    :cond_5
    move-object v6, v1

    move-object v7, v4

    :try_start_0
    invoke-virtual {v6, v7}, Ljavafx/util/StringConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v3, v6

    .line 396
    goto :goto_0

    .line 394
    :catch_0
    move-exception v6

    move-object v5, v6

    goto :goto_0
.end method

.method public show()V
    .locals 6

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    if-nez v2, :cond_0

    .line 156
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "ComboBox is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getPopupContent()Ljavafx/scene/Node;

    move-result-object v2

    move-object v1, v2

    .line 160
    .local v1, "content":Ljavafx/scene/Node;
    move-object v2, v1

    if-nez v2, :cond_1

    .line 161
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Popup node is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getPopup()Ljavafx/scene/control/PopupControl;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/PopupControl;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_2
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->positionAndShowPopup()V

    .line 167
    goto :goto_0
.end method

.method protected updateDisplayNode()V
    .locals 6

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 411
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->comboBoxBase:Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v4}, Ljavafx/scene/control/ComboBoxBase;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 412
    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v4

    move-object v2, v4

    .line 414
    .local v2, "c":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->initialTextFieldValue:Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->initialTextFieldValue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 416
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->initialTextFieldValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TextField;->setText(Ljava/lang/String;)V

    .line 417
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->initialTextFieldValue:Ljava/lang/String;

    .line 428
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    .end local v2    # "c":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    :cond_0
    :goto_0
    return-void

    .line 420
    .restart local v1    # "value":Ljava/lang/Object;, "TT;"
    .restart local v2    # "c":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    :cond_1
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/util/StringConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 421
    .local v3, "stringValue":Ljava/lang/String;
    move-object v4, v1

    if-eqz v4, :cond_2

    move-object v4, v3

    if-nez v4, :cond_3

    .line 422
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TextField;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_3
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v5}, Ljavafx/scene/control/TextField;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 424
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TextField;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateEditable()V
    .locals 8

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v2

    move-object v1, v2

    .line 460
    .local v1, "newTextField":Ljavafx/scene/control/TextField;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v2

    if-nez v2, :cond_1

    .line 462
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    if-eqz v2, :cond_0

    .line 463
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    sget-object v3, Ljavafx/scene/input/MouseEvent;->DRAG_DETECTED:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textFieldMouseEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TextField;->removeEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 464
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    sget-object v3, Ljavafx/scene/input/DragEvent;->ANY:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textFieldDragEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TextField;->removeEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 466
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->comboBoxBase:Ljavafx/scene/control/ComboBoxBase;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ComboBoxBase;->setInputMethodRequests(Ljavafx/scene/input/InputMethodRequests;)V

    .line 508
    :cond_0
    :goto_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textField:Ljavafx/scene/control/TextField;

    .line 509
    return-void

    .line 468
    :cond_1
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 473
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/MouseEvent;->DRAG_DETECTED:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textFieldMouseEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TextField;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 474
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/DragEvent;->ANY:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->textFieldDragEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TextField;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 477
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->comboBoxBase:Ljavafx/scene/control/ComboBoxBase;

    new-instance v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;-><init>(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;Ljavafx/scene/control/TextField;)V

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ComboBoxBase;->setInputMethodRequests(Ljavafx/scene/input/InputMethodRequests;)V

    goto :goto_0
.end method

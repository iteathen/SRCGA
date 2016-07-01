.class public abstract Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;
.super Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.source "ComboBoxBaseSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase",
        "<",
        "Ljavafx/scene/control/ComboBoxBase",
        "<TT;>;",
        "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field protected arrow:Ljavafx/scene/layout/Region;

.field protected arrowButton:Ljavafx/scene/layout/StackPane;

.field private displayNode:Ljavafx/scene/Node;

.field private mode:Lcom/sun/javafx/scene/control/skin/ComboBoxMode;


# direct methods
.method public constructor <init>(Ljavafx/scene/control/ComboBoxBase;Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;)V
    .locals 9
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
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    move-object v1, p1

    .local v1, "comboBox":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v2, p2

    .local v2, "behavior":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 47
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/control/skin/ComboBoxMode;->COMBOBOX:Lcom/sun/javafx/scene/control/skin/ComboBoxMode;

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->mode:Lcom/sun/javafx/scene/control/skin/ComboBoxMode;

    .line 57
    move-object v3, v0

    new-instance v4, Ljavafx/scene/layout/Region;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/layout/Region;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrow:Ljavafx/scene/layout/Region;

    .line 58
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrow:Ljavafx/scene/layout/Region;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/Region;->setFocusTraversable(Z)V

    .line 59
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrow:Ljavafx/scene/layout/Region;

    invoke-virtual {v3}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "arrow"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 60
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrow:Ljavafx/scene/layout/Region;

    const-string v4, "arrow"

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/Region;->setId(Ljava/lang/String;)V

    .line 61
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrow:Ljavafx/scene/layout/Region;

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/Region;->setMaxWidth(D)V

    .line 62
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrow:Ljavafx/scene/layout/Region;

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/Region;->setMaxHeight(D)V

    .line 63
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrow:Ljavafx/scene/layout/Region;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/Region;->setMouseTransparent(Z)V

    .line 65
    move-object v3, v0

    new-instance v4, Ljavafx/scene/layout/StackPane;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    .line 66
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setFocusTraversable(Z)V

    .line 67
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    const-string v4, "arrow-button"

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setId(Ljava/lang/String;)V

    .line 68
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "arrow-button"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 69
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrow:Ljavafx/scene/layout/Region;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 71
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBoxBase;->isEditable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 77
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 78
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 79
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 82
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 85
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBoxBase;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 92
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ComboBoxBase;->editableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    const-string v5, "EDITABLE"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 93
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ComboBoxBase;->showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    const-string v5, "SHOWING"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 94
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ComboBoxBase;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    const-string v5, "FOCUSED"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 95
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ComboBoxBase;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    const-string v5, "VALUE"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->lambda$new$286(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->lambda$new$287(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->lambda$new$288(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->lambda$new$289(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->lambda$new$290(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private isButton()Z
    .locals 3

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->getMode()Lcom/sun/javafx/scene/control/skin/ComboBoxMode;

    move-result-object v1

    sget-object v2, Lcom/sun/javafx/scene/control/skin/ComboBoxMode;->BUTTON:Lcom/sun/javafx/scene/control/skin/ComboBoxMode;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private synthetic lambda$new$286(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->mouseEntered(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method private synthetic lambda$new$287(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->mousePressed(Ljavafx/scene/input/MouseEvent;)V

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/MouseEvent;->consume()V

    return-void
.end method

.method private synthetic lambda$new$288(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->mouseReleased(Ljavafx/scene/input/MouseEvent;)V

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/MouseEvent;->consume()V

    return-void
.end method

.method private synthetic lambda$new$289(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->mouseExited(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method private synthetic lambda$new$290(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Boolean;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 87
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->focusLost()V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method protected computeBaselineOffset(DDDD)D
    .locals 19

    .prologue
    .line 226
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "topInset":D
    move-wide/from16 v4, p3

    .local v4, "rightInset":D
    move-wide/from16 v6, p5

    .local v6, "bottomInset":D
    move-wide/from16 v8, p7

    .local v8, "leftInset":D
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->displayNode:Ljavafx/scene/Node;

    if-nez v10, :cond_0

    .line 227
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->updateDisplayArea()V

    .line 230
    :cond_0
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->displayNode:Ljavafx/scene/Node;

    if-eqz v10, :cond_1

    .line 231
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->displayNode:Ljavafx/scene/Node;

    invoke-virtual {v10}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v10

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->displayNode:Ljavafx/scene/Node;

    invoke-virtual {v12}, Ljavafx/scene/Node;->getLayoutY()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->displayNode:Ljavafx/scene/Node;

    invoke-virtual {v12}, Ljavafx/scene/Node;->getBaselineOffset()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v1, v10

    .line 234
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    :cond_1
    move-object v10, v1

    move-wide v11, v2

    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v17, v8

    invoke-super/range {v10 .. v18}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->computeBaselineOffset(DDDD)D

    move-result-wide v10

    move-wide v1, v10

    goto :goto_0
.end method

.method protected computeMaxHeight(DDDDD)D
    .locals 15

    .prologue
    .line 220
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/ComboBoxBase;

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/control/ComboBoxBase;->prefHeight(D)D

    move-result-wide v12

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    return-wide v1
.end method

.method protected computeMaxWidth(DDDDD)D
    .locals 15

    .prologue
    .line 216
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/ComboBoxBase;

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/control/ComboBoxBase;->prefWidth(D)D

    move-result-wide v12

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    return-wide v1
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 23

    .prologue
    .line 198
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    move-wide/from16 v3, p1

    .local v3, "width":D
    move-wide/from16 v5, p3

    .local v5, "topInset":D
    move-wide/from16 v7, p5

    .local v7, "rightInset":D
    move-wide/from16 v9, p7

    .local v9, "bottomInset":D
    move-wide/from16 v11, p9

    .local v11, "leftInset":D
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->displayNode:Ljavafx/scene/Node;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 199
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->updateDisplayArea()V

    .line 203
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->displayNode:Ljavafx/scene/Node;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 204
    const/16 v18, 0x15

    move/from16 v15, v18

    .line 205
    .local v15, "DEFAULT_HEIGHT":I
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->isButton()Z

    move-result v18

    if-eqz v18, :cond_1

    const-wide/16 v18, 0x0

    .line 206
    :goto_0
    move-wide/from16 v16, v18

    .line 207
    .local v16, "arrowHeight":D
    const-wide/high16 v18, 0x4035000000000000L    # 21.0

    move-wide/from16 v20, v16

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 212
    .end local v15    # "DEFAULT_HEIGHT":I
    .end local v16    # "arrowHeight":D
    .local v13, "ph":D
    :goto_1
    move-wide/from16 v18, v5

    move-wide/from16 v20, v13

    add-double v18, v18, v20

    move-wide/from16 v20, v9

    add-double v18, v18, v20

    move-wide/from16 v2, v18

    .end local v2    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    return-wide v2

    .line 205
    .end local v13    # "ph":D
    .restart local v2    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    .restart local v15    # "DEFAULT_HEIGHT":I
    :cond_1
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v18, v0

    .line 206
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/StackPane;->snappedTopInset()D

    move-result-wide v18

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrow:Ljavafx/scene/layout/Region;

    move-object/from16 v20, v0

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/layout/Region;->prefHeight(D)D

    move-result-wide v20

    add-double v18, v18, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/layout/StackPane;->snappedBottomInset()D

    move-result-wide v20

    add-double v18, v18, v20

    goto :goto_0

    .line 209
    .end local v15    # "DEFAULT_HEIGHT":I
    :cond_2
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->displayNode:Ljavafx/scene/Node;

    move-object/from16 v18, v0

    move-wide/from16 v19, v3

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v18

    move-wide/from16 v13, v18

    .restart local v13    # "ph":D
    goto :goto_1
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 25

    .prologue
    .line 182
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->displayNode:Ljavafx/scene/Node;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 183
    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->updateDisplayArea()V

    .line 186
    :cond_0
    move-object/from16 v20, v1

    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrow:Ljavafx/scene/layout/Region;

    move-object/from16 v21, v0

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v21 .. v23}, Ljavafx/scene/layout/Region;->prefWidth(D)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 187
    .local v12, "arrowWidth":D
    move-object/from16 v20, v1

    invoke-direct/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->isButton()Z

    move-result v20

    if-eqz v20, :cond_1

    const-wide/16 v20, 0x0

    .line 190
    :goto_0
    move-wide/from16 v14, v20

    .line 191
    .local v14, "arrowButtonWidth":D
    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->displayNode:Ljavafx/scene/Node;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    const-wide/16 v20, 0x0

    :goto_1
    move-wide/from16 v16, v20

    .line 193
    .local v16, "displayNodeWidth":D
    move-wide/from16 v20, v16

    move-wide/from16 v22, v14

    add-double v20, v20, v22

    move-wide/from16 v18, v20

    .line 194
    .local v18, "totalWidth":D
    move-wide/from16 v20, v10

    move-wide/from16 v22, v18

    add-double v20, v20, v22

    move-wide/from16 v22, v6

    add-double v20, v20, v22

    move-wide/from16 v1, v20

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    return-wide v1

    .line 187
    .end local v14    # "arrowButtonWidth":D
    .end local v16    # "displayNodeWidth":D
    .end local v18    # "totalWidth":D
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    :cond_1
    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    .line 188
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/layout/StackPane;->snappedLeftInset()D

    move-result-wide v20

    move-wide/from16 v22, v12

    add-double v20, v20, v22

    move-object/from16 v22, v1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v22, v0

    .line 190
    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/layout/StackPane;->snappedRightInset()D

    move-result-wide v22

    add-double v20, v20, v22

    goto :goto_0

    .line 191
    .restart local v14    # "arrowButtonWidth":D
    :cond_2
    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->displayNode:Ljavafx/scene/Node;

    move-object/from16 v20, v0

    move-wide/from16 v21, v2

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v20

    goto :goto_1
.end method

.method protected focusLost()V
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->hide()V

    .line 100
    return-void
.end method

.method public abstract getDisplayNode()Ljavafx/scene/Node;
.end method

.method protected final getMode()Lcom/sun/javafx/scene/control/skin/ComboBoxMode;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->mode:Lcom/sun/javafx/scene/control/skin/ComboBoxMode;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    return-object v0
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 125
    const-string v2, "SHOWING"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->show()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->hide()V

    goto :goto_0

    .line 131
    :cond_2
    const-string v2, "EDITABLE"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->updateDisplayArea()V

    goto :goto_0

    .line 133
    :cond_3
    const-string v2, "VALUE"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->updateDisplayArea()V

    goto :goto_0
.end method

.method public abstract hide()V
.end method

.method protected layoutChildren(DDDD)V
    .locals 29

    .prologue
    .line 160
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "w":D
    move-wide/from16 v8, p7

    .local v8, "h":D
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->displayNode:Ljavafx/scene/Node;

    if-nez v14, :cond_0

    .line 161
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->updateDisplayArea()V

    .line 164
    :cond_0
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrow:Ljavafx/scene/layout/Region;

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v15 .. v17}, Ljavafx/scene/layout/Region;->prefWidth(D)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->snapSize(D)D

    move-result-wide v14

    move-wide v10, v14

    .line 165
    .local v10, "arrowWidth":D
    move-object v14, v1

    invoke-direct {v14}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->isButton()Z

    move-result v14

    if-eqz v14, :cond_3

    const-wide/16 v14, 0x0

    .line 167
    :goto_0
    move-wide v12, v14

    .line 169
    .local v12, "arrowButtonWidth":D
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->displayNode:Ljavafx/scene/Node;

    if-eqz v14, :cond_1

    .line 170
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->displayNode:Ljavafx/scene/Node;

    move-wide v15, v2

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    move-wide/from16 v21, v12

    sub-double v19, v19, v21

    move-wide/from16 v21, v8

    invoke-virtual/range {v14 .. v22}, Ljavafx/scene/Node;->resizeRelocate(DDDD)V

    .line 173
    :cond_1
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    move-object v15, v1

    invoke-direct {v15}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->isButton()Z

    move-result v15

    if-nez v15, :cond_4

    const/4 v15, 0x1

    :goto_1
    invoke-virtual {v14, v15}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 174
    move-object v14, v1

    invoke-direct {v14}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->isButton()Z

    move-result v14

    if-nez v14, :cond_2

    .line 175
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    move-wide v15, v12

    move-wide/from16 v17, v8

    invoke-virtual/range {v14 .. v18}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 176
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    move-wide/from16 v16, v2

    move-wide/from16 v18, v6

    add-double v16, v16, v18

    move-wide/from16 v18, v12

    sub-double v16, v16, v18

    move-wide/from16 v18, v4

    move-wide/from16 v20, v12

    move-wide/from16 v22, v8

    const-wide/16 v24, 0x0

    sget-object v26, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v27, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v14 .. v27}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 179
    :cond_2
    return-void

    .line 165
    .end local v12    # "arrowButtonWidth":D
    :cond_3
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    .line 166
    invoke-virtual {v14}, Ljavafx/scene/layout/StackPane;->snappedLeftInset()D

    move-result-wide v14

    move-wide/from16 v16, v10

    add-double v14, v14, v16

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    .line 167
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/layout/StackPane;->snappedRightInset()D

    move-result-wide v16

    add-double v14, v14, v16

    goto :goto_0

    .line 173
    .restart local v12    # "arrowButtonWidth":D
    :cond_4
    const/4 v15, 0x0

    goto :goto_1
.end method

.method protected final setMode(Lcom/sun/javafx/scene/control/skin/ComboBoxMode;)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    move-object v1, p1

    .local v1, "value":Lcom/sun/javafx/scene/control/skin/ComboBoxMode;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->mode:Lcom/sun/javafx/scene/control/skin/ComboBoxMode;

    return-void
.end method

.method public abstract show()V
.end method

.method protected updateDisplayArea()V
    .locals 5

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin<TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v1, v3

    .line 140
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->displayNode:Ljavafx/scene/Node;

    move-object v2, v3

    .line 141
    .local v2, "oldDisplayNode":Ljavafx/scene/Node;
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->getDisplayNode()Ljavafx/scene/Node;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->displayNode:Ljavafx/scene/Node;

    .line 144
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->displayNode:Ljavafx/scene/Node;

    if-eq v3, v4, :cond_0

    .line 145
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 148
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->displayNode:Ljavafx/scene/Node;

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->displayNode:Ljavafx/scene/Node;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->displayNode:Ljavafx/scene/Node;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 150
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxBaseSkin;->displayNode:Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->applyCss()V

    .line 152
    :cond_1
    return-void
.end method

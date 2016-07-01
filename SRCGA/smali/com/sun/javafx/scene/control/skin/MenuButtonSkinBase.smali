.class public abstract Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;
.super Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.source "MenuButtonSkinBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase$MenuLabeledImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljavafx/scene/control/MenuButton;",
        "B:",
        "Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase",
        "<TC;>;>",
        "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase",
        "<TC;TB;>;"
    }
.end annotation


# instance fields
.field protected final arrow:Ljavafx/scene/layout/StackPane;

.field protected final arrowButton:Ljavafx/scene/layout/StackPane;

.field protected behaveLikeButton:Z

.field private itemsChangedListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/control/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field protected final label:Lcom/sun/javafx/scene/control/skin/LabeledImpl;

.field protected popup:Ljavafx/scene/control/ContextMenu;


# direct methods
.method public constructor <init>(Ljavafx/scene/control/MenuButton;Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TB;)V"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/MenuButton;, "TC;"
    move-object v2, p2

    .local v2, "behavior":Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;, "TB;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 59
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->behaveLikeButton:Z

    .line 75
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MenuButton;->getOnMousePressed()Ljavafx/event/EventHandler;

    move-result-object v3

    if-nez v3, :cond_0

    .line 76
    move-object v3, v1

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/MenuButton;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 81
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MenuButton;->getOnMouseReleased()Ljavafx/event/EventHandler;

    move-result-object v3

    if-nez v3, :cond_1

    .line 82
    move-object v3, v1

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/MenuButton;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 90
    :cond_1
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase$MenuLabeledImpl;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/MenuButton;

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase$MenuLabeledImpl;-><init>(Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;Ljavafx/scene/control/MenuButton;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->label:Lcom/sun/javafx/scene/control/skin/LabeledImpl;

    .line 91
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->label:Lcom/sun/javafx/scene/control/skin/LabeledImpl;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->isMnemonicParsing()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/LabeledImpl;->setMnemonicParsing(Z)V

    .line 92
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->label:Lcom/sun/javafx/scene/control/skin/LabeledImpl;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/LabeledImpl;->setLabelFor(Ljavafx/scene/Node;)V

    .line 94
    move-object v3, v0

    new-instance v4, Ljavafx/scene/layout/StackPane;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->arrow:Ljavafx/scene/layout/StackPane;

    .line 95
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->arrow:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

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

    .line 96
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->arrow:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->setMaxWidth(D)V

    .line 97
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->arrow:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->setMaxHeight(D)V

    .line 99
    move-object v3, v0

    new-instance v4, Ljavafx/scene/layout/StackPane;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->arrowButton:Ljavafx/scene/layout/StackPane;

    .line 100
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->arrowButton:Ljavafx/scene/layout/StackPane;

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

    .line 101
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->arrowButton:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->arrow:Ljavafx/scene/layout/StackPane;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 103
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/ContextMenu;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/control/ContextMenu;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->popup:Ljavafx/scene/control/ContextMenu;

    .line 104
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->clear()V

    .line 105
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 107
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->clear()V

    .line 108
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/scene/Node;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->label:Lcom/sun/javafx/scene/control/skin/LabeledImpl;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->arrowButton:Ljavafx/scene/layout/StackPane;

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    .line 110
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v3}, Ljavafx/scene/control/MenuButton;->requestLayout()V

    .line 112
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->itemsChangedListener:Ljavafx/collections/ListChangeListener;

    .line 118
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MenuButton;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->itemsChangedListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 120
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v3}, Ljavafx/scene/control/MenuButton;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 121
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v3}, Ljavafx/scene/control/MenuButton;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->addAcceleratorsIntoScene(Ljavafx/collections/ObservableList;Ljavafx/scene/Node;)V

    .line 123
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MenuButton;->sceneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 143
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    const-string v5, "SHOWING"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 144
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    const-string v5, "FOCUSED"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 145
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->mnemonicParsingProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    const-string v5, "MNEMONIC_PARSING"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 146
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v4}, Ljavafx/scene/control/ContextMenu;->showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    const-string v5, "POPUP_VISIBLE"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->lambda$new$406(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->lambda$new$407(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->lambda$new$408(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/Scene;Ljavafx/scene/Scene;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->lambda$new$409(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/Scene;Ljavafx/scene/Scene;)V

    return-void
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenu;->hide()V

    .line 189
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$406(Ljavafx/scene/input/MouseEvent;)V
    .locals 5

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->behaveLikeButton:Z

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;->mousePressed(Ljavafx/scene/input/MouseEvent;Z)V

    .line 78
    return-void
.end method

.method private synthetic lambda$new$407(Ljavafx/scene/input/MouseEvent;)V
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->behaveLikeButton:Z

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;->mouseReleased(Ljavafx/scene/input/MouseEvent;Z)V

    .line 84
    return-void
.end method

.method private synthetic lambda$new$408(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 5

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v2}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    .line 115
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v2}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljavafx/collections/ObservableList;->addAll(ILjava/util/Collection;)Z

    move-result v2

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$409(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/Scene;Ljavafx/scene/Scene;)V
    .locals 6

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
    move-object v1, p1

    .local v1, "scene":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljavafx/scene/Scene;
    move-object v3, p3

    .local v3, "newValue":Ljavafx/scene/Scene;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 125
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->addAcceleratorsIntoScene(Ljavafx/collections/ObservableList;Ljavafx/scene/Node;)V

    .line 127
    :cond_0
    return-void
.end method

.method private show()V
    .locals 8

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenu;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->popup:Ljavafx/scene/control/ContextMenu;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v3}, Ljavafx/scene/control/MenuButton;->getPopupSide()Ljavafx/geometry/Side;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Ljavafx/scene/control/ContextMenu;->show(Ljavafx/scene/Node;Ljavafx/geometry/Side;DD)V

    .line 182
    :cond_0
    return-void
.end method


# virtual methods
.method protected computeMaxHeight(DDDDD)D
    .locals 15

    .prologue
    .line 269
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
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

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/MenuButton;

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/control/MenuButton;->prefHeight(D)D

    move-result-wide v12

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
    return-wide v1
.end method

.method protected computeMaxWidth(DDDDD)D
    .locals 15

    .prologue
    .line 265
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
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

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/MenuButton;

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/control/MenuButton;->prefWidth(D)D

    move-result-wide v12

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
    return-wide v1
.end method

.method protected computeMinHeight(DDDDD)D
    .locals 21

    .prologue
    .line 246
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
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
    move-wide v12, v4

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->label:Lcom/sun/javafx/scene/control/skin/LabeledImpl;

    move-wide v15, v2

    .line 247
    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/LabeledImpl;->minHeight(D)D

    move-result-wide v14

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->arrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v17, v0

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/layout/StackPane;->minHeight(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->snapSize(D)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v8

    add-double/2addr v12, v14

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
    return-wide v1
.end method

.method protected computeMinWidth(DDDDD)D
    .locals 19

    .prologue
    .line 239
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
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
    move-wide v12, v10

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->label:Lcom/sun/javafx/scene/control/skin/LabeledImpl;

    move-wide v15, v2

    .line 240
    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/LabeledImpl;->minWidth(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->arrowButton:Ljavafx/scene/layout/StackPane;

    move-wide/from16 v16, v2

    .line 241
    invoke-virtual/range {v15 .. v17}, Ljavafx/scene/layout/StackPane;->minWidth(D)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->snapSize(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v6

    add-double/2addr v12, v14

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
    return-wide v1
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 21

    .prologue
    .line 259
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
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
    move-wide v12, v4

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->label:Lcom/sun/javafx/scene/control/skin/LabeledImpl;

    move-wide v15, v2

    .line 260
    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/LabeledImpl;->prefHeight(D)D

    move-result-wide v14

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->arrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v17, v0

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->snapSize(D)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v8

    add-double/2addr v12, v14

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
    return-wide v1
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 19

    .prologue
    .line 252
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
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
    move-wide v12, v10

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->label:Lcom/sun/javafx/scene/control/skin/LabeledImpl;

    move-wide v15, v2

    .line 253
    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/LabeledImpl;->prefWidth(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->arrowButton:Ljavafx/scene/layout/StackPane;

    move-wide/from16 v16, v2

    .line 254
    invoke-virtual/range {v15 .. v17}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->snapSize(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v6

    add-double/2addr v12, v14

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
    return-wide v1
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v2}, Ljavafx/scene/control/MenuButton;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->itemsChangedListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 152
    move-object v2, v0

    invoke-super {v2}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->dispose()V

    .line 153
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->popup:Ljavafx/scene/control/ContextMenu;

    if-eqz v2, :cond_1

    .line 154
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v2}, Ljavafx/scene/control/ContextMenu;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v2}, Ljavafx/scene/control/ContextMenu;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/scene/control/Skin;->getNode()Ljavafx/scene/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 155
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v2}, Ljavafx/scene/control/ContextMenu;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/scene/control/Skin;->getNode()Ljavafx/scene/Node;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v1, v2

    .line 156
    .local v1, "cmContent":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->dispose()V

    .line 157
    const/4 v2, 0x0

    move-object v1, v2

    .line 159
    .end local v1    # "cmContent":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->popup:Ljavafx/scene/control/ContextMenu;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ContextMenu;->setSkin(Ljavafx/scene/control/Skin;)V

    .line 160
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->popup:Ljavafx/scene/control/ContextMenu;

    .line 162
    :cond_1
    return-void
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 197
    const-string v2, "SHOWING"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v2}, Ljavafx/scene/control/MenuButton;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->show()V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->hide()V

    goto :goto_0

    .line 203
    :cond_2
    const-string v2, "FOCUSED"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 205
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v2}, Ljavafx/scene/control/MenuButton;->isFocused()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v2}, Ljavafx/scene/control/MenuButton;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 206
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->hide()V

    .line 208
    :cond_3
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v2}, Ljavafx/scene/control/MenuButton;->isFocused()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v2}, Ljavafx/scene/control/ContextMenu;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->hide()V

    goto :goto_0

    .line 211
    :cond_4
    const-string v2, "POPUP_VISIBLE"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 212
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v2}, Ljavafx/scene/control/ContextMenu;->isShowing()Z

    move-result v2

    if-nez v2, :cond_5

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v2}, Ljavafx/scene/control/MenuButton;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 215
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v2}, Ljavafx/scene/control/MenuButton;->hide()V

    .line 218
    :cond_5
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v2}, Ljavafx/scene/control/ContextMenu;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 219
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->popup:Ljavafx/scene/control/ContextMenu;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v3}, Ljavafx/scene/control/MenuButton;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->impl_isShowMnemonics()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/Utils;->addMnemonics(Ljavafx/scene/control/ContextMenu;Ljavafx/scene/Scene;Z)V

    goto/16 :goto_0

    .line 222
    :cond_6
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->popup:Ljavafx/scene/control/ContextMenu;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v3}, Ljavafx/scene/control/MenuButton;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/Utils;->removeMnemonics(Ljavafx/scene/control/ContextMenu;Ljavafx/scene/Scene;)V

    goto/16 :goto_0

    .line 226
    :cond_7
    const-string v2, "MNEMONIC_PARSING"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->label:Lcom/sun/javafx/scene/control/skin/LabeledImpl;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v3}, Ljavafx/scene/control/MenuButton;->isMnemonicParsing()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/LabeledImpl;->setMnemonicParsing(Z)V

    .line 228
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v2}, Ljavafx/scene/control/MenuButton;->requestLayout()V

    goto/16 :goto_0
.end method

.method protected layoutChildren(DDDD)V
    .locals 21

    .prologue
    .line 274
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>;"
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "w":D
    move-wide/from16 v7, p7

    .local v7, "h":D
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->arrowButton:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->snapSize(D)D

    move-result-wide v11

    move-wide v9, v11

    .line 275
    .local v9, "arrowButtonWidth":D
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->label:Lcom/sun/javafx/scene/control/skin/LabeledImpl;

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v9

    sub-double v16, v16, v18

    move-wide/from16 v18, v7

    invoke-virtual/range {v11 .. v19}, Lcom/sun/javafx/scene/control/skin/LabeledImpl;->resizeRelocate(DDDD)V

    .line 276
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;->arrowButton:Ljavafx/scene/layout/StackPane;

    move-wide v12, v1

    move-wide v14, v5

    move-wide/from16 v16, v9

    sub-double v14, v14, v16

    add-double/2addr v12, v14

    move-wide v14, v3

    move-wide/from16 v16, v9

    move-wide/from16 v18, v7

    invoke-virtual/range {v11 .. v19}, Ljavafx/scene/layout/StackPane;->resizeRelocate(DDDD)V

    .line 277
    return-void
.end method

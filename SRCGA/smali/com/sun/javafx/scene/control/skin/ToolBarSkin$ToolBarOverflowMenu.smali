.class Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;
.super Ljavafx/scene/layout/StackPane;
.source "ToolBarSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToolBarOverflowMenu"
.end annotation


# instance fields
.field private downArrow:Ljavafx/scene/layout/StackPane;

.field private menuItems:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private popup:Ljavafx/scene/control/ContextMenu;

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;Ljavafx/collections/ObservableList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v2, p2

    .local v2, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/MenuItem;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    .line 605
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "tool-bar-overflow-button"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 606
    move-object v3, v0

    sget-object v4, Ljavafx/scene/AccessibleRole;->BUTTON:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 607
    move-object v3, v0

    const-string v4, "Accessibility.title.ToolBar.OverflowButton"

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->setAccessibleText(Ljava/lang/String;)V

    .line 608
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->setFocusTraversable(Z)V

    .line 609
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->menuItems:Ljavafx/collections/ObservableList;

    .line 610
    move-object v3, v0

    new-instance v4, Ljavafx/scene/layout/StackPane;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->downArrow:Ljavafx/scene/layout/StackPane;

    .line 611
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->downArrow:Ljavafx/scene/layout/StackPane;

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

    .line 612
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->downArrow:Ljavafx/scene/layout/StackPane;

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 616
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->setOnKeyPressed(Ljavafx/event/EventHandler;)V

    .line 635
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 642
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/ContextMenu;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/control/ContextMenu;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->popup:Ljavafx/scene/control/ContextMenu;

    .line 643
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->setVisible(Z)V

    .line 644
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->setManaged(Z)V

    .line 645
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->downArrow:Ljavafx/scene/layout/StackPane;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 646
    return-void
.end method

.method static synthetic access$800(Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;)V
    .locals 2

    .prologue
    .line 599
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->fire()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->lambda$new$517(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->lambda$new$518(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->lambda$new$519(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private fire()V
    .locals 8

    .prologue
    .line 649
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenu;->hide()V

    .line 656
    :goto_0
    return-void

    .line 652
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->clear()V

    .line 653
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->menuItems:Ljavafx/collections/ObservableList;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v1

    .line 654
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->popup:Ljavafx/scene/control/ContextMenu;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->downArrow:Ljavafx/scene/layout/StackPane;

    sget-object v3, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Ljavafx/scene/control/ContextMenu;->show(Ljavafx/scene/Node;Ljavafx/geometry/Side;DD)V

    goto :goto_0
.end method

.method private synthetic lambda$new$517(Ljavafx/scene/input/MouseEvent;)V
    .locals 3

    .prologue
    .line 613
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;
    move-object v1, p1

    .local v1, "me":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->fire()V

    .line 614
    return-void
.end method

.method private synthetic lambda$new$518(Ljavafx/scene/input/KeyEvent;)V
    .locals 10

    .prologue
    .line 617
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;
    move-object v2, p1

    .local v2, "ke":Ljavafx/scene/input/KeyEvent;
    sget-object v3, Ljavafx/scene/input/KeyCode;->SPACE:Ljavafx/scene/input/KeyCode;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/input/KeyCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 618
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 619
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->clear()V

    .line 620
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->menuItems:Ljavafx/collections/ObservableList;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 621
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->popup:Ljavafx/scene/control/ContextMenu;

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->downArrow:Ljavafx/scene/layout/StackPane;

    sget-object v5, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/control/ContextMenu;->show(Ljavafx/scene/Node;Ljavafx/geometry/Side;DD)V

    .line 623
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 633
    :cond_1
    :goto_0
    return-void

    .line 624
    :cond_2
    sget-object v3, Ljavafx/scene/input/KeyCode;->ESCAPE:Ljavafx/scene/input/KeyCode;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/input/KeyCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 625
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 626
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->hide()V

    .line 628
    :cond_3
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->consume()V

    goto :goto_0

    .line 629
    :cond_4
    sget-object v3, Ljavafx/scene/input/KeyCode;->ENTER:Ljavafx/scene/input/KeyCode;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/input/KeyCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 630
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->fire()V

    .line 631
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->consume()V

    goto :goto_0
.end method

.method private synthetic lambda$new$519(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 636
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Boolean;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 637
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Ljavafx/scene/layout/Pane;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 638
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->setFocusTraversable(Z)V

    .line 641
    :cond_0
    return-void
.end method


# virtual methods
.method protected computePrefHeight(D)D
    .locals 9

    .prologue
    .line 663
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->snappedTopInset()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->snappedBottomInset()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;
    return-wide v1
.end method

.method protected computePrefWidth(D)D
    .locals 9

    .prologue
    .line 659
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;
    move-wide v2, p1

    .local v2, "height":D
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->snappedLeftInset()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->snappedRightInset()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;
    return-wide v1
.end method

.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$4;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 687
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-super {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 689
    :goto_0
    return-void

    .line 686
    :pswitch_0
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->fire()V

    goto :goto_0

    .line 685
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected layoutChildren()V
    .locals 24

    .prologue
    .line 667
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;
    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->downArrow:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->snapSize(D)D

    move-result-wide v10

    move-wide v2, v10

    .line 668
    .local v2, "w":D
    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->downArrow:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->snapSize(D)D

    move-result-wide v10

    move-wide v4, v10

    .line 669
    .local v4, "h":D
    move-object v10, v1

    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->getWidth()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->snapSize(D)D

    move-result-wide v10

    move-wide v12, v2

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    move-wide v6, v10

    .line 670
    .local v6, "x":D
    move-object v10, v1

    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->getHeight()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->snapSize(D)D

    move-result-wide v10

    move-wide v12, v4

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    move-wide v8, v10

    .line 674
    .local v8, "y":D
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/ToolBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ToolBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v10

    sget-object v11, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v10, v11, :cond_0

    .line 675
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->downArrow:Ljavafx/scene/layout/StackPane;

    const-wide/16 v11, 0x0

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/StackPane;->setRotate(D)V

    .line 678
    :cond_0
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->downArrow:Ljavafx/scene/layout/StackPane;

    move-wide v11, v2

    move-wide v13, v4

    invoke-virtual {v10, v11, v12, v13, v14}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 679
    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->downArrow:Ljavafx/scene/layout/StackPane;

    move-wide v12, v6

    move-wide v14, v8

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    const-wide/16 v20, 0x0

    sget-object v22, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v23, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v10 .. v23}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 681
    return-void
.end method

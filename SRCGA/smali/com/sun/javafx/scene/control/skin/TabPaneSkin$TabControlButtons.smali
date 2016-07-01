.class Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
.super Ljavafx/scene/layout/StackPane;
.source "TabPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabControlButtons"
.end annotation


# instance fields
.field private downArrow:Ljavafx/scene/layout/StackPane;

.field private downArrowBtn:Ljavafx/scene/layout/Pane;

.field private inner:Ljavafx/scene/layout/StackPane;

.field private popup:Ljavafx/scene/control/ContextMenu;

.field private showControlButtons:Z

.field private showTabsMenu:Z

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)V
    .locals 9

    .prologue
    .line 1604
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    .line 1690
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->showTabsMenu:Z

    .line 1605
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "control-buttons-tab"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 1607
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TabPane;

    move-object v2, v3

    .line 1609
    .local v2, "tabPane":Ljavafx/scene/control/TabPane;
    move-object v3, v0

    new-instance v4, Ljavafx/scene/layout/Pane;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/layout/Pane;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->downArrowBtn:Ljavafx/scene/layout/Pane;

    .line 1610
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->downArrowBtn:Ljavafx/scene/layout/Pane;

    invoke-virtual {v3}, Ljavafx/scene/layout/Pane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "tab-down-button"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 1611
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->downArrowBtn:Ljavafx/scene/layout/Pane;

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->isShowTabsMenu()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/Pane;->setVisible(Z)V

    .line 1612
    move-object v3, v0

    new-instance v4, Ljavafx/scene/layout/StackPane;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->downArrow:Ljavafx/scene/layout/StackPane;

    .line 1613
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->downArrow:Ljavafx/scene/layout/StackPane;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setManaged(Z)V

    .line 1614
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->downArrow:Ljavafx/scene/layout/StackPane;

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

    .line 1615
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->downArrow:Ljavafx/scene/layout/StackPane;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TabPane;->getSide()Ljavafx/geometry/Side;

    move-result-object v4

    sget-object v5, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    invoke-virtual {v4, v5}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide v4, 0x4066800000000000L    # 180.0

    :goto_0
    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->setRotate(D)V

    .line 1616
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->downArrowBtn:Ljavafx/scene/layout/Pane;

    invoke-virtual {v3}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->downArrow:Ljavafx/scene/layout/StackPane;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1617
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->downArrowBtn:Ljavafx/scene/layout/Pane;

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/Pane;->setOnMouseClicked(Ljavafx/event/EventHandler;)V

    .line 1621
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->setupPopupMenu()V

    .line 1623
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->inner:Ljavafx/scene/layout/StackPane;

    .line 1672
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->inner:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "container"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1673
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->inner:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->downArrowBtn:Ljavafx/scene/layout/Pane;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1675
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->inner:Ljavafx/scene/layout/StackPane;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1677
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->sideProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 1681
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 1682
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->showControlButtons:Z

    .line 1683
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->isShowTabsMenu()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1684
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->showControlButtons:Z

    .line 1685
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->requestLayout()V

    .line 1687
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v3

    const-class v4, Ljavafx/scene/control/ContextMenu;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-interface {v3, v4, v5}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1688
    return-void

    .line 1615
    :cond_1
    const-wide/16 v4, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$3000(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;Z)V
    .locals 4

    .prologue
    .line 1597
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->showTabsMenu(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;)Z
    .locals 2

    .prologue
    .line 1597
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->isShowTabsMenu()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    return v0
.end method

.method static synthetic access$4300(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;)Ljavafx/scene/layout/StackPane;
    .locals 2

    .prologue
    .line 1597
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->downArrow:Ljavafx/scene/layout/StackPane;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    return-object v0
.end method

.method static synthetic access$4400(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;)Ljavafx/scene/layout/Pane;
    .locals 2

    .prologue
    .line 1597
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->downArrowBtn:Ljavafx/scene/layout/Pane;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    return-object v0
.end method

.method static synthetic access$600(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;)Ljavafx/scene/control/ContextMenu;
    .locals 2

    .prologue
    .line 1597
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->popup:Ljavafx/scene/control/ContextMenu;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->lambda$new$492(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->lambda$new$493(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->lambda$new$494(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;Ljavafx/scene/control/Tab;Ljavafx/event/ActionEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->lambda$setupPopupMenu$495(Ljavafx/scene/control/Tab;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private hideControlButtons()V
    .locals 3

    .prologue
    .line 1748
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->isShowTabsMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1749
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->showControlButtons:Z

    .line 1759
    :goto_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->requestLayout()V

    .line 1760
    return-void

    .line 1751
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->setVisible(Z)V

    .line 1752
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->clear()V

    .line 1753
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->popup:Ljavafx/scene/control/ContextMenu;

    goto :goto_0
.end method

.method private isShowTabsMenu()Z
    .locals 2

    .prologue
    .line 1707
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->showTabsMenu:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    return v0
.end method

.method private synthetic lambda$new$492(Ljavafx/scene/input/MouseEvent;)V
    .locals 3

    .prologue
    .line 1618
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    move-object v1, p1

    .local v1, "me":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->showPopupMenu()V

    .line 1619
    return-void
.end method

.method private synthetic lambda$new$493(Ljavafx/beans/Observable;)V
    .locals 6

    .prologue
    .line 1678
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->getSide()Ljavafx/geometry/Side;

    move-result-object v3

    move-object v2, v3

    .line 1679
    .local v2, "tabPosition":Ljavafx/geometry/Side;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->downArrow:Ljavafx/scene/layout/StackPane;

    move-object v4, v2

    sget-object v5, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    invoke-virtual {v4, v5}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide v4, 0x4066800000000000L    # 180.0

    :goto_0
    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->setRotate(D)V

    .line 1680
    return-void

    .line 1679
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method private synthetic lambda$new$494(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 3

    .prologue
    .line 1681
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->setupPopupMenu()V

    return-void
.end method

.method private synthetic lambda$setupPopupMenu$495(Ljavafx/scene/control/Tab;Ljavafx/event/ActionEvent;)V
    .locals 5

    .prologue
    .line 1772
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    move-object v1, p1

    .local v1, "tab":Ljavafx/scene/control/Tab;
    move-object v2, p2

    .local v2, "t":Ljavafx/event/ActionEvent;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/SingleSelectionModel;->select(Ljava/lang/Object;)V

    return-void
.end method

.method private setupPopupMenu()V
    .locals 11

    .prologue
    .line 1763
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->popup:Ljavafx/scene/control/ContextMenu;

    if-nez v6, :cond_0

    .line 1764
    move-object v6, v0

    new-instance v7, Ljavafx/scene/control/ContextMenu;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljavafx/scene/control/ContextMenu;-><init>()V

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->popup:Ljavafx/scene/control/ContextMenu;

    .line 1766
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v6}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->clear()V

    .line 1767
    new-instance v6, Ljavafx/scene/control/ToggleGroup;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljavafx/scene/control/ToggleGroup;-><init>()V

    move-object v1, v6

    .line 1768
    .local v1, "group":Ljavafx/scene/control/ToggleGroup;
    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v2, v6

    .line 1769
    .local v2, "menuitems":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/RadioMenuItem;>;"
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TabPane;

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/Tab;

    move-object v4, v6

    .line 1770
    .local v4, "tab":Ljavafx/scene/control/Tab;
    new-instance v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Ljavafx/scene/control/Tab;)V

    move-object v5, v6

    .line 1771
    .local v5, "item":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;->setToggleGroup(Ljavafx/scene/control/ToggleGroup;)V

    .line 1772
    move-object v6, v5

    move-object v7, v0

    move-object v8, v4

    invoke-static {v7, v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;Ljavafx/scene/control/Tab;)Ljavafx/event/EventHandler;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 1773
    move-object v6, v2

    move-object v7, v5

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1774
    goto :goto_0

    .line 1775
    .end local v4    # "tab":Ljavafx/scene/control/Tab;
    .end local v5    # "item":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v6}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v2

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v6

    .line 1776
    return-void
.end method

.method private showControlButtons()V
    .locals 3

    .prologue
    .line 1739
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->setVisible(Z)V

    .line 1740
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->popup:Ljavafx/scene/control/ContextMenu;

    if-nez v1, :cond_0

    .line 1741
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->setupPopupMenu()V

    .line 1743
    :cond_0
    return-void
.end method

.method private showPopupMenu()V
    .locals 12

    .prologue
    .line 1779
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v5}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/MenuItem;

    move-object v3, v5

    .line 1780
    .local v3, "mi":Ljavafx/scene/control/MenuItem;
    move-object v5, v3

    check-cast v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;

    move-object v4, v5

    .line 1781
    .local v4, "tmi":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$2900(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Ljavafx/scene/control/Tab;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;->getTab()Ljavafx/scene/control/Tab;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1782
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;->setSelected(Z)V

    .line 1783
    .line 1786
    .end local v3    # "mi":Ljavafx/scene/control/MenuItem;
    .end local v4    # "tmi":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->popup:Ljavafx/scene/control/ContextMenu;

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->downArrowBtn:Ljavafx/scene/layout/Pane;

    sget-object v7, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Ljavafx/scene/control/ContextMenu;->show(Ljavafx/scene/Node;Ljavafx/geometry/Side;DD)V

    .line 1787
    return-void

    .line 1785
    .restart local v3    # "mi":Ljavafx/scene/control/MenuItem;
    .restart local v4    # "tmi":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;
    :cond_1
    goto :goto_0
.end method

.method private showTabsMenu(Z)V
    .locals 5

    .prologue
    .line 1693
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    move v1, p1

    .local v1, "value":Z
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->isShowTabsMenu()Z

    move-result v3

    move v2, v3

    .line 1694
    .local v2, "wasTabsMenuShowing":Z
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->showTabsMenu:Z

    .line 1696
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->showTabsMenu:Z

    if-eqz v3, :cond_1

    move v3, v2

    if-nez v3, :cond_1

    .line 1697
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->downArrowBtn:Ljavafx/scene/layout/Pane;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/Pane;->setVisible(Z)V

    .line 1698
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->showControlButtons:Z

    .line 1699
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->inner:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->requestLayout()V

    .line 1700
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$2200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->requestLayout()V

    .line 1704
    :cond_0
    :goto_0
    return-void

    .line 1701
    :cond_1
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->showTabsMenu:Z

    if-nez v3, :cond_0

    move v3, v2

    if-eqz v3, :cond_0

    .line 1702
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->hideControlButtons()V

    goto :goto_0
.end method


# virtual methods
.method protected computePrefHeight(D)D
    .locals 11

    .prologue
    .line 1719
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TabPane;

    invoke-virtual {v4}, Ljavafx/scene/control/TabPane;->getTabMinHeight()D

    move-result-wide v4

    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->inner:Ljavafx/scene/layout/StackPane;

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->snapSize(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    move-object v6, v1

    .line 1720
    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->snappedTopInset()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->snappedBottomInset()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    return-wide v1
.end method

.method protected computePrefWidth(D)D
    .locals 13

    .prologue
    .line 1711
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    move-wide v2, p1

    .local v2, "height":D
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->inner:Ljavafx/scene/layout/StackPane;

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->snapSize(D)D

    move-result-wide v6

    move-wide v4, v6

    .line 1712
    .local v4, "pw":D
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    .line 1713
    move-wide v6, v4

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->snappedLeftInset()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->snappedRightInset()D

    move-result-wide v10

    add-double/2addr v8, v10

    add-double/2addr v6, v8

    move-wide v4, v6

    .line 1715
    :cond_0
    move-wide v6, v4

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    return-wide v1
.end method

.method protected layoutChildren()V
    .locals 24

    .prologue
    .line 1724
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->snappedLeftInset()D

    move-result-wide v10

    move-wide v2, v10

    .line 1725
    .local v2, "x":D
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->snappedTopInset()D

    move-result-wide v10

    move-wide v4, v10

    .line 1726
    .local v4, "y":D
    move-object v10, v1

    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->getWidth()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->snapSize(D)D

    move-result-wide v10

    move-wide v12, v2

    sub-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->snappedRightInset()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v6, v10

    .line 1727
    .local v6, "w":D
    move-object v10, v1

    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->getHeight()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->snapSize(D)D

    move-result-wide v10

    move-wide v12, v4

    sub-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->snappedBottomInset()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v8, v10

    .line 1729
    .local v8, "h":D
    move-object v10, v1

    iget-boolean v10, v10, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->showControlButtons:Z

    if-eqz v10, :cond_0

    .line 1730
    move-object v10, v1

    invoke-direct {v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->showControlButtons()V

    .line 1731
    move-object v10, v1

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->showControlButtons:Z

    .line 1734
    :cond_0
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->inner:Ljavafx/scene/layout/StackPane;

    move-wide v11, v6

    move-wide v13, v8

    invoke-virtual {v10, v11, v12, v13, v14}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 1735
    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->inner:Ljavafx/scene/layout/StackPane;

    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    const-wide/16 v20, 0x0

    sget-object v22, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v23, Ljavafx/geometry/VPos;->BOTTOM:Ljavafx/geometry/VPos;

    invoke-virtual/range {v10 .. v23}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 1736
    return-void
.end method

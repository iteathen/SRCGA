.class public Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;
.super Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;
.source "TreeTableViewSkin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase",
        "<TS;",
        "Ljavafx/scene/control/TreeItem",
        "<TS;>;",
        "Ljavafx/scene/control/TreeTableView",
        "<TS;>;",
        "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior",
        "<TS;>;",
        "Ljavafx/scene/control/TreeTableRow",
        "<TS;>;",
        "Ljavafx/scene/control/TreeTableColumn",
        "<TS;*>;>;"
    }
.end annotation


# instance fields
.field private rootListener:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private tableBackingList:Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList",
            "<TS;>;"
        }
    .end annotation
.end field

.field private tableBackingListProperty:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;>;>;"
        }
    .end annotation
.end field

.field private treeTableView:Ljavafx/scene/control/TreeTableView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;"
        }
    .end annotation
.end field

.field private weakRootListener:Ljavafx/event/WeakEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/WeakEventHandler",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private weakRootRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TreeTableView;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v2, p1

    .local v2, "treeTableView":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v5, v1

    move-object v6, v2

    new-instance v7, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-direct {v8, v9}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;-><init>(Ljavafx/scene/control/TreeTableView;)V

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 156
    move-object v5, v1

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;)Ljavafx/event/EventHandler;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->rootListener:Ljavafx/event/EventHandler;

    .line 61
    move-object v5, v1

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    .line 62
    move-object v5, v1

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;-><init>(Ljavafx/scene/control/TreeTableView;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->tableBackingList:Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;

    .line 63
    move-object v5, v1

    new-instance v6, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->tableBackingList:Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;

    invoke-direct {v7, v8}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->tableBackingListProperty:Ljavafx/beans/property/ObjectProperty;

    .line 65
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView;->getFixedCellSize()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setFixedCellSize(D)V

    .line 67
    move-object v5, v1

    move-object v6, v2

    invoke-super {v5, v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->init(Ljavafx/scene/control/Control;)V

    .line 69
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->setRoot(Ljavafx/scene/control/TreeItem;)V

    .line 71
    move-object v5, v2

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/TreeTableView;)Ljavafx/event/EventHandler;

    move-result-object v5

    move-object v3, v5

    .line 88
    .local v3, "ml":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/input/MouseEvent;>;"
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getVbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 89
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 92
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;

    move-object v4, v5

    .line 93
    .local v4, "behavior":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TS;>;"
    move-object v5, v4

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->setOnFocusPreviousRow(Ljava/lang/Runnable;)V

    .line 94
    move-object v5, v4

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->setOnFocusNextRow(Ljava/lang/Runnable;)V

    .line 95
    move-object v5, v4

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->setOnMoveToFirstCell(Ljava/lang/Runnable;)V

    .line 96
    move-object v5, v4

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->setOnMoveToLastCell(Ljava/lang/Runnable;)V

    .line 97
    move-object v5, v4

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;)Ljavafx/util/Callback;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->setOnScrollPageDown(Ljavafx/util/Callback;)V

    .line 98
    move-object v5, v4

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$$Lambda$8;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;)Ljavafx/util/Callback;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->setOnScrollPageUp(Ljavafx/util/Callback;)V

    .line 99
    move-object v5, v4

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$$Lambda$9;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->setOnSelectPreviousRow(Ljava/lang/Runnable;)V

    .line 100
    move-object v5, v4

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$$Lambda$10;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->setOnSelectNextRow(Ljava/lang/Runnable;)V

    .line 101
    move-object v5, v4

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$$Lambda$11;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->setOnSelectLeftCell(Ljava/lang/Runnable;)V

    .line 102
    move-object v5, v4

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$$Lambda$12;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->setOnSelectRightCell(Ljava/lang/Runnable;)V

    .line 104
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView;->rootProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    const-string v7, "ROOT"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 105
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView;->showRootProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    const-string v7, "SHOW_ROOT"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 106
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView;->rowFactoryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    const-string v7, "ROW_FACTORY"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 107
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView;->expandedItemCountProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v6

    const-string v7, "TREE_ITEM_COUNT"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 108
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView;->fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v6

    const-string v7, "FIXED_CELL_SIZE"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->lambda$new$533(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/TreeTableView;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->lambda$new$522(Ljavafx/scene/control/TreeTableView;Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$10(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->lambda$new$531()V

    return-void
.end method

.method static synthetic access$lambda$11(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->lambda$new$532()V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->lambda$new$523()V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->lambda$new$524()V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->lambda$new$525()V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->lambda$new$526()V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->lambda$new$527(Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$7(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->lambda$new$528(Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$8(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->lambda$new$529()V

    return-void
.end method

.method static synthetic access$lambda$9(Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->lambda$new$530()V

    return-void
.end method

.method private getRoot()Ljavafx/scene/control/TreeItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->weakRootRef:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->weakRootRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeItem;

    goto :goto_0
.end method

.method private static synthetic lambda$new$522(Ljavafx/scene/control/TreeTableView;Ljavafx/scene/input/MouseEvent;)V
    .locals 5

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "treeTableView":Ljavafx/scene/control/TreeTableView;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getEditingCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 76
    move-object v2, v0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView;->edit(ILjavafx/scene/control/TreeTableColumn;)V

    .line 84
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->isFocusTraversable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->requestFocus()V

    .line 87
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$523()V
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->onFocusPreviousCell()V

    return-void
.end method

.method private synthetic lambda$new$524()V
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->onFocusNextCell()V

    return-void
.end method

.method private synthetic lambda$new$525()V
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->onMoveToFirstCell()V

    return-void
.end method

.method private synthetic lambda$new$526()V
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->onMoveToLastCell()V

    return-void
.end method

.method private synthetic lambda$new$527(Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, p1

    .local v1, "isFocusDriven":Ljava/lang/Boolean;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->onScrollPageDown(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return-object v0
.end method

.method private synthetic lambda$new$528(Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, p1

    .local v1, "isFocusDriven":Ljava/lang/Boolean;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->onScrollPageUp(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return-object v0
.end method

.method private synthetic lambda$new$529()V
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->onSelectPreviousCell()V

    return-void
.end method

.method private synthetic lambda$new$530()V
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->onSelectNextCell()V

    return-void
.end method

.method private synthetic lambda$new$531()V
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->onSelectLeftCell()V

    return-void
.end method

.method private synthetic lambda$new$532()V
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->onSelectRightCell()V

    return-void
.end method

.method private synthetic lambda$new$533(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V
    .locals 6

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/control/TreeItem$TreeModificationEvent;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasRemoved()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getAddedSize()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getRemovedSize()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 163
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->rowCountDirty:Z

    .line 164
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->requestLayout()V

    .line 184
    :cond_0
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeTableView;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeTableView;->edit(ILjavafx/scene/control/TreeTableColumn;)V

    .line 185
    return-void

    .line 165
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v3

    invoke-static {}, Ljavafx/scene/control/TreeItem;->valueChangedEvent()Ljavafx/event/EventType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->needCellsRebuilt:Z

    .line 168
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->requestLayout()V

    goto :goto_0

    .line 172
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v3

    move-object v2, v3

    .line 173
    .local v2, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<*>;"
    :goto_1
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 174
    move-object v3, v2

    invoke-static {}, Ljavafx/scene/control/TreeItem;->expandedItemCountChangeEvent()Ljavafx/event/EventType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 175
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->rowCountDirty:Z

    .line 176
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->requestLayout()V

    .line 177
    goto :goto_0

    .line 179
    :cond_3
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/event/EventType;->getSuperType()Ljavafx/event/EventType;

    move-result-object v3

    move-object v2, v3

    goto :goto_1
.end method

.method private setRoot(Ljavafx/scene/control/TreeItem;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, p1

    .local v1, "newRoot":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->weakRootListener:Ljavafx/event/WeakEventHandler;

    if-eqz v2, :cond_0

    .line 196
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    invoke-static {}, Ljavafx/scene/control/TreeItem;->treeNotificationEvent()Ljavafx/event/EventType;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->weakRootListener:Ljavafx/event/WeakEventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeItem;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 198
    :cond_0
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->weakRootRef:Ljava/lang/ref/WeakReference;

    .line 199
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 200
    move-object v2, v0

    new-instance v3, Ljavafx/event/WeakEventHandler;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->rootListener:Ljavafx/event/EventHandler;

    invoke-direct {v4, v5}, Ljavafx/event/WeakEventHandler;-><init>(Ljavafx/event/EventHandler;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->weakRootListener:Ljavafx/event/WeakEventHandler;

    .line 201
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    invoke-static {}, Ljavafx/scene/control/TreeItem;->treeNotificationEvent()Ljavafx/event/EventType;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->weakRootListener:Ljavafx/event/WeakEventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeItem;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 204
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->updateRowCount()V

    .line 205
    return-void
.end method


# virtual methods
.method protected columnResizePolicyProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/ResizeFeaturesBase;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->columnResizePolicyProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    check-cast v1, Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return-object v0
.end method

.method public bridge synthetic createCell()Ljavafx/scene/control/IndexedCell;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->createCell()Ljavafx/scene/control/TreeTableRow;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return-object v0
.end method

.method public createCell()Ljavafx/scene/control/TreeTableRow;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableRow",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->getRowFactory()Ljavafx/util/Callback;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 371
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->getRowFactory()Ljavafx/util/Callback;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-interface {v4, v5}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeTableRow;

    move-object v1, v4

    .line 377
    .local v1, "cell":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TS;>;"
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableRow;->getDisclosureNode()Ljavafx/scene/Node;

    move-result-object v4

    if-nez v4, :cond_0

    .line 378
    new-instance v4, Ljavafx/scene/layout/StackPane;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v2, v4

    .line 379
    .local v2, "disclosureNode":Ljavafx/scene/layout/StackPane;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string v8, "tree-disclosure-node"

    aput-object v8, v6, v7

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v4

    .line 380
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljavafx/scene/layout/StackPane;->setMouseTransparent(Z)V

    .line 382
    new-instance v4, Ljavafx/scene/layout/StackPane;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v3, v4

    .line 383
    .local v3, "disclosureNodeArrow":Ljavafx/scene/layout/StackPane;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string v8, "arrow"

    aput-object v8, v6, v7

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v4

    .line 384
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 386
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeTableRow;->setDisclosureNode(Ljavafx/scene/Node;)V

    .line 389
    .end local v2    # "disclosureNode":Ljavafx/scene/layout/StackPane;
    .end local v3    # "disclosureNodeArrow":Ljavafx/scene/layout/StackPane;
    :cond_0
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeTableRow;->updateTreeTableView(Ljavafx/scene/control/TreeTableView;)V

    .line 390
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return-object v0

    .line 373
    .end local v1    # "cell":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TS;>;"
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    :cond_1
    new-instance v4, Ljavafx/scene/control/TreeTableRow;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljavafx/scene/control/TreeTableRow;-><init>()V

    move-object v1, v4

    .restart local v1    # "cell":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TS;>;"
    goto :goto_0
.end method

.method protected bridge synthetic edit(ILjavafx/scene/control/TableColumnBase;)V
    .locals 6

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->edit(ILjavafx/scene/control/TreeTableColumn;)V

    return-void
.end method

.method protected edit(ILjavafx/scene/control/TreeTableColumn;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeTableView;->edit(ILjavafx/scene/control/TreeTableColumn;)V

    .line 284
    return-void
.end method

.method protected varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v8, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$1;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 456
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-super {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 430
    :pswitch_0
    move-object v8, v2

    const/4 v9, 0x0

    aget-object v8, v8, v9

    check-cast v8, Ljavafx/scene/Node;

    move-object v3, v8

    .line 431
    .local v3, "item":Ljavafx/scene/Node;
    move-object v8, v3

    instance-of v8, v8, Ljavafx/scene/control/TreeTableCell;

    if-eqz v8, :cond_0

    .line 433
    move-object v8, v3

    check-cast v8, Ljavafx/scene/control/TreeTableCell;

    move-object v4, v8

    .line 434
    .local v4, "cell":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;*>;"
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/control/TreeTableCell;->getIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 435
    goto :goto_0

    .line 440
    .end local v3    # "item":Ljavafx/scene/Node;
    .end local v4    # "cell":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;*>;"
    :pswitch_1
    move-object v8, v2

    const/4 v9, 0x0

    aget-object v8, v8, v9

    check-cast v8, Ljavafx/collections/ObservableList;

    move-object v3, v8

    .line 441
    .local v3, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    move-object v8, v3

    if-eqz v8, :cond_0

    .line 442
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v8}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v8

    move-object v4, v8

    .line 443
    .local v4, "sm":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    move-object v8, v4

    if-eqz v8, :cond_2

    .line 444
    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->clearSelection()V

    .line 445
    move-object v8, v3

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_1
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/Node;

    move-object v6, v8

    .line 446
    .local v6, "item":Ljavafx/scene/Node;
    move-object v8, v6

    instance-of v8, v8, Ljavafx/scene/control/TreeTableCell;

    if-eqz v8, :cond_1

    .line 448
    move-object v8, v6

    check-cast v8, Ljavafx/scene/control/TreeTableCell;

    move-object v7, v8

    .line 449
    .local v7, "cell":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;*>;"
    move-object v8, v4

    move-object v9, v7

    invoke-virtual {v9}, Ljavafx/scene/control/TreeTableCell;->getIndex()I

    move-result v9

    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 451
    .end local v7    # "cell":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;*>;"
    :cond_1
    goto :goto_1

    .line 453
    .end local v6    # "item":Ljavafx/scene/Node;
    :cond_2
    goto :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getColumns()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;"
        }
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return-object v0
.end method

.method protected bridge synthetic getFocusModel()Ljavafx/scene/control/TableFocusModel;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return-object v0
.end method

.method protected getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return-object v0
.end method

.method protected bridge synthetic getFocusedCell()Ljavafx/scene/control/TablePositionBase;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return-object v0
.end method

.method protected getFocusedCell()Ljavafx/scene/control/TreeTablePosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getExpandedItemCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return v0
.end method

.method protected getSelectionModel()Ljavafx/scene/control/TableSelectionModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableSelectionModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return-object v0
.end method

.method protected getSortOrder()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;"
        }
    .end annotation

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getSortOrder()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return-object v0
.end method

.method protected bridge synthetic getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumnBase;
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getVisibleLeafColumn(I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return-object v0
.end method

.method protected getVisibleLeafColumn(I)Ljavafx/scene/control/TreeTableColumn;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move v1, p1

    .local v1, "col":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return-object v0
.end method

.method protected getVisibleLeafColumns()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;"
        }
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return-object v0
.end method

.method protected bridge synthetic getVisibleLeafIndex(Ljavafx/scene/control/TableColumnBase;)I
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getVisibleLeafIndex(Ljavafx/scene/control/TreeTableColumn;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return v0
.end method

.method protected getVisibleLeafIndex(Ljavafx/scene/control/TreeTableColumn;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;)I"
        }
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, p1

    .local v1, "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafIndex(Ljavafx/scene/control/TreeTableColumn;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return v0
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 112
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v2, p1

    .local v2, "p":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 114
    const-string v3, "ROOT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeTableView;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeTableView;->edit(ILjavafx/scene/control/TreeTableColumn;)V

    .line 118
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->setRoot(Ljavafx/scene/control/TreeItem;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string v3, "SHOW_ROOT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->isShowRoot()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 124
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeItem;->setExpanded(Z)V

    .line 127
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->updateRowCount()V

    goto :goto_0

    .line 128
    :cond_3
    const-string v3, "ROW_FACTORY"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 129
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->recreateCells()V

    goto :goto_0

    .line 130
    :cond_4
    const-string v3, "TREE_ITEM_COUNT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 131
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->rowCountDirty:Z

    goto :goto_0

    .line 132
    :cond_5
    const-string v3, "FIXED_CELL_SIZE"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->getFixedCellSize()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setFixedCellSize(D)V

    goto :goto_0
.end method

.method protected horizontalScroll()V
    .locals 6

    .prologue
    .line 394
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v2, v1

    invoke-super {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->horizontalScroll()V

    .line 395
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getFixedCellSize()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 396
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->requestCellLayout()V

    .line 398
    :cond_0
    return-void
.end method

.method protected itemsProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;>;>;"
        }
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->tableBackingListProperty:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return-object v0
.end method

.method protected placeholderProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->placeholderProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return-object v0
.end method

.method protected varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v8, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$1;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 422
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-super {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    :goto_0
    return-object v0

    .line 404
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    :pswitch_0
    move-object v8, v2

    const/4 v9, 0x0

    aget-object v8, v8, v9

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v3, v8

    .line 405
    .local v3, "rowIndex":I
    move v8, v3

    if-gez v8, :cond_0

    const/4 v8, 0x0

    :goto_1
    move-object v0, v8

    goto :goto_0

    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v9, v3

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPrivateCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v8

    goto :goto_1

    .line 408
    .end local v3    # "rowIndex":I
    :pswitch_1
    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v8

    .line 409
    .local v3, "selection":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v8}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v8

    move-object v4, v8

    .line 410
    .local v4, "sm":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_2
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TreeTablePosition;

    move-object v6, v8

    .line 411
    .local v6, "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v9, v6

    invoke-virtual {v9}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPrivateCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TreeTableRow;

    move-object v7, v8

    .line 412
    .local v7, "row":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TS;>;"
    move-object v8, v7

    if-eqz v8, :cond_1

    move-object v8, v3

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 413
    :cond_1
    goto :goto_2

    .line 414
    .end local v6    # "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    .end local v7    # "row":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TS;>;"
    :cond_2
    move-object v8, v3

    invoke-static {v8}, Ljavafx/collections/FXCollections;->observableArrayList(Ljava/util/Collection;)Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic resizeColumn(Ljavafx/scene/control/TableColumnBase;D)Z
    .locals 8

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljavafx/scene/control/TreeTableColumn;

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->resizeColumn(Ljavafx/scene/control/TreeTableColumn;D)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return v0
.end method

.method protected resizeColumn(Ljavafx/scene/control/TreeTableColumn;D)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;D)Z"
        }
    .end annotation

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, p1

    .local v1, "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-wide v2, p2

    .local v2, "delta":D
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljavafx/scene/control/TreeTableView;->resizeColumn(Ljavafx/scene/control/TreeTableColumn;D)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return v0
.end method

.method protected bridge synthetic resizeColumnToFitContent(Ljavafx/scene/control/TableColumnBase;I)V
    .locals 6

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljavafx/scene/control/TreeTableColumn;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->resizeColumnToFitContent(Ljavafx/scene/control/TreeTableColumn;I)V

    return-void
.end method

.method protected resizeColumnToFitContent(Ljavafx/scene/control/TreeTableColumn;I)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;I)V"
        }
    .end annotation

    .prologue
    .line 293
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object/from16 v3, p1

    .local v3, "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move/from16 v4, p2

    .local v4, "maxRows":I
    move-object/from16 v24, v3

    move-object/from16 v5, v24

    .line 294
    .local v5, "col":Ljavafx/scene/control/TreeTableColumn;
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/List;

    move-object/from16 v6, v24

    .line 295
    .local v6, "items":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object/from16 v24, v6

    if-eqz v24, :cond_0

    move-object/from16 v24, v6

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TreeTableColumn;->getCellFactory()Ljavafx/util/Callback;

    move-result-object v24

    move-object/from16 v7, v24

    .line 298
    .local v7, "cellFactory":Ljavafx/util/Callback;
    move-object/from16 v24, v7

    if-nez v24, :cond_2

    goto :goto_0

    .line 300
    :cond_2
    move-object/from16 v24, v7

    move-object/from16 v25, v5

    invoke-interface/range {v24 .. v25}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/scene/control/TreeTableCell;

    move-object/from16 v8, v24

    .line 301
    .local v8, "cell":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;*>;"
    move-object/from16 v24, v8

    if-nez v24, :cond_3

    goto :goto_0

    .line 305
    :cond_3
    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TreeTableCell;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v24

    const-string v25, "deferToParentPrefWidth"

    sget-object v26, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface/range {v24 .. v26}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 308
    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    move-wide/from16 v9, v24

    .line 309
    .local v9, "padding":D
    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TreeTableCell;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v24

    if-nez v24, :cond_8

    const/16 v24, 0x0

    :goto_1
    move-object/from16 v11, v24

    .line 310
    .local v11, "n":Ljavafx/scene/Node;
    move-object/from16 v24, v11

    move-object/from16 v0, v24

    instance-of v0, v0, Ljavafx/scene/layout/Region;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 311
    move-object/from16 v24, v11

    check-cast v24, Ljavafx/scene/layout/Region;

    move-object/from16 v12, v24

    .line 312
    .local v12, "r":Ljavafx/scene/layout/Region;
    move-object/from16 v24, v12

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/Region;->snappedLeftInset()D

    move-result-wide v24

    move-object/from16 v26, v12

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/Region;->snappedRightInset()D

    move-result-wide v26

    add-double v24, v24, v26

    move-wide/from16 v9, v24

    .line 315
    .end local v12    # "r":Ljavafx/scene/layout/Region;
    :cond_4
    new-instance v24, Ljavafx/scene/control/TreeTableRow;

    move-object/from16 v28, v24

    move-object/from16 v24, v28

    move-object/from16 v25, v28

    invoke-direct/range {v25 .. v25}, Ljavafx/scene/control/TreeTableRow;-><init>()V

    move-object/from16 v12, v24

    .line 316
    .local v12, "treeTableRow":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TS;>;"
    move-object/from16 v24, v12

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/control/TreeTableRow;->updateTreeTableView(Ljavafx/scene/control/TreeTableView;)V

    .line 318
    move/from16 v24, v4

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    move-object/from16 v24, v6

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    :goto_2
    move/from16 v13, v24

    .line 319
    .local v13, "rows":I
    const-wide/16 v24, 0x0

    move-wide/from16 v14, v24

    .line 320
    .local v14, "maxWidth":D
    const/16 v24, 0x0

    move/from16 v16, v24

    .local v16, "row":I
    :goto_3
    move/from16 v24, v16

    move/from16 v25, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    .line 321
    move-object/from16 v24, v12

    move/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/control/TreeTableRow;->updateIndex(I)V

    .line 322
    move-object/from16 v24, v12

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object/from16 v25, v0

    move/from16 v26, v16

    invoke-virtual/range {v25 .. v26}, Ljavafx/scene/control/TreeTableView;->getTreeItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/control/TreeTableRow;->updateTreeItem(Ljavafx/scene/control/TreeItem;)V

    .line 324
    move-object/from16 v24, v8

    move-object/from16 v25, v5

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/control/TreeTableCell;->updateTreeTableColumn(Ljavafx/scene/control/TreeTableColumn;)V

    .line 325
    move-object/from16 v24, v8

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/control/TreeTableCell;->updateTreeTableView(Ljavafx/scene/control/TreeTableView;)V

    .line 326
    move-object/from16 v24, v8

    move-object/from16 v25, v12

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/control/TreeTableCell;->updateTreeTableRow(Ljavafx/scene/control/TreeTableRow;)V

    .line 327
    move-object/from16 v24, v8

    move/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/control/TreeTableCell;->updateIndex(I)V

    .line 329
    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TreeTableCell;->getText()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_5

    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TreeTableCell;->getText()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_6

    :cond_5
    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TreeTableCell;->getGraphic()Ljavafx/scene/Node;

    move-result-object v24

    if-eqz v24, :cond_7

    .line 330
    :cond_6
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v24

    move-object/from16 v25, v8

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 331
    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TreeTableCell;->applyCss()V

    .line 333
    move-object/from16 v24, v8

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/control/TreeTableCell;->prefWidth(D)D

    move-result-wide v24

    move-wide/from16 v17, v24

    .line 335
    .local v17, "w":D
    move-wide/from16 v24, v14

    move-wide/from16 v26, v17

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    move-wide/from16 v14, v24

    .line 336
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v24

    move-object/from16 v25, v8

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v24

    .line 320
    .end local v17    # "w":D
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 309
    .end local v11    # "n":Ljavafx/scene/Node;
    .end local v12    # "treeTableRow":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TS;>;"
    .end local v13    # "rows":I
    .end local v14    # "maxWidth":D
    .end local v16    # "row":I
    :cond_8
    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TreeTableCell;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljavafx/scene/control/Skin;->getNode()Ljavafx/scene/Node;

    move-result-object v24

    goto/16 :goto_1

    .line 318
    .restart local v11    # "n":Ljavafx/scene/Node;
    .restart local v12    # "treeTableRow":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TS;>;"
    :cond_9
    move-object/from16 v24, v6

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v25, v4

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v24

    goto/16 :goto_2

    .line 341
    .restart local v13    # "rows":I
    .restart local v14    # "maxWidth":D
    .restart local v16    # "row":I
    :cond_a
    move-object/from16 v24, v8

    const/16 v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/control/TreeTableCell;->updateIndex(I)V

    .line 345
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-result-object v24

    move-object/from16 v25, v3

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getColumnHeaderFor(Ljavafx/scene/control/TableColumnBase;)Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-result-object v24

    move-object/from16 v16, v24

    .line 346
    .local v16, "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object/from16 v24, v16

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->label:Ljavafx/scene/control/Label;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/Label;->getFont()Ljavafx/scene/text/Font;

    move-result-object v24

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeTableColumn;->getText()Ljava/lang/String;

    move-result-object v25

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    invoke-static/range {v24 .. v27}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextWidth(Ljavafx/scene/text/Font;Ljava/lang/String;D)D

    move-result-wide v24

    move-wide/from16 v17, v24

    .line 347
    .local v17, "headerTextWidth":D
    move-object/from16 v24, v16

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->label:Ljavafx/scene/control/Label;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/Label;->getGraphic()Ljavafx/scene/Node;

    move-result-object v24

    move-object/from16 v19, v24

    .line 348
    .local v19, "graphic":Ljavafx/scene/Node;
    move-object/from16 v24, v19

    if-nez v24, :cond_c

    const-wide/16 v24, 0x0

    :goto_4
    move-wide/from16 v20, v24

    .line 349
    .local v20, "headerGraphicWidth":D
    move-wide/from16 v24, v17

    move-wide/from16 v26, v20

    add-double v24, v24, v26

    const-wide/high16 v26, 0x4024000000000000L    # 10.0

    add-double v24, v24, v26

    move-object/from16 v26, v16

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->snappedLeftInset()D

    move-result-wide v26

    add-double v24, v24, v26

    move-object/from16 v26, v16

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->snappedRightInset()D

    move-result-wide v26

    add-double v24, v24, v26

    move-wide/from16 v22, v24

    .line 350
    .local v22, "headerWidth":D
    move-wide/from16 v24, v14

    move-wide/from16 v26, v22

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    move-wide/from16 v14, v24

    .line 353
    move-wide/from16 v24, v14

    move-wide/from16 v26, v9

    add-double v24, v24, v26

    move-wide/from16 v14, v24

    .line 354
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TreeTableView;->getColumnResizePolicy()Ljavafx/util/Callback;

    move-result-object v24

    sget-object v25, Ljavafx/scene/control/TreeTableView;->CONSTRAINED_RESIZE_POLICY:Ljavafx/util/Callback;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 355
    move-wide/from16 v24, v14

    move-object/from16 v26, v5

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/TreeTableColumn;->getWidth()D

    move-result-wide v26

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    move-wide/from16 v14, v24

    .line 358
    :cond_b
    move-object/from16 v24, v5

    move-wide/from16 v25, v14

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/control/TreeTableColumn;->impl_setWidth(D)V

    .line 359
    goto/16 :goto_0

    .line 348
    .end local v20    # "headerGraphicWidth":D
    .end local v22    # "headerWidth":D
    :cond_c
    move-object/from16 v24, v19

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v24

    move-object/from16 v26, v16

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->label:Ljavafx/scene/control/Label;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/Label;->getGraphicTextGap()D

    move-result-wide v26

    add-double v24, v24, v26

    goto :goto_4
.end method

.method protected rowFactoryProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;",
            "Ljavafx/scene/control/TreeTableRow",
            "<TS;>;>;>;"
        }
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->rowFactoryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return-object v0
.end method

.method protected tableMenuButtonVisibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->tableMenuButtonVisibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    return-object v0
.end method

.method protected updateRowCount()V
    .locals 5

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin<TS;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->updatePlaceholderRegionVisibility()V

    .line 478
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->tableBackingList:Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;->resetSize()V

    .line 480
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellCount()I

    move-result v3

    move v1, v3

    .line 481
    .local v1, "oldCount":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->getItemCount()I

    move-result v3

    move v2, v3

    .line 486
    .local v2, "newCount":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setCellCount(I)V

    .line 488
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->forceCellRecreate:Z

    if-eqz v3, :cond_0

    .line 489
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->needCellsRecreated:Z

    .line 490
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->forceCellRecreate:Z

    .line 496
    :goto_0
    return-void

    .line 491
    :cond_0
    move v3, v2

    move v4, v1

    if-eq v3, v4, :cond_1

    .line 492
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->needCellsRebuilt:Z

    goto :goto_0

    .line 494
    :cond_1
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->needCellsReconfigured:Z

    goto :goto_0
.end method

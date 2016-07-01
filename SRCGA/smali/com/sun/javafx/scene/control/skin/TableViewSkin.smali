.class public Lcom/sun/javafx/scene/control/skin/TableViewSkin;
.super Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;
.source "TableViewSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase",
        "<TT;TT;",
        "Ljavafx/scene/control/TableView",
        "<TT;>;",
        "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior",
        "<TT;>;",
        "Ljavafx/scene/control/TableRow",
        "<TT;>;",
        "Ljavafx/scene/control/TableColumn",
        "<TT;*>;>;"
    }
.end annotation


# instance fields
.field private final tableView:Ljavafx/scene/control/TableView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TableView",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TableView;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableView",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v2, p1

    .local v2, "tableView":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TT;>;"
    move-object v5, v1

    move-object v6, v2

    new-instance v7, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-direct {v8, v9}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;-><init>(Ljavafx/scene/control/TableView;)V

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 61
    move-object v5, v1

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    .line 62
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TableView;->getFixedCellSize()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setFixedCellSize(D)V

    .line 64
    move-object v5, v1

    move-object v6, v2

    invoke-super {v5, v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->init(Ljavafx/scene/control/Control;)V

    .line 66
    move-object v5, v2

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkin$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TableView;)Ljavafx/event/EventHandler;

    move-result-object v5

    move-object v3, v5

    .line 83
    .local v3, "ml":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/input/MouseEvent;>;"
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getVbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 84
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 87
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;

    move-object v4, v5

    .line 88
    .local v4, "behavior":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    move-object v5, v4

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->setOnFocusPreviousRow(Ljava/lang/Runnable;)V

    .line 89
    move-object v5, v4

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkin$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->setOnFocusNextRow(Ljava/lang/Runnable;)V

    .line 90
    move-object v5, v4

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkin$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->setOnMoveToFirstCell(Ljava/lang/Runnable;)V

    .line 91
    move-object v5, v4

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkin$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->setOnMoveToLastCell(Ljava/lang/Runnable;)V

    .line 92
    move-object v5, v4

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkin$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)Ljavafx/util/Callback;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->setOnScrollPageDown(Ljavafx/util/Callback;)V

    .line 93
    move-object v5, v4

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkin$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)Ljavafx/util/Callback;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->setOnScrollPageUp(Ljavafx/util/Callback;)V

    .line 94
    move-object v5, v4

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkin$$Lambda$8;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->setOnSelectPreviousRow(Ljava/lang/Runnable;)V

    .line 95
    move-object v5, v4

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkin$$Lambda$9;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->setOnSelectNextRow(Ljava/lang/Runnable;)V

    .line 96
    move-object v5, v4

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkin$$Lambda$10;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->setOnSelectLeftCell(Ljava/lang/Runnable;)V

    .line 97
    move-object v5, v4

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkin$$Lambda$11;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->setOnSelectRightCell(Ljava/lang/Runnable;)V

    .line 99
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TableView;->fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v6

    const-string v7, "FIXED_CELL_SIZE"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TableView;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->lambda$new$499(Ljavafx/scene/control/TableView;Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->lambda$new$500()V

    return-void
.end method

.method static synthetic access$lambda$10(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->lambda$new$509()V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->lambda$new$501()V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->lambda$new$502()V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->lambda$new$503()V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/scene/control/skin/TableViewSkin;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->lambda$new$504(Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/scene/control/skin/TableViewSkin;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->lambda$new$505(Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$7(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->lambda$new$506()V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->lambda$new$507()V

    return-void
.end method

.method static synthetic access$lambda$9(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->lambda$new$508()V

    return-void
.end method

.method private static synthetic lambda$new$499(Ljavafx/scene/control/TableView;Ljavafx/scene/input/MouseEvent;)V
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "tableView":Ljavafx/scene/control/TableView;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->getEditingCell()Ljavafx/scene/control/TablePosition;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 71
    move-object v2, v0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView;->edit(ILjavafx/scene/control/TableColumn;)V

    .line 79
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->isFocusTraversable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->requestFocus()V

    .line 82
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$500()V
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->onFocusPreviousCell()V

    return-void
.end method

.method private synthetic lambda$new$501()V
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->onFocusNextCell()V

    return-void
.end method

.method private synthetic lambda$new$502()V
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->onMoveToFirstCell()V

    return-void
.end method

.method private synthetic lambda$new$503()V
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->onMoveToLastCell()V

    return-void
.end method

.method private synthetic lambda$new$504(Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "isFocusDriven":Ljava/lang/Boolean;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->onScrollPageDown(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return-object v0
.end method

.method private synthetic lambda$new$505(Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "isFocusDriven":Ljava/lang/Boolean;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->onScrollPageUp(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return-object v0
.end method

.method private synthetic lambda$new$506()V
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->onSelectPreviousCell()V

    return-void
.end method

.method private synthetic lambda$new$507()V
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->onSelectNextCell()V

    return-void
.end method

.method private synthetic lambda$new$508()V
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->onSelectLeftCell()V

    return-void
.end method

.method private synthetic lambda$new$509()V
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->onSelectRightCell()V

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
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->columnResizePolicyProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    check-cast v1, Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return-object v0
.end method

.method public bridge synthetic createCell()Ljavafx/scene/control/IndexedCell;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->createCell()Ljavafx/scene/control/TableRow;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return-object v0
.end method

.method public createCell()Ljavafx/scene/control/TableRow;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableRow",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->getRowFactory()Ljavafx/util/Callback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 282
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->getRowFactory()Ljavafx/util/Callback;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    invoke-interface {v2, v3}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TableRow;

    move-object v1, v2

    .line 287
    .local v1, "cell":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    :goto_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableRow;->updateTableView(Ljavafx/scene/control/TableView;)V

    .line 288
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return-object v0

    .line 284
    .end local v1    # "cell":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    :cond_0
    new-instance v2, Ljavafx/scene/control/TableRow;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/TableRow;-><init>()V

    move-object v1, v2

    .restart local v1    # "cell":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    goto :goto_0
.end method

.method protected edit(ILjavafx/scene/control/TableColumn;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumn",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TT;*>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TableView;->edit(ILjavafx/scene/control/TableColumn;)V

    .line 203
    return-void
.end method

.method protected bridge synthetic edit(ILjavafx/scene/control/TableColumnBase;)V
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/control/TableColumn;

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->edit(ILjavafx/scene/control/TableColumn;)V

    return-void
.end method

.method protected varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v8, Lcom/sun/javafx/scene/control/skin/TableViewSkin$1;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 344
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-super {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 318
    :pswitch_0
    move-object v8, v2

    const/4 v9, 0x0

    aget-object v8, v8, v9

    check-cast v8, Ljavafx/scene/Node;

    move-object v3, v8

    .line 319
    .local v3, "item":Ljavafx/scene/Node;
    move-object v8, v3

    instance-of v8, v8, Ljavafx/scene/control/TableCell;

    if-eqz v8, :cond_0

    .line 321
    move-object v8, v3

    check-cast v8, Ljavafx/scene/control/TableCell;

    move-object v4, v8

    .line 322
    .local v4, "cell":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TT;*>;"
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/control/TableCell;->getIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 323
    goto :goto_0

    .line 328
    .end local v3    # "item":Ljavafx/scene/Node;
    .end local v4    # "cell":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TT;*>;"
    :pswitch_1
    move-object v8, v2

    const/4 v9, 0x0

    aget-object v8, v8, v9

    check-cast v8, Ljavafx/collections/ObservableList;

    move-object v3, v8

    .line 329
    .local v3, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    move-object v8, v3

    if-eqz v8, :cond_0

    .line 330
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TableView;

    invoke-virtual {v8}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v8

    move-object v4, v8

    .line 331
    .local v4, "sm":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move-object v8, v4

    if-eqz v8, :cond_2

    .line 332
    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/control/TableSelectionModel;->clearSelection()V

    .line 333
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

    .line 334
    .local v6, "item":Ljavafx/scene/Node;
    move-object v8, v6

    instance-of v8, v8, Ljavafx/scene/control/TableCell;

    if-eqz v8, :cond_1

    .line 336
    move-object v8, v6

    check-cast v8, Ljavafx/scene/control/TableCell;

    move-object v7, v8

    .line 337
    .local v7, "cell":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TT;*>;"
    move-object v8, v4

    move-object v9, v7

    invoke-virtual {v9}, Ljavafx/scene/control/TableCell;->getIndex()I

    move-result v9

    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/scene/control/TableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TableSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 339
    .end local v7    # "cell":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TT;*>;"
    :cond_1
    goto :goto_1

    .line 341
    .end local v6    # "item":Ljavafx/scene/Node;
    :cond_2
    goto :goto_0

    .line 316
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
            "Ljavafx/scene/control/TableColumn",
            "<TT;*>;>;"
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return-object v0
.end method

.method protected bridge synthetic getFocusModel()Ljavafx/scene/control/TableFocusModel;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return-object v0
.end method

.method protected getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableView$TableViewFocusModel",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return-object v0
.end method

.method protected getFocusedCell()Ljavafx/scene/control/TablePosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TablePosition",
            "<TT;*>;"
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return-object v0
.end method

.method protected bridge synthetic getFocusedCell()Ljavafx/scene/control/TablePositionBase;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->size()I

    move-result v1

    goto :goto_0
.end method

.method protected getSelectionModel()Ljavafx/scene/control/TableSelectionModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableSelectionModel",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return-object v0
.end method

.method protected getSortOrder()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<TT;*>;>;"
        }
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getSortOrder()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return-object v0
.end method

.method protected getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumn;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/scene/control/TableColumn",
            "<TT;*>;"
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move v1, p1

    .local v1, "col":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumn;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return-object v0
.end method

.method protected bridge synthetic getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumnBase;
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumn;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return-object v0
.end method

.method protected getVisibleLeafColumns()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<TT;*>;>;"
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return-object v0
.end method

.method protected getVisibleLeafIndex(Ljavafx/scene/control/TableColumn;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumn",
            "<TT;*>;)I"
        }
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TT;*>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView;->getVisibleLeafIndex(Ljavafx/scene/control/TableColumn;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return v0
.end method

.method protected bridge synthetic getVisibleLeafIndex(Ljavafx/scene/control/TableColumnBase;)I
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TableColumn;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->getVisibleLeafIndex(Ljavafx/scene/control/TableColumn;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return v0
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 104
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v2, p1

    .local v2, "p":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 106
    const-string v3, "FIXED_CELL_SIZE"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TableView;

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->getFixedCellSize()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setFixedCellSize(D)V

    .line 109
    :cond_0
    return-void
.end method

.method protected horizontalScroll()V
    .locals 6

    .prologue
    .line 292
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v2, v1

    invoke-super {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->horizontalScroll()V

    .line 293
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TableView;

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->getFixedCellSize()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 294
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->requestCellLayout()V

    .line 296
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
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
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
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->placeholderProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return-object v0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v8, Lcom/sun/javafx/scene/control/skin/TableViewSkin$1;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 310
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-super {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    :goto_0
    return-object v0

    .line 302
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    :pswitch_0
    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v8

    .line 303
    .local v3, "selection":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TableView;

    invoke-virtual {v8}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v8

    move-object v4, v8

    .line 304
    .local v4, "sm":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TT;>;"
    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_1
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TablePosition;

    move-object v6, v8

    .line 305
    .local v6, "pos":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TT;*>;"
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v9, v6

    invoke-virtual {v9}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPrivateCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TableRow;

    move-object v7, v8

    .line 306
    .local v7, "row":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    move-object v8, v7

    if-eqz v8, :cond_0

    move-object v8, v3

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 307
    :cond_0
    goto :goto_1

    .line 308
    .end local v6    # "pos":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TT;*>;"
    .end local v7    # "row":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    :cond_1
    move-object v8, v3

    invoke-static {v8}, Ljavafx/collections/FXCollections;->observableArrayList(Ljava/util/Collection;)Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected resizeColumn(Ljavafx/scene/control/TableColumn;D)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumn",
            "<TT;*>;D)Z"
        }
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TT;*>;"
    move-wide v2, p2

    .local v2, "delta":D
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljavafx/scene/control/TableView;->resizeColumn(Ljavafx/scene/control/TableColumn;D)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return v0
.end method

.method protected bridge synthetic resizeColumn(Ljavafx/scene/control/TableColumnBase;D)Z
    .locals 8

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljavafx/scene/control/TableColumn;

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->resizeColumn(Ljavafx/scene/control/TableColumn;D)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return v0
.end method

.method protected resizeColumnToFitContent(Ljavafx/scene/control/TableColumn;I)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumn",
            "<TT;*>;I)V"
        }
    .end annotation

    .prologue
    .line 212
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object/from16 v3, p1

    .local v3, "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TT;*>;"
    move/from16 v4, p2

    .local v4, "maxRows":I
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/TableColumn;->isResizable()Z

    move-result v22

    if-nez v22, :cond_0

    .line 270
    :goto_0
    return-void

    .line 215
    :cond_0
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    move-object/from16 v5, v22

    .line 216
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object/from16 v22, v5

    if-eqz v22, :cond_1

    move-object/from16 v22, v5

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_2

    :cond_1
    goto :goto_0

    .line 218
    :cond_2
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/TableColumn;->getCellFactory()Ljavafx/util/Callback;

    move-result-object v22

    move-object/from16 v6, v22

    .line 219
    .local v6, "cellFactory":Ljavafx/util/Callback;
    move-object/from16 v22, v6

    if-nez v22, :cond_3

    goto :goto_0

    .line 221
    :cond_3
    move-object/from16 v22, v6

    move-object/from16 v23, v3

    invoke-interface/range {v22 .. v23}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljavafx/scene/control/TableCell;

    move-object/from16 v7, v22

    .line 222
    .local v7, "cell":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TT;*>;"
    move-object/from16 v22, v7

    if-nez v22, :cond_4

    goto :goto_0

    .line 226
    :cond_4
    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/TableCell;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v22

    const-string v23, "deferToParentPrefWidth"

    sget-object v24, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface/range {v22 .. v24}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 229
    const-wide/high16 v22, 0x4024000000000000L    # 10.0

    move-wide/from16 v8, v22

    .line 230
    .local v8, "padding":D
    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/TableCell;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v22

    if-nez v22, :cond_9

    const/16 v22, 0x0

    :goto_1
    move-object/from16 v10, v22

    .line 231
    .local v10, "n":Ljavafx/scene/Node;
    move-object/from16 v22, v10

    move-object/from16 v0, v22

    instance-of v0, v0, Ljavafx/scene/layout/Region;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 232
    move-object/from16 v22, v10

    check-cast v22, Ljavafx/scene/layout/Region;

    move-object/from16 v11, v22

    .line 233
    .local v11, "r":Ljavafx/scene/layout/Region;
    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/layout/Region;->snappedLeftInset()D

    move-result-wide v22

    move-object/from16 v24, v11

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/Region;->snappedRightInset()D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v8, v22

    .line 236
    .end local v11    # "r":Ljavafx/scene/layout/Region;
    :cond_5
    move/from16 v22, v4

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    move-object/from16 v22, v5

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    :goto_2
    move/from16 v11, v22

    .line 237
    .local v11, "rows":I
    const-wide/16 v22, 0x0

    move-wide/from16 v12, v22

    .line 238
    .local v12, "maxWidth":D
    const/16 v22, 0x0

    move/from16 v14, v22

    .local v14, "row":I
    :goto_3
    move/from16 v22, v14

    move/from16 v23, v11

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 239
    move-object/from16 v22, v7

    move-object/from16 v23, v3

    invoke-virtual/range {v22 .. v23}, Ljavafx/scene/control/TableCell;->updateTableColumn(Ljavafx/scene/control/TableColumn;)V

    .line 240
    move-object/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljavafx/scene/control/TableCell;->updateTableView(Ljavafx/scene/control/TableView;)V

    .line 241
    move-object/from16 v22, v7

    move/from16 v23, v14

    invoke-virtual/range {v22 .. v23}, Ljavafx/scene/control/TableCell;->updateIndex(I)V

    .line 243
    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/TableCell;->getText()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_6

    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/TableCell;->getText()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_7

    :cond_6
    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/TableCell;->getGraphic()Ljavafx/scene/Node;

    move-result-object v22

    if-eqz v22, :cond_8

    .line 244
    :cond_7
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v22

    move-object/from16 v23, v7

    invoke-interface/range {v22 .. v23}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v22

    .line 245
    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/TableCell;->applyCss()V

    .line 246
    move-wide/from16 v22, v12

    move-object/from16 v24, v7

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/control/TableCell;->prefWidth(D)D

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    move-wide/from16 v12, v22

    .line 247
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v22

    move-object/from16 v23, v7

    invoke-interface/range {v22 .. v23}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v22

    .line 238
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 230
    .end local v10    # "n":Ljavafx/scene/Node;
    .end local v11    # "rows":I
    .end local v12    # "maxWidth":D
    .end local v14    # "row":I
    :cond_9
    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/TableCell;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljavafx/scene/control/Skin;->getNode()Ljavafx/scene/Node;

    move-result-object v22

    goto/16 :goto_1

    .line 236
    .restart local v10    # "n":Ljavafx/scene/Node;
    :cond_a
    move-object/from16 v22, v5

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v23, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    goto/16 :goto_2

    .line 252
    .restart local v11    # "rows":I
    .restart local v12    # "maxWidth":D
    .restart local v14    # "row":I
    :cond_b
    move-object/from16 v22, v7

    const/16 v23, -0x1

    invoke-virtual/range {v22 .. v23}, Ljavafx/scene/control/TableCell;->updateIndex(I)V

    .line 256
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->getTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-result-object v22

    move-object/from16 v23, v3

    invoke-virtual/range {v22 .. v23}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getColumnHeaderFor(Ljavafx/scene/control/TableColumnBase;)Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-result-object v22

    move-object/from16 v14, v22

    .line 257
    .local v14, "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object/from16 v22, v14

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->label:Ljavafx/scene/control/Label;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/Label;->getFont()Ljavafx/scene/text/Font;

    move-result-object v22

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/control/TableColumn;->getText()Ljava/lang/String;

    move-result-object v23

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    invoke-static/range {v22 .. v25}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextWidth(Ljavafx/scene/text/Font;Ljava/lang/String;D)D

    move-result-wide v22

    move-wide/from16 v15, v22

    .line 258
    .local v15, "headerTextWidth":D
    move-object/from16 v22, v14

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->label:Ljavafx/scene/control/Label;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/Label;->getGraphic()Ljavafx/scene/Node;

    move-result-object v22

    move-object/from16 v17, v22

    .line 259
    .local v17, "graphic":Ljavafx/scene/Node;
    move-object/from16 v22, v17

    if-nez v22, :cond_d

    const-wide/16 v22, 0x0

    :goto_4
    move-wide/from16 v18, v22

    .line 260
    .local v18, "headerGraphicWidth":D
    move-wide/from16 v22, v15

    move-wide/from16 v24, v18

    add-double v22, v22, v24

    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    add-double v22, v22, v24

    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->snappedLeftInset()D

    move-result-wide v24

    add-double v22, v22, v24

    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->snappedRightInset()D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v20, v22

    .line 261
    .local v20, "headerWidth":D
    move-wide/from16 v22, v12

    move-wide/from16 v24, v20

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    move-wide/from16 v12, v22

    .line 264
    move-wide/from16 v22, v12

    move-wide/from16 v24, v8

    add-double v22, v22, v24

    move-wide/from16 v12, v22

    .line 265
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/TableView;->getColumnResizePolicy()Ljavafx/util/Callback;

    move-result-object v22

    sget-object v23, Ljavafx/scene/control/TableView;->CONSTRAINED_RESIZE_POLICY:Ljavafx/util/Callback;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 266
    move-wide/from16 v22, v12

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TableColumn;->getWidth()D

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    move-wide/from16 v12, v22

    .line 269
    :cond_c
    move-object/from16 v22, v3

    move-wide/from16 v23, v12

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/control/TableColumn;->impl_setWidth(D)V

    .line 270
    goto/16 :goto_0

    .line 259
    .end local v18    # "headerGraphicWidth":D
    .end local v20    # "headerWidth":D
    :cond_d
    move-object/from16 v22, v17

    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v22

    move-object/from16 v24, v14

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->label:Ljavafx/scene/control/Label;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/Label;->getGraphicTextGap()D

    move-result-wide v24

    add-double v22, v22, v24

    goto :goto_4
.end method

.method protected bridge synthetic resizeColumnToFitContent(Ljavafx/scene/control/TableColumnBase;I)V
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljavafx/scene/control/TableColumn;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->resizeColumnToFitContent(Ljavafx/scene/control/TableColumn;I)V

    return-void
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
            "Ljavafx/scene/control/TableView",
            "<TT;>;",
            "Ljavafx/scene/control/TableRow",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->rowFactoryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return-object v0
.end method

.method protected tableMenuButtonVisibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->tableMenuButtonVisibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<TT;>;"
    return-object v0
.end method

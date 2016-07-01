.class public Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;
.super Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;
.source "TreeTableViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase",
        "<",
        "Ljavafx/scene/control/TreeTableView",
        "<TT;>;",
        "Ljavafx/scene/control/TreeItem",
        "<TT;>;",
        "Ljavafx/scene/control/TreeTableColumn",
        "<TT;*>;>;"
    }
.end annotation


# static fields
.field protected static final TREE_TABLE_VIEW_BINDINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/behavior/KeyBinding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final selectionModelListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final weakSelectionModelListener:Ljavafx/beans/value/WeakChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/WeakChangeListener",
            "<",
            "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->TREE_TABLE_VIEW_BINDINGS:Ljava/util/List;

    .line 60
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->TREE_TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "CollapseRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 61
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->TREE_TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "CollapseRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 62
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->TREE_TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "ExpandRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 63
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->TREE_TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "ExpandRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 65
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->TREE_TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->MULTIPLY:Ljavafx/scene/input/KeyCode;

    const-string v4, "ExpandAll"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 66
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->TREE_TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->ADD:Ljavafx/scene/input/KeyCode;

    const-string v4, "ExpandRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 67
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->TREE_TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->SUBTRACT:Ljavafx/scene/input/KeyCode;

    const-string v4, "CollapseRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 69
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->TREE_TABLE_VIEW_BINDINGS:Ljava/util/List;

    sget-object v1, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 70
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/TreeTableView;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableView",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TT;>;"
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->TREE_TABLE_VIEW_BINDINGS:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    .line 103
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->selectionModelListener:Ljavafx/beans/value/ChangeListener;

    .line 113
    move-object v2, v0

    new-instance v3, Ljavafx/beans/value/WeakChangeListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->selectionModelListener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v4, v5}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->weakSelectionModelListener:Ljavafx/beans/value/WeakChangeListener;

    .line 128
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->selectionModelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->weakSelectionModelListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 129
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 130
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->selectedCellsListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 132
    :cond_0
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->lambda$new$264(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;Ljavafx/scene/control/TreeItem;)Ljava/lang/Integer;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->lambda$expandRow$265(Ljavafx/scene/control/TreeItem;)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private collapseRow()V
    .locals 5

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeTableView;

    move-object v1, v2

    .line 254
    .local v1, "control":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TT;>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->isShowRoot()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->collapseRow(Ljavafx/scene/control/MultipleSelectionModel;Ljavafx/scene/control/TreeItem;Z)V

    .line 255
    return-void
.end method

.method private expandAll()V
    .locals 2

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->expandAll(Ljavafx/scene/control/TreeItem;)V

    .line 250
    return-void
.end method

.method private expandRow()V
    .locals 4

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;)Ljavafx/util/Callback;

    move-result-object v2

    move-object v1, v2

    .line 245
    .local v1, "getIndex":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeItem<TT;>;Ljava/lang/Integer;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->expandRow(Ljavafx/scene/control/MultipleSelectionModel;Ljavafx/util/Callback;)V

    .line 246
    return-void
.end method

.method private synthetic lambda$expandRow$265(Ljavafx/scene/control/TreeItem;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "p":Ljavafx/scene/control/TreeItem;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeTableView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView;->getRow(Ljavafx/scene/control/TreeItem;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    return-object v0
.end method

.method private synthetic lambda$new$264(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;)V
    .locals 6

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;
    move-object v3, p3

    .local v3, "newValue":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 106
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->weakSelectedCellsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 108
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 109
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->weakSelectedCellsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 111
    :cond_1
    return-void
.end method

.method private leftArrowPressed()V
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->isCellSelectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->selectRightCell()V

    .line 241
    :goto_0
    return-void

    .line 236
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->selectLeftCell()V

    goto :goto_0

    .line 239
    :cond_1
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->collapseRow()V

    goto :goto_0
.end method

.method private rightArrowPressed()V
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->isCellSelectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->selectLeftCell()V

    .line 229
    :goto_0
    return-void

    .line 224
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->selectRightCell()V

    goto :goto_0

    .line 227
    :cond_1
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->expandRow()V

    goto :goto_0
.end method


# virtual methods
.method protected callAction(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    const-string v2, "ExpandRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->rightArrowPressed()V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string v2, "CollapseRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->leftArrowPressed()V

    goto :goto_0

    .line 91
    :cond_1
    const-string v2, "ExpandAll"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->expandAll()V

    goto :goto_0

    .line 92
    :cond_2
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->callAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected editCell(ILjavafx/scene/control/TableColumnBase;)V
    .locals 6

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeTableView;

    move v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeTableView;->edit(ILjavafx/scene/control/TreeTableColumn;)V

    .line 180
    return-void
.end method

.method protected getFocusModel()Ljavafx/scene/control/TableFocusModel;
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    return-object v0
.end method

.method protected getFocusedCell()Ljavafx/scene/control/TablePositionBase;
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    return-object v0
.end method

.method protected getItemCount()I
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getExpandedItemCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    return v0
.end method

.method protected getSelectedCells()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TT;*>;>;"
        }
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    return-object v0
.end method

.method protected getSelectionModel()Ljavafx/scene/control/TableSelectionModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableSelectionModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    return-object v0
.end method

.method protected getTablePosition(ILjavafx/scene/control/TableColumnBase;)Ljavafx/scene/control/TablePositionBase;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumnBase",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;*>;)",
            "Ljavafx/scene/control/TablePositionBase",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TT;*>;>;"
        }
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "tc":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<Ljavafx/scene/control/TreeItem<TT;>;*>;"
    new-instance v3, Ljavafx/scene/control/TreeTablePosition;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TreeTableView;

    move v6, v1

    move-object v7, v2

    check-cast v7, Ljavafx/scene/control/TreeTableColumn;

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    return-object v0
.end method

.method protected bridge synthetic getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumnBase;
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->getVisibleLeafColumn(I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    return-object v0
.end method

.method protected getVisibleLeafColumn(I)Ljavafx/scene/control/TreeTableColumn;
    .locals 4

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeTableView;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
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
            "<TT;*>;>;"
        }
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    return-object v0
.end method

.method protected getVisibleLeafIndex(Ljavafx/scene/control/TableColumnBase;)I
    .locals 4

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeTableView;

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafIndex(Ljavafx/scene/control/TreeTableColumn;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    return v0
.end method

.method protected matchActionForEvent(Ljavafx/scene/input/KeyEvent;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->matchActionForEvent(Ljavafx/scene/input/KeyEvent;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 74
    .local v2, "action":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v3, v4, :cond_1

    .line 79
    const-string v3, "CollapseRow"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    if-eq v3, v4, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->KP_LEFT:Ljavafx/scene/input/KeyCode;

    if-ne v3, v4, :cond_2

    .line 80
    :cond_0
    const-string v3, "ExpandRow"

    move-object v2, v3

    .line 85
    :cond_1
    :goto_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    return-object v0

    .line 81
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    :cond_2
    const-string v3, "ExpandRow"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    if-eq v3, v4, :cond_3

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->KP_RIGHT:Ljavafx/scene/input/KeyCode;

    if-ne v3, v4, :cond_1

    .line 82
    :cond_3
    const-string v3, "CollapseRow"

    move-object v2, v3

    goto :goto_0
.end method

.method protected selectAllToFocus(Z)V
    .locals 4

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior<TT;>;"
    move v1, p1

    .local v1, "setAnchorToFocusIndex":Z
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TreeTableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getEditingCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectAllToFocus(Z)V

    .line 207
    goto :goto_0
.end method

.class public Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;
.super Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;
.source "TableViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase",
        "<",
        "Ljavafx/scene/control/TableView",
        "<TT;>;TT;",
        "Ljavafx/scene/control/TableColumn",
        "<TT;*>;>;"
    }
.end annotation


# instance fields
.field private final selectionModelListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljavafx/scene/control/TableView$TableViewSelectionModel",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;

.field private final weakSelectionModelListener:Ljavafx/beans/value/WeakChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/WeakChangeListener",
            "<",
            "Ljavafx/scene/control/TableView$TableViewSelectionModel",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TableView;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableView",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TT;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;-><init>(Ljavafx/scene/control/Control;)V

    .line 50
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->selectionModelListener:Ljavafx/beans/value/ChangeListener;

    .line 60
    move-object v3, v0

    new-instance v4, Ljavafx/beans/value/WeakChangeListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->selectionModelListener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v5, v6}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->weakSelectionModelListener:Ljavafx/beans/value/WeakChangeListener;

    .line 77
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->selectionModelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->weakSelectionModelListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 78
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v3

    move-object v2, v3

    .line 79
    .local v2, "sm":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TT;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 80
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->selectedCellsListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 84
    :cond_0
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/Utils;->isTwoLevelFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;-><init>(Ljavafx/scene/Node;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;

    .line 87
    :cond_1
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/TableView$TableViewSelectionModel;Ljavafx/scene/control/TableView$TableViewSelectionModel;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->lambda$new$224(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/TableView$TableViewSelectionModel;Ljavafx/scene/control/TableView$TableViewSelectionModel;)V

    return-void
.end method

.method private synthetic lambda$new$224(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/TableView$TableViewSelectionModel;Ljavafx/scene/control/TableView$TableViewSelectionModel;)V
    .locals 6

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljavafx/scene/control/TableView$TableViewSelectionModel;
    move-object v3, p3

    .local v3, "newValue":Ljavafx/scene/control/TableView$TableViewSelectionModel;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 53
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->weakSelectedCellsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 55
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 56
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->weakSelectedCellsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 58
    :cond_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->dispose()V

    .line 91
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->dispose()V

    .line 92
    return-void
.end method

.method protected editCell(ILjavafx/scene/control/TableColumnBase;)V
    .locals 6

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TableView;

    move v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/control/TableColumn;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TableView;->edit(ILjavafx/scene/control/TableColumn;)V

    .line 138
    return-void
.end method

.method protected getFocusModel()Ljavafx/scene/control/TableFocusModel;
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    return-object v0
.end method

.method protected getFocusedCell()Ljavafx/scene/control/TablePositionBase;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    return-object v0
.end method

.method protected getItemCount()I
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->size()I

    move-result v1

    goto :goto_0
.end method

.method protected getSelectedCells()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TablePosition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    return-object v0
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
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    return-object v0
.end method

.method protected getTablePosition(ILjavafx/scene/control/TableColumnBase;)Ljavafx/scene/control/TablePositionBase;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumnBase",
            "<TT;*>;)",
            "Ljavafx/scene/control/TablePositionBase",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<TT;*>;>;"
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "tc":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TT;*>;"
    new-instance v3, Ljavafx/scene/control/TablePosition;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TableView;

    move v6, v1

    move-object v7, v2

    check-cast v7, Ljavafx/scene/control/TableColumn;

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
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
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TableView;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumn;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    return-object v0
.end method

.method protected bridge synthetic getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumnBase;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumn;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
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
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    return-object v0
.end method

.method protected getVisibleLeafIndex(Ljavafx/scene/control/TableColumnBase;)I
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TableView;

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TableColumn;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView;->getVisibleLeafIndex(Ljavafx/scene/control/TableColumn;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    return v0
.end method

.method protected selectAllToFocus(Z)V
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehavior<TT;>;"
    move v1, p1

    .local v1, "setAnchorToFocusIndex":Z
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TableViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TableView;

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->getEditingCell()Ljavafx/scene/control/TablePosition;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectAllToFocus(Z)V

    .line 165
    goto :goto_0
.end method

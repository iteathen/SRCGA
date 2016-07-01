.class public Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;
.super Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;
.source "TableCellBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase",
        "<TS;TT;",
        "Ljavafx/scene/control/TableColumn",
        "<TS;*>;",
        "Ljavafx/scene/control/TableCell",
        "<TS;TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TableCell;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableCell",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;-><init>(Ljavafx/scene/control/IndexedCell;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected bridge synthetic edit(Ljavafx/scene/control/Cell;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TableCell;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->edit(Ljavafx/scene/control/TableCell;)V

    return-void
.end method

.method protected edit(Ljavafx/scene/control/TableCell;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableCell",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    move-object v1, p1

    .local v1, "cell":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 106
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->getCellContainer()Ljavafx/scene/control/TableView;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView;->edit(ILjavafx/scene/control/TableColumn;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->getCellContainer()Ljavafx/scene/control/TableView;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell;->getIndex()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView;->edit(ILjavafx/scene/control/TableColumn;)V

    goto :goto_0
.end method

.method protected focus(ILjavafx/scene/control/TableColumnBase;)V
    .locals 6

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v3

    move v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/control/TableColumn;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focus(ILjavafx/scene/control/TableColumn;)V

    .line 101
    return-void
.end method

.method protected bridge synthetic getCellContainer()Ljavafx/scene/control/Control;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->getCellContainer()Ljavafx/scene/control/TableView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    return-object v0
.end method

.method protected getCellContainer()Ljavafx/scene/control/TableView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableView",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableCell;

    invoke-virtual {v1}, Ljavafx/scene/control/TableCell;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    return-object v0
.end method

.method protected bridge synthetic getFocusModel()Ljavafx/scene/control/FocusModel;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    return-object v0
.end method

.method protected bridge synthetic getFocusModel()Ljavafx/scene/control/TableFocusModel;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    return-object v0
.end method

.method protected getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableView$TableViewFocusModel",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->getCellContainer()Ljavafx/scene/control/TableView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    return-object v0
.end method

.method protected getFocusedCell()Ljavafx/scene/control/TablePositionBase;
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->getCellContainer()Ljavafx/scene/control/TableView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    return-object v0
.end method

.method protected getItemCount()I
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->getCellContainer()Ljavafx/scene/control/TableView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    return v0
.end method

.method protected bridge synthetic getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    return-object v0
.end method

.method protected bridge synthetic getSelectionModel()Ljavafx/scene/control/TableSelectionModel;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    return-object v0
.end method

.method protected getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableView$TableViewSelectionModel",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->getCellContainer()Ljavafx/scene/control/TableView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    return-object v0
.end method

.method protected getTableColumn()Ljavafx/scene/control/TableColumn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableCell;

    invoke-virtual {v1}, Ljavafx/scene/control/TableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    return-object v0
.end method

.method protected bridge synthetic getTableColumn()Ljavafx/scene/control/TableColumnBase;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    return-object v0
.end method

.method protected getVisibleLeafIndex(Ljavafx/scene/control/TableColumnBase;)I
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    move-object v1, p1

    .local v1, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->getCellContainer()Ljavafx/scene/control/TableView;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TableColumn;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView;->getVisibleLeafIndex(Ljavafx/scene/control/TableColumn;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    return v0
.end method

.method protected isTableRowSelected()Z
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableCell;

    invoke-virtual {v1}, Ljavafx/scene/control/TableCell;->getTableRow()Ljavafx/scene/control/TableRow;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TableRow;->isSelected()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior<TS;TT;>;"
    return v0
.end method

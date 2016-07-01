.class public Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;
.super Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;
.source "TreeTableCellBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase",
        "<",
        "Ljavafx/scene/control/TreeItem",
        "<TS;>;TT;",
        "Ljavafx/scene/control/TreeTableColumn",
        "<TS;*>;",
        "Ljavafx/scene/control/TreeTableCell",
        "<TS;TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TreeTableCell;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableCell",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;-><init>(Ljavafx/scene/control/IndexedCell;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected bridge synthetic edit(Ljavafx/scene/control/Cell;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeTableCell;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->edit(Ljavafx/scene/control/TreeTableCell;)V

    return-void
.end method

.method protected edit(Ljavafx/scene/control/TreeTableCell;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableCell",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    move-object v1, p1

    .local v1, "cell":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 107
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getCellContainer()Ljavafx/scene/control/TreeTableView;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView;->edit(ILjavafx/scene/control/TreeTableColumn;)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getCellContainer()Ljavafx/scene/control/TreeTableView;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableCell;->getIndex()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView;->edit(ILjavafx/scene/control/TreeTableColumn;)V

    goto :goto_0
.end method

.method protected focus(ILjavafx/scene/control/TableColumnBase;)V
    .locals 6

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v3

    move v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focus(ILjavafx/scene/control/TreeTableColumn;)V

    .line 102
    return-void
.end method

.method protected bridge synthetic getCellContainer()Ljavafx/scene/control/Control;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getCellContainer()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    return-object v0
.end method

.method protected getCellContainer()Ljavafx/scene/control/TreeTableView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableCell;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableCell;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    return-object v0
.end method

.method protected bridge synthetic getFocusModel()Ljavafx/scene/control/FocusModel;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    return-object v0
.end method

.method protected bridge synthetic getFocusModel()Ljavafx/scene/control/TableFocusModel;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
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
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getCellContainer()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    return-object v0
.end method

.method protected getFocusedCell()Ljavafx/scene/control/TablePositionBase;
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getCellContainer()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    return-object v0
.end method

.method protected getItemCount()I
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getCellContainer()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getExpandedItemCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    return v0
.end method

.method protected bridge synthetic getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    return-object v0
.end method

.method protected bridge synthetic getSelectionModel()Ljavafx/scene/control/TableSelectionModel;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    return-object v0
.end method

.method protected getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getCellContainer()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    return-object v0
.end method

.method protected bridge synthetic getTableColumn()Ljavafx/scene/control/TableColumnBase;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    return-object v0
.end method

.method protected getTableColumn()Ljavafx/scene/control/TreeTableColumn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableCell;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    return-object v0
.end method

.method protected getVisibleLeafIndex(Ljavafx/scene/control/TableColumnBase;)I
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    move-object v1, p1

    .local v1, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getCellContainer()Ljavafx/scene/control/TreeTableView;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafIndex(Ljavafx/scene/control/TreeTableColumn;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    return v0
.end method

.method protected handleClicks(Ljavafx/scene/input/MouseButton;IZ)V
    .locals 7

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    move-object v1, p1

    .local v1, "button":Ljavafx/scene/input/MouseButton;
    move v2, p2

    .local v2, "clickCount":I
    move v3, p3

    .local v3, "isAlreadySelected":Z
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TreeTableCell;

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableCell;->getTreeTableRow()Ljavafx/scene/control/TreeTableRow;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableRow;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v5

    move-object v4, v5

    .line 145
    .local v4, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v5, v1

    sget-object v6, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    if-ne v5, v6, :cond_0

    .line 146
    move v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move v5, v3

    if-eqz v5, :cond_1

    .line 147
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeTableCell;

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->edit(Ljavafx/scene/control/TreeTableCell;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    move v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 150
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->edit(Ljavafx/scene/control/TreeTableCell;)V

    goto :goto_0

    .line 151
    :cond_2
    move v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/TreeItem;->isLeaf()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 153
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeTableCell;

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->edit(Ljavafx/scene/control/TreeTableCell;)V

    goto :goto_0

    .line 154
    :cond_3
    move v5, v2

    const/4 v6, 0x2

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    .line 156
    move-object v5, v4

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5, v6}, Ljavafx/scene/control/TreeItem;->setExpanded(Z)V

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method protected handleDisclosureNode(DD)Z
    .locals 21

    .prologue
    .line 114
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/TreeTableCell;

    invoke-virtual {v14}, Ljavafx/scene/control/TreeTableCell;->getTreeTableRow()Ljavafx/scene/control/TreeTableRow;

    move-result-object v14

    invoke-virtual {v14}, Ljavafx/scene/control/TreeTableRow;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v14

    move-object v5, v14

    .line 116
    .local v5, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/TreeTableCell;

    invoke-virtual {v14}, Ljavafx/scene/control/TreeTableCell;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v14

    move-object v6, v14

    .line 117
    .local v6, "treeTableView":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v14

    move-object v7, v14

    .line 118
    .local v7, "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v14, v6

    invoke-virtual {v14}, Ljavafx/scene/control/TreeTableView;->getTreeColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v14

    if-nez v14, :cond_2

    move-object v14, v6

    const/4 v15, 0x0

    .line 119
    invoke-virtual {v14, v15}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v14

    :goto_0
    move-object v8, v14

    .line 121
    .local v8, "treeColumn":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object v14, v7

    move-object v15, v8

    if-ne v14, v15, :cond_5

    .line 122
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/TreeTableCell;

    invoke-virtual {v14}, Ljavafx/scene/control/TreeTableCell;->getTreeTableRow()Ljavafx/scene/control/TreeTableRow;

    move-result-object v14

    invoke-virtual {v14}, Ljavafx/scene/control/TreeTableRow;->getDisclosureNode()Ljavafx/scene/Node;

    move-result-object v14

    move-object v9, v14

    .line 123
    .local v9, "disclosureNode":Ljavafx/scene/Node;
    move-object v14, v9

    if-eqz v14, :cond_5

    .line 124
    const-wide/16 v14, 0x0

    move-wide v10, v14

    .line 125
    .local v10, "startX":D
    move-object v14, v6

    invoke-virtual {v14}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v14

    invoke-interface {v14}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v12, v14

    :goto_1
    move-object v14, v12

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/TreeTableColumn;

    move-object v13, v14

    .line 126
    .local v13, "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object v14, v13

    move-object v15, v8

    if-ne v14, v15, :cond_3

    .line 129
    .end local v13    # "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    :cond_0
    move-object v14, v9

    invoke-virtual {v14}, Ljavafx/scene/Node;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v14

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v14

    move-wide v12, v14

    .line 130
    .local v12, "endX":D
    move-wide v14, v1

    move-wide/from16 v16, v12

    move-wide/from16 v18, v10

    sub-double v16, v16, v18

    cmpg-double v14, v14, v16

    if-gez v14, :cond_5

    .line 131
    move-object v14, v5

    if-eqz v14, :cond_1

    .line 132
    move-object v14, v5

    move-object v15, v5

    invoke-virtual {v15}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v15

    if-nez v15, :cond_4

    const/4 v15, 0x1

    :goto_2
    invoke-virtual {v14, v15}, Ljavafx/scene/control/TreeItem;->setExpanded(Z)V

    .line 134
    :cond_1
    const/4 v14, 0x1

    move v0, v14

    .line 138
    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    .end local v9    # "disclosureNode":Ljavafx/scene/Node;
    .end local v10    # "startX":D
    .end local v12    # "endX":D
    :goto_3
    return v0

    .line 119
    .end local v8    # "treeColumn":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    :cond_2
    move-object v14, v6

    invoke-virtual {v14}, Ljavafx/scene/control/TreeTableView;->getTreeColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v14

    goto :goto_0

    .line 127
    .restart local v8    # "treeColumn":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    .restart local v9    # "disclosureNode":Ljavafx/scene/Node;
    .restart local v10    # "startX":D
    .restart local v13    # "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    :cond_3
    move-wide v14, v10

    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/TreeTableColumn;->getWidth()D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide v10, v14

    .line 128
    goto :goto_1

    .line 132
    .end local v13    # "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    .restart local v12    # "endX":D
    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    .line 138
    .end local v9    # "disclosureNode":Ljavafx/scene/Node;
    .end local v10    # "startX":D
    .end local v12    # "endX":D
    :cond_5
    const/4 v14, 0x0

    move v0, v14

    goto :goto_3
.end method

.method protected isTableRowSelected()Z
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableCell;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableCell;->getTreeTableRow()Ljavafx/scene/control/TreeTableRow;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableRow;->isSelected()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior<TS;TT;>;"
    return v0
.end method

.class public Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;
.super Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;
.source "TreeTableRowBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase",
        "<",
        "Ljavafx/scene/control/TreeTableRow",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TreeTableRow;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableRow",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior<TT;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;-><init>(Ljavafx/scene/control/Cell;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected bridge synthetic edit(Ljavafx/scene/control/Cell;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;->edit(Ljavafx/scene/control/TreeTableRow;)V

    return-void
.end method

.method protected edit(Ljavafx/scene/control/TreeTableRow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableRow",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior<TT;>;"
    .local p1, "cell":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    return-void
.end method

.method protected bridge synthetic getCellContainer()Ljavafx/scene/control/Control;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;->getCellContainer()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior<TT;>;"
    return-object v0
.end method

.method protected getCellContainer()Ljavafx/scene/control/TreeTableView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableView",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior<TT;>;"
    return-object v0
.end method

.method protected bridge synthetic getFocusModel()Ljavafx/scene/control/FocusModel;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior<TT;>;"
    return-object v0
.end method

.method protected getFocusModel()Ljavafx/scene/control/TableFocusModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableFocusModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;*>;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;->getCellContainer()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior<TT;>;"
    return-object v0
.end method

.method protected getFocusedCell()Ljavafx/scene/control/TablePositionBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TablePositionBase",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;->getCellContainer()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior<TT;>;"
    return-object v0
.end method

.method protected bridge synthetic getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior<TT;>;"
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
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;->getCellContainer()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior<TT;>;"
    return-object v0
.end method

.method protected getVisibleLeafColumns()Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;->getCellContainer()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior<TT;>;"
    return-object v0
.end method

.method protected handleClicks(Ljavafx/scene/input/MouseButton;IZ)V
    .locals 7

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior<TT;>;"
    move-object v1, p1

    .local v1, "button":Ljavafx/scene/input/MouseButton;
    move v2, p2

    .local v2, "clickCount":I
    move v3, p3

    .local v3, "isAlreadySelected":Z
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableRow;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v5

    move-object v4, v5

    .line 83
    .local v4, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v5, v1

    sget-object v6, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    if-ne v5, v6, :cond_0

    .line 84
    move v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move v5, v3

    if-eqz v5, :cond_1

    .line 85
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;->edit(Ljavafx/scene/control/TreeTableRow;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    move v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 88
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;->edit(Ljavafx/scene/control/TreeTableRow;)V

    goto :goto_0

    .line 89
    :cond_2
    move v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/TreeItem;->isLeaf()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 91
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;->edit(Ljavafx/scene/control/TreeTableRow;)V

    goto :goto_0

    .line 92
    :cond_3
    move v5, v2

    const/4 v6, 0x2

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    .line 94
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

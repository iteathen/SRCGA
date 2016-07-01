.class public Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;
.super Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;
.source "TreeCellBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase",
        "<",
        "Ljavafx/scene/control/TreeCell",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TreeCell;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeCell",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior<TT;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;-><init>(Ljavafx/scene/control/Cell;Ljava/util/List;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected bridge synthetic edit(Ljavafx/scene/control/Cell;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeCell;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->edit(Ljavafx/scene/control/TreeCell;)V

    return-void
.end method

.method protected edit(Ljavafx/scene/control/TreeCell;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeCell",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior<TT;>;"
    move-object v1, p1

    .local v1, "cell":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v2, v3

    .line 76
    .local v2, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->getCellContainer()Ljavafx/scene/control/TreeView;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeView;->edit(Ljavafx/scene/control/TreeItem;)V

    .line 77
    return-void

    .line 75
    .end local v2    # "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic getCellContainer()Ljavafx/scene/control/Control;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->getCellContainer()Ljavafx/scene/control/TreeView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior<TT;>;"
    return-object v0
.end method

.method protected getCellContainer()Ljavafx/scene/control/TreeView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeCell;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeCell;->getTreeView()Ljavafx/scene/control/TreeView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior<TT;>;"
    return-object v0
.end method

.method protected getFocusModel()Ljavafx/scene/control/FocusModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/FocusModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->getCellContainer()Ljavafx/scene/control/TreeView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior<TT;>;"
    return-object v0
.end method

.method protected getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->getCellContainer()Ljavafx/scene/control/TreeView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior<TT;>;"
    return-object v0
.end method

.method protected handleClicks(Ljavafx/scene/input/MouseButton;IZ)V
    .locals 7

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior<TT;>;"
    move-object v1, p1

    .local v1, "button":Ljavafx/scene/input/MouseButton;
    move v2, p2

    .local v2, "clickCount":I
    move v3, p3

    .local v3, "isAlreadySelected":Z
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TreeCell;

    invoke-virtual {v5}, Ljavafx/scene/control/TreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

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

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeCell;

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->edit(Ljavafx/scene/control/TreeCell;)V

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

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->edit(Ljavafx/scene/control/TreeCell;)V

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

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeCell;

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->edit(Ljavafx/scene/control/TreeCell;)V

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

.method protected handleDisclosureNode(DD)Z
    .locals 13

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior<TT;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TreeCell;

    move-object v5, v7

    .line 101
    .local v5, "treeCell":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/control/TreeCell;->getDisclosureNode()Ljavafx/scene/Node;

    move-result-object v7

    move-object v6, v7

    .line 102
    .local v6, "disclosureNode":Ljavafx/scene/Node;
    move-object v7, v6

    if-eqz v7, :cond_2

    .line 103
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/scene/Node;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v7

    move-wide v8, v1

    move-wide v10, v3

    invoke-virtual {v7, v8, v9, v10, v11}, Ljavafx/geometry/Bounds;->contains(DD)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 104
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/control/TreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 105
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/control/TreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/control/TreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v7, v8}, Ljavafx/scene/control/TreeItem;->setExpanded(Z)V

    .line 107
    :cond_0
    const/4 v7, 0x1

    move v0, v7

    .line 110
    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior<TT;>;"
    :goto_1
    return v0

    .line 105
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior<TT;>;"
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 110
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1
.end method

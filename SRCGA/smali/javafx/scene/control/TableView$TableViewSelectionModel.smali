.class public abstract Ljavafx/scene/control/TableView$TableViewSelectionModel;
.super Ljavafx/scene/control/TableSelectionModel;
.source "TableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TableViewSelectionModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/TableSelectionModel",
        "<TS;>;"
    }
.end annotation


# instance fields
.field blockFocusCall:Z

.field private final tableView:Ljavafx/scene/control/TableView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TableView",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TableView;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableView",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 1856
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "tableView":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TableSelectionModel;-><init>()V

    .line 1839
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/control/TableView$TableViewSelectionModel;->blockFocusCall:Z

    .line 1857
    move-object v2, v1

    if-nez v2, :cond_0

    .line 1858
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "TableView can not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1861
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableView$TableViewSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    .line 1862
    return-void
.end method


# virtual methods
.method public abstract clearAndSelect(ILjavafx/scene/control/TableColumn;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;)V"
        }
    .end annotation
.end method

.method public clearAndSelect(ILjavafx/scene/control/TableColumnBase;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 1914
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;*>;"
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/control/TableColumn;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->clearAndSelect(ILjavafx/scene/control/TableColumn;)V

    .line 1915
    return-void
.end method

.method public abstract clearSelection(ILjavafx/scene/control/TableColumn;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;)V"
        }
    .end annotation
.end method

.method public clearSelection(ILjavafx/scene/control/TableColumnBase;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 1927
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;*>;"
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/control/TableColumn;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->clearSelection(ILjavafx/scene/control/TableColumn;)V

    .line 1928
    return-void
.end method

.method public focus(I)V
    .locals 5

    .prologue
    .line 1985
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->focus(ILjavafx/scene/control/TableColumn;)V

    .line 1986
    return-void
.end method

.method focus(ILjavafx/scene/control/TableColumn;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 2002
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/TablePosition;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v6

    move v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->focus(Ljavafx/scene/control/TablePosition;)V

    .line 2003
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v3

    sget-object v4, Ljavafx/scene/AccessibleAttribute;->FOCUS_ITEM:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TableView;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 2004
    return-void
.end method

.method focus(Ljavafx/scene/control/TablePosition;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TablePosition",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 2007
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "pos":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/control/TableView$TableViewSelectionModel;->blockFocusCall:Z

    if-eqz v2, :cond_0

    .line 2011
    :goto_0
    return-void

    .line 2008
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 2010
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focus(ILjavafx/scene/control/TableColumn;)V

    .line 2011
    goto :goto_0
.end method

.method getFocusedCell()Ljavafx/scene/control/TablePosition;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TablePosition",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 2014
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2015
    new-instance v1, Ljavafx/scene/control/TablePosition;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    move-object v0, v1

    .line 2017
    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getFocusedIndex()I
    .locals 2

    .prologue
    .line 1990
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    return v0
.end method

.method protected getItemCount()I
    .locals 2

    .prologue
    .line 1980
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getTableModel()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    return v0
.end method

.method protected getModelItem(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .prologue
    .line 1974
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    move v1, p1

    .local v1, "index":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getItemCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 1975
    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableView$TableViewSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public abstract getSelectedCells()Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TablePosition;",
            ">;"
        }
    .end annotation
.end method

.method protected getTableModel()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 1969
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$TableViewSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    return-object v0
.end method

.method public getTableView()Ljavafx/scene/control/TableView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableView",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 1961
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$TableViewSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    return-object v0
.end method

.method public abstract isSelected(ILjavafx/scene/control/TableColumn;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;)Z"
        }
    .end annotation
.end method

.method public isSelected(ILjavafx/scene/control/TableColumnBase;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;*>;)Z"
        }
    .end annotation

    .prologue
    .line 1889
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;*>;"
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/control/TableColumn;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->isSelected(ILjavafx/scene/control/TableColumn;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    return v0
.end method

.method public abstract select(ILjavafx/scene/control/TableColumn;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;)V"
        }
    .end annotation
.end method

.method public select(ILjavafx/scene/control/TableColumnBase;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 1902
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;*>;"
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/control/TableColumn;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->select(ILjavafx/scene/control/TableColumn;)V

    .line 1903
    return-void
.end method

.method public selectRange(ILjavafx/scene/control/TableColumnBase;ILjavafx/scene/control/TableColumnBase;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;*>;I",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 1940
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    move v1, p1

    .local v1, "minRow":I
    move-object v2, p2

    .local v2, "minColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;*>;"
    move/from16 v3, p3

    .local v3, "maxRow":I
    move-object/from16 v4, p4

    .local v4, "maxColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;*>;"
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/TableView$TableViewSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    move-object v10, v2

    check-cast v10, Ljavafx/scene/control/TableColumn;

    invoke-virtual {v9, v10}, Ljavafx/scene/control/TableView;->getVisibleLeafIndex(Ljavafx/scene/control/TableColumn;)I

    move-result v9

    move v5, v9

    .line 1941
    .local v5, "minColumnIndex":I
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/TableView$TableViewSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    move-object v10, v4

    check-cast v10, Ljavafx/scene/control/TableColumn;

    invoke-virtual {v9, v10}, Ljavafx/scene/control/TableView;->getVisibleLeafIndex(Ljavafx/scene/control/TableColumn;)I

    move-result v9

    move v6, v9

    .line 1942
    .local v6, "maxColumnIndex":I
    move v9, v1

    move v7, v9

    .local v7, "_row":I
    :goto_0
    move v9, v7

    move v10, v3

    if-gt v9, v10, :cond_1

    .line 1943
    move v9, v5

    move v8, v9

    .local v8, "_col":I
    :goto_1
    move v9, v8

    move v10, v6

    if-gt v9, v10, :cond_0

    .line 1944
    move-object v9, v0

    move v10, v7

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/control/TableView$TableViewSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    move v12, v8

    invoke-virtual {v11, v12}, Ljavafx/scene/control/TableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumn;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->select(ILjavafx/scene/control/TableColumn;)V

    .line 1943
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1942
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1947
    .end local v8    # "_col":I
    :cond_1
    return-void
.end method

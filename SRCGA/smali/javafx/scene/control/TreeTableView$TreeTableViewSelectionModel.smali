.class public abstract Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;
.super Ljavafx/scene/control/TableSelectionModel;
.source "TreeTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TreeTableViewSelectionModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/TableSelectionModel",
        "<",
        "Ljavafx/scene/control/TreeItem",
        "<TS;>;>;"
    }
.end annotation


# instance fields
.field private final treeTableView:Ljavafx/scene/control/TreeTableView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TreeTableView;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 2186
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "treeTableView":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TableSelectionModel;-><init>()V

    .line 2187
    move-object v2, v1

    if-nez v2, :cond_0

    .line 2188
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "TreeTableView can not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2191
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    .line 2192
    return-void
.end method

.method private focus(ILjavafx/scene/control/TreeTableColumn;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 2265
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/TreeTablePosition;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v6

    move v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->focus(Ljavafx/scene/control/TreeTablePosition;)V

    .line 2266
    return-void
.end method

.method private focus(Ljavafx/scene/control/TreeTablePosition;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 2269
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2272
    :goto_0
    return-void

    .line 2271
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focus(ILjavafx/scene/control/TreeTableColumn;)V

    .line 2272
    goto :goto_0
.end method

.method private getFocusedCell()Ljavafx/scene/control/TreeTablePosition;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 2275
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2276
    new-instance v1, Ljavafx/scene/control/TreeTablePosition;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    move-object v0, v1

    .line 2278
    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public focus(I)V
    .locals 5

    .prologue
    .line 2236
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->focus(ILjavafx/scene/control/TreeTableColumn;)V

    .line 2237
    return-void
.end method

.method public getFocusedIndex()I
    .locals 2

    .prologue
    .line 2241
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    return v0
.end method

.method protected getItemCount()I
    .locals 2

    .prologue
    .line 2231
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getExpandedItemCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    return v0
.end method

.method public bridge synthetic getModelItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2161
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->getModelItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    return-object v0
.end method

.method public getModelItem(I)Ljavafx/scene/control/TreeItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 2226
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView;->getTreeItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    return-object v0
.end method

.method public abstract getSelectedCells()Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;>;"
        }
    .end annotation
.end method

.method public getTreeTableView()Ljavafx/scene/control/TreeTableView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 2221
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    return-object v0
.end method

.method public selectRange(ILjavafx/scene/control/TableColumnBase;ILjavafx/scene/control/TableColumnBase;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumnBase",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;*>;I",
            "Ljavafx/scene/control/TableColumnBase",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;*>;)V"
        }
    .end annotation

    .prologue
    .line 2247
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    move v1, p1

    .local v1, "minRow":I
    move-object v2, p2

    .local v2, "minColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<Ljavafx/scene/control/TreeItem<TS;>;*>;"
    move/from16 v3, p3

    .local v3, "maxRow":I
    move-object/from16 v4, p4

    .local v4, "maxColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<Ljavafx/scene/control/TreeItem<TS;>;*>;"
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object v10, v2

    check-cast v10, Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual {v9, v10}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafIndex(Ljavafx/scene/control/TreeTableColumn;)I

    move-result v9

    move v5, v9

    .line 2248
    .local v5, "minColumnIndex":I
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object v10, v4

    check-cast v10, Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual {v9, v10}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafIndex(Ljavafx/scene/control/TreeTableColumn;)I

    move-result v9

    move v6, v9

    .line 2249
    .local v6, "maxColumnIndex":I
    move v9, v1

    move v7, v9

    .local v7, "_row":I
    :goto_0
    move v9, v7

    move v10, v3

    if-gt v9, v10, :cond_1

    .line 2250
    move v9, v5

    move v8, v9

    .local v8, "_col":I
    :goto_1
    move v9, v8

    move v10, v6

    if-gt v9, v10, :cond_0

    .line 2251
    move-object v9, v0

    move v10, v7

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move v12, v8

    invoke-virtual {v11, v12}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 2250
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2249
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2254
    .end local v8    # "_col":I
    :cond_1
    return-void
.end method

.class public Ljavafx/scene/control/TreeTablePosition;
.super Ljavafx/scene/control/TablePositionBase;
.source "TreeTablePosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/TablePositionBase",
        "<",
        "Ljavafx/scene/control/TreeTableColumn",
        "<TS;TT;>;>;"
    }
.end annotation


# instance fields
.field private final controlRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field fixedColumnIndex:I

.field private final treeItemRef:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V
    .locals 10
    .param p1    # Ljavafx/scene/control/TreeTableView;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "treeTableView"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "row"
        .end annotation
    .end param
    .param p3    # Ljavafx/scene/control/TreeTableColumn;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "tableColumn"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;I",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;TT;>;"
    move-object v1, p1

    .local v1, "treeTableView":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move v2, p2

    .local v2, "row":I
    move-object v3, p3

    .local v3, "tableColumn":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v4, v0

    move v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TablePositionBase;-><init>(ILjavafx/scene/control/TableColumnBase;)V

    .line 83
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Ljavafx/scene/control/TreeTablePosition;->fixedColumnIndex:I

    .line 69
    move-object v4, v0

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v4, Ljavafx/scene/control/TreeTablePosition;->controlRef:Ljava/lang/ref/WeakReference;

    .line 70
    move-object v4, v0

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move v8, v2

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TreeTableView;->getTreeItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v4, Ljavafx/scene/control/TreeTablePosition;->treeItemRef:Ljava/lang/ref/WeakReference;

    .line 71
    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 5

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;TT;>;"
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/TreeTablePosition;->fixedColumnIndex:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 97
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/TreeTablePosition;->fixedColumnIndex:I

    move v0, v3

    .line 102
    .end local v0    # "this":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;TT;>;"
    .local v1, "tableView":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    .local v2, "tableColumn":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    :goto_0
    return v0

    .line 99
    .end local v1    # "tableView":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    .end local v2    # "tableColumn":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    .restart local v0    # "this":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;TT;>;"
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTablePosition;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v3

    move-object v1, v3

    .line 100
    .restart local v1    # "tableView":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v3

    move-object v2, v3

    .line 101
    .restart local v2    # "tableColumn":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v2

    if-nez v3, :cond_2

    :cond_1
    const/4 v3, -0x1

    .line 102
    :goto_1
    move v0, v3

    goto :goto_0

    .line 101
    :cond_2
    move-object v3, v1

    move-object v4, v2

    .line 102
    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafIndex(Ljavafx/scene/control/TreeTableColumn;)I

    move-result v3

    goto :goto_1
.end method

.method public bridge synthetic getTableColumn()Ljavafx/scene/control/TableColumnBase;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;TT;>;"
    return-object v0
.end method

.method public final getTableColumn()Ljavafx/scene/control/TreeTableColumn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableColumn;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;TT;>;"
    return-object v0
.end method

.method public final getTreeItem()Ljavafx/scene/control/TreeItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTablePosition;->treeItemRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeItem;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;TT;>;"
    return-object v0
.end method

.method public final getTreeTableView()Ljavafx/scene/control/TreeTableView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTablePosition;->controlRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;TT;>;"
    return-object v0
.end method

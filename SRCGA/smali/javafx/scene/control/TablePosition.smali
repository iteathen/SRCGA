.class public Ljavafx/scene/control/TablePosition;
.super Ljavafx/scene/control/TablePositionBase;
.source "TablePosition.java"


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
        "Ljavafx/scene/control/TableColumn",
        "<TS;TT;>;>;"
    }
.end annotation


# instance fields
.field private final controlRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/control/TableView",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field fixedColumnIndex:I

.field private final itemRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V
    .locals 11
    .param p1    # Ljavafx/scene/control/TableView;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "tableView"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "row"
        .end annotation
    .end param
    .param p3    # Ljavafx/scene/control/TableColumn;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "tableColumn"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableView",
            "<TS;>;I",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;TT;>;"
    move-object v1, p1

    .local v1, "tableView":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move v2, p2

    .local v2, "row":I
    move-object v3, p3

    .local v3, "tableColumn":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v5, v0

    move v6, v2

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Ljavafx/scene/control/TablePositionBase;-><init>(ILjavafx/scene/control/TableColumnBase;)V

    .line 88
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Ljavafx/scene/control/TablePosition;->fixedColumnIndex:I

    .line 71
    move-object v5, v0

    new-instance v6, Ljava/lang/ref/WeakReference;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, v5, Ljavafx/scene/control/TablePosition;->controlRef:Ljava/lang/ref/WeakReference;

    .line 73
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v4, v5

    .line 74
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<TS;>;"
    move-object v5, v0

    new-instance v6, Ljava/lang/ref/WeakReference;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v4

    if-eqz v8, :cond_0

    move v8, v2

    if-ltz v8, :cond_0

    move v8, v2

    move-object v9, v4

    .line 75
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_0

    move-object v8, v4

    move v9, v2

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    :goto_0
    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, v5, Ljavafx/scene/control/TablePosition;->itemRef:Ljava/lang/ref/WeakReference;

    .line 76
    return-void

    .line 75
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getColumn()I
    .locals 5

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;TT;>;"
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/TablePosition;->fixedColumnIndex:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 102
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/TablePosition;->fixedColumnIndex:I

    move v0, v3

    .line 108
    .end local v0    # "this":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;TT;>;"
    .local v1, "tableView":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    .local v2, "tableColumn":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    :goto_0
    return v0

    .line 105
    .end local v1    # "tableView":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    .end local v2    # "tableColumn":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    .restart local v0    # "this":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;TT;>;"
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TablePosition;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v3

    move-object v1, v3

    .line 106
    .restart local v1    # "tableView":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v3

    move-object v2, v3

    .line 107
    .restart local v2    # "tableColumn":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v2

    if-nez v3, :cond_2

    :cond_1
    const/4 v3, -0x1

    .line 108
    :goto_1
    move v0, v3

    goto :goto_0

    .line 107
    :cond_2
    move-object v3, v1

    move-object v4, v2

    .line 108
    invoke-virtual {v3, v4}, Ljavafx/scene/control/TableView;->getVisibleLeafIndex(Ljavafx/scene/control/TableColumn;)I

    move-result v3

    goto :goto_1
.end method

.method final getItem()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TablePosition;->itemRef:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TablePosition;->itemRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final getTableColumn()Ljavafx/scene/control/TableColumn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableColumn;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;TT;>;"
    return-object v0
.end method

.method public bridge synthetic getTableColumn()Ljavafx/scene/control/TableColumnBase;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;TT;>;"
    return-object v0
.end method

.method public final getTableView()Ljavafx/scene/control/TableView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableView",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TablePosition;->controlRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;TT;>;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TablePosition [ row: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tableView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 138
    invoke-virtual {v2}, Ljavafx/scene/control/TablePosition;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;TT;>;"
    return-object v0
.end method

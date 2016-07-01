.class public Lcom/sun/javafx/scene/control/skin/TableRowSkin;
.super Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;
.source "TableRowSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase",
        "<TT;",
        "Ljavafx/scene/control/TableRow",
        "<TT;>;",
        "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase",
        "<",
        "Ljavafx/scene/control/TableRow",
        "<TT;>;>;",
        "Ljavafx/scene/control/TableCell",
        "<TT;*>;>;"
    }
.end annotation


# instance fields
.field private tableView:Ljavafx/scene/control/TableView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TableView",
            "<TT;>;"
        }
    .end annotation
.end field

.field private tableViewSkin:Lcom/sun/javafx/scene/control/skin/TableViewSkin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/control/skin/TableViewSkin",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TableRow;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableRow",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    move-object v1, p1

    .local v1, "tableRow":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/TableRowBehavior;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TableRowBehavior;-><init>(Ljavafx/scene/control/TableRow;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;-><init>(Ljavafx/scene/control/IndexedCell;Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;)V

    .line 61
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableRow;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->tableView:Ljavafx/scene/control/TableView;

    .line 62
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->updateTableViewSkin()V

    .line 64
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->init(Ljavafx/scene/control/IndexedCell;)V

    .line 66
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableRow;->tableViewProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    const-string v4, "TABLE_VIEW"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private updateTableViewSkin()V
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TableRow;

    invoke-virtual {v2}, Ljavafx/scene/control/TableRow;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v2

    move-object v1, v2

    .line 127
    .local v1, "tableView":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TT;>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v2

    instance-of v2, v2, Lcom/sun/javafx/scene/control/skin/TableViewSkin;

    if-eqz v2, :cond_0

    .line 128
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/TableViewSkin;

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->tableViewSkin:Lcom/sun/javafx/scene/control/skin/TableViewSkin;

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method protected fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    return-object v0
.end method

.method protected bridge synthetic getCell(Ljavafx/scene/control/TableColumnBase;)Ljavafx/scene/control/IndexedCell;
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->getCell(Ljavafx/scene/control/TableColumnBase;)Ljavafx/scene/control/TableCell;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    return-object v0
.end method

.method protected getCell(Ljavafx/scene/control/TableColumnBase;)Ljavafx/scene/control/TableCell;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase;",
            ")",
            "Ljavafx/scene/control/TableCell",
            "<TT;*>;"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    move-object v1, p1

    .local v1, "tcb":Ljavafx/scene/control/TableColumnBase;
    move-object v4, v1

    check-cast v4, Ljavafx/scene/control/TableColumn;

    move-object v2, v4

    .line 87
    .local v2, "tableColumn":Ljavafx/scene/control/TableColumn;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumn;->getCellFactory()Ljavafx/util/Callback;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v4, v5}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TableCell;

    move-object v3, v4

    .line 90
    .local v3, "cell":Ljavafx/scene/control/TableCell;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableCell;->updateTableColumn(Ljavafx/scene/control/TableColumn;)V

    .line 91
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumn;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableCell;->updateTableView(Ljavafx/scene/control/TableView;)V

    .line 92
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TableRow;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableCell;->updateTableRow(Ljavafx/scene/control/TableRow;)V

    .line 94
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    return-object v0
.end method

.method protected getTableColumnBase(Ljavafx/scene/control/TableCell;)Ljavafx/scene/control/TableColumn;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableCell",
            "<TT;*>;)",
            "Ljavafx/scene/control/TableColumn",
            "<TT;*>;"
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    move-object v1, p1

    .local v1, "cell":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TT;*>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    return-object v0
.end method

.method protected bridge synthetic getTableColumnBase(Ljavafx/scene/control/IndexedCell;)Ljavafx/scene/control/TableColumnBase;
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TableCell;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->getTableColumnBase(Ljavafx/scene/control/TableCell;)Ljavafx/scene/control/TableColumn;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    return-object v0
.end method

.method protected getVirtualFlowOwner()Ljavafx/scene/control/Control;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableRow;

    invoke-virtual {v1}, Ljavafx/scene/control/TableRow;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
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
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    return-object v0
.end method

.method protected graphicProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    return-object v0
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 71
    const-string v5, "TABLE_VIEW"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 72
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->updateTableViewSkin()V

    .line 74
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->cells:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .local v3, "max":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 75
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->cells:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node;

    move-object v4, v5

    .line 76
    .local v4, "n":Ljavafx/scene/Node;
    move-object v5, v4

    instance-of v5, v5, Ljavafx/scene/control/TableCell;

    if-eqz v5, :cond_0

    .line 77
    move-object v5, v4

    check-cast v5, Ljavafx/scene/control/TableCell;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TableRow;

    invoke-virtual {v6}, Ljavafx/scene/control/TableRow;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableCell;->updateTableView(Ljavafx/scene/control/TableView;)V

    .line 74
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v4    # "n":Ljavafx/scene/Node;
    :cond_1
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TableRow;

    invoke-virtual {v6}, Ljavafx/scene/control/TableRow;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->tableView:Ljavafx/scene/control/TableView;

    .line 83
    .end local v2    # "i":I
    .end local v3    # "max":I
    :cond_2
    return-void
.end method

.method protected isColumnPartiallyOrFullyVisible(Ljavafx/scene/control/TableColumnBase;)Z
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    move-object v1, p1

    .local v1, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->tableViewSkin:Lcom/sun/javafx/scene/control/skin/TableViewSkin;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->tableViewSkin:Lcom/sun/javafx/scene/control/skin/TableViewSkin;

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TableColumn;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->isColumnPartiallyOrFullyVisible(Ljavafx/scene/control/TableColumnBase;)Z

    move-result v2

    goto :goto_0
.end method

.method protected varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v9, Lcom/sun/javafx/scene/control/skin/TableRowSkin$1;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 174
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-super {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    :goto_0
    return-object v0

    .line 138
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    :pswitch_0
    new-instance v9, Ljava/util/ArrayList;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v9

    .line 139
    .local v3, "selection":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TableRow;

    invoke-virtual {v9}, Ljavafx/scene/control/TableRow;->getIndex()I

    move-result v9

    move v4, v9

    .line 140
    .local v4, "index":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v9}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v9

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TablePosition;

    move-object v6, v9

    .line 141
    .local v6, "pos":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TT;*>;"
    move-object v9, v6

    invoke-virtual {v9}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v9

    move v10, v4

    if-ne v9, v10, :cond_1

    .line 142
    move-object v9, v6

    invoke-virtual {v9}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v9

    move-object v7, v9

    .line 143
    .local v7, "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TT;*>;"
    move-object v9, v7

    if-nez v9, :cond_0

    .line 145
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->tableView:Ljavafx/scene/control/TableView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljavafx/scene/control/TableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumn;

    move-result-object v9

    move-object v7, v9

    .line 147
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->cellsMap:Ljava/util/WeakHashMap;

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/Reference;

    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TableCell;

    move-object v8, v9

    .line 148
    .local v8, "cell":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TT;*>;"
    move-object v9, v8

    if-eqz v9, :cond_1

    move-object v9, v3

    move-object v10, v8

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 150
    .end local v7    # "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TT;*>;"
    .end local v8    # "cell":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TT;*>;"
    :cond_1
    move-object v9, v3

    invoke-static {v9}, Ljavafx/collections/FXCollections;->observableArrayList(Ljava/util/Collection;)Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v0, v9

    goto :goto_0

    .line 154
    .end local v3    # "selection":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .end local v4    # "index":I
    .end local v6    # "pos":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TT;*>;"
    :cond_2
    :pswitch_1
    move-object v9, v2

    const/4 v10, 0x1

    aget-object v9, v9, v10

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v3, v9

    .line 155
    .local v3, "colIndex":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->tableView:Ljavafx/scene/control/TableView;

    move v10, v3

    invoke-virtual {v9, v10}, Ljavafx/scene/control/TableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumn;

    move-result-object v9

    move-object v4, v9

    .line 156
    .local v4, "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TT;*>;"
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->cellsMap:Ljava/util/WeakHashMap;

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 157
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->cellsMap:Ljava/util/WeakHashMap;

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/Reference;

    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 159
    :cond_3
    const/4 v9, 0x0

    move-object v0, v9

    goto/16 :goto_0

    .line 162
    .end local v3    # "colIndex":I
    .end local v4    # "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TT;*>;"
    :pswitch_2
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v9}, Ljavafx/scene/control/TableView;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v9

    move-object v3, v9

    .line 163
    .local v3, "fm":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TT;>;"
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v9

    move-object v4, v9

    .line 164
    .local v4, "focusedCell":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TT;*>;"
    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v9

    move-object v5, v9

    .line 165
    .local v5, "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TT;*>;"
    move-object v9, v5

    if-nez v9, :cond_4

    .line 167
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->tableView:Ljavafx/scene/control/TableView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljavafx/scene/control/TableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumn;

    move-result-object v9

    move-object v5, v9

    .line 169
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->cellsMap:Ljava/util/WeakHashMap;

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 170
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->cellsMap:Ljava/util/WeakHashMap;

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/Reference;

    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 172
    :cond_5
    const/4 v9, 0x0

    move-object v0, v9

    goto/16 :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic updateCell(Ljavafx/scene/control/IndexedCell;Ljavafx/scene/control/IndexedCell;)V
    .locals 6

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljavafx/scene/control/TableCell;

    move-object v5, v2

    check-cast v5, Ljavafx/scene/control/TableRow;

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TableRowSkin;->updateCell(Ljavafx/scene/control/TableCell;Ljavafx/scene/control/TableRow;)V

    return-void
.end method

.method protected updateCell(Ljavafx/scene/control/TableCell;Ljavafx/scene/control/TableRow;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableCell",
            "<TT;*>;",
            "Ljavafx/scene/control/TableRow",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TableRowSkin<TT;>;"
    move-object v1, p1

    .local v1, "cell":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TT;*>;"
    move-object v2, p2

    .local v2, "row":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TableCell;->updateTableRow(Ljavafx/scene/control/TableRow;)V

    .line 103
    return-void
.end method

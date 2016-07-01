.class public Ljavafx/scene/control/TableRow;
.super Ljavafx/scene/control/IndexedCell;
.source "TableRow.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/IndexedCell",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "table-row-cell"


# instance fields
.field private final editingListener:Ljavafx/beans/InvalidationListener;

.field private final focusedListener:Ljavafx/beans/InvalidationListener;

.field private isFirstRun:Z

.field private selectedListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/control/TablePosition;",
            ">;"
        }
    .end annotation
.end field

.field private tableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TableView",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final weakEditingListener:Ljavafx/beans/WeakInvalidationListener;

.field private final weakFocusedListener:Ljavafx/beans/WeakInvalidationListener;

.field private final weakSelectedListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<",
            "Ljavafx/scene/control/TablePosition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/IndexedCell;-><init>()V

    .line 100
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TableRow$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TableRow;)Ljavafx/collections/ListChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TableRow;->selectedListener:Ljavafx/collections/ListChangeListener;

    .line 105
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TableRow$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/TableRow;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TableRow;->focusedListener:Ljavafx/beans/InvalidationListener;

    .line 110
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TableRow$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/TableRow;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TableRow;->editingListener:Ljavafx/beans/InvalidationListener;

    .line 114
    move-object v1, v0

    new-instance v2, Ljavafx/collections/WeakListChangeListener;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableRow;->selectedListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v3, v4}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TableRow;->weakSelectedListener:Ljavafx/collections/WeakListChangeListener;

    .line 115
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableRow;->focusedListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TableRow;->weakFocusedListener:Ljavafx/beans/WeakInvalidationListener;

    .line 116
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableRow;->editingListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TableRow;->weakEditingListener:Ljavafx/beans/WeakInvalidationListener;

    .line 230
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/control/TableRow;->isFirstRun:Z

    .line 74
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableRow;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "table-row-cell"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v1

    .line 75
    move-object v1, v0

    sget-object v2, Ljavafx/scene/AccessibleRole;->TABLE_ROW:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TableRow;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/TableRow;)Ljavafx/collections/WeakListChangeListener;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableRow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableRow;->weakSelectedListener:Ljavafx/collections/WeakListChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TableRow;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/control/TableRow;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableRow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableRow;->weakFocusedListener:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TableRow;
    return-object v0
.end method

.method static synthetic access$200(Ljavafx/scene/control/TableRow;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableRow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableRow;->weakEditingListener:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TableRow;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TableRow;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableRow;->lambda$new$58(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/TableRow;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableRow;->lambda$new$59(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/TableRow;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableRow;->lambda$new$60(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$new$58(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 3

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TableRow;->updateSelection()V

    .line 102
    return-void
.end method

.method private synthetic lambda$new$59(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TableRow;->updateFocus()V

    .line 107
    return-void
.end method

.method private synthetic lambda$new$60(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TableRow;->updateEditing()V

    .line 112
    return-void
.end method

.method private setTableView(Ljavafx/scene/control/TableView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableView",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TableRow;->tableViewPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method private tableViewPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TableView",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableRow;->tableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 145
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TableRow$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TableRow$1;-><init>(Ljavafx/scene/control/TableRow;)V

    iput-object v2, v1, Ljavafx/scene/control/TableRow;->tableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 199
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableRow;->tableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    return-object v0
.end method

.method private updateEditing()V
    .locals 7

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableRow;->getIndex()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 329
    :goto_0
    return-void

    .line 311
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableRow;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v5

    move-object v1, v5

    .line 312
    .local v1, "table":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TT;>;"
    move-object v5, v1

    if-nez v5, :cond_1

    goto :goto_0

    .line 314
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v5

    move-object v2, v5

    .line 315
    .local v2, "sm":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TT;>;"
    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->isCellSelectionEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    goto :goto_0

    .line 317
    :cond_3
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TableView;->getEditingCell()Ljavafx/scene/control/TablePosition;

    move-result-object v5

    move-object v3, v5

    .line 318
    .local v3, "editCell":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TT;*>;"
    move-object v5, v3

    if-eqz v5, :cond_4

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 319
    goto :goto_0

    .line 322
    :cond_4
    move-object v5, v3

    if-nez v5, :cond_6

    const/4 v5, 0x0

    :goto_1
    move v4, v5

    .line 324
    .local v4, "rowMatch":Z
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableRow;->isEditing()Z

    move-result v5

    if-nez v5, :cond_8

    move v5, v4

    if-eqz v5, :cond_8

    .line 325
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableRow;->startEdit()V

    .line 329
    :cond_5
    :goto_2
    goto :goto_0

    .line 322
    .end local v4    # "rowMatch":Z
    :cond_6
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TableRow;->getIndex()I

    move-result v6

    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 326
    .restart local v4    # "rowMatch":Z
    :cond_8
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableRow;->isEditing()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v4

    if-nez v5, :cond_5

    .line 327
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableRow;->cancelEdit()V

    goto :goto_2
.end method

.method private updateFocus()V
    .locals 7

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableRow;->getIndex()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 306
    :goto_0
    return-void

    .line 297
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableRow;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v5

    move-object v1, v5

    .line 298
    .local v1, "table":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TT;>;"
    move-object v5, v1

    if-nez v5, :cond_1

    goto :goto_0

    .line 300
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v5

    move-object v2, v5

    .line 301
    .local v2, "sm":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TT;>;"
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TableView;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v5

    move-object v3, v5

    .line 302
    .local v3, "fm":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TT;>;"
    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v3

    if-nez v5, :cond_3

    :cond_2
    goto :goto_0

    .line 304
    :cond_3
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->isCellSelectionEnabled()Z

    move-result v5

    if-nez v5, :cond_4

    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TableRow;->getIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableView$TableViewFocusModel;->isFocused(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    move v4, v5

    .line 305
    .local v4, "isFocused":Z
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableRow;->setFocused(Z)V

    .line 306
    goto :goto_0

    .line 304
    .end local v4    # "isFocused":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private updateItem(I)V
    .locals 13

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    move v1, p1

    .local v1, "oldIndex":I
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TableRow;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v10

    move-object v2, v10

    .line 233
    .local v2, "tv":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TT;>;"
    move-object v10, v2

    if-eqz v10, :cond_0

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v10

    if-nez v10, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v3, v10

    .line 236
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v10, v3

    if-nez v10, :cond_3

    const/4 v10, -0x1

    :goto_1
    move v4, v10

    .line 239
    .local v4, "itemCount":I
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TableRow;->getIndex()I

    move-result v10

    move v5, v10

    .line 240
    .local v5, "newIndex":I
    move v10, v5

    if-ltz v10, :cond_4

    move v10, v5

    move v11, v4

    if-ge v10, v11, :cond_4

    const/4 v10, 0x1

    :goto_2
    move v6, v10

    .line 242
    .local v6, "valid":Z
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TableRow;->getItem()Ljava/lang/Object;

    move-result-object v10

    move-object v7, v10

    .line 243
    .local v7, "oldValue":Ljava/lang/Object;, "TT;"
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TableRow;->isEmpty()Z

    move-result v10

    move v8, v10

    .line 246
    .local v8, "isEmpty":Z
    move v10, v6

    if-eqz v10, :cond_6

    .line 247
    move-object v10, v3

    move v11, v5

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    .line 251
    .local v9, "newValue":Ljava/lang/Object;, "TT;"
    move v10, v1

    move v11, v5

    if-ne v10, v11, :cond_5

    .line 252
    move-object v10, v0

    move-object v11, v7

    move-object v12, v9

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/TableRow;->isItemChanged(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 256
    .line 272
    .end local v9    # "newValue":Ljava/lang/Object;, "TT;"
    :cond_2
    :goto_3
    goto :goto_0

    .line 236
    .end local v4    # "itemCount":I
    .end local v5    # "newIndex":I
    .end local v6    # "valid":Z
    .end local v7    # "oldValue":Ljava/lang/Object;, "TT;"
    .end local v8    # "isEmpty":Z
    :cond_3
    move-object v10, v3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_1

    .line 240
    .restart local v4    # "itemCount":I
    .restart local v5    # "newIndex":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 259
    .restart local v6    # "valid":Z
    .restart local v7    # "oldValue":Ljava/lang/Object;, "TT;"
    .restart local v8    # "isEmpty":Z
    .restart local v9    # "newValue":Ljava/lang/Object;, "TT;"
    :cond_5
    move-object v10, v0

    move-object v11, v9

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/TableRow;->updateItem(Ljava/lang/Object;Z)V

    .line 260
    goto :goto_3

    .line 267
    .end local v9    # "newValue":Ljava/lang/Object;, "TT;"
    :cond_6
    move v10, v8

    if-nez v10, :cond_7

    move-object v10, v7

    if-nez v10, :cond_8

    :cond_7
    move-object v10, v0

    iget-boolean v10, v10, Ljavafx/scene/control/TableRow;->isFirstRun:Z

    if-eqz v10, :cond_2

    .line 268
    :cond_8
    move-object v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/TableRow;->updateItem(Ljava/lang/Object;Z)V

    .line 269
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Ljavafx/scene/control/TableRow;->isFirstRun:Z

    goto :goto_3
.end method

.method private updateSelection()V
    .locals 5

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableRow;->getIndex()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 292
    :goto_0
    return-void

    .line 285
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableRow;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v3

    move-object v1, v3

    .line 286
    .local v1, "table":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TT;>;"
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 287
    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 288
    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->isCellSelectionEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    .line 289
    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableRow;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->isSelected(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v2, v3

    .line 291
    .local v2, "isSelected":Z
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TableRow;->updateSelected(Z)V

    .line 292
    goto :goto_0

    .line 289
    .end local v2    # "isSelected":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected createDefaultSkin()Ljavafx/scene/control/Skin;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/Skin",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    new-instance v1, Lcom/sun/javafx/scene/control/skin/TableRowSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableRowSkin;-><init>(Ljavafx/scene/control/TableRow;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    return-object v0
.end method

.method public final getTableView()Ljavafx/scene/control/TableView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableView",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableRow;->tableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableRow;->tableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableView;

    goto :goto_0
.end method

.method indexChanged(II)V
    .locals 6

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    move v1, p1

    .local v1, "oldIndex":I
    move v2, p2

    .local v2, "newIndex":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/IndexedCell;->indexChanged(II)V

    .line 225
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/control/TableRow;->updateItem(I)V

    .line 226
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TableRow;->updateSelection()V

    .line 227
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TableRow;->updateFocus()V

    .line 228
    return-void
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/control/TableRow$2;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 371
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/IndexedCell;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    :goto_0
    return-object v0

    .line 370
    .restart local v0    # "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableRow;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final tableViewProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/control/TableView",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TableRow;->tableViewPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    return-object v0
.end method

.method public final updateTableView(Ljavafx/scene/control/TableView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableView",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    move-object v1, p1

    .local v1, "tv":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableRow;->setTableView(Ljavafx/scene/control/TableView;)V

    .line 349
    return-void
.end method

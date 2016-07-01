.class public Ljavafx/scene/control/TableView$TableViewFocusModel;
.super Ljavafx/scene/control/TableFocusModel;
.source "TableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TableViewFocusModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/TableFocusModel",
        "<TS;",
        "Ljavafx/scene/control/TableColumn",
        "<TS;*>;>;"
    }
.end annotation


# instance fields
.field private final EMPTY_CELL:Ljavafx/scene/control/TablePosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TablePosition",
            "<TS;*>;"
        }
    .end annotation
.end field

.field private focusedCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TablePosition;",
            ">;"
        }
    .end annotation
.end field

.field private final itemsContentListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final tableView:Ljavafx/scene/control/TableView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TableView",
            "<TS;>;"
        }
    .end annotation
.end field

.field private weakItemsContentListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TableView;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableView",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 3136
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v1, p1

    .local v1, "tableView":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TableFocusModel;-><init>()V

    .line 3163
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TableView$TableViewFocusModel$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TableView$TableViewFocusModel;)Ljavafx/collections/ListChangeListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TableView$TableViewFocusModel;->itemsContentListener:Ljavafx/collections/ListChangeListener;

    .line 3197
    move-object v2, v0

    new-instance v3, Ljavafx/collections/WeakListChangeListener;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableView$TableViewFocusModel;->itemsContentListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v4, v5}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v3, v2, Ljavafx/scene/control/TableView$TableViewFocusModel;->weakItemsContentListener:Ljavafx/collections/WeakListChangeListener;

    .line 3137
    move-object v2, v1

    if-nez v2, :cond_0

    .line 3138
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "TableView can not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3141
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableView$TableViewFocusModel;->tableView:Ljavafx/scene/control/TableView;

    .line 3142
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TablePosition;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    iput-object v3, v2, Ljavafx/scene/control/TableView$TableViewFocusModel;->EMPTY_CELL:Ljavafx/scene/control/TablePosition;

    .line 3144
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3145
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableView$TableViewFocusModel;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableView$TableViewFocusModel;->weakItemsContentListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 3148
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableView$TableViewFocusModel;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    new-instance v3, Ljavafx/scene/control/TableView$TableViewFocusModel$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TableView$TableViewFocusModel$1;-><init>(Ljavafx/scene/control/TableView$TableViewFocusModel;Ljavafx/scene/control/TableView;)V

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 3158
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TableView$TableViewFocusModel;->updateDefaultFocus()V

    .line 3159
    return-void
.end method

.method static synthetic access$2200(Ljavafx/scene/control/TableView$TableViewFocusModel;Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V
    .locals 6

    .prologue
    .line 3123
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableView$TableViewFocusModel;
    move-object v1, p1

    .local v1, "x1":Ljavafx/collections/ObservableList;
    move-object v2, p2

    .local v2, "x2":Ljavafx/collections/ObservableList;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TableView$TableViewFocusModel;->updateItemsObserver(Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TableView$TableViewFocusModel;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableView$TableViewFocusModel;->lambda$new$48(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private focusedCellPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TablePosition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3235
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$TableViewFocusModel;->focusedCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 3236
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TableView$TableViewFocusModel$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableView$TableViewFocusModel;->EMPTY_CELL:Ljavafx/scene/control/TablePosition;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TableView$TableViewFocusModel$2;-><init>(Ljavafx/scene/control/TableView$TableViewFocusModel;Ljavafx/scene/control/TablePosition;)V

    iput-object v2, v1, Ljavafx/scene/control/TableView$TableViewFocusModel;->focusedCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 3260
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$TableViewFocusModel;->focusedCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    return-object v0
.end method

.method private getColumnCount()I
    .locals 2

    .prologue
    .line 3425
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$TableViewFocusModel;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    return v0
.end method

.method private getTableColumn(Ljavafx/scene/control/TableColumn;I)Ljavafx/scene/control/TableColumn;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;I)",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 3430
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v1, p1

    .local v1, "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move v2, p2

    .local v2, "offset":I
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableView$TableViewFocusModel;->tableView:Ljavafx/scene/control/TableView;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableView;->getVisibleLeafIndex(Ljavafx/scene/control/TableColumn;)I

    move-result v5

    move v3, v5

    .line 3431
    .local v3, "columnIndex":I
    move v5, v3

    move v6, v2

    add-int/2addr v5, v6

    move v4, v5

    .line 3432
    .local v4, "newColumnIndex":I
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableView$TableViewFocusModel;->tableView:Ljavafx/scene/control/TableView;

    move v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumn;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    return-object v0
.end method

.method private synthetic lambda$new$48(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 12

    .prologue
    .line 3164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v9

    .line 3165
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v9

    move-object v2, v9

    .line 3166
    .local v2, "focusedCell":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v9

    move v3, v9

    .line 3167
    .local v3, "focusedIndex":I
    move v9, v3

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v9

    move v10, v3

    if-le v9, v10, :cond_1

    .line 3168
    .line 3195
    :cond_0
    :goto_0
    return-void

    .line 3170
    :cond_1
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 3171
    const/4 v9, 0x0

    move v4, v9

    .line 3172
    .local v4, "added":Z
    const/4 v9, 0x0

    move v5, v9

    .line 3173
    .local v5, "removed":Z
    const/4 v9, 0x0

    move v6, v9

    .line 3174
    .local v6, "addedSize":I
    const/4 v9, 0x0

    move v7, v9

    .line 3175
    .local v7, "removedSize":I
    :goto_1
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3176
    move v9, v4

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v10

    or-int/2addr v9, v10

    move v4, v9

    .line 3177
    move v9, v5

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v10

    or-int/2addr v9, v10

    move v5, v9

    .line 3178
    move v9, v6

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->getAddedSize()I

    move-result v10

    add-int/2addr v9, v10

    move v6, v9

    .line 3179
    move v9, v7

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v10

    add-int/2addr v9, v10

    move v7, v9

    goto :goto_1

    .line 3182
    :cond_2
    move v9, v4

    if-eqz v9, :cond_4

    move v9, v5

    if-nez v9, :cond_4

    .line 3183
    move v9, v6

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v10

    invoke-interface {v10}, Ljavafx/collections/ObservableList;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 3184
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getItemCount()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedIndex()I

    move-result v10

    move v11, v6

    add-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v8, v9

    .line 3185
    .local v8, "newFocusIndex":I
    move-object v9, v0

    move v10, v8

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focus(ILjavafx/scene/control/TableColumn;)V

    .line 3186
    .line 3195
    .end local v8    # "newFocusIndex":I
    :cond_3
    :goto_2
    goto :goto_0

    .line 3187
    :cond_4
    move v9, v4

    if-nez v9, :cond_3

    move v9, v5

    if-eqz v9, :cond_3

    .line 3188
    const/4 v9, 0x0

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedIndex()I

    move-result v10

    move v11, v7

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v8, v9

    .line 3189
    .restart local v8    # "newFocusIndex":I
    move v9, v8

    if-gez v9, :cond_5

    .line 3190
    move-object v9, v0

    const/4 v10, 0x0

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focus(ILjavafx/scene/control/TableColumn;)V

    goto :goto_2

    .line 3192
    :cond_5
    move-object v9, v0

    move v10, v8

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focus(ILjavafx/scene/control/TableColumn;)V

    goto :goto_2
.end method

.method private setFocusedCell(Ljavafx/scene/control/TablePosition;)V
    .locals 4

    .prologue
    .line 3231
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TablePosition;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focusedCellPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private updateDefaultFocus()V
    .locals 7

    .prologue
    .line 3403
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    const/4 v4, -0x1

    move v1, v4

    .line 3404
    .local v1, "newValueIndex":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableView$TableViewFocusModel;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3405
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedItem()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 3406
    .local v2, "focusedItem":Ljava/lang/Object;, "TS;"
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 3407
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableView$TableViewFocusModel;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move v1, v4

    .line 3412
    :cond_0
    move v4, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 3413
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableView$TableViewFocusModel;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    :goto_0
    move v1, v4

    .line 3417
    .end local v2    # "focusedItem":Ljava/lang/Object;, "TS;"
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v4

    move-object v2, v4

    .line 3418
    .local v2, "focusedCell":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v4, v2

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableView$TableViewFocusModel;->EMPTY_CELL:Ljavafx/scene/control/TablePosition;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TablePosition;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v4, v2

    .line 3419
    invoke-virtual {v4}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v4

    :goto_1
    move-object v3, v4

    .line 3421
    .local v3, "focusColumn":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object v4, v0

    move v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focus(ILjavafx/scene/control/TableColumn;)V

    .line 3422
    return-void

    .line 3413
    .end local v3    # "focusColumn":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    .local v2, "focusedItem":Ljava/lang/Object;, "TS;"
    :cond_2
    const/4 v4, -0x1

    goto :goto_0

    .line 3419
    .local v2, "focusedCell":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableView$TableViewFocusModel;->tableView:Ljavafx/scene/control/TableView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumn;

    move-result-object v4

    goto :goto_1
.end method

.method private updateItemsObserver(Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TS;>;",
            "Ljavafx/collections/ObservableList",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 3203
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v1, p1

    .local v1, "oldList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TS;>;"
    move-object v2, p2

    .local v2, "newList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TS;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableView$TableViewFocusModel;->weakItemsContentListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 3204
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableView$TableViewFocusModel;->weakItemsContentListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 3206
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TableView$TableViewFocusModel;->updateDefaultFocus()V

    .line 3207
    return-void
.end method


# virtual methods
.method public focus(I)V
    .locals 9

    .prologue
    .line 3326
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move v1, p1

    .local v1, "index":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getItemCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 3327
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableView$TableViewFocusModel;->EMPTY_CELL:Ljavafx/scene/control/TablePosition;

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableView$TableViewFocusModel;->setFocusedCell(Ljavafx/scene/control/TablePosition;)V

    .line 3331
    :goto_0
    return-void

    .line 3329
    :cond_1
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TablePosition;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableView$TableViewFocusModel;->tableView:Ljavafx/scene/control/TableView;

    move v6, v1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableView$TableViewFocusModel;->setFocusedCell(Ljavafx/scene/control/TablePosition;)V

    goto :goto_0
.end method

.method public focus(ILjavafx/scene/control/TableColumn;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 3271
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move v5, v1

    if-ltz v5, :cond_0

    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getItemCount()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 3272
    :cond_0
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TableView$TableViewFocusModel;->EMPTY_CELL:Ljavafx/scene/control/TablePosition;

    invoke-direct {v5, v6}, Ljavafx/scene/control/TableView$TableViewFocusModel;->setFocusedCell(Ljavafx/scene/control/TablePosition;)V

    .line 3284
    :cond_1
    :goto_0
    return-void

    .line 3274
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v5

    move-object v3, v5

    .line 3275
    .local v3, "oldFocusCell":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    new-instance v5, Ljavafx/scene/control/TablePosition;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TableView$TableViewFocusModel;->tableView:Ljavafx/scene/control/TableView;

    move v8, v1

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    move-object v4, v5

    .line 3276
    .local v4, "newFocusCell":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Ljavafx/scene/control/TableView$TableViewFocusModel;->setFocusedCell(Ljavafx/scene/control/TablePosition;)V

    .line 3278
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TablePosition;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3280
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableView$TableViewFocusModel;->setFocusedIndex(I)V

    .line 3281
    move-object v5, v0

    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getModelItem(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableView$TableViewFocusModel;->setFocusedItem(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic focus(ILjavafx/scene/control/TableColumnBase;)V
    .locals 6

    .prologue
    .line 3123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/control/TableColumn;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focus(ILjavafx/scene/control/TableColumn;)V

    return-void
.end method

.method public focus(Ljavafx/scene/control/TablePosition;)V
    .locals 5

    .prologue
    .line 3293
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v1, p1

    .local v1, "pos":Ljavafx/scene/control/TablePosition;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 3295
    :goto_0
    return-void

    .line 3294
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focus(ILjavafx/scene/control/TableColumn;)V

    .line 3295
    goto :goto_0
.end method

.method public focusAboveCell()V
    .locals 5

    .prologue
    .line 3337
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v2

    move-object v1, v2

    .line 3339
    .local v1, "cell":Ljavafx/scene/control/TablePosition;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedIndex()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 3340
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focus(ILjavafx/scene/control/TableColumn;)V

    .line 3344
    :cond_0
    :goto_0
    return-void

    .line 3341
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedIndex()I

    move-result v2

    if-lez v2, :cond_0

    .line 3342
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedIndex()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focus(ILjavafx/scene/control/TableColumn;)V

    goto :goto_0
.end method

.method public focusBelowCell()V
    .locals 5

    .prologue
    .line 3350
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v2

    move-object v1, v2

    .line 3351
    .local v1, "cell":Ljavafx/scene/control/TablePosition;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedIndex()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 3352
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focus(ILjavafx/scene/control/TableColumn;)V

    .line 3356
    :cond_0
    :goto_0
    return-void

    .line 3353
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedIndex()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    .line 3354
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedIndex()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focus(ILjavafx/scene/control/TableColumn;)V

    goto :goto_0
.end method

.method public focusLeftCell()V
    .locals 7

    .prologue
    .line 3362
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v2

    move-object v1, v2

    .line 3363
    .local v1, "cell":Ljavafx/scene/control/TablePosition;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TablePosition;->getColumn()I

    move-result v2

    if-gtz v2, :cond_0

    .line 3365
    :goto_0
    return-void

    .line 3364
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v3

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v5

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getTableColumn(Ljavafx/scene/control/TableColumn;I)Ljavafx/scene/control/TableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focus(ILjavafx/scene/control/TableColumn;)V

    .line 3365
    goto :goto_0
.end method

.method public focusNext()V
    .locals 4

    .prologue
    .line 3387
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3388
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focus(I)V

    .line 3392
    :cond_0
    :goto_0
    return-void

    .line 3389
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedIndex()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3390
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focusBelowCell()V

    goto :goto_0
.end method

.method public focusPrevious()V
    .locals 3

    .prologue
    .line 3378
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3379
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focus(I)V

    .line 3383
    :cond_0
    :goto_0
    return-void

    .line 3380
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedIndex()I

    move-result v1

    if-lez v1, :cond_0

    .line 3381
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focusAboveCell()V

    goto :goto_0
.end method

.method public focusRightCell()V
    .locals 7

    .prologue
    .line 3371
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v2

    move-object v1, v2

    .line 3372
    .local v1, "cell":Ljavafx/scene/control/TablePosition;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TablePosition;->getColumn()I

    move-result v2

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getColumnCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    .line 3374
    :goto_0
    return-void

    .line 3373
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v3

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getTableColumn(Ljavafx/scene/control/TableColumn;I)Ljavafx/scene/control/TableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focus(ILjavafx/scene/control/TableColumn;)V

    .line 3374
    goto :goto_0
.end method

.method public final focusedCellProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/control/TablePosition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3229
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focusedCellPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    return-object v0
.end method

.method public final getFocusedCell()Ljavafx/scene/control/TablePosition;
    .locals 2

    .prologue
    .line 3232
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$TableViewFocusModel;->focusedCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$TableViewFocusModel;->EMPTY_CELL:Ljavafx/scene/control/TablePosition;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$TableViewFocusModel;->focusedCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TablePosition;

    goto :goto_0
.end method

.method protected getItemCount()I
    .locals 2

    .prologue
    .line 3211
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$TableViewFocusModel;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    move v0, v1

    .line 3212
    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$TableViewFocusModel;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->size()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method protected getModelItem(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .prologue
    .line 3217
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableView$TableViewFocusModel;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 3221
    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    :goto_0
    return-object v0

    .line 3219
    .restart local v0    # "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    :cond_0
    move v2, v1

    if-ltz v2, :cond_1

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getItemCount()I

    move-result v3

    if-lt v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 3221
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableView$TableViewFocusModel;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public isFocused(ILjavafx/scene/control/TableColumn;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;)Z"
        }
    .end annotation

    .prologue
    .line 3309
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move v5, v1

    if-ltz v5, :cond_0

    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getItemCount()I

    move-result v6

    if-lt v5, v6, :cond_1

    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 3314
    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    :goto_0
    return v0

    .line 3311
    .restart local v0    # "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v5

    move-object v3, v5

    .line 3312
    .local v3, "cell":Ljavafx/scene/control/TablePosition;
    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v5, 0x1

    :goto_1
    move v4, v5

    .line 3314
    .local v4, "columnMatch":Z
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v5

    move v6, v1

    if-ne v5, v6, :cond_4

    move v5, v4

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    goto :goto_0

    .line 3312
    .end local v4    # "columnMatch":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 3314
    .restart local v4    # "columnMatch":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public bridge synthetic isFocused(ILjavafx/scene/control/TableColumnBase;)Z
    .locals 6

    .prologue
    .line 3123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/control/TableColumn;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TableView$TableViewFocusModel;->isFocused(ILjavafx/scene/control/TableColumn;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    return v0
.end method

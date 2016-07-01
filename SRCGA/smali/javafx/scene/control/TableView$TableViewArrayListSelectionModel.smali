.class Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;
.super Ljavafx/scene/control/TableView$TableViewSelectionModel;
.source "TableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TableViewArrayListSelectionModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/TableView$TableViewSelectionModel",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private final cellToIndicesMap:Lcom/sun/javafx/collections/MappingChange$Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/collections/MappingChange$Map",
            "<",
            "Ljavafx/scene/control/TablePosition",
            "<TS;*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final cellToItemsMap:Lcom/sun/javafx/collections/MappingChange$Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/collections/MappingChange$Map",
            "<",
            "Ljavafx/scene/control/TablePosition",
            "<TS;*>;TS;>;"
        }
    .end annotation
.end field

.field private itemCount:I

.field final itemsContentListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<TS;>;"
        }
    .end annotation
.end field

.field private previousModelSize:I

.field private final selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/control/SelectedCellsMap",
            "<",
            "Ljavafx/scene/control/TablePosition",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private final selectedCellsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList",
            "<",
            "Ljavafx/scene/control/TablePosition",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private final selectedItems:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList",
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

.field final weakItemsContentListener:Ljavafx/collections/WeakListChangeListener;
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
    .line 2043
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "tableView":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/control/TableView$TableViewSelectionModel;-><init>(Ljavafx/scene/control/TableView;)V

    .line 2030
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->itemCount:I

    .line 2032
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;)Lcom/sun/javafx/collections/MappingChange$Map;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->cellToItemsMap:Lcom/sun/javafx/collections/MappingChange$Map;

    .line 2034
    move-object v3, v0

    invoke-static {}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$$Lambda$2;->lambdaFactory$()Lcom/sun/javafx/collections/MappingChange$Map;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->cellToIndicesMap:Lcom/sun/javafx/collections/MappingChange$Map;

    .line 2111
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->itemsContentListener:Ljavafx/collections/ListChangeListener;

    .line 2153
    move-object v3, v0

    new-instance v4, Ljavafx/collections/WeakListChangeListener;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->itemsContentListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v5, v6}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v4, v3, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->weakItemsContentListener:Ljavafx/collections/WeakListChangeListener;

    .line 2189
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->previousModelSize:I

    .line 2044
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    .line 2046
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    new-instance v4, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$1;-><init>(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;Ljavafx/scene/control/TableView;)V

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 2056
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v0

    invoke-static {v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$$Lambda$4;->lambdaFactory$(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;)Ljavafx/collections/ListChangeListener;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$2;-><init>(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;Ljavafx/collections/ListChangeListener;)V

    iput-object v4, v3, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    .line 2062
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$3;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$3;-><init>(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;)V

    iput-object v4, v3, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedItems:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    .line 2072
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$4;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$4;-><init>(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;)V

    iput-object v4, v3, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    .line 2093
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v2, v3

    .line 2094
    .local v2, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TS;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 2095
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->weakItemsContentListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 2099
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->updateItemCount()V

    .line 2101
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->updateDefaultSelection()V

    .line 2103
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->cellSelectionEnabledProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$$Lambda$5;->lambdaFactory$(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;Ljavafx/scene/control/TableView;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 2107
    return-void
.end method

.method static synthetic access$1000(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;Ljavafx/scene/control/TablePosition;)V
    .locals 4

    .prologue
    .line 2028
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/TablePosition;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->clearSelection(Ljavafx/scene/control/TablePosition;)V

    return-void
.end method

.method static synthetic access$1700(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    .prologue
    .line 2028
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;
    move-object v1, p1

    .local v1, "x1":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->handleSelectedCellsListChangeEvent(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$2000(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V
    .locals 6

    .prologue
    .line 2028
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;
    move-object v1, p1

    .local v1, "x1":Ljavafx/collections/ObservableList;
    move-object v2, p2

    .local v2, "x2":Ljavafx/collections/ObservableList;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->updateItemsObserver(Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V

    return-void
.end method

.method static synthetic access$2100(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;)Lcom/sun/javafx/scene/control/SelectedCellsMap;
    .locals 2

    .prologue
    .line 2028
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;Ljavafx/scene/control/TablePosition;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->lambda$new$43(Ljavafx/scene/control/TablePosition;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/TablePosition;)Ljava/lang/Integer;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->lambda$new$44(Ljavafx/scene/control/TablePosition;)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->lambda$new$47(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->lambda$new$45(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$4(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;Ljavafx/scene/control/TableView;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->lambda$new$46(Ljavafx/scene/control/TableView;Ljavafx/beans/Observable;)V

    return-void
.end method

.method private clearSelection(Ljavafx/scene/control/TablePosition;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TablePosition",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 2703
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "tp":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v6

    move v2, v6

    .line 2704
    .local v2, "csMode":Z
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v6

    move v3, v6

    .line 2706
    .local v3, "row":I
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TablePosition;

    move-object v5, v6

    .line 2707
    .local v5, "pos":Ljavafx/scene/control/TablePosition;
    move v6, v2

    if-nez v6, :cond_2

    .line 2708
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v6

    move v7, v3

    if-ne v6, v7, :cond_3

    .line 2709
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->remove(Ljavafx/scene/control/TablePositionBase;)V

    .line 2710
    .line 2720
    .end local v5    # "pos":Ljavafx/scene/control/TablePosition;
    :cond_0
    :goto_1
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isAtomic()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2721
    move-object v6, v0

    const/4 v7, -0x1

    invoke-direct {v6, v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->updateSelectedIndex(I)V

    .line 2722
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->clear()V

    .line 2724
    :cond_1
    return-void

    .line 2713
    .restart local v5    # "pos":Ljavafx/scene/control/TablePosition;
    :cond_2
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/control/TablePosition;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2714
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->remove(Ljavafx/scene/control/TablePositionBase;)V

    .line 2715
    goto :goto_1

    .line 2718
    :cond_3
    goto :goto_0
.end method

.method private getTableColumn(I)Ljavafx/scene/control/TableColumn;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 2934
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move v1, p1

    .local v1, "pos":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumn;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    return-object v0
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
    .line 2939
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move v2, p2

    .local v2, "offset":I
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableView;->getVisibleLeafIndex(Ljavafx/scene/control/TableColumn;)I

    move-result v5

    move v3, v5

    .line 2940
    .local v3, "columnIndex":I
    move v5, v3

    move v6, v2

    add-int/2addr v5, v6

    move v4, v5

    .line 2941
    .local v4, "newColumnIndex":I
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v5

    move v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumn;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    return-object v0
.end method

.method private handleSelectedCellsListChangeEvent(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+",
            "Ljavafx/scene/control/TablePosition",
            "<TS;*>;>;)V"
        }
    .end annotation

    .prologue
    .line 2987
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object/from16 v2, p1

    .local v2, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljavafx/scene/control/TablePosition<TS;*>;>;"
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v15

    .line 2988
    .local v3, "newlySelectedRows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v15

    .line 2990
    .local v4, "newlyUnselectedRows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 2991
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2992
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v15

    move-object v5, v15

    .line 2993
    .local v5, "removed":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TablePosition<TS;*>;>;"
    const/4 v15, 0x0

    move v6, v15

    .local v6, "i":I
    :goto_1
    move v15, v6

    move-object/from16 v16, v5

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 2994
    move-object v15, v5

    move/from16 v16, v6

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/TablePosition;

    move-object v7, v15

    .line 2995
    .local v7, "tp":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v15, v7

    invoke-virtual {v15}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v15

    move v8, v15

    .line 2997
    .local v8, "row":I
    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedIndices:Ljava/util/BitSet;

    move/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2998
    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedIndices:Ljava/util/BitSet;

    move/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->clear(I)V

    .line 2999
    move-object v15, v4

    move/from16 v16, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 2993
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3003
    .end local v5    # "removed":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TablePosition<TS;*>;>;"
    .end local v6    # "i":I
    .end local v7    # "tp":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    .end local v8    # "row":I
    :cond_2
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 3004
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v15

    move-object v5, v15

    .line 3005
    .local v5, "added":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TablePosition<TS;*>;>;"
    const/4 v15, 0x0

    move v6, v15

    .restart local v6    # "i":I
    :goto_2
    move v15, v6

    move-object/from16 v16, v5

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    .line 3006
    move-object v15, v5

    move/from16 v16, v6

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/TablePosition;

    move-object v7, v15

    .line 3007
    .restart local v7    # "tp":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v15, v7

    invoke-virtual {v15}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v15

    move v8, v15

    .line 3009
    .restart local v8    # "row":I
    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedIndices:Ljava/util/BitSet;

    move/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-nez v15, :cond_3

    .line 3010
    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedIndices:Ljava/util/BitSet;

    move/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->set(I)V

    .line 3011
    move-object v15, v3

    move/from16 v16, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 3005
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3014
    .end local v7    # "tp":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    .end local v8    # "row":I
    :cond_4
    goto/16 :goto_0

    .line 3016
    .end local v5    # "added":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TablePosition<TS;*>;>;"
    .end local v6    # "i":I
    :cond_5
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 3018
    move-object v15, v1

    invoke-virtual {v15}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isAtomic()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 3019
    .line 3110
    :goto_3
    return-void

    .line 3029
    :cond_6
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v15

    .line 3031
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->wasReplaced()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 3038
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v15

    move v6, v15

    .line 3039
    .local v6, "removedSize":I
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->getAddedSize()I

    move-result v15

    move v7, v15

    .line 3040
    .local v7, "addedSize":I
    move v15, v6

    move/from16 v16, v7

    move/from16 v0, v16

    if-eq v15, v0, :cond_9

    .line 3041
    const/4 v15, 0x1

    move v5, v15

    .line 3065
    .line 3069
    .end local v6    # "removedSize":I
    .end local v7    # "addedSize":I
    .local v5, "fireChangeEvent":Z
    :goto_4
    move v15, v5

    if-eqz v15, :cond_7

    .line 3070
    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedItemChange:Ljavafx/collections/ListChangeListener$Change;

    if-eqz v15, :cond_f

    .line 3071
    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedItems:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedItemChange:Ljavafx/collections/ListChangeListener$Change;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    .line 3078
    :cond_7
    :goto_5
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 3086
    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedItems:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_8

    move-object v15, v1

    invoke-virtual {v15}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 3087
    move-object v15, v1

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->setSelectedItem(Ljava/lang/Object;)V

    .line 3090
    :cond_8
    move-object v15, v1

    .line 3091
    invoke-virtual {v15}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v15

    check-cast v15, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object v6, v15

    .line 3093
    .local v6, "selectedIndicesSeq":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<Ljava/lang/Integer;>;"
    move-object v15, v3

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_10

    move-object v15, v4

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 3101
    move-object v15, v6

    move-object/from16 v16, v3

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->createRangeChange(Ljavafx/collections/ObservableList;Ljava/util/List;Z)Ljavafx/collections/ListChangeListener$Change;

    move-result-object v15

    move-object v7, v15

    .line 3102
    .local v7, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljava/lang/Integer;>;"
    move-object v15, v6

    move-object/from16 v16, v7

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    .line 3103
    .line 3108
    .end local v7    # "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljava/lang/Integer;>;"
    :goto_6
    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    new-instance v16, Lcom/sun/javafx/collections/MappingChange;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v18, v2

    sget-object v19, Lcom/sun/javafx/collections/MappingChange;->NOOP_MAP:Lcom/sun/javafx/collections/MappingChange$Map;

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Lcom/sun/javafx/collections/MappingChange;-><init>(Ljavafx/collections/ListChangeListener$Change;Lcom/sun/javafx/collections/MappingChange$Map;Ljavafx/collections/ObservableList;)V

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    .line 3109
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 3110
    goto/16 :goto_3

    .line 3043
    .end local v5    # "fireChangeEvent":Z
    .local v6, "removedSize":I
    .local v7, "addedSize":I
    :cond_9
    const/4 v15, 0x0

    move v8, v15

    .local v8, "i":I
    :goto_7
    move v15, v8

    move/from16 v16, v6

    move/from16 v0, v16

    if-ge v15, v0, :cond_d

    .line 3044
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v15

    move/from16 v16, v8

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/TablePosition;

    move-object v9, v15

    .line 3045
    .local v9, "removed":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v15, v9

    invoke-virtual {v15}, Ljavafx/scene/control/TablePosition;->getItem()Ljava/lang/Object;

    move-result-object v15

    move-object v10, v15

    .line 3047
    .local v10, "removedItem":Ljava/lang/Object;, "TS;"
    const/4 v15, 0x0

    move v11, v15

    .line 3048
    .local v11, "matchFound":Z
    const/4 v15, 0x0

    move v12, v15

    .local v12, "j":I
    :goto_8
    move v15, v12

    move/from16 v16, v7

    move/from16 v0, v16

    if-ge v15, v0, :cond_a

    .line 3049
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v15

    move/from16 v16, v12

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/TablePosition;

    move-object v13, v15

    .line 3050
    .local v13, "added":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v15, v13

    invoke-virtual {v15}, Ljavafx/scene/control/TablePosition;->getItem()Ljava/lang/Object;

    move-result-object v15

    move-object v14, v15

    .line 3052
    .local v14, "addedItem":Ljava/lang/Object;, "TS;"
    move-object v15, v10

    move-object/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 3053
    const/4 v15, 0x1

    move v11, v15

    .line 3058
    .end local v13    # "added":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    .end local v14    # "addedItem":Ljava/lang/Object;, "TS;"
    :cond_a
    move v15, v11

    if-nez v15, :cond_c

    .line 3059
    const/4 v15, 0x1

    move v5, v15

    .line 3060
    .restart local v5    # "fireChangeEvent":Z
    goto/16 :goto_4

    .line 3048
    .end local v5    # "fireChangeEvent":Z
    .restart local v13    # "added":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    .restart local v14    # "addedItem":Ljava/lang/Object;, "TS;"
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 3043
    .end local v13    # "added":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    .end local v14    # "addedItem":Ljava/lang/Object;, "TS;"
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 3063
    .end local v9    # "removed":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    .end local v10    # "removedItem":Ljava/lang/Object;, "TS;"
    .end local v11    # "matchFound":Z
    .end local v12    # "j":I
    :cond_d
    const/4 v15, 0x0

    move v5, v15

    .restart local v5    # "fireChangeEvent":Z
    goto/16 :goto_4

    .line 3066
    .end local v5    # "fireChangeEvent":Z
    .end local v6    # "removedSize":I
    .end local v7    # "addedSize":I
    .end local v8    # "i":I
    :cond_e
    const/4 v15, 0x1

    move v5, v15

    .restart local v5    # "fireChangeEvent":Z
    goto/16 :goto_4

    .line 3075
    :cond_f
    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedItems:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    new-instance v16, Lcom/sun/javafx/collections/MappingChange;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v18, v2

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->cellToItemsMap:Lcom/sun/javafx/collections/MappingChange$Map;

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedItems:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Lcom/sun/javafx/collections/MappingChange;-><init>(Ljavafx/collections/ListChangeListener$Change;Lcom/sun/javafx/collections/MappingChange$Map;Ljavafx/collections/ObservableList;)V

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    goto/16 :goto_5

    .line 3104
    .local v6, "selectedIndicesSeq":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<Ljava/lang/Integer;>;"
    :cond_10
    move-object v15, v6

    new-instance v16, Lcom/sun/javafx/collections/MappingChange;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v18, v2

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->cellToIndicesMap:Lcom/sun/javafx/collections/MappingChange$Map;

    move-object/from16 v19, v0

    move-object/from16 v20, v6

    invoke-direct/range {v17 .. v20}, Lcom/sun/javafx/collections/MappingChange;-><init>(Ljavafx/collections/ListChangeListener$Change;Lcom/sun/javafx/collections/MappingChange$Map;Ljavafx/collections/ObservableList;)V

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    .line 3105
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    goto/16 :goto_6
.end method

.method private synthetic lambda$new$43(Ljavafx/scene/control/TablePosition;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2032
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "f":Ljavafx/scene/control/TablePosition;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getModelItem(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    return-object v0
.end method

.method private static synthetic lambda$new$44(Ljavafx/scene/control/TablePosition;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 2034
    move-object v0, p0

    .local v0, "f":Ljavafx/scene/control/TablePosition;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "f":Ljavafx/scene/control/TablePosition;
    return-object v0
.end method

.method private synthetic lambda$new$45(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    .prologue
    .line 2056
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->handleSelectedCellsListChangeEvent(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private synthetic lambda$new$46(Ljavafx/scene/control/TableView;Ljavafx/beans/Observable;)V
    .locals 6

    .prologue
    .line 2104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "tableView":Ljavafx/scene/control/TableView;
    move-object v2, p2

    .local v2, "o":Ljavafx/beans/Observable;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->updateDefaultSelection()V

    .line 2105
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->setAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;Z)V

    .line 2106
    return-void
.end method

.method private synthetic lambda$new$47(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 10

    .prologue
    .line 2112
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->updateItemCount()V

    .line 2114
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableModel()Ljava/util/List;

    move-result-object v7

    move-object v2, v7

    .line 2116
    .local v2, "items1":Ljava/util/List;, "Ljava/util/List<TS;>;"
    :goto_0
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2117
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->wasReplaced()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getAddedSize()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getItemCount()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 2118
    :cond_0
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedItemChange:Ljavafx/collections/ListChangeListener$Change;

    .line 2119
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->updateDefaultSelection()V

    .line 2120
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedItemChange:Ljavafx/collections/ListChangeListener$Change;

    .line 2121
    .line 2151
    :goto_1
    return-void

    .line 2124
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 2125
    .local v3, "selectedItem":Ljava/lang/Object;, "TS;"
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectedIndex()I

    move-result v7

    move v4, v7

    .line 2127
    .local v4, "selectedIndex":I
    move-object v7, v2

    if-eqz v7, :cond_2

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2128
    :cond_2
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->clearSelection()V

    .line 2148
    :cond_3
    :goto_2
    goto :goto_0

    .line 2129
    :cond_4
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectedIndex()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 2130
    move-object v7, v2

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    move v5, v7

    .line 2131
    .local v5, "newIndex":I
    move v7, v5

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 2132
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->setSelectedIndex(I)V

    .line 2134
    :cond_5
    goto :goto_2

    .end local v5    # "newIndex":I
    :cond_6
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v1

    .line 2135
    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    move-object v7, v1

    .line 2136
    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v3

    if-eqz v7, :cond_3

    move-object v7, v3

    move-object v8, v1

    .line 2138
    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2140
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectedIndex()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getItemCount()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 2141
    move v7, v4

    if-nez v7, :cond_7

    const/4 v7, 0x0

    :goto_3
    move v5, v7

    .line 2142
    .local v5, "previousRow":I
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getModelItem(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 2143
    .local v6, "newSelectedItem":Ljava/lang/Object;, "TS;"
    move-object v7, v3

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2144
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->clearAndSelect(I)V

    goto :goto_2

    .line 2141
    .end local v5    # "previousRow":I
    .end local v6    # "newSelectedItem":Ljava/lang/Object;, "TS;"
    :cond_7
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 2150
    .end local v3    # "selectedItem":Ljava/lang/Object;, "TS;"
    .end local v4    # "selectedIndex":I
    :cond_8
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->updateSelection(Ljavafx/collections/ListChangeListener$Change;)V

    .line 2151
    goto/16 :goto_1
.end method

.method private quietClearSelection()V
    .locals 2

    .prologue
    .line 2748
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->startAtomic()V

    .line 2749
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->clear()V

    .line 2750
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->stopAtomic()V

    .line 2751
    return-void
.end method

.method private updateDefaultSelection()V
    .locals 8

    .prologue
    .line 2913
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    const/4 v4, -0x1

    move v1, v4

    .line 2914
    .local v1, "newSelectionIndex":I
    const/4 v4, -0x1

    move v2, v4

    .line 2915
    .local v2, "newFocusIndex":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2916
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 2917
    .local v3, "selectedItem":Ljava/lang/Object;, "TS;"
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 2918
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move v1, v4

    .line 2923
    :cond_0
    move v4, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 2924
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 2928
    .end local v3    # "selectedItem":Ljava/lang/Object;, "TS;"
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->clearSelection()V

    .line 2929
    move-object v4, v0

    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableColumn(I)Ljavafx/scene/control/TableColumn;

    move-result-object v6

    :goto_1
    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumn;)V

    .line 2930
    move-object v4, v0

    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableColumn(I)Ljavafx/scene/control/TableColumn;

    move-result-object v6

    :goto_2
    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->focus(ILjavafx/scene/control/TableColumn;)V

    .line 2931
    return-void

    .line 2924
    .restart local v3    # "selectedItem":Ljava/lang/Object;, "TS;"
    :cond_2
    const/4 v4, -0x1

    goto :goto_0

    .line 2929
    .end local v3    # "selectedItem":Ljava/lang/Object;, "TS;"
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 2930
    :cond_4
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private updateItemCount()V
    .locals 4

    .prologue
    .line 2955
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    if-nez v2, :cond_0

    .line 2956
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->itemCount:I

    .line 2961
    :goto_0
    return-void

    .line 2958
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableModel()Ljava/util/List;

    move-result-object v2

    move-object v1, v2

    .line 2959
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<TS;>;"
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_1

    const/4 v3, -0x1

    :goto_1
    iput v3, v2, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->itemCount:I

    goto :goto_0

    :cond_1
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

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
    .line 2899
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "oldList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TS;>;"
    move-object v2, p2

    .local v2, "newList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TS;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 2900
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->weakItemsContentListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 2902
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 2903
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->weakItemsContentListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 2906
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->updateItemCount()V

    .line 2907
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->updateDefaultSelection()V

    .line 2908
    return-void
.end method

.method private updateSelectedIndex(I)V
    .locals 5

    .prologue
    .line 2945
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->setSelectedIndex(I)V

    .line 2946
    move-object v2, v0

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getModelItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->setSelectedItem(Ljava/lang/Object;)V

    .line 2947
    return-void
.end method

.method private updateSelection(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TS;>;)V"
        }
    .end annotation

    .prologue
    .line 2195
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object/from16 v3, p1

    .local v3, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TS;>;"
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 2197
    const/16 v16, 0x0

    move/from16 v4, v16

    .line 2198
    .local v4, "shift":I
    const/16 v16, -0x1

    move/from16 v5, v16

    .line 2199
    .local v5, "startRow":I
    :cond_0
    :goto_0
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 2200
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/collections/ListChangeListener$Change;->wasReplaced()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 2201
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 2203
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->clearSelection()V

    goto :goto_0

    .line 2205
    :cond_1
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectedIndex()I

    move-result v16

    move/from16 v6, v16

    .line 2207
    .local v6, "index":I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->previousModelSize:I

    move/from16 v16, v0

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 2209
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->clearSelection()V

    .line 2221
    :goto_1
    goto :goto_0

    .line 2210
    :cond_2
    move/from16 v16, v6

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getItemCount()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    move/from16 v16, v6

    if-ltz v16, :cond_3

    .line 2213
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->startAtomic()V

    .line 2214
    move-object/from16 v16, v2

    move/from16 v17, v6

    invoke-virtual/range {v16 .. v17}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->clearSelection(I)V

    .line 2215
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->stopAtomic()V

    .line 2216
    move-object/from16 v16, v2

    move/from16 v17, v6

    invoke-virtual/range {v16 .. v17}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(I)V

    goto :goto_1

    .line 2219
    :cond_3
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->clearSelection()V

    goto :goto_1

    .line 2222
    .end local v6    # "index":I
    :cond_4
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v16

    if-nez v16, :cond_5

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 2223
    :cond_5
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v16

    move/from16 v5, v16

    .line 2224
    move/from16 v16, v4

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljavafx/collections/ListChangeListener$Change;->getAddedSize()I

    move-result v17

    :goto_2
    add-int v16, v16, v17

    move/from16 v4, v16

    goto/16 :goto_0

    :cond_6
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    goto :goto_2

    .line 2225
    :cond_7
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 2236
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->startAtomic()V

    .line 2238
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectedIndex()I

    move-result v16

    move/from16 v6, v16

    .line 2241
    .local v6, "oldSelectedIndex":I
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v16

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v7, v16

    .line 2242
    .local v7, "length":I
    new-instance v16, Ljava/util/HashMap;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    move/from16 v18, v7

    invoke-direct/range {v17 .. v18}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v8, v16

    .line 2243
    .local v8, "pMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v16

    move/from16 v9, v16

    .local v9, "i":I
    :goto_3
    move/from16 v16, v9

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 2244
    move-object/from16 v16, v8

    move/from16 v17, v9

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v18, v3

    move/from16 v19, v9

    invoke-virtual/range {v18 .. v19}, Ljavafx/collections/ListChangeListener$Change;->getPermutation(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 2243
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2248
    :cond_8
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v18

    check-cast v18, Ljavafx/collections/ObservableList;

    invoke-direct/range {v17 .. v18}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v9, v16

    .line 2251
    .local v9, "selectedIndices":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TablePosition<TS;*>;>;"
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    move-object/from16 v18, v9

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    invoke-direct/range {v17 .. v18}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v10, v16

    .line 2254
    .local v10, "newIndices":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TablePosition<TS;*>;>;"
    const/16 v16, 0x0

    move/from16 v11, v16

    .line 2255
    .local v11, "selectionIndicesChanged":Z
    const/16 v16, 0x0

    move/from16 v12, v16

    .local v12, "i":I
    :goto_4
    move/from16 v16, v12

    move-object/from16 v17, v9

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    .line 2256
    move-object/from16 v16, v9

    move/from16 v17, v12

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljavafx/scene/control/TablePosition;

    move-object/from16 v13, v16

    .line 2257
    .local v13, "oldIndex":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v16

    move/from16 v14, v16

    .line 2259
    .local v14, "oldRow":I
    move-object/from16 v16, v8

    move/from16 v17, v14

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 2260
    move-object/from16 v16, v8

    move/from16 v17, v14

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v15, v16

    .line 2262
    .local v15, "newIndex":I
    move/from16 v16, v11

    if-nez v16, :cond_9

    move/from16 v16, v15

    move/from16 v17, v14

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_b

    :cond_9
    const/16 v16, 0x1

    :goto_5
    move/from16 v11, v16

    .line 2264
    move-object/from16 v16, v10

    new-instance v17, Ljavafx/scene/control/TablePosition;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TablePosition;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v19

    move/from16 v20, v15

    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v21

    invoke-direct/range {v18 .. v21}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 2255
    .end local v15    # "newIndex":I
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 2262
    .restart local v15    # "newIndex":I
    :cond_b
    const/16 v16, 0x0

    goto :goto_5

    .line 2268
    .end local v13    # "oldIndex":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    .end local v14    # "oldRow":I
    .end local v15    # "newIndex":I
    :cond_c
    move/from16 v16, v11

    if-eqz v16, :cond_e

    .line 2270
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->quietClearSelection()V

    .line 2271
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->stopAtomic()V

    .line 2273
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->setAll(Ljava/util/Collection;)V

    .line 2275
    move/from16 v16, v6

    if-ltz v16, :cond_d

    move/from16 v16, v6

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->itemCount:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    .line 2276
    move-object/from16 v16, v3

    move/from16 v17, v6

    invoke-virtual/range {v16 .. v17}, Ljavafx/collections/ListChangeListener$Change;->getPermutation(I)I

    move-result v16

    move/from16 v12, v16

    .line 2277
    .local v12, "newIndex":I
    move-object/from16 v16, v2

    move/from16 v17, v12

    invoke-virtual/range {v16 .. v17}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->setSelectedIndex(I)V

    .line 2278
    move-object/from16 v16, v2

    move/from16 v17, v12

    invoke-virtual/range {v16 .. v17}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->focus(I)V

    .line 2279
    .line 2283
    .end local v12    # "newIndex":I
    :cond_d
    :goto_6
    goto/16 :goto_0

    .line 2281
    .local v12, "i":I
    :cond_e
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->stopAtomic()V

    goto :goto_6

    .line 2286
    .end local v6    # "oldSelectedIndex":I
    .end local v7    # "length":I
    .end local v8    # "pMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v9    # "selectedIndices":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TablePosition<TS;*>;>;"
    .end local v10    # "newIndices":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TablePosition<TS;*>;>;"
    .end local v11    # "selectionIndicesChanged":Z
    .end local v12    # "i":I
    :cond_f
    move/from16 v16, v4

    if-eqz v16, :cond_17

    move/from16 v16, v5

    if-ltz v16, :cond_17

    .line 2287
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->size()I

    move-result v18

    invoke-direct/range {v17 .. v18}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v6, v16

    .line 2289
    .local v6, "newIndices":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TablePosition<TS;*>;>;"
    const/16 v16, 0x0

    move/from16 v7, v16

    .local v7, "i":I
    :goto_7
    move/from16 v16, v7

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->size()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_13

    .line 2290
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object/from16 v16, v0

    move/from16 v17, v7

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->get(I)Ljavafx/scene/control/TablePositionBase;

    move-result-object v16

    check-cast v16, Ljavafx/scene/control/TablePosition;

    move-object/from16 v8, v16

    .line 2291
    .local v8, "old":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v16

    move/from16 v9, v16

    .line 2292
    .local v9, "oldRow":I
    const/16 v16, 0x0

    move/from16 v17, v9

    move/from16 v18, v5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_10

    move/from16 v17, v9

    :goto_8
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v10, v16

    .line 2294
    .local v10, "newRow":I
    move/from16 v16, v9

    move/from16 v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_11

    .line 2295
    .line 2289
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 2292
    .end local v10    # "newRow":I
    :cond_10
    move/from16 v17, v9

    move/from16 v18, v4

    add-int v17, v17, v18

    goto :goto_8

    .line 2301
    .restart local v10    # "newRow":I
    :cond_11
    move/from16 v16, v9

    if-nez v16, :cond_12

    move/from16 v16, v4

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_12

    .line 2302
    move-object/from16 v16, v6

    new-instance v17, Ljavafx/scene/control/TablePosition;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v21

    invoke-direct/range {v18 .. v21}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 2303
    goto :goto_9

    .line 2306
    :cond_12
    move-object/from16 v16, v6

    new-instance v17, Ljavafx/scene/control/TablePosition;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v19

    move/from16 v20, v10

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v21

    invoke-direct/range {v18 .. v21}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v16

    goto :goto_9

    .line 2309
    .end local v8    # "old":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    .end local v9    # "oldRow":I
    .end local v10    # "newRow":I
    :cond_13
    move-object/from16 v16, v6

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v7, v16

    .line 2311
    .local v7, "newIndicesSize":I
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v16

    if-nez v16, :cond_14

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v16

    if-eqz v16, :cond_17

    :cond_14
    move/from16 v16, v7

    if-lez v16, :cond_17

    .line 2312
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->getAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljavafx/scene/control/TablePosition;

    move-object/from16 v8, v16

    .line 2313
    .local v8, "anchor":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object/from16 v16, v8

    if-eqz v16, :cond_15

    .line 2314
    move-object/from16 v16, v2

    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v17

    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isSelected(ILjavafx/scene/control/TableColumn;)Z

    move-result v16

    move/from16 v9, v16

    .line 2315
    .local v9, "isAnchorSelected":Z
    move/from16 v16, v9

    if-eqz v16, :cond_15

    .line 2316
    new-instance v16, Ljavafx/scene/control/TablePosition;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    move-object/from16 v18, v0

    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v19

    move/from16 v20, v4

    add-int v19, v19, v20

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v20

    invoke-direct/range {v17 .. v20}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    move-object/from16 v10, v16

    .line 2317
    .local v10, "newAnchor":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->setAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;Z)V

    .line 2321
    .end local v9    # "isAnchorSelected":Z
    .end local v10    # "newAnchor":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    :cond_15
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->quietClearSelection()V

    .line 2324
    move-object/from16 v16, v2

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->blockFocusCall:Z

    .line 2325
    const/16 v16, 0x0

    move/from16 v9, v16

    .local v9, "i":I
    :goto_a
    move/from16 v16, v9

    move/from16 v17, v7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_16

    .line 2326
    move-object/from16 v16, v6

    move/from16 v17, v9

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljavafx/scene/control/TablePosition;

    move-object/from16 v10, v16

    .line 2327
    .local v10, "tp":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object/from16 v16, v2

    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v17

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumn;)V

    .line 2325
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 2329
    .end local v10    # "tp":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    :cond_16
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->blockFocusCall:Z

    .line 2333
    .end local v6    # "newIndices":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TablePosition<TS;*>;>;"
    .end local v7    # "newIndicesSize":I
    .end local v8    # "anchor":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    .end local v9    # "i":I
    :cond_17
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getItemCount()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->previousModelSize:I

    .line 2334
    return-void
.end method


# virtual methods
.method public clearAndSelect(I)V
    .locals 5

    .prologue
    .line 2343
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->clearAndSelect(ILjavafx/scene/control/TableColumn;)V

    .line 2344
    return-void
.end method

.method public clearAndSelect(ILjavafx/scene/control/TableColumn;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 2347
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move/from16 v1, p1

    .local v1, "row":I
    move-object/from16 v2, p2

    .local v2, "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move v9, v1

    if-ltz v9, :cond_0

    move v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getItemCount()I

    move-result v10

    if-lt v9, v10, :cond_1

    .line 2424
    :cond_0
    :goto_0
    return-void

    .line 2349
    :cond_1
    new-instance v9, Ljavafx/scene/control/TablePosition;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v11

    move v12, v1

    move-object v13, v2

    invoke-direct {v10, v11, v12, v13}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    move-object v3, v9

    .line 2350
    .local v3, "newTablePosition":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v9

    move v4, v9

    .line 2353
    .local v4, "isCellSelectionEnabled":Z
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    move-object v10, v3

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->setAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;Z)V

    .line 2357
    move v9, v4

    if-eqz v9, :cond_2

    move-object v9, v2

    if-nez v9, :cond_2

    .line 2358
    goto :goto_0

    .line 2361
    :cond_2
    move-object v9, v0

    move v10, v1

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isSelected(ILjavafx/scene/control/TableColumn;)Z

    move-result v9

    move v5, v9

    .line 2365
    .local v5, "wasSelected":Z
    new-instance v9, Ljava/util/ArrayList;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v6, v9

    .line 2367
    .local v6, "previousSelection":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TablePosition<TS;*>;>;"
    move v9, v5

    if-eqz v9, :cond_3

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 2370
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TablePosition;

    move-object v7, v9

    .line 2371
    .local v7, "selectedCell":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v0

    move v11, v1

    invoke-virtual {v10, v11}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getModelItem(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v9, v10, :cond_3

    .line 2372
    move-object v9, v7

    invoke-virtual {v9}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v9

    move v10, v1

    if-ne v9, v10, :cond_3

    move-object v9, v7

    invoke-virtual {v9}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v9

    move-object v10, v2

    if-ne v9, v10, :cond_3

    .line 2373
    goto :goto_0

    .line 2382
    .end local v7    # "selectedCell":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    :cond_3
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->startAtomic()V

    .line 2385
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->clearSelection()V

    .line 2388
    move-object v9, v0

    move v10, v1

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumn;)V

    .line 2390
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->stopAtomic()V

    .line 2394
    move v9, v4

    if-eqz v9, :cond_5

    .line 2395
    move-object v9, v6

    move-object v10, v3

    invoke-interface {v9, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 2416
    :cond_4
    :goto_1
    move v9, v5

    if-eqz v9, :cond_7

    .line 2417
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object v10, v6

    move v11, v1

    invoke-static {v9, v10, v11}, Ljavafx/scene/control/ControlUtils;->buildClearAndSelectChange(Ljavafx/collections/ObservableList;Ljava/util/List;I)Ljavafx/collections/ListChangeListener$Change;

    move-result-object v9

    move-object v7, v9

    .line 2423
    .local v7, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/control/TablePosition<TS;*>;>;"
    :goto_2
    move-object v9, v0

    move-object v10, v7

    invoke-direct {v9, v10}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->handleSelectedCellsListChangeEvent(Ljavafx/collections/ListChangeListener$Change;)V

    .line 2424
    goto/16 :goto_0

    .line 2397
    .end local v7    # "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/control/TablePosition<TS;*>;>;"
    :cond_5
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v9

    :goto_3
    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TablePosition;

    move-object v8, v9

    .line 2398
    .local v8, "tp":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v9, v8

    invoke-virtual {v9}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v9

    move v10, v1

    if-ne v9, v10, :cond_6

    .line 2399
    move-object v9, v6

    move-object v10, v8

    invoke-interface {v9, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 2400
    goto :goto_1

    .line 2402
    :cond_6
    goto :goto_3

    .line 2419
    .end local v8    # "tp":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    :cond_7
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object v10, v3

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    move v8, v9

    .line 2420
    .local v8, "changeIndex":I
    new-instance v9, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move v11, v8

    move v12, v8

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object v13, v6

    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;-><init>(IILjava/util/List;Ljavafx/collections/ObservableList;)V

    move-object v7, v9

    .restart local v7    # "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/control/TablePosition<TS;*>;>;"
    goto :goto_2
.end method

.method public clearSelection()V
    .locals 11

    .prologue
    .line 2727
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    new-instance v3, Ljava/util/ArrayList;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v3

    .line 2729
    .local v1, "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TablePosition<TS;*>;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->quietClearSelection()V

    .line 2731
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isAtomic()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2732
    move-object v3, v0

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->updateSelectedIndex(I)V

    .line 2733
    move-object v3, v0

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->focus(I)V

    .line 2735
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2736
    new-instance v3, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$5;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object v9, v1

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$5;-><init>(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;IILjavafx/collections/ObservableList;Ljava/util/List;)V

    move-object v2, v3

    .line 2742
    .local v2, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/control/TablePosition<TS;*>;>;"
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->handleSelectedCellsListChangeEvent(Ljavafx/collections/ListChangeListener$Change;)V

    .line 2745
    .end local v2    # "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/control/TablePosition<TS;*>;>;"
    :cond_0
    return-void
.end method

.method public clearSelection(I)V
    .locals 5

    .prologue
    .line 2694
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->clearSelection(ILjavafx/scene/control/TableColumn;)V

    .line 2695
    return-void
.end method

.method public clearSelection(ILjavafx/scene/control/TableColumn;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 2699
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
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

    invoke-virtual {v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v6

    move v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    invoke-direct {v3, v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->clearSelection(Ljavafx/scene/control/TablePosition;)V

    .line 2700
    return-void
.end method

.method protected getItemCount()I
    .locals 2

    .prologue
    .line 2951
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->itemCount:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    return v0
.end method

.method public getSelectedCells()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TablePosition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2178
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    check-cast v1, Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    return-object v0
.end method

.method public getSelectedItems()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 2171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedItems:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 2769
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    return v0
.end method

.method public isSelected(I)Z
    .locals 5

    .prologue
    .line 2754
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isSelected(ILjavafx/scene/control/TableColumn;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    return v0
.end method

.method public isSelected(ILjavafx/scene/control/TableColumn;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;)Z"
        }
    .end annotation

    .prologue
    .line 2761
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v5

    move v3, v5

    .line 2762
    .local v3, "isCellSelectionEnabled":Z
    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 2765
    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    :goto_0
    return v0

    .line 2764
    .restart local v0    # "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    :cond_0
    move v5, v3

    if-eqz v5, :cond_1

    move-object v5, v2

    if-nez v5, :cond_2

    :cond_1
    const/4 v5, -0x1

    :goto_1
    move v4, v5

    .line 2765
    .local v4, "columnIndex":I
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move v6, v1

    move v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->isSelected(II)Z

    move-result v5

    move v0, v5

    goto :goto_0

    .line 2764
    .end local v4    # "columnIndex":I
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableView;->getVisibleLeafIndex(Ljavafx/scene/control/TableColumn;)I

    move-result v5

    goto :goto_1
.end method

.method public select(I)V
    .locals 5

    .prologue
    .line 2427
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumn;)V

    .line 2428
    return-void
.end method

.method public select(ILjavafx/scene/control/TableColumn;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 2432
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move v5, v1

    if-ltz v5, :cond_0

    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getItemCount()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 2460
    :cond_0
    :goto_0
    return-void

    .line 2436
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v2

    if-nez v5, :cond_3

    .line 2437
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/TableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v3, v5

    .line 2438
    .local v3, "columns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumn<TS;*>;>;"
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 2439
    move-object v5, v0

    move v6, v1

    move-object v7, v3

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TableColumn;

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumn;)V

    .line 2438
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2441
    :cond_2
    goto :goto_0

    .line 2444
    .end local v3    # "columns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumn<TS;*>;>;"
    .end local v4    # "i":I
    :cond_3
    new-instance v5, Ljavafx/scene/control/TablePosition;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v7

    move v8, v1

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    move-object v3, v5

    .line 2446
    .local v3, "pos":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v5

    sget-object v6, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v5, v6, :cond_4

    .line 2447
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->startAtomic()V

    .line 2448
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->quietClearSelection()V

    .line 2449
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->stopAtomic()V

    .line 2452
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->hasDefaultAnchor(Ljavafx/scene/control/Control;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2453
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->removeAnchor(Ljavafx/scene/control/Control;)V

    .line 2456
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->add(Ljavafx/scene/control/TablePositionBase;)V

    .line 2458
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->updateSelectedIndex(I)V

    .line 2459
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->focus(ILjavafx/scene/control/TableColumn;)V

    .line 2460
    goto :goto_0
.end method

.method public select(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 2463
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;, "TS;"
    move-object v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v4

    sget-object v5, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v4, v5, :cond_0

    .line 2464
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->clearSelection()V

    .line 2465
    .line 2497
    :goto_0
    return-void

    .line 2471
    :cond_0
    const/4 v4, 0x0

    move-object v2, v4

    .line 2472
    .local v2, "rowObj":Ljava/lang/Object;, "TS;"
    const/4 v4, 0x0

    move v3, v4

    .end local v2    # "rowObj":Ljava/lang/Object;, "TS;"
    .local v3, "i":I
    :goto_1
    move v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getItemCount()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 2473
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getModelItem(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 2474
    .restart local v2    # "rowObj":Ljava/lang/Object;, "TS;"
    move-object v4, v2

    if-nez v4, :cond_2

    .line 2472
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2476
    :cond_2
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2477
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isSelected(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2478
    goto :goto_0

    .line 2481
    :cond_3
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v4

    sget-object v5, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v4, v5, :cond_4

    .line 2482
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->quietClearSelection()V

    .line 2485
    :cond_4
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(I)V

    .line 2486
    goto :goto_0

    .line 2495
    .end local v2    # "rowObj":Ljava/lang/Object;, "TS;"
    :cond_5
    move-object v4, v0

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->setSelectedIndex(I)V

    .line 2496
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->setSelectedItem(Ljava/lang/Object;)V

    .line 2497
    goto :goto_0
.end method

.method public selectAboveCell()V
    .locals 5

    .prologue
    .line 2817
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v2

    move-object v1, v2

    .line 2818
    .local v1, "pos":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 2819
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(I)V

    .line 2823
    :cond_0
    :goto_0
    return-void

    .line 2820
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v2

    if-lez v2, :cond_0

    .line 2821
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumn;)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 13

    .prologue
    .line 2584
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v6

    sget-object v7, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v6, v7, :cond_0

    .line 2622
    :goto_0
    return-void

    .line 2586
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2587
    new-instance v6, Ljava/util/ArrayList;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 2589
    .local v1, "indices":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TablePosition<TS;*>;>;"
    const/4 v6, 0x0

    move-object v3, v6

    .line 2590
    .local v3, "tp":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    const/4 v6, 0x0

    move v4, v6

    .local v4, "col":I
    :goto_1
    move v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/TableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 2591
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/TableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v6

    move v7, v4

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TableColumn;

    move-object v2, v6

    .line 2592
    .local v2, "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    const/4 v6, 0x0

    move v5, v6

    .local v5, "row":I
    :goto_2
    move v6, v5

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getItemCount()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 2593
    new-instance v6, Ljavafx/scene/control/TablePosition;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v8

    move v9, v5

    move-object v10, v2

    invoke-direct {v7, v8, v9, v10}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    move-object v3, v6

    .line 2594
    move-object v6, v1

    move-object v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 2592
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2590
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2597
    .end local v2    # "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    .end local v5    # "row":I
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->setAll(Ljava/util/Collection;)V

    .line 2599
    move-object v6, v3

    if-eqz v6, :cond_3

    .line 2600
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v7

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumn;)V

    .line 2601
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v7

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->focus(ILjavafx/scene/control/TableColumn;)V

    .line 2603
    .line 2622
    .end local v3    # "tp":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    .end local v4    # "col":I
    :cond_3
    :goto_3
    goto/16 :goto_0

    .line 2604
    .end local v1    # "indices":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TablePosition<TS;*>;>;"
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 2605
    .restart local v1    # "indices":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TablePosition<TS;*>;>;"
    const/4 v6, 0x0

    move v2, v6

    .local v2, "i":I
    :goto_4
    move v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getItemCount()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 2606
    move-object v6, v1

    new-instance v7, Ljavafx/scene/control/TablePosition;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v9

    move v10, v2

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 2605
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2608
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->setAll(Ljava/util/Collection;)V

    .line 2610
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getFocusedIndex()I

    move-result v6

    move v2, v6

    .line 2611
    .local v2, "focusedIndex":I
    move v6, v2

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7

    .line 2612
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getItemCount()I

    move-result v6

    move v3, v6

    .line 2613
    .local v3, "itemCount":I
    move v6, v3

    if-lez v6, :cond_6

    .line 2614
    move-object v6, v0

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(I)V

    .line 2615
    move-object v6, v0

    move-object v7, v1

    move-object v8, v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TablePosition;

    invoke-virtual {v6, v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->focus(Ljavafx/scene/control/TablePosition;)V

    .line 2617
    :cond_6
    goto :goto_3

    .line 2618
    .end local v3    # "itemCount":I
    :cond_7
    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(I)V

    .line 2619
    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->focus(I)V

    goto :goto_3
.end method

.method public selectBelowCell()V
    .locals 5

    .prologue
    .line 2826
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v2

    move-object v1, v2

    .line 2828
    .local v1, "pos":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 2829
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(I)V

    .line 2833
    :cond_0
    :goto_0
    return-void

    .line 2830
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 2831
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumn;)V

    goto :goto_0
.end method

.method public selectFirst()V
    .locals 5

    .prologue
    .line 2836
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v2

    move-object v1, v2

    .line 2838
    .local v1, "focusedCell":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v2, v3, :cond_0

    .line 2839
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->quietClearSelection()V

    .line 2842
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getItemCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 2843
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2844
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumn;)V

    .line 2849
    :cond_1
    :goto_0
    return-void

    .line 2846
    :cond_2
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(I)V

    goto :goto_0
.end method

.method public varargs selectIndices(I[I)V
    .locals 18

    .prologue
    .line 2500
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move/from16 v1, p1

    .local v1, "row":I
    move-object/from16 v2, p2

    .local v2, "rows":[I
    move-object v10, v2

    if-nez v10, :cond_0

    .line 2501
    move-object v10, v0

    move v11, v1

    invoke-virtual {v10, v11}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(I)V

    .line 2502
    .line 2581
    :goto_0
    return-void

    .line 2509
    :cond_0
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getItemCount()I

    move-result v10

    move v3, v10

    .line 2511
    .local v3, "rowCount":I
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v10

    sget-object v11, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v10, v11, :cond_4

    .line 2512
    move-object v10, v0

    invoke-direct {v10}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->quietClearSelection()V

    .line 2514
    move-object v10, v2

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v4, v10

    .local v4, "i":I
    :goto_1
    move v10, v4

    if-ltz v10, :cond_1

    .line 2515
    move-object v10, v2

    move v11, v4

    aget v10, v10, v11

    move v5, v10

    .line 2516
    .local v5, "index":I
    move v10, v5

    if-ltz v10, :cond_3

    move v10, v5

    move v11, v3

    if-ge v10, v11, :cond_3

    .line 2517
    move-object v10, v0

    move v11, v5

    invoke-virtual {v10, v11}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(I)V

    .line 2518
    .line 2522
    .end local v5    # "index":I
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2523
    move v10, v1

    if-lez v10, :cond_2

    move v10, v1

    move v11, v3

    if-ge v10, v11, :cond_2

    .line 2524
    move-object v10, v0

    move v11, v1

    invoke-virtual {v10, v11}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(I)V

    .line 2581
    .end local v4    # "i":I
    :cond_2
    :goto_2
    goto :goto_0

    .line 2514
    .restart local v4    # "i":I
    .restart local v5    # "index":I
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2528
    .end local v4    # "i":I
    .end local v5    # "index":I
    :cond_4
    const/4 v10, -0x1

    move v4, v10

    .line 2529
    .local v4, "lastIndex":I
    new-instance v10, Ljava/util/LinkedHashSet;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v5, v10

    .line 2532
    .local v5, "positions":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/control/TablePosition<TS;*>;>;"
    move v10, v1

    if-ltz v10, :cond_7

    move v10, v1

    move v11, v3

    if-ge v10, v11, :cond_7

    .line 2535
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2536
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/scene/control/TableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v6, v10

    .line 2537
    .local v6, "columns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumn<TS;*>;>;"
    const/4 v10, 0x0

    move v7, v10

    .local v7, "column":I
    :goto_3
    move v10, v7

    move-object v11, v6

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    .line 2538
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move v11, v1

    move v12, v7

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->isSelected(II)Z

    move-result v10

    if-nez v10, :cond_5

    .line 2539
    move-object v10, v5

    new-instance v11, Ljavafx/scene/control/TablePosition;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v13

    move v14, v1

    move-object v15, v6

    move/from16 v16, v7

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/TableColumn;

    invoke-direct {v12, v13, v14, v15}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 2540
    move v10, v1

    move v4, v10

    .line 2537
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2543
    .line 2550
    .end local v6    # "columns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumn<TS;*>;>;"
    .end local v7    # "column":I
    :cond_6
    :goto_4
    move v10, v1

    move v4, v10

    .line 2554
    :cond_7
    const/4 v10, 0x0

    move v6, v10

    .local v6, "i":I
    :goto_5
    move v10, v6

    move-object v11, v2

    array-length v11, v11

    if-ge v10, v11, :cond_e

    .line 2555
    move-object v10, v2

    move v11, v6

    aget v10, v10, v11

    move v7, v10

    .line 2556
    .local v7, "index":I
    move v10, v7

    if-ltz v10, :cond_8

    move v10, v7

    move v11, v3

    if-lt v10, v11, :cond_a

    .line 2554
    :cond_8
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 2544
    .end local v6    # "i":I
    .end local v7    # "index":I
    :cond_9
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move v11, v1

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->isSelected(II)Z

    move-result v10

    move v6, v10

    .line 2545
    .local v6, "match":Z
    move v10, v6

    if-nez v10, :cond_6

    .line 2546
    move-object v10, v5

    new-instance v11, Ljavafx/scene/control/TablePosition;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v13

    move v14, v1

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_4

    .line 2557
    .local v6, "i":I
    .restart local v7    # "index":I
    :cond_a
    move v10, v7

    move v4, v10

    .line 2559
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2560
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/scene/control/TableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v8, v10

    .line 2561
    .local v8, "columns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumn<TS;*>;>;"
    const/4 v10, 0x0

    move v9, v10

    .local v9, "column":I
    :goto_7
    move v10, v9

    move-object v11, v8

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_c

    .line 2562
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move v11, v7

    move v12, v9

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->isSelected(II)Z

    move-result v10

    if-nez v10, :cond_b

    .line 2563
    move-object v10, v5

    new-instance v11, Ljavafx/scene/control/TablePosition;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v13

    move v14, v7

    move-object v15, v8

    move/from16 v16, v9

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/TableColumn;

    invoke-direct {v12, v13, v14, v15}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 2564
    move v10, v7

    move v4, v10

    .line 2561
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 2567
    :cond_c
    goto :goto_6

    .line 2568
    .end local v8    # "columns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumn<TS;*>;>;"
    .end local v9    # "column":I
    :cond_d
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move v11, v7

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->isSelected(II)Z

    move-result v10

    if-nez v10, :cond_8

    .line 2570
    move-object v10, v5

    new-instance v11, Ljavafx/scene/control/TablePosition;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v13

    move v14, v7

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    goto/16 :goto_6

    .line 2575
    .end local v7    # "index":I
    :cond_e
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object v11, v5

    invoke-virtual {v10, v11}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->addAll(Ljava/util/Collection;)V

    .line 2577
    move v10, v4

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 2578
    move-object v10, v0

    move v11, v4

    invoke-virtual {v10, v11}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(I)V

    goto/16 :goto_2
.end method

.method public selectLast()V
    .locals 6

    .prologue
    .line 2852
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v3

    move-object v1, v3

    .line 2854
    .local v1, "focusedCell":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v3, v4, :cond_0

    .line 2855
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->quietClearSelection()V

    .line 2858
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getItemCount()I

    move-result v3

    move v2, v3

    .line 2859
    .local v2, "numItems":I
    move v3, v2

    if-lez v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectedIndex()I

    move-result v3

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 2860
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2861
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumn;)V

    .line 2866
    :cond_1
    :goto_0
    return-void

    .line 2863
    :cond_2
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(I)V

    goto :goto_0
.end method

.method public selectLeftCell()V
    .locals 7

    .prologue
    .line 2870
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2876
    :goto_0
    return-void

    .line 2872
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v2

    move-object v1, v2

    .line 2873
    .local v1, "pos":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TablePosition;->getColumn()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 2874
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v3

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v5

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableColumn(Ljavafx/scene/control/TableColumn;I)Ljavafx/scene/control/TableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumn;)V

    .line 2876
    :cond_1
    goto :goto_0
.end method

.method public selectNext()V
    .locals 7

    .prologue
    .line 2795
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2798
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v2

    move-object v1, v2

    .line 2799
    .local v1, "pos":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TablePosition;->getColumn()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2801
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v3

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableColumn(Ljavafx/scene/control/TableColumn;I)Ljavafx/scene/control/TableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumn;)V

    .line 2806
    .line 2814
    .end local v1    # "pos":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    :cond_0
    :goto_0
    return-void

    .line 2802
    .restart local v1    # "pos":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 2804
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableColumn(I)Ljavafx/scene/control/TableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumn;)V

    goto :goto_0

    .line 2807
    .end local v1    # "pos":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getFocusedIndex()I

    move-result v2

    move v1, v2

    .line 2808
    .local v1, "focusIndex":I
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 2809
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(I)V

    goto :goto_0

    .line 2810
    :cond_3
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 2811
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(I)V

    goto :goto_0
.end method

.method public selectPrevious()V
    .locals 7

    .prologue
    .line 2773
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2776
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v2

    move-object v1, v2

    .line 2777
    .local v1, "pos":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TablePosition;->getColumn()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 2779
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v3

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v5

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableColumn(Ljavafx/scene/control/TableColumn;I)Ljavafx/scene/control/TableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumn;)V

    .line 2784
    .line 2792
    .end local v1    # "pos":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    :cond_0
    :goto_0
    return-void

    .line 2780
    .restart local v1    # "pos":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 2782
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/TableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v4, v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableColumn(I)Ljavafx/scene/control/TableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumn;)V

    goto :goto_0

    .line 2785
    .end local v1    # "pos":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getFocusedIndex()I

    move-result v2

    move v1, v2

    .line 2786
    .local v1, "focusIndex":I
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 2787
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(I)V

    goto :goto_0

    .line 2788
    :cond_3
    move v2, v1

    if-lez v2, :cond_0

    .line 2789
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(I)V

    goto :goto_0
.end method

.method public selectRange(ILjavafx/scene/control/TableColumnBase;ILjavafx/scene/control/TableColumnBase;)V
    .locals 30
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
    .line 2626
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move/from16 v3, p1

    .local v3, "minRow":I
    move-object/from16 v4, p2

    .local v4, "minColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;*>;"
    move/from16 v5, p3

    .local v5, "maxRow":I
    move-object/from16 v6, p4

    .local v6, "maxColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;*>;"
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v23

    sget-object v24, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 2627
    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v23}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->quietClearSelection()V

    .line 2628
    move-object/from16 v23, v2

    move/from16 v24, v5

    move-object/from16 v25, v6

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 2629
    .line 2691
    :goto_0
    return-void

    .line 2632
    :cond_0
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->startAtomic()V

    .line 2634
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getItemCount()I

    move-result v23

    move/from16 v7, v23

    .line 2635
    .local v7, "itemCount":I
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v23

    move/from16 v8, v23

    .line 2637
    .local v8, "isCellSelectionEnabled":Z
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    move-object/from16 v23, v0

    move-object/from16 v24, v4

    check-cast v24, Ljavafx/scene/control/TableColumn;

    invoke-virtual/range {v23 .. v24}, Ljavafx/scene/control/TableView;->getVisibleLeafIndex(Ljavafx/scene/control/TableColumn;)I

    move-result v23

    move/from16 v9, v23

    .line 2638
    .local v9, "minColumnIndex":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    move-object/from16 v23, v0

    move-object/from16 v24, v6

    check-cast v24, Ljavafx/scene/control/TableColumn;

    invoke-virtual/range {v23 .. v24}, Ljavafx/scene/control/TableView;->getVisibleLeafIndex(Ljavafx/scene/control/TableColumn;)I

    move-result v23

    move/from16 v10, v23

    .line 2639
    .local v10, "maxColumnIndex":I
    move/from16 v23, v9

    move/from16 v24, v10

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    move/from16 v11, v23

    .line 2640
    .local v11, "_minColumnIndex":I
    move/from16 v23, v9

    move/from16 v24, v10

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v12, v23

    .line 2642
    .local v12, "_maxColumnIndex":I
    move/from16 v23, v3

    move/from16 v24, v5

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    move/from16 v13, v23

    .line 2643
    .local v13, "_minRow":I
    move/from16 v23, v3

    move/from16 v24, v5

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v14, v23

    .line 2645
    .local v14, "_maxRow":I
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, v23

    .line 2647
    .local v15, "cellsToSelect":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TablePosition<TS;*>;>;"
    move/from16 v23, v13

    move/from16 v16, v23

    .local v16, "_row":I
    :goto_1
    move/from16 v23, v16

    move/from16 v24, v14

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_5

    .line 2650
    move/from16 v23, v16

    if-ltz v23, :cond_1

    move/from16 v23, v16

    move/from16 v24, v7

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_2

    .line 2647
    :cond_1
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 2652
    :cond_2
    move/from16 v23, v8

    if-nez v23, :cond_3

    .line 2653
    move-object/from16 v23, v15

    new-instance v24, Ljavafx/scene/control/TablePosition;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    move-object/from16 v26, v0

    move/from16 v27, v16

    move-object/from16 v28, v4

    check-cast v28, Ljavafx/scene/control/TableColumn;

    invoke-direct/range {v25 .. v28}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v23

    goto :goto_2

    .line 2655
    :cond_3
    move/from16 v23, v11

    move/from16 v17, v23

    .local v17, "_col":I
    :goto_3
    move/from16 v23, v17

    move/from16 v24, v12

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_1

    .line 2656
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    move-object/from16 v23, v0

    move/from16 v24, v17

    invoke-virtual/range {v23 .. v24}, Ljavafx/scene/control/TableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumn;

    move-result-object v23

    move-object/from16 v18, v23

    .line 2660
    .local v18, "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object/from16 v23, v18

    if-nez v23, :cond_4

    move/from16 v23, v8

    if-eqz v23, :cond_4

    .line 2655
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 2662
    :cond_4
    move-object/from16 v23, v15

    new-instance v24, Ljavafx/scene/control/TablePosition;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    move-object/from16 v26, v0

    move/from16 v27, v16

    move-object/from16 v28, v18

    invoke-direct/range {v25 .. v28}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v23

    goto :goto_4

    .line 2670
    .end local v17    # "_col":I
    .end local v18    # "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    :cond_5
    move-object/from16 v23, v15

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v23

    .line 2672
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object/from16 v23, v0

    move-object/from16 v24, v15

    invoke-virtual/range {v23 .. v24}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->addAll(Ljava/util/Collection;)V

    .line 2673
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->stopAtomic()V

    .line 2677
    move-object/from16 v23, v2

    move/from16 v24, v5

    invoke-direct/range {v23 .. v24}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->updateSelectedIndex(I)V

    .line 2678
    move-object/from16 v23, v2

    move/from16 v24, v5

    move-object/from16 v25, v6

    check-cast v25, Ljavafx/scene/control/TableColumn;

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->focus(ILjavafx/scene/control/TableColumn;)V

    .line 2680
    move-object/from16 v23, v4

    check-cast v23, Ljavafx/scene/control/TableColumn;

    move-object/from16 v16, v23

    .line 2681
    .local v16, "startColumn":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move/from16 v23, v8

    if-eqz v23, :cond_7

    move-object/from16 v23, v6

    check-cast v23, Ljavafx/scene/control/TableColumn;

    :goto_5
    move-object/from16 v17, v23

    .line 2682
    .local v17, "endColumn":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object/from16 v23, v0

    new-instance v24, Ljavafx/scene/control/TablePosition;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    move-object/from16 v26, v0

    move/from16 v27, v3

    move-object/from16 v28, v16

    invoke-direct/range {v25 .. v28}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    invoke-virtual/range {v23 .. v24}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->indexOf(Ljavafx/scene/control/TablePositionBase;)I

    move-result v23

    move/from16 v18, v23

    .line 2683
    .local v18, "startChangeIndex":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object/from16 v23, v0

    new-instance v24, Ljavafx/scene/control/TablePosition;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->tableView:Ljavafx/scene/control/TableView;

    move-object/from16 v26, v0

    move/from16 v27, v5

    move-object/from16 v28, v17

    invoke-direct/range {v25 .. v28}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    invoke-virtual/range {v23 .. v24}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->indexOf(Ljavafx/scene/control/TablePositionBase;)I

    move-result v23

    move/from16 v19, v23

    .line 2685
    .local v19, "endChangeIndex":I
    move/from16 v23, v18

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_6

    move/from16 v23, v19

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_6

    .line 2686
    move/from16 v23, v18

    move/from16 v24, v19

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    move/from16 v20, v23

    .line 2687
    .local v20, "startIndex":I
    move/from16 v23, v18

    move/from16 v24, v19

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v21, v23

    .line 2688
    .local v21, "endIndex":I
    new-instance v23, Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange;

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    move/from16 v25, v20

    move/from16 v26, v21

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->selectedCellsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object/from16 v27, v0

    invoke-direct/range {v24 .. v27}, Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange;-><init>(IILjavafx/collections/ObservableList;)V

    move-object/from16 v22, v23

    .line 2689
    .local v22, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object/from16 v23, v2

    move-object/from16 v24, v22

    invoke-direct/range {v23 .. v24}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->handleSelectedCellsListChangeEvent(Ljavafx/collections/ListChangeListener$Change;)V

    .line 2691
    .end local v20    # "startIndex":I
    .end local v21    # "endIndex":I
    .end local v22    # "c":Ljavafx/collections/ListChangeListener$Change;
    :cond_6
    goto/16 :goto_0

    .line 2681
    .end local v17    # "endColumn":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    .end local v18    # "startChangeIndex":I
    .end local v19    # "endChangeIndex":I
    :cond_7
    move-object/from16 v23, v16

    goto/16 :goto_5
.end method

.method public selectRightCell()V
    .locals 7

    .prologue
    .line 2880
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2886
    :goto_0
    return-void

    .line 2882
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v2

    move-object v1, v2

    .line 2883
    .local v1, "pos":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TablePosition;->getColumn()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2884
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v3

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getTableColumn(Ljavafx/scene/control/TableColumn;I)Ljavafx/scene/control/TableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumn;)V

    .line 2886
    :cond_1
    goto :goto_0
.end method

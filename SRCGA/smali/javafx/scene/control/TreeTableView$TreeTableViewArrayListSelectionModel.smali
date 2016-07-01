.class Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;
.super Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;
.source "TreeTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TreeTableViewArrayListSelectionModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private final cellToIndicesMap:Lcom/sun/javafx/collections/MappingChange$Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/collections/MappingChange$Map",
            "<",
            "Ljavafx/scene/control/TreeTablePosition",
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
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private rootPropertyListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private final selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/control/SelectedCellsMap",
            "<",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private final selectedCellsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList",
            "<",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private final selectedItems:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private treeItemListener:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private treeTableView:Ljavafx/scene/control/TreeTableView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;"
        }
    .end annotation
.end field

.field private weakRootPropertyListener:Ljavafx/beans/value/WeakChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/WeakChangeListener",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private weakTreeItemListener:Ljavafx/event/WeakEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/WeakEventHandler",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TreeTableView;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 2304
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "treeTableView":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;-><init>(Ljavafx/scene/control/TreeTableView;)V

    .line 2291
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)Lcom/sun/javafx/collections/MappingChange$Map;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->cellToItemsMap:Lcom/sun/javafx/collections/MappingChange$Map;

    .line 2293
    move-object v2, v0

    invoke-static {}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$$Lambda$2;->lambdaFactory$()Lcom/sun/javafx/collections/MappingChange$Map;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->cellToIndicesMap:Lcom/sun/javafx/collections/MappingChange$Map;

    .line 2295
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    .line 2359
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->rootPropertyListener:Ljavafx/beans/value/ChangeListener;

    .line 2365
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;-><init>(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)V

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeItemListener:Ljavafx/event/EventHandler;

    .line 2566
    move-object v2, v0

    new-instance v3, Ljavafx/beans/value/WeakChangeListener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->rootPropertyListener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v4, v5}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->weakRootPropertyListener:Ljavafx/beans/value/WeakChangeListener;

    .line 2305
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    .line 2307
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->rootProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->weakRootPropertyListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 2308
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->showRootProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$$Lambda$4;->lambdaFactory$(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 2311
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->updateTreeEventListener(Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V

    .line 2313
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v0

    invoke-static {v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$$Lambda$5;->lambdaFactory$(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)Ljavafx/collections/ListChangeListener;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$1;-><init>(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;Ljavafx/collections/ListChangeListener;)V

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    .line 2319
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;-><init>(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)V

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedItems:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    .line 2329
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$3;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$3;-><init>(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)V

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    .line 2340
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->updateDefaultSelection()V

    .line 2342
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->cellSelectionEnabledProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$$Lambda$6;->lambdaFactory$(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 2346
    return-void
.end method

.method static synthetic access$2000(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    .prologue
    .line 2289
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;
    move-object v1, p1

    .local v1, "x1":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->handleSelectedCellsListChangeEvent(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$2400(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)Lcom/sun/javafx/scene/control/SelectedCellsMap;
    .locals 2

    .prologue
    .line 2289
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;
    return-object v0
.end method

.method static synthetic access$2500(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)Ljavafx/scene/control/TreeTableView;
    .locals 2

    .prologue
    .line 2289
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;
    return-object v0
.end method

.method static synthetic access$2600(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)V
    .locals 2

    .prologue
    .line 2289
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->quietClearSelection()V

    return-void
.end method

.method static synthetic access$800(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;Ljavafx/scene/control/TreeTablePosition;)V
    .locals 4

    .prologue
    .line 2289
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/TreeTablePosition;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->clearSelection(Ljavafx/scene/control/TreeTablePosition;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;Ljavafx/scene/control/TreeTablePosition;)Ljavafx/scene/control/TreeItem;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->lambda$new$122(Ljavafx/scene/control/TreeTablePosition;)Ljavafx/scene/control/TreeItem;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/TreeTablePosition;)Ljava/lang/Integer;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->lambda$new$123(Ljavafx/scene/control/TreeTablePosition;)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->lambda$new$127(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;Ljavafx/scene/control/TreeTableView;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->lambda$new$124(Ljavafx/scene/control/TreeTableView;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$4(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->lambda$new$125(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$5(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;Ljavafx/scene/control/TreeTableView;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->lambda$new$126(Ljavafx/scene/control/TreeTableView;Ljavafx/beans/Observable;)V

    return-void
.end method

.method private clearSelection(Ljavafx/scene/control/TreeTablePosition;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 2960
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "tp":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v6

    move v2, v6

    .line 2961
    .local v2, "csMode":Z
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v6

    move v3, v6

    .line 2963
    .local v3, "row":I
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

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

    check-cast v6, Ljavafx/scene/control/TreeTablePosition;

    move-object v5, v6

    .line 2964
    .local v5, "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move v6, v2

    if-nez v6, :cond_2

    .line 2965
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v6

    move v7, v3

    if-ne v6, v7, :cond_3

    .line 2966
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->remove(Ljavafx/scene/control/TablePositionBase;)V

    .line 2967
    .line 2977
    .end local v5    # "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    :cond_0
    :goto_1
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isAtomic()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2978
    move-object v6, v0

    const/4 v7, -0x1

    invoke-direct {v6, v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->updateSelectedIndex(I)V

    .line 2979
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->clear()V

    .line 2981
    :cond_1
    return-void

    .line 2970
    .restart local v5    # "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    :cond_2
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/control/TreeTablePosition;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2971
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->remove(Ljavafx/scene/control/TablePositionBase;)V

    .line 2972
    goto :goto_1

    .line 2975
    :cond_3
    goto :goto_0
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
    .line 3178
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
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

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v6

    move v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->focus(Ljavafx/scene/control/TreeTablePosition;)V

    .line 3179
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
    .line 3182
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3186
    :goto_0
    return-void

    .line 3184
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

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

    .line 3185
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v2

    sget-object v3, Ljavafx/scene/AccessibleAttribute;->FOCUS_ITEM:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 3186
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
    .line 3193
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3194
    new-instance v1, Ljavafx/scene/control/TreeTablePosition;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    move-object v0, v1

    .line 3196
    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private getRowCount()I
    .locals 2

    .prologue
    .line 3200
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getExpandedItemCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    return v0
.end method

.method private getTableColumn(I)Ljavafx/scene/control/TreeTableColumn;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 3158
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move v1, p1

    .local v1, "pos":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    return-object v0
.end method

.method private getTableColumn(Ljavafx/scene/control/TreeTableColumn;I)Ljavafx/scene/control/TreeTableColumn;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;I)",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 3163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move v2, p2

    .local v2, "offset":I
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafIndex(Ljavafx/scene/control/TreeTableColumn;)I

    move-result v5

    move v3, v5

    .line 3164
    .local v3, "columnIndex":I
    move v5, v3

    move v6, v2

    add-int/2addr v5, v6

    move v4, v5

    .line 3165
    .local v4, "newColumnIndex":I
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v5

    move v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    return-object v0
.end method

.method private handleSelectedCellsListChangeEvent(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;>;)V"
        }
    .end annotation

    .prologue
    .line 3227
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object/from16 v2, p1

    .local v2, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v15

    .line 3228
    .local v3, "newlySelectedRows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v15

    .line 3230
    .local v4, "newlyUnselectedRows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 3231
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 3232
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v15

    move-object v5, v15

    .line 3233
    .local v5, "removed":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
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

    .line 3234
    move-object v15, v5

    move/from16 v16, v6

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/TreeTablePosition;

    move-object v7, v15

    .line 3235
    .local v7, "tp":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v15, v7

    invoke-virtual {v15}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v15

    move v8, v15

    .line 3237
    .local v8, "row":I
    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedIndices:Ljava/util/BitSet;

    move/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 3238
    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedIndices:Ljava/util/BitSet;

    move/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->clear(I)V

    .line 3239
    move-object v15, v4

    move/from16 v16, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 3233
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3243
    .end local v5    # "removed":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
    .end local v6    # "i":I
    .end local v7    # "tp":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    .end local v8    # "row":I
    :cond_2
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 3244
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v15

    move-object v5, v15

    .line 3245
    .local v5, "added":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
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

    .line 3246
    move-object v15, v5

    move/from16 v16, v6

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/TreeTablePosition;

    move-object v7, v15

    .line 3247
    .restart local v7    # "tp":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v15, v7

    invoke-virtual {v15}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v15

    move v8, v15

    .line 3249
    .restart local v8    # "row":I
    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedIndices:Ljava/util/BitSet;

    move/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-nez v15, :cond_3

    .line 3250
    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedIndices:Ljava/util/BitSet;

    move/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->set(I)V

    .line 3251
    move-object v15, v3

    move/from16 v16, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 3245
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3254
    .end local v7    # "tp":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    .end local v8    # "row":I
    :cond_4
    goto/16 :goto_0

    .line 3256
    .end local v5    # "added":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
    .end local v6    # "i":I
    :cond_5
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 3258
    move-object v15, v1

    invoke-virtual {v15}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isAtomic()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 3259
    .line 3346
    :goto_3
    return-void

    .line 3269
    :cond_6
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v15

    .line 3271
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->wasReplaced()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 3278
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v15

    move v6, v15

    .line 3279
    .local v6, "removedSize":I
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->getAddedSize()I

    move-result v15

    move v7, v15

    .line 3280
    .local v7, "addedSize":I
    move v15, v6

    move/from16 v16, v7

    move/from16 v0, v16

    if-eq v15, v0, :cond_9

    .line 3281
    const/4 v15, 0x1

    move v5, v15

    .line 3305
    .line 3309
    .end local v6    # "removedSize":I
    .end local v7    # "addedSize":I
    .local v5, "fireChangeEvent":Z
    :goto_4
    move v15, v5

    if-eqz v15, :cond_7

    .line 3312
    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedItems:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    new-instance v16, Lcom/sun/javafx/collections/MappingChange;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v18, v2

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->cellToItemsMap:Lcom/sun/javafx/collections/MappingChange$Map;

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedItems:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Lcom/sun/javafx/collections/MappingChange;-><init>(Ljavafx/collections/ListChangeListener$Change;Lcom/sun/javafx/collections/MappingChange$Map;Ljavafx/collections/ObservableList;)V

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    .line 3314
    :cond_7
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 3322
    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedItems:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_8

    move-object v15, v1

    invoke-virtual {v15}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 3323
    move-object v15, v1

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->setSelectedItem(Ljava/lang/Object;)V

    .line 3326
    :cond_8
    move-object v15, v1

    .line 3327
    invoke-virtual {v15}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v15

    check-cast v15, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object v6, v15

    .line 3329
    .local v6, "selectedIndicesSeq":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<Ljava/lang/Integer;>;"
    move-object v15, v3

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_f

    move-object v15, v4

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 3337
    move-object v15, v6

    move-object/from16 v16, v3

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->createRangeChange(Ljavafx/collections/ObservableList;Ljava/util/List;Z)Ljavafx/collections/ListChangeListener$Change;

    move-result-object v15

    move-object v7, v15

    .line 3338
    .local v7, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljava/lang/Integer;>;"
    move-object v15, v6

    move-object/from16 v16, v7

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    .line 3339
    .line 3344
    .end local v7    # "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljava/lang/Integer;>;"
    :goto_5
    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    new-instance v16, Lcom/sun/javafx/collections/MappingChange;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v18, v2

    sget-object v19, Lcom/sun/javafx/collections/MappingChange;->NOOP_MAP:Lcom/sun/javafx/collections/MappingChange$Map;

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Lcom/sun/javafx/collections/MappingChange;-><init>(Ljavafx/collections/ListChangeListener$Change;Lcom/sun/javafx/collections/MappingChange$Map;Ljavafx/collections/ObservableList;)V

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    .line 3345
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 3346
    goto/16 :goto_3

    .line 3283
    .end local v5    # "fireChangeEvent":Z
    .local v6, "removedSize":I
    .local v7, "addedSize":I
    :cond_9
    const/4 v15, 0x0

    move v8, v15

    .local v8, "i":I
    :goto_6
    move v15, v8

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_d

    .line 3284
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v15

    move/from16 v16, v8

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/TreeTablePosition;

    move-object v9, v15

    .line 3285
    .local v9, "removed":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v15, v9

    invoke-virtual {v15}, Ljavafx/scene/control/TreeTablePosition;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v15

    move-object v10, v15

    .line 3287
    .local v10, "removedTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    const/4 v15, 0x0

    move v11, v15

    .line 3288
    .local v11, "matchFound":Z
    const/4 v15, 0x0

    move v12, v15

    .local v12, "j":I
    :goto_7
    move v15, v12

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/collections/ListChangeListener$Change;->getAddedSize()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_a

    .line 3289
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v15

    move/from16 v16, v12

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/TreeTablePosition;

    move-object v13, v15

    .line 3290
    .local v13, "added":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v15, v13

    invoke-virtual {v15}, Ljavafx/scene/control/TreeTablePosition;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v15

    move-object v14, v15

    .line 3292
    .local v14, "addedTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v15, v10

    if-eqz v15, :cond_b

    move-object v15, v10

    move-object/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 3293
    const/4 v15, 0x1

    move v11, v15

    .line 3298
    .end local v13    # "added":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    .end local v14    # "addedTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    :cond_a
    move v15, v11

    if-nez v15, :cond_c

    .line 3299
    const/4 v15, 0x1

    move v5, v15

    .line 3300
    .restart local v5    # "fireChangeEvent":Z
    goto/16 :goto_4

    .line 3288
    .end local v5    # "fireChangeEvent":Z
    .restart local v13    # "added":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    .restart local v14    # "addedTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 3283
    .end local v13    # "added":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    .end local v14    # "addedTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 3303
    .end local v9    # "removed":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    .end local v10    # "removedTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    .end local v11    # "matchFound":Z
    .end local v12    # "j":I
    :cond_d
    const/4 v15, 0x0

    move v5, v15

    .restart local v5    # "fireChangeEvent":Z
    goto/16 :goto_4

    .line 3306
    .end local v5    # "fireChangeEvent":Z
    .end local v6    # "removedSize":I
    .end local v7    # "addedSize":I
    .end local v8    # "i":I
    :cond_e
    const/4 v15, 0x1

    move v5, v15

    .restart local v5    # "fireChangeEvent":Z
    goto/16 :goto_4

    .line 3340
    .local v6, "selectedIndicesSeq":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<Ljava/lang/Integer;>;"
    :cond_f
    move-object v15, v6

    new-instance v16, Lcom/sun/javafx/collections/MappingChange;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v18, v2

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->cellToIndicesMap:Lcom/sun/javafx/collections/MappingChange$Map;

    move-object/from16 v19, v0

    move-object/from16 v20, v6

    invoke-direct/range {v17 .. v20}, Lcom/sun/javafx/collections/MappingChange;-><init>(Ljavafx/collections/ListChangeListener$Change;Lcom/sun/javafx/collections/MappingChange$Map;Ljavafx/collections/ObservableList;)V

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    .line 3341
    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    goto/16 :goto_5
.end method

.method private synthetic lambda$new$122(Ljavafx/scene/control/TreeTablePosition;)Ljavafx/scene/control/TreeItem;
    .locals 4

    .prologue
    .line 2291
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "f":Ljavafx/scene/control/TreeTablePosition;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getModelItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    return-object v0
.end method

.method private static synthetic lambda$new$123(Ljavafx/scene/control/TreeTablePosition;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 2293
    move-object v0, p0

    .local v0, "f":Ljavafx/scene/control/TreeTablePosition;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "f":Ljavafx/scene/control/TreeTablePosition;
    return-object v0
.end method

.method private synthetic lambda$new$124(Ljavafx/scene/control/TreeTableView;Ljavafx/beans/Observable;)V
    .locals 7

    .prologue
    .line 2309
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "treeTableView":Ljavafx/scene/control/TreeTableView;
    move-object v2, p2

    .local v2, "o":Ljavafx/beans/Observable;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView;->isShowRoot()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->shiftSelection(IILjavafx/util/Callback;)V

    .line 2310
    return-void

    .line 2309
    :cond_0
    const/4 v5, -0x1

    goto :goto_0
.end method

.method private synthetic lambda$new$125(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    .prologue
    .line 2313
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->handleSelectedCellsListChangeEvent(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private synthetic lambda$new$126(Ljavafx/scene/control/TreeTableView;Ljavafx/beans/Observable;)V
    .locals 6

    .prologue
    .line 2343
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "treeTableView":Ljavafx/scene/control/TreeTableView;
    move-object v2, p2

    .local v2, "o":Ljavafx/beans/Observable;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->updateDefaultSelection()V

    .line 2344
    move-object v3, v1

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->setAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;Z)V

    .line 2345
    return-void
.end method

.method private synthetic lambda$new$127(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V
    .locals 7

    .prologue
    .line 2360
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljavafx/scene/control/TreeItem;
    move-object v3, p3

    .local v3, "newValue":Ljavafx/scene/control/TreeItem;
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->updateDefaultSelection()V

    .line 2362
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->updateTreeEventListener(Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V

    .line 2363
    return-void
.end method

.method private quietClearSelection()V
    .locals 2

    .prologue
    .line 3003
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->startAtomic()V

    .line 3004
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->clear()V

    .line 3005
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->stopAtomic()V

    .line 3006
    return-void
.end method

.method private updateDefaultSelection()V
    .locals 6

    .prologue
    .line 3149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->clearSelection()V

    .line 3153
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getItemCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 3154
    .local v1, "newFocusIndex":I
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTableColumn(I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    :goto_1
    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->focus(ILjavafx/scene/control/TreeTableColumn;)V

    .line 3155
    return-void

    .line 3153
    .end local v1    # "newFocusIndex":I
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 3154
    .restart local v1    # "newFocusIndex":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private updateSelectedIndex(I)V
    .locals 5

    .prologue
    .line 3169
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->setSelectedIndex(I)V

    .line 3170
    move-object v2, v0

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getModelItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->setSelectedItem(Ljava/lang/Object;)V

    .line 3171
    return-void
.end method

.method private updateTreeEventListener(Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 2349
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "oldRoot":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v2, p2

    .local v2, "newRoot":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->weakTreeItemListener:Ljavafx/event/WeakEventHandler;

    if-eqz v3, :cond_0

    .line 2350
    move-object v3, v1

    invoke-static {}, Ljavafx/scene/control/TreeItem;->expandedItemCountChangeEvent()Ljavafx/event/EventType;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->weakTreeItemListener:Ljavafx/event/WeakEventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeItem;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 2353
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 2354
    move-object v3, v0

    new-instance v4, Ljavafx/event/WeakEventHandler;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeItemListener:Ljavafx/event/EventHandler;

    invoke-direct {v5, v6}, Ljavafx/event/WeakEventHandler;-><init>(Ljavafx/event/EventHandler;)V

    iput-object v4, v3, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->weakTreeItemListener:Ljavafx/event/WeakEventHandler;

    .line 2355
    move-object v3, v2

    invoke-static {}, Ljavafx/scene/control/TreeItem;->expandedItemCountChangeEvent()Ljavafx/event/EventType;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->weakTreeItemListener:Ljavafx/event/WeakEventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeItem;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 2357
    :cond_1
    return-void
.end method


# virtual methods
.method public clearAndSelect(I)V
    .locals 5

    .prologue
    .line 2610
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->clearAndSelect(ILjavafx/scene/control/TableColumnBase;)V

    .line 2611
    return-void
.end method

.method public clearAndSelect(ILjavafx/scene/control/TableColumnBase;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumnBase",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;*>;)V"
        }
    .end annotation

    .prologue
    .line 2614
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move/from16 v1, p1

    .local v1, "row":I
    move-object/from16 v2, p2

    .local v2, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<Ljavafx/scene/control/TreeItem<TS;>;*>;"
    move v9, v1

    if-ltz v9, :cond_0

    move v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getItemCount()I

    move-result v10

    if-lt v9, v10, :cond_1

    .line 2691
    :cond_0
    :goto_0
    return-void

    .line 2616
    :cond_1
    new-instance v9, Ljavafx/scene/control/TreeTablePosition;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v11

    move v12, v1

    move-object v13, v2

    check-cast v13, Ljavafx/scene/control/TreeTableColumn;

    invoke-direct {v10, v11, v12, v13}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    move-object v3, v9

    .line 2617
    .local v3, "newTablePosition":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v9

    move v4, v9

    .line 2620
    .local v4, "isCellSelectionEnabled":Z
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object v10, v3

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->setAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;Z)V

    .line 2624
    move v9, v4

    if-eqz v9, :cond_2

    move-object v9, v2

    if-nez v9, :cond_2

    .line 2625
    goto :goto_0

    .line 2628
    :cond_2
    move-object v9, v0

    move v10, v1

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isSelected(ILjavafx/scene/control/TableColumnBase;)Z

    move-result v9

    move v5, v9

    .line 2632
    .local v5, "wasSelected":Z
    new-instance v9, Ljava/util/ArrayList;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v6, v9

    .line 2634
    .local v6, "previousSelection":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
    move v9, v5

    if-eqz v9, :cond_3

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 2637
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TreeTablePosition;

    move-object v7, v9

    .line 2638
    .local v7, "selectedCell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v0

    move v11, v1

    invoke-virtual {v10, v11}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getModelItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v10

    if-ne v9, v10, :cond_3

    .line 2639
    move-object v9, v7

    invoke-virtual {v9}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v9

    move v10, v1

    if-ne v9, v10, :cond_3

    move-object v9, v7

    invoke-virtual {v9}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v9

    move-object v10, v2

    if-ne v9, v10, :cond_3

    .line 2640
    goto :goto_0

    .line 2649
    .end local v7    # "selectedCell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    :cond_3
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->startAtomic()V

    .line 2652
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->clearSelection()V

    .line 2655
    move-object v9, v0

    move v10, v1

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 2657
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->stopAtomic()V

    .line 2660
    move v9, v4

    if-eqz v9, :cond_5

    .line 2661
    move-object v9, v6

    move-object v10, v3

    invoke-interface {v9, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 2682
    :cond_4
    :goto_1
    move v9, v5

    if-eqz v9, :cond_7

    .line 2683
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object v10, v6

    move v11, v1

    invoke-static {v9, v10, v11}, Ljavafx/scene/control/ControlUtils;->buildClearAndSelectChange(Ljavafx/collections/ObservableList;Ljava/util/List;I)Ljavafx/collections/ListChangeListener$Change;

    move-result-object v9

    move-object v7, v9

    .line 2690
    .local v7, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
    :goto_2
    move-object v9, v0

    move-object v10, v7

    invoke-direct {v9, v10}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->handleSelectedCellsListChangeEvent(Ljavafx/collections/ListChangeListener$Change;)V

    .line 2691
    goto/16 :goto_0

    .line 2663
    .end local v7    # "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
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

    check-cast v9, Ljavafx/scene/control/TreeTablePosition;

    move-object v8, v9

    .line 2664
    .local v8, "tp":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v9, v8

    invoke-virtual {v9}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v9

    move v10, v1

    if-ne v9, v10, :cond_6

    .line 2665
    move-object v9, v6

    move-object v10, v8

    invoke-interface {v9, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 2666
    goto :goto_1

    .line 2668
    :cond_6
    goto :goto_3

    .line 2685
    .end local v8    # "tp":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    :cond_7
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object v10, v3

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    move v8, v9

    .line 2686
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

    iget-object v14, v14, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;-><init>(IILjava/util/List;Ljavafx/collections/ObservableList;)V

    move-object v7, v9

    .restart local v7    # "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
    goto :goto_2
.end method

.method public clearSelection()V
    .locals 11

    .prologue
    .line 2984
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    new-instance v3, Ljava/util/ArrayList;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v3

    .line 2986
    .local v1, "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->quietClearSelection()V

    .line 2988
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isAtomic()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2989
    move-object v3, v0

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->updateSelectedIndex(I)V

    .line 2990
    move-object v3, v0

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->focus(I)V

    .line 2992
    new-instance v3, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$5;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object v9, v1

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$5;-><init>(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;IILjavafx/collections/ObservableList;Ljava/util/List;)V

    move-object v2, v3

    .line 2998
    .local v2, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->handleSelectedCellsListChangeEvent(Ljavafx/collections/ListChangeListener$Change;)V

    .line 3000
    .end local v2    # "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
    :cond_0
    return-void
.end method

.method public clearSelection(I)V
    .locals 5

    .prologue
    .line 2951
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->clearSelection(ILjavafx/scene/control/TableColumnBase;)V

    .line 2952
    return-void
.end method

.method public clearSelection(ILjavafx/scene/control/TableColumnBase;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumnBase",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;*>;)V"
        }
    .end annotation

    .prologue
    .line 2956
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<Ljavafx/scene/control/TreeItem<TS;>;*>;"
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/TreeTablePosition;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v6

    move v7, v1

    move-object v8, v2

    check-cast v8, Ljavafx/scene/control/TreeTableColumn;

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->clearSelection(Ljavafx/scene/control/TreeTablePosition;)V

    .line 2957
    return-void
.end method

.method public focus(I)V
    .locals 5

    .prologue
    .line 3174
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->focus(ILjavafx/scene/control/TreeTableColumn;)V

    .line 3175
    return-void
.end method

.method public getFocusedIndex()I
    .locals 2

    .prologue
    .line 3189
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    return v0
.end method

.method public getSelectedCells()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;>;"
        }
    .end annotation

    .prologue
    .line 2591
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    return-object v0
.end method

.method public getSelectedItems()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 2586
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedItems:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 3023
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    return v0
.end method

.method public isSelected(I)Z
    .locals 5

    .prologue
    .line 3009
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isSelected(ILjavafx/scene/control/TableColumnBase;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    return v0
.end method

.method public isSelected(ILjavafx/scene/control/TableColumnBase;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumnBase",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;*>;)Z"
        }
    .end annotation

    .prologue
    .line 3015
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<Ljavafx/scene/control/TreeItem<TS;>;*>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v5

    move v3, v5

    .line 3016
    .local v3, "isCellSelectionEnabled":Z
    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 3019
    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    :goto_0
    return v0

    .line 3018
    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    :cond_0
    move v5, v3

    if-eqz v5, :cond_1

    move-object v5, v2

    if-nez v5, :cond_2

    :cond_1
    const/4 v5, -0x1

    :goto_1
    move v4, v5

    .line 3019
    .local v4, "columnIndex":I
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move v6, v1

    move v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->isSelected(II)Z

    move-result v5

    move v0, v5

    goto :goto_0

    .line 3018
    .end local v4    # "columnIndex":I
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object v6, v2

    check-cast v6, Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafIndex(Ljavafx/scene/control/TreeTableColumn;)I

    move-result v5

    goto :goto_1
.end method

.method public select(I)V
    .locals 5

    .prologue
    .line 2694
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 2695
    return-void
.end method

.method public select(ILjavafx/scene/control/TableColumnBase;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumnBase",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;*>;)V"
        }
    .end annotation

    .prologue
    .line 2699
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<Ljavafx/scene/control/TreeItem<TS;>;*>;"
    move v5, v1

    if-ltz v5, :cond_0

    move v5, v1

    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getRowCount()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 2727
    :cond_0
    :goto_0
    return-void

    .line 2703
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v2

    if-nez v5, :cond_3

    .line 2704
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v3, v5

    .line 2705
    .local v3, "columns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 2706
    move-object v5, v0

    move v6, v1

    move-object v7, v3

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 2705
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2708
    :cond_2
    goto :goto_0

    .line 2711
    .end local v3    # "columns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    .end local v4    # "i":I
    :cond_3
    new-instance v5, Ljavafx/scene/control/TreeTablePosition;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v7

    move v8, v1

    move-object v9, v2

    check-cast v9, Ljavafx/scene/control/TreeTableColumn;

    invoke-direct {v6, v7, v8, v9}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    move-object v3, v5

    .line 2713
    .local v3, "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v5

    sget-object v6, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v5, v6, :cond_4

    .line 2714
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->startAtomic()V

    .line 2715
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->quietClearSelection()V

    .line 2716
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->stopAtomic()V

    .line 2719
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->hasDefaultAnchor(Ljavafx/scene/control/Control;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2720
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->removeAnchor(Ljavafx/scene/control/Control;)V

    .line 2723
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->add(Ljavafx/scene/control/TablePositionBase;)V

    .line 2725
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->updateSelectedIndex(I)V

    .line 2726
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    check-cast v7, Ljavafx/scene/control/TreeTableColumn;

    invoke-direct {v5, v6, v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->focus(ILjavafx/scene/control/TreeTableColumn;)V

    .line 2727
    goto :goto_0
.end method

.method public bridge synthetic select(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 2289
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeItem;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(Ljavafx/scene/control/TreeItem;)V

    return-void
.end method

.method public select(Ljavafx/scene/control/TreeItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 2730
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v1, p1

    .local v1, "obj":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v3, v1

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v3, v4, :cond_0

    .line 2731
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->clearSelection()V

    .line 2732
    .line 2755
    :goto_0
    return-void

    .line 2735
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeTableView;->getRow(Ljavafx/scene/control/TreeItem;)I

    move-result v3

    move v2, v3

    .line 2736
    .local v2, "firstIndex":I
    move v3, v2

    const/4 v4, -0x1

    if-le v3, v4, :cond_3

    .line 2737
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isSelected(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2738
    goto :goto_0

    .line 2741
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v3, v4, :cond_2

    .line 2742
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->quietClearSelection()V

    .line 2745
    :cond_2
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(I)V

    .line 2755
    :goto_1
    goto :goto_0

    .line 2752
    :cond_3
    move-object v3, v0

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->setSelectedIndex(I)V

    .line 2753
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->setSelectedItem(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public selectAboveCell()V
    .locals 5

    .prologue
    .line 3071
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v2

    move-object v1, v2

    .line 3072
    .local v1, "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 3073
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getRowCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(I)V

    .line 3077
    :cond_0
    :goto_0
    return-void

    .line 3074
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v2

    if-lez v2, :cond_0

    .line 3075
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 13

    .prologue
    .line 2841
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v6

    sget-object v7, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v6, v7, :cond_0

    .line 2879
    :goto_0
    return-void

    .line 2843
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2844
    new-instance v6, Ljava/util/ArrayList;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 2846
    .local v1, "indices":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
    const/4 v6, 0x0

    move-object v3, v6

    .line 2847
    .local v3, "tp":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    const/4 v6, 0x0

    move v4, v6

    .local v4, "col":I
    :goto_1
    move v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 2848
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v6

    move v7, v4

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeTableColumn;

    move-object v2, v6

    .line 2849
    .local v2, "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    const/4 v6, 0x0

    move v5, v6

    .local v5, "row":I
    :goto_2
    move v6, v5

    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getRowCount()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 2850
    new-instance v6, Ljavafx/scene/control/TreeTablePosition;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v8

    move v9, v5

    move-object v10, v2

    invoke-direct {v7, v8, v9, v10}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    move-object v3, v6

    .line 2851
    move-object v6, v1

    move-object v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 2849
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2847
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2854
    .end local v2    # "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    .end local v5    # "row":I
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->setAll(Ljava/util/Collection;)V

    .line 2856
    move-object v6, v3

    if-eqz v6, :cond_3

    .line 2857
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v7

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 2858
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v7

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->focus(ILjavafx/scene/control/TreeTableColumn;)V

    .line 2860
    .line 2879
    .end local v3    # "tp":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    .end local v4    # "col":I
    :cond_3
    :goto_3
    goto/16 :goto_0

    .line 2861
    .end local v1    # "indices":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 2862
    .restart local v1    # "indices":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
    const/4 v6, 0x0

    move v2, v6

    .local v2, "i":I
    :goto_4
    move v6, v2

    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getRowCount()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 2863
    move-object v6, v1

    new-instance v7, Ljavafx/scene/control/TreeTablePosition;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v9

    move v10, v2

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 2862
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2865
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->setAll(Ljava/util/Collection;)V

    .line 2867
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getFocusedIndex()I

    move-result v6

    move v2, v6

    .line 2868
    .local v2, "focusedIndex":I
    move v6, v2

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7

    .line 2869
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getItemCount()I

    move-result v6

    move v3, v6

    .line 2870
    .local v3, "itemCount":I
    move v6, v3

    if-lez v6, :cond_6

    .line 2871
    move-object v6, v0

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(I)V

    .line 2872
    move-object v6, v0

    move-object v7, v1

    move-object v8, v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TreeTablePosition;

    invoke-direct {v6, v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->focus(Ljavafx/scene/control/TreeTablePosition;)V

    .line 2874
    :cond_6
    goto :goto_3

    .line 2875
    .end local v3    # "itemCount":I
    :cond_7
    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(I)V

    .line 2876
    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->focus(I)V

    goto :goto_3
.end method

.method public selectBelowCell()V
    .locals 5

    .prologue
    .line 3080
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v2

    move-object v1, v2

    .line 3082
    .local v1, "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 3083
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(I)V

    .line 3087
    :cond_0
    :goto_0
    return-void

    .line 3084
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v2

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getRowCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 3085
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    goto :goto_0
.end method

.method public selectFirst()V
    .locals 5

    .prologue
    .line 3090
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v2

    move-object v1, v2

    .line 3092
    .local v1, "focusedCell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v2, v3, :cond_0

    .line 3093
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->quietClearSelection()V

    .line 3096
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getRowCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 3097
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3098
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 3103
    :cond_1
    :goto_0
    return-void

    .line 3100
    :cond_2
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(I)V

    goto :goto_0
.end method

.method public varargs selectIndices(I[I)V
    .locals 18

    .prologue
    .line 2758
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move/from16 v1, p1

    .local v1, "row":I
    move-object/from16 v2, p2

    .local v2, "rows":[I
    move-object v10, v2

    if-nez v10, :cond_0

    .line 2759
    move-object v10, v0

    move v11, v1

    invoke-virtual {v10, v11}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(I)V

    .line 2760
    .line 2838
    :goto_0
    return-void

    .line 2767
    :cond_0
    move-object v10, v0

    invoke-direct {v10}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getRowCount()I

    move-result v10

    move v3, v10

    .line 2769
    .local v3, "rowCount":I
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v10

    sget-object v11, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v10, v11, :cond_4

    .line 2770
    move-object v10, v0

    invoke-direct {v10}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->quietClearSelection()V

    .line 2772
    move-object v10, v2

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v4, v10

    .local v4, "i":I
    :goto_1
    move v10, v4

    if-ltz v10, :cond_1

    .line 2773
    move-object v10, v2

    move v11, v4

    aget v10, v10, v11

    move v5, v10

    .line 2774
    .local v5, "index":I
    move v10, v5

    if-ltz v10, :cond_3

    move v10, v5

    move v11, v3

    if-ge v10, v11, :cond_3

    .line 2775
    move-object v10, v0

    move v11, v5

    invoke-virtual {v10, v11}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(I)V

    .line 2776
    .line 2780
    .end local v5    # "index":I
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2781
    move v10, v1

    if-lez v10, :cond_2

    move v10, v1

    move v11, v3

    if-ge v10, v11, :cond_2

    .line 2782
    move-object v10, v0

    move v11, v1

    invoke-virtual {v10, v11}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(I)V

    .line 2838
    .end local v4    # "i":I
    :cond_2
    :goto_2
    goto :goto_0

    .line 2772
    .restart local v4    # "i":I
    .restart local v5    # "index":I
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2786
    .end local v4    # "i":I
    .end local v5    # "index":I
    :cond_4
    const/4 v10, -0x1

    move v4, v10

    .line 2787
    .local v4, "lastIndex":I
    new-instance v10, Ljava/util/LinkedHashSet;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v5, v10

    .line 2790
    .local v5, "positions":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
    move v10, v1

    if-ltz v10, :cond_7

    move v10, v1

    move v11, v3

    if-ge v10, v11, :cond_7

    .line 2793
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2794
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v6, v10

    .line 2795
    .local v6, "columns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    const/4 v10, 0x0

    move v7, v10

    .local v7, "column":I
    :goto_3
    move v10, v7

    move-object v11, v6

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    .line 2796
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move v11, v1

    move v12, v7

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->isSelected(II)Z

    move-result v10

    if-nez v10, :cond_5

    .line 2797
    move-object v10, v5

    new-instance v11, Ljavafx/scene/control/TreeTablePosition;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v13

    move v14, v1

    move-object v15, v6

    move/from16 v16, v7

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/TreeTableColumn;

    invoke-direct {v12, v13, v14, v15}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 2795
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2800
    .line 2807
    .end local v6    # "columns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    .end local v7    # "column":I
    :cond_6
    :goto_4
    move v10, v1

    move v4, v10

    .line 2811
    :cond_7
    const/4 v10, 0x0

    move v6, v10

    .local v6, "i":I
    :goto_5
    move v10, v6

    move-object v11, v2

    array-length v11, v11

    if-ge v10, v11, :cond_e

    .line 2812
    move-object v10, v2

    move v11, v6

    aget v10, v10, v11

    move v7, v10

    .line 2813
    .local v7, "index":I
    move v10, v7

    if-ltz v10, :cond_8

    move v10, v7

    move v11, v3

    if-lt v10, v11, :cond_a

    .line 2811
    :cond_8
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 2801
    .end local v6    # "i":I
    .end local v7    # "index":I
    :cond_9
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move v11, v1

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->isSelected(II)Z

    move-result v10

    move v6, v10

    .line 2802
    .local v6, "match":Z
    move v10, v6

    if-nez v10, :cond_6

    .line 2803
    move-object v10, v5

    new-instance v11, Ljavafx/scene/control/TreeTablePosition;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v13

    move v14, v1

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_4

    .line 2814
    .local v6, "i":I
    .restart local v7    # "index":I
    :cond_a
    move v10, v7

    move v4, v10

    .line 2816
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2817
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v8, v10

    .line 2818
    .local v8, "columns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    const/4 v10, 0x0

    move v9, v10

    .local v9, "column":I
    :goto_7
    move v10, v9

    move-object v11, v8

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_c

    .line 2819
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move v11, v7

    move v12, v9

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->isSelected(II)Z

    move-result v10

    if-nez v10, :cond_b

    .line 2820
    move-object v10, v5

    new-instance v11, Ljavafx/scene/control/TreeTablePosition;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v13

    move v14, v7

    move-object v15, v8

    move/from16 v16, v9

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/TreeTableColumn;

    invoke-direct {v12, v13, v14, v15}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 2821
    move v10, v7

    move v4, v10

    .line 2818
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 2824
    :cond_c
    goto :goto_6

    .line 2825
    .end local v8    # "columns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    .end local v9    # "column":I
    :cond_d
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move v11, v7

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->isSelected(II)Z

    move-result v10

    if-nez v10, :cond_8

    .line 2827
    move-object v10, v5

    new-instance v11, Ljavafx/scene/control/TreeTablePosition;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v13

    move v14, v7

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    goto/16 :goto_6

    .line 2832
    .end local v7    # "index":I
    :cond_e
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object v11, v5

    invoke-virtual {v10, v11}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->addAll(Ljava/util/Collection;)V

    .line 2834
    move v10, v4

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 2835
    move-object v10, v0

    move v11, v4

    invoke-virtual {v10, v11}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(I)V

    goto/16 :goto_2
.end method

.method public selectLast()V
    .locals 6

    .prologue
    .line 3106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v3

    move-object v1, v3

    .line 3108
    .local v1, "focusedCell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v3, v4, :cond_0

    .line 3109
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->quietClearSelection()V

    .line 3112
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getRowCount()I

    move-result v3

    move v2, v3

    .line 3113
    .local v2, "numItems":I
    move v3, v2

    if-lez v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectedIndex()I

    move-result v3

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 3114
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3115
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 3120
    :cond_1
    :goto_0
    return-void

    .line 3117
    :cond_2
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(I)V

    goto :goto_0
.end method

.method public selectLeftCell()V
    .locals 7

    .prologue
    .line 3123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3129
    :goto_0
    return-void

    .line 3125
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v2

    move-object v1, v2

    .line 3126
    .local v1, "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTablePosition;->getColumn()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 3127
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v3

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v5

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTableColumn(Ljavafx/scene/control/TreeTableColumn;I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 3129
    :cond_1
    goto :goto_0
.end method

.method public selectNext()V
    .locals 7

    .prologue
    .line 3049
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3052
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v2

    move-object v1, v2

    .line 3053
    .local v1, "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTablePosition;->getColumn()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3055
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v3

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTableColumn(Ljavafx/scene/control/TreeTableColumn;I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 3060
    .line 3068
    .end local v1    # "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    :cond_0
    :goto_0
    return-void

    .line 3056
    .restart local v1    # "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v2

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getRowCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 3058
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTableColumn(I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    goto :goto_0

    .line 3061
    .end local v1    # "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getFocusedIndex()I

    move-result v2

    move v1, v2

    .line 3062
    .local v1, "focusIndex":I
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 3063
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(I)V

    goto :goto_0

    .line 3064
    :cond_3
    move v2, v1

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getRowCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 3065
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(I)V

    goto :goto_0
.end method

.method public selectPrevious()V
    .locals 7

    .prologue
    .line 3027
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3030
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v2

    move-object v1, v2

    .line 3031
    .local v1, "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTablePosition;->getColumn()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 3033
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v3

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v5

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTableColumn(Ljavafx/scene/control/TreeTableColumn;I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 3038
    .line 3046
    .end local v1    # "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    :cond_0
    :goto_0
    return-void

    .line 3034
    .restart local v1    # "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v2

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getRowCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 3036
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v4, v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTableColumn(I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    goto :goto_0

    .line 3039
    .end local v1    # "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getFocusedIndex()I

    move-result v2

    move v1, v2

    .line 3040
    .local v1, "focusIndex":I
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 3041
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getRowCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(I)V

    goto :goto_0

    .line 3042
    :cond_3
    move v2, v1

    if-lez v2, :cond_0

    .line 3043
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(I)V

    goto :goto_0
.end method

.method public selectRange(ILjavafx/scene/control/TableColumnBase;ILjavafx/scene/control/TableColumnBase;)V
    .locals 30
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
    .line 2883
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move/from16 v3, p1

    .local v3, "minRow":I
    move-object/from16 v4, p2

    .local v4, "minColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<Ljavafx/scene/control/TreeItem<TS;>;*>;"
    move/from16 v5, p3

    .local v5, "maxRow":I
    move-object/from16 v6, p4

    .local v6, "maxColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<Ljavafx/scene/control/TreeItem<TS;>;*>;"
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v23

    sget-object v24, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 2884
    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v23}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->quietClearSelection()V

    .line 2885
    move-object/from16 v23, v2

    move/from16 v24, v5

    move-object/from16 v25, v6

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 2886
    .line 2948
    :goto_0
    return-void

    .line 2889
    :cond_0
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->startAtomic()V

    .line 2891
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getItemCount()I

    move-result v23

    move/from16 v7, v23

    .line 2892
    .local v7, "itemCount":I
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v23

    move/from16 v8, v23

    .line 2894
    .local v8, "isCellSelectionEnabled":Z
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object/from16 v23, v0

    move-object/from16 v24, v4

    check-cast v24, Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual/range {v23 .. v24}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafIndex(Ljavafx/scene/control/TreeTableColumn;)I

    move-result v23

    move/from16 v9, v23

    .line 2895
    .local v9, "minColumnIndex":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object/from16 v23, v0

    move-object/from16 v24, v6

    check-cast v24, Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual/range {v23 .. v24}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafIndex(Ljavafx/scene/control/TreeTableColumn;)I

    move-result v23

    move/from16 v10, v23

    .line 2896
    .local v10, "maxColumnIndex":I
    move/from16 v23, v9

    move/from16 v24, v10

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    move/from16 v11, v23

    .line 2897
    .local v11, "_minColumnIndex":I
    move/from16 v23, v9

    move/from16 v24, v10

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v12, v23

    .line 2899
    .local v12, "_maxColumnIndex":I
    move/from16 v23, v3

    move/from16 v24, v5

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    move/from16 v13, v23

    .line 2900
    .local v13, "_minRow":I
    move/from16 v23, v3

    move/from16 v24, v5

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v14, v23

    .line 2902
    .local v14, "_maxRow":I
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, v23

    .line 2904
    .local v15, "cellsToSelect":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
    move/from16 v23, v13

    move/from16 v16, v23

    .local v16, "_row":I
    :goto_1
    move/from16 v23, v16

    move/from16 v24, v14

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_5

    .line 2907
    move/from16 v23, v16

    if-ltz v23, :cond_1

    move/from16 v23, v16

    move/from16 v24, v7

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_2

    .line 2904
    :cond_1
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 2909
    :cond_2
    move/from16 v23, v8

    if-nez v23, :cond_3

    .line 2910
    move-object/from16 v23, v15

    new-instance v24, Ljavafx/scene/control/TreeTablePosition;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object/from16 v26, v0

    move/from16 v27, v16

    move-object/from16 v28, v4

    check-cast v28, Ljavafx/scene/control/TreeTableColumn;

    invoke-direct/range {v25 .. v28}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v23

    goto :goto_2

    .line 2912
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

    .line 2913
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object/from16 v23, v0

    move/from16 v24, v17

    invoke-virtual/range {v23 .. v24}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v23

    move-object/from16 v18, v23

    .line 2917
    .local v18, "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object/from16 v23, v18

    if-nez v23, :cond_4

    move/from16 v23, v8

    if-eqz v23, :cond_4

    .line 2912
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 2919
    :cond_4
    move-object/from16 v23, v15

    new-instance v24, Ljavafx/scene/control/TreeTablePosition;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object/from16 v26, v0

    move/from16 v27, v16

    move-object/from16 v28, v18

    invoke-direct/range {v25 .. v28}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v23

    goto :goto_4

    .line 2927
    .end local v17    # "_col":I
    .end local v18    # "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    :cond_5
    move-object/from16 v23, v15

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v23

    .line 2929
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object/from16 v23, v0

    move-object/from16 v24, v15

    invoke-virtual/range {v23 .. v24}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->addAll(Ljava/util/Collection;)V

    .line 2930
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->stopAtomic()V

    .line 2934
    move-object/from16 v23, v2

    move/from16 v24, v5

    invoke-direct/range {v23 .. v24}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->updateSelectedIndex(I)V

    .line 2935
    move-object/from16 v23, v2

    move/from16 v24, v5

    move-object/from16 v25, v6

    check-cast v25, Ljavafx/scene/control/TreeTableColumn;

    invoke-direct/range {v23 .. v25}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->focus(ILjavafx/scene/control/TreeTableColumn;)V

    .line 2937
    move-object/from16 v23, v4

    check-cast v23, Ljavafx/scene/control/TreeTableColumn;

    move-object/from16 v16, v23

    .line 2938
    .local v16, "startColumn":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move/from16 v23, v8

    if-eqz v23, :cond_7

    move-object/from16 v23, v6

    check-cast v23, Ljavafx/scene/control/TreeTableColumn;

    :goto_5
    move-object/from16 v17, v23

    .line 2939
    .local v17, "endColumn":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object/from16 v23, v0

    new-instance v24, Ljavafx/scene/control/TreeTablePosition;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object/from16 v26, v0

    move/from16 v27, v3

    move-object/from16 v28, v16

    invoke-direct/range {v25 .. v28}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    invoke-virtual/range {v23 .. v24}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->indexOf(Ljavafx/scene/control/TablePositionBase;)I

    move-result v23

    move/from16 v18, v23

    .line 2940
    .local v18, "startChangeIndex":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsMap:Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-object/from16 v23, v0

    new-instance v24, Ljavafx/scene/control/TreeTablePosition;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object/from16 v26, v0

    move/from16 v27, v5

    move-object/from16 v28, v17

    invoke-direct/range {v25 .. v28}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    invoke-virtual/range {v23 .. v24}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->indexOf(Ljavafx/scene/control/TablePositionBase;)I

    move-result v23

    move/from16 v19, v23

    .line 2942
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

    .line 2943
    move/from16 v23, v18

    move/from16 v24, v19

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    move/from16 v20, v23

    .line 2944
    .local v20, "startIndex":I
    move/from16 v23, v18

    move/from16 v24, v19

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v21, v23

    .line 2945
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

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedCellsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object/from16 v27, v0

    invoke-direct/range {v24 .. v27}, Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange;-><init>(IILjavafx/collections/ObservableList;)V

    move-object/from16 v22, v23

    .line 2946
    .local v22, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object/from16 v23, v2

    move-object/from16 v24, v22

    invoke-direct/range {v23 .. v24}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->handleSelectedCellsListChangeEvent(Ljavafx/collections/ListChangeListener$Change;)V

    .line 2948
    .end local v20    # "startIndex":I
    .end local v21    # "endIndex":I
    .end local v22    # "c":Ljavafx/collections/ListChangeListener$Change;
    :cond_6
    goto/16 :goto_0

    .line 2938
    .end local v17    # "endColumn":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    .end local v18    # "startChangeIndex":I
    .end local v19    # "endChangeIndex":I
    :cond_7
    move-object/from16 v23, v16

    goto/16 :goto_5
.end method

.method public selectRightCell()V
    .locals 7

    .prologue
    .line 3132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3138
    :goto_0
    return-void

    .line 3134
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v2

    move-object v1, v2

    .line 3135
    .local v1, "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTablePosition;->getColumn()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3136
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v3

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTableColumn(Ljavafx/scene/control/TreeTableColumn;I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 3138
    :cond_1
    goto :goto_0
.end method

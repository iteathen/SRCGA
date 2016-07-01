.class abstract Ljavafx/scene/control/MultipleSelectionModelBase;
.super Ljavafx/scene/control/MultipleSelectionModel;
.source "MultipleSelectionModelBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/MultipleSelectionModel",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private atomicityCount:I

.field final selectedIndices:Ljava/util/BitSet;

.field final selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field selectedItemChange:Ljavafx/collections/ListChangeListener$Change;

.field private final selectedItemsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/MultipleSelectionModel;-><init>()V

    .line 169
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Ljavafx/scene/control/MultipleSelectionModelBase;->atomicityCount:I

    .line 61
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/MultipleSelectionModelBase$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/MultipleSelectionModelBase;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 69
    move-object v2, v0

    new-instance v3, Ljava/util/BitSet;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    iput-object v3, v2, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    .line 71
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    invoke-direct {v3, v4}, Ljavafx/scene/control/MultipleSelectionModelBase;->createListFromBitSet(Ljava/util/BitSet;)Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    .line 73
    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/MultipleSelectionModelBase$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/MultipleSelectionModelBase;)Lcom/sun/javafx/collections/MappingChange$Map;

    move-result-object v2

    move-object v1, v2

    .line 75
    .local v1, "map":Lcom/sun/javafx/collections/MappingChange$Map;, "Lcom/sun/javafx/collections/MappingChange$Map<Ljava/lang/Integer;TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    new-instance v3, Ljavafx/scene/control/MultipleSelectionModelBase$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/MultipleSelectionModelBase$1;-><init>(Ljavafx/scene/control/MultipleSelectionModelBase;Lcom/sun/javafx/collections/MappingChange$Map;)V

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 104
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/MultipleSelectionModelBase$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/MultipleSelectionModelBase$2;-><init>(Ljavafx/scene/control/MultipleSelectionModelBase;)V

    iput-object v3, v2, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedItemsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    .line 114
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/MultipleSelectionModelBase;)Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/MultipleSelectionModelBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedItemsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/MultipleSelectionModelBase;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/MultipleSelectionModelBase;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->lambda$new$34(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/MultipleSelectionModelBase;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->lambda$new$35(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private createListFromBitSet(Ljava/util/BitSet;)Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/BitSet;",
            ")",
            "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 749
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move-object v1, p1

    .local v1, "bitset":Ljava/util/BitSet;
    new-instance v2, Ljavafx/scene/control/MultipleSelectionModelBase$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/MultipleSelectionModelBase$4;-><init>(Ljavafx/scene/control/MultipleSelectionModelBase;Ljava/util/BitSet;)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    return-object v0
.end method

.method static createRangeChange(Ljavafx/collections/ObservableList;Ljava/util/List;Z)Ljavafx/collections/ListChangeListener$Change;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljavafx/collections/ListChangeListener$Change",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/Integer;>;"
    move-object v1, p1

    .local v1, "addedItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v2, p2

    .local v2, "splitChanges":Z
    new-instance v4, Ljavafx/scene/control/MultipleSelectionModelBase$3;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    move v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/control/MultipleSelectionModelBase$3;-><init>(Ljavafx/collections/ObservableList;Ljava/util/List;Ljavafx/collections/ObservableList;Z)V

    move-object v3, v4

    .line 608
    .local v3, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljava/lang/Integer;>;"
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/Integer;>;"
    return-object v0
.end method

.method private synthetic lambda$new$34(Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/MultipleSelectionModelBase;->getSelectedIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/MultipleSelectionModelBase;->getModelItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->setSelectedItem(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method private synthetic lambda$new$35(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move-object v1, p1

    .local v1, "f":Ljava/lang/Integer;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->getModelItem(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    return-object v0
.end method

.method private quietClearSelection()V
    .locals 2

    .prologue
    .line 690
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 691
    return-void
.end method


# virtual methods
.method public clearAndSelect(I)V
    .locals 14

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move v1, p1

    .local v1, "row":I
    move v7, v1

    if-ltz v7, :cond_0

    move v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/MultipleSelectionModelBase;->getItemCount()I

    move-result v8

    if-lt v7, v8, :cond_1

    .line 321
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/MultipleSelectionModelBase;->clearSelection()V

    .line 322
    .line 378
    :goto_0
    return-void

    .line 325
    :cond_1
    move-object v7, v0

    move v8, v1

    invoke-virtual {v7, v8}, Ljavafx/scene/control/MultipleSelectionModelBase;->isSelected(I)Z

    move-result v7

    move v2, v7

    .line 329
    .local v2, "wasSelected":Z
    move v7, v2

    if-eqz v7, :cond_2

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/MultipleSelectionModelBase;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 332
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/MultipleSelectionModelBase;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Ljavafx/scene/control/MultipleSelectionModelBase;->getModelItem(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_2

    .line 333
    goto :goto_0

    .line 340
    :cond_2
    new-instance v7, Ljava/util/BitSet;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/util/BitSet;-><init>()V

    move-object v3, v7

    .line 341
    .local v3, "selectedIndicesCopy":Ljava/util/BitSet;
    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 342
    move-object v7, v3

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->clear(I)V

    .line 343
    move-object v7, v0

    move-object v8, v3

    invoke-direct {v7, v8}, Ljavafx/scene/control/MultipleSelectionModelBase;->createListFromBitSet(Ljava/util/BitSet;)Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-result-object v7

    move-object v4, v7

    .line 349
    .local v4, "previousSelectedIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/MultipleSelectionModelBase;->startAtomic()V

    .line 352
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/MultipleSelectionModelBase;->clearSelection()V

    .line 355
    move-object v7, v0

    move v8, v1

    invoke-virtual {v7, v8}, Ljavafx/scene/control/MultipleSelectionModelBase;->select(I)V

    .line 356
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/MultipleSelectionModelBase;->stopAtomic()V

    .line 369
    move v7, v2

    if-eqz v7, :cond_3

    .line 370
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object v8, v4

    move v9, v1

    invoke-static {v7, v8, v9}, Ljavafx/scene/control/ControlUtils;->buildClearAndSelectChange(Ljavafx/collections/ObservableList;Ljava/util/List;I)Ljavafx/collections/ListChangeListener$Change;

    move-result-object v7

    move-object v5, v7

    .line 377
    .local v5, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljava/lang/Integer;>;"
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object v8, v5

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    .line 378
    goto :goto_0

    .line 372
    .end local v5    # "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljava/lang/Integer;>;"
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    move v6, v7

    .line 373
    .local v6, "changeIndex":I
    new-instance v7, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move v9, v6

    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v4

    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;-><init>(IILjava/util/List;Ljavafx/collections/ObservableList;)V

    move-object v5, v7

    .restart local v5    # "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljava/lang/Integer;>;"
    goto :goto_1
.end method

.method public clearSelection()V
    .locals 10

    .prologue
    .line 676
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    invoke-direct {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->createListFromBitSet(Ljava/util/BitSet;)Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-result-object v2

    move-object v1, v2

    .line 678
    .local v1, "removed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/MultipleSelectionModelBase;->quietClearSelection()V

    .line 680
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MultipleSelectionModelBase;->isAtomic()Z

    move-result v2

    if-nez v2, :cond_0

    .line 681
    move-object v2, v0

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->setSelectedIndex(I)V

    .line 682
    move-object v2, v0

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->focus(I)V

    .line 683
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    new-instance v3, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;-><init>(IILjava/util/List;Ljavafx/collections/ObservableList;)V

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    .line 687
    :cond_0
    return-void
.end method

.method public clearSelection(I)V
    .locals 11

    .prologue
    .line 655
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move v1, p1

    .local v1, "index":I
    move v3, v1

    if-gez v3, :cond_0

    .line 673
    :goto_0
    return-void

    .line 659
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->isEmpty()Z

    move-result v3

    move v2, v3

    .line 660
    .local v2, "wasEmpty":Z
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->clear(I)V

    .line 662
    move v3, v2

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 663
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->clearSelection()V

    .line 666
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->isAtomic()Z

    move-result v3

    if-nez v3, :cond_2

    .line 669
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    new-instance v4, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move v6, v1

    move v7, v1

    move v8, v1

    .line 671
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;-><init>(IILjava/util/List;Ljavafx/collections/ObservableList;)V

    .line 669
    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    .line 673
    :cond_2
    goto :goto_0
.end method

.method protected abstract focus(I)V
.end method

.method protected abstract getFocusedIndex()I
.end method

.method protected abstract getItemCount()I
.end method

.method protected abstract getModelItem(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public getSelectedIndices()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    return-object v0
.end method

.method public getSelectedItems()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedItemsSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    return-object v0
.end method

.method isAtomic()Z
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/MultipleSelectionModelBase;->atomicityCount:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 709
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    return v0
.end method

.method public isSelected(I)Z
    .locals 4

    .prologue
    .line 701
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move v1, p1

    .local v1, "index":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 702
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    move v0, v2

    .line 705
    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public select(I)V
    .locals 15

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move/from16 v1, p1

    .local v1, "row":I
    move v8, v1

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 382
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/MultipleSelectionModelBase;->clearSelection()V

    .line 383
    .line 416
    :goto_0
    return-void

    .line 385
    :cond_0
    move v8, v1

    if-ltz v8, :cond_1

    move v8, v1

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/MultipleSelectionModelBase;->getItemCount()I

    move-result v9

    if-lt v8, v9, :cond_2

    .line 386
    :cond_1
    goto :goto_0

    .line 389
    :cond_2
    move v8, v1

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/MultipleSelectionModelBase;->getSelectedIndex()I

    move-result v9

    if-ne v8, v9, :cond_7

    const/4 v8, 0x1

    :goto_1
    move v2, v8

    .line 390
    .local v2, "isSameRow":Z
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/MultipleSelectionModelBase;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    .line 391
    .local v3, "currentItem":Ljava/lang/Object;, "TT;"
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Ljavafx/scene/control/MultipleSelectionModelBase;->getModelItem(I)Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    .line 392
    .local v4, "newItem":Ljava/lang/Object;, "TT;"
    move-object v8, v4

    if-eqz v8, :cond_8

    move-object v8, v4

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    :goto_2
    move v5, v8

    .line 393
    .local v5, "isSameItem":Z
    move v8, v2

    if-eqz v8, :cond_9

    move v8, v5

    if-nez v8, :cond_9

    const/4 v8, 0x1

    :goto_3
    move v6, v8

    .line 395
    .local v6, "fireUpdatedItemEvent":Z
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/MultipleSelectionModelBase;->startAtomic()V

    .line 396
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 397
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/MultipleSelectionModelBase;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v8

    sget-object v9, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v8, v9, :cond_3

    .line 398
    move-object v8, v0

    invoke-direct {v8}, Ljavafx/scene/control/MultipleSelectionModelBase;->quietClearSelection()V

    .line 400
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 403
    :cond_4
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Ljavafx/scene/control/MultipleSelectionModelBase;->setSelectedIndex(I)V

    .line 404
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Ljavafx/scene/control/MultipleSelectionModelBase;->focus(I)V

    .line 406
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/MultipleSelectionModelBase;->stopAtomic()V

    .line 408
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/MultipleSelectionModelBase;->isAtomic()Z

    move-result v8

    if-nez v8, :cond_5

    .line 409
    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v7, v8

    .line 410
    .local v7, "changeIndex":I
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    new-instance v9, Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move v11, v7

    move v12, v7

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    invoke-direct {v10, v11, v12, v13}, Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange;-><init>(IILjavafx/collections/ObservableList;)V

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    .line 413
    .end local v7    # "changeIndex":I
    :cond_5
    move v8, v6

    if-eqz v8, :cond_6

    .line 414
    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljavafx/scene/control/MultipleSelectionModelBase;->setSelectedItem(Ljava/lang/Object;)V

    .line 416
    :cond_6
    goto/16 :goto_0

    .line 389
    .end local v2    # "isSameRow":Z
    .end local v3    # "currentItem":Ljava/lang/Object;, "TT;"
    .end local v4    # "newItem":Ljava/lang/Object;, "TT;"
    .end local v5    # "isSameItem":Z
    .end local v6    # "fireUpdatedItemEvent":Z
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 392
    .restart local v2    # "isSameRow":Z
    .restart local v3    # "currentItem":Ljava/lang/Object;, "TT;"
    .restart local v4    # "newItem":Ljava/lang/Object;, "TT;"
    :cond_8
    const/4 v8, 0x0

    goto :goto_2

    .line 393
    .restart local v5    # "isSameItem":Z
    :cond_9
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public select(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;, "TT;"
    move-object v5, v1

    if-nez v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/MultipleSelectionModelBase;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v5

    sget-object v6, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v5, v6, :cond_0

    .line 422
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/MultipleSelectionModelBase;->clearSelection()V

    .line 423
    .line 455
    :goto_0
    return-void

    .line 429
    :cond_0
    const/4 v5, 0x0

    move-object v2, v5

    .line 430
    .local v2, "rowObj":Ljava/lang/Object;
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/MultipleSelectionModelBase;->getItemCount()I

    move-result v5

    move v4, v5

    .end local v2    # "rowObj":Ljava/lang/Object;
    .local v4, "max":I
    :goto_1
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_5

    .line 431
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Ljavafx/scene/control/MultipleSelectionModelBase;->getModelItem(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 432
    .restart local v2    # "rowObj":Ljava/lang/Object;
    move-object v5, v2

    if-nez v5, :cond_2

    .line 430
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 434
    :cond_2
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 435
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Ljavafx/scene/control/MultipleSelectionModelBase;->isSelected(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 436
    goto :goto_0

    .line 439
    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/MultipleSelectionModelBase;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v5

    sget-object v6, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v5, v6, :cond_4

    .line 440
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/control/MultipleSelectionModelBase;->quietClearSelection()V

    .line 443
    :cond_4
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Ljavafx/scene/control/MultipleSelectionModelBase;->select(I)V

    .line 444
    goto :goto_0

    .line 453
    .end local v2    # "rowObj":Ljava/lang/Object;
    :cond_5
    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/MultipleSelectionModelBase;->setSelectedIndex(I)V

    .line 454
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/MultipleSelectionModelBase;->setSelectedItem(Ljava/lang/Object;)V

    .line 455
    goto :goto_0
.end method

.method public selectAll()V
    .locals 10

    .prologue
    .line 612
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v3, v4, :cond_0

    .line 631
    :goto_0
    return-void

    .line 614
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->getItemCount()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_0

    .line 616
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->getItemCount()I

    move-result v3

    move v1, v3

    .line 617
    .local v1, "rowCount":I
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->getFocusedIndex()I

    move-result v3

    move v2, v3

    .line 620
    .local v2, "focusedIndex":I
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->clearSelection()V

    .line 621
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    const/4 v4, 0x0

    move v5, v1

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/BitSet;->set(IIZ)V

    .line 622
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    new-instance v4, Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange;-><init>(IILjavafx/collections/ObservableList;)V

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    .line 624
    move v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 625
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/MultipleSelectionModelBase;->setSelectedIndex(I)V

    .line 626
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/MultipleSelectionModelBase;->focus(I)V

    .line 631
    :goto_1
    goto :goto_0

    .line 628
    :cond_2
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/MultipleSelectionModelBase;->setSelectedIndex(I)V

    .line 629
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/MultipleSelectionModelBase;->focus(I)V

    goto :goto_1
.end method

.method public selectFirst()V
    .locals 3

    .prologue
    .line 634
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/MultipleSelectionModelBase;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v1

    sget-object v2, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v1, v2, :cond_0

    .line 635
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/MultipleSelectionModelBase;->quietClearSelection()V

    .line 638
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/MultipleSelectionModelBase;->getItemCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 639
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/MultipleSelectionModelBase;->select(I)V

    .line 641
    :cond_1
    return-void
.end method

.method public varargs selectIndices(I[I)V
    .locals 15

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move/from16 v1, p1

    .local v1, "row":I
    move-object/from16 v2, p2

    .local v2, "rows":[I
    move-object v8, v2

    if-eqz v8, :cond_0

    move-object v8, v2

    array-length v8, v8

    if-nez v8, :cond_1

    .line 459
    :cond_0
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Ljavafx/scene/control/MultipleSelectionModelBase;->select(I)V

    .line 460
    .line 530
    :goto_0
    return-void

    .line 468
    :cond_1
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/MultipleSelectionModelBase;->getItemCount()I

    move-result v8

    move v3, v8

    .line 470
    .local v3, "rowCount":I
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/MultipleSelectionModelBase;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v8

    sget-object v9, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v8, v9, :cond_5

    .line 471
    move-object v8, v0

    invoke-direct {v8}, Ljavafx/scene/control/MultipleSelectionModelBase;->quietClearSelection()V

    .line 473
    move-object v8, v2

    array-length v8, v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v4, v8

    .local v4, "i":I
    :goto_1
    move v8, v4

    if-ltz v8, :cond_2

    .line 474
    move-object v8, v2

    move v9, v4

    aget v8, v8, v9

    move v5, v8

    .line 475
    .local v5, "index":I
    move v8, v5

    if-ltz v8, :cond_4

    move v8, v5

    move v9, v3

    if-ge v8, v9, :cond_4

    .line 476
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 477
    move-object v8, v0

    move v9, v5

    invoke-virtual {v8, v9}, Ljavafx/scene/control/MultipleSelectionModelBase;->select(I)V

    .line 478
    .line 482
    .end local v5    # "index":I
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    invoke-virtual {v8}, Ljava/util/BitSet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 483
    move v8, v1

    if-lez v8, :cond_3

    move v8, v1

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 484
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 485
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Ljavafx/scene/control/MultipleSelectionModelBase;->select(I)V

    .line 489
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    new-instance v9, Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    invoke-direct {v10, v11, v12, v13}, Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange;-><init>(IILjavafx/collections/ObservableList;)V

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    .line 530
    .end local v4    # "i":I
    :goto_2
    goto :goto_0

    .line 473
    .restart local v4    # "i":I
    .restart local v5    # "index":I
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 491
    .end local v4    # "i":I
    .end local v5    # "index":I
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v8

    .line 493
    .local v4, "actualSelectedRows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, -0x1

    move v5, v8

    .line 494
    .local v5, "lastIndex":I
    move v8, v1

    if-ltz v8, :cond_6

    move v8, v1

    move v9, v3

    if-ge v8, v9, :cond_6

    .line 495
    move v8, v1

    move v5, v8

    .line 496
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_6

    .line 497
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 498
    move-object v8, v4

    move v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 502
    :cond_6
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_3
    move v8, v6

    move-object v9, v2

    array-length v9, v9

    if-ge v8, v9, :cond_9

    .line 503
    move-object v8, v2

    move v9, v6

    aget v8, v8, v9

    move v7, v8

    .line 504
    .local v7, "index":I
    move v8, v7

    if-ltz v8, :cond_7

    move v8, v7

    move v9, v3

    if-lt v8, v9, :cond_8

    .line 502
    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 505
    :cond_8
    move v8, v7

    move v5, v8

    .line 507
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    move v9, v7

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_7

    .line 508
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    move v9, v7

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 509
    move-object v8, v4

    move v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_4

    .line 513
    .end local v7    # "index":I
    :cond_9
    move v8, v5

    const/4 v9, -0x1

    if-eq v8, v9, :cond_a

    .line 514
    move-object v8, v0

    move v9, v5

    invoke-virtual {v8, v9}, Ljavafx/scene/control/MultipleSelectionModelBase;->setSelectedIndex(I)V

    .line 515
    move-object v8, v0

    move v9, v5

    invoke-virtual {v8, v9}, Ljavafx/scene/control/MultipleSelectionModelBase;->focus(I)V

    .line 516
    move-object v8, v0

    move-object v9, v0

    move v10, v5

    invoke-virtual {v9, v10}, Ljavafx/scene/control/MultipleSelectionModelBase;->getModelItem(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/scene/control/MultipleSelectionModelBase;->setSelectedItem(Ljava/lang/Object;)V

    .line 526
    :cond_a
    move-object v8, v4

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 527
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object v9, v4

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Ljavafx/scene/control/MultipleSelectionModelBase;->createRangeChange(Ljavafx/collections/ObservableList;Ljava/util/List;Z)Ljavafx/collections/ListChangeListener$Change;

    move-result-object v8

    move-object v6, v8

    .line 528
    .local v6, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljava/lang/Integer;>;"
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object v9, v6

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    goto/16 :goto_2
.end method

.method public selectLast()V
    .locals 5

    .prologue
    .line 644
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MultipleSelectionModelBase;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v2, v3, :cond_0

    .line 645
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/MultipleSelectionModelBase;->quietClearSelection()V

    .line 648
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MultipleSelectionModelBase;->getItemCount()I

    move-result v2

    move v1, v2

    .line 649
    .local v1, "numItems":I
    move v2, v1

    if-lez v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MultipleSelectionModelBase;->getSelectedIndex()I

    move-result v2

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 650
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->select(I)V

    .line 652
    :cond_1
    return-void
.end method

.method public selectNext()V
    .locals 5

    .prologue
    .line 727
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MultipleSelectionModelBase;->getFocusedIndex()I

    move-result v2

    move v1, v2

    .line 729
    .local v1, "focusIndex":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MultipleSelectionModelBase;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v2, v3, :cond_0

    .line 730
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/MultipleSelectionModelBase;->quietClearSelection()V

    .line 733
    :cond_0
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 734
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->select(I)V

    .line 738
    :cond_1
    :goto_0
    return-void

    .line 735
    :cond_2
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    .line 736
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->select(I)V

    goto :goto_0
.end method

.method public selectPrevious()V
    .locals 5

    .prologue
    .line 713
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MultipleSelectionModelBase;->getFocusedIndex()I

    move-result v2

    move v1, v2

    .line 715
    .local v1, "focusIndex":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MultipleSelectionModelBase;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v2, v3, :cond_0

    .line 716
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/MultipleSelectionModelBase;->quietClearSelection()V

    .line 719
    :cond_0
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 720
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->select(I)V

    .line 724
    :cond_1
    :goto_0
    return-void

    .line 721
    :cond_2
    move v2, v1

    if-lez v2, :cond_1

    .line 722
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->select(I)V

    goto :goto_0
.end method

.method shiftSelection(IILjavafx/util/Callback;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move/from16 v2, p1

    .local v2, "position":I
    move/from16 v3, p2

    .local v3, "shift":I
    move-object/from16 v4, p3

    .local v4, "callback":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;Ljava/lang/Void;>;"
    move v12, v2

    if-gez v12, :cond_0

    .line 317
    :goto_0
    return-void

    .line 236
    :cond_0
    move v12, v3

    if-nez v12, :cond_1

    goto :goto_0

    .line 238
    :cond_1
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    invoke-virtual {v12}, Ljava/util/BitSet;->cardinality()I

    move-result v12

    move v5, v12

    .line 239
    .local v5, "selectedIndicesCardinality":I
    move v12, v5

    if-nez v12, :cond_2

    goto :goto_0

    .line 241
    :cond_2
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    invoke-virtual {v12}, Ljava/util/BitSet;->size()I

    move-result v12

    move v6, v12

    .line 243
    .local v6, "selectedIndicesSize":I
    move v12, v6

    new-array v12, v12, [I

    move-object v7, v12

    .line 244
    .local v7, "perm":[I
    const/4 v12, 0x0

    move v8, v12

    .line 245
    .local v8, "idx":I
    const/4 v12, 0x0

    move v9, v12

    .line 247
    .local v9, "hasPermutated":Z
    move v12, v3

    if-lez v12, :cond_9

    .line 248
    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v10, v12

    .local v10, "i":I
    :goto_1
    move v12, v10

    move v13, v2

    if-lt v12, v13, :cond_5

    move v12, v10

    if-ltz v12, :cond_5

    .line 249
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    move v13, v10

    invoke-virtual {v12, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    move v11, v12

    .line 251
    .local v11, "selected":Z
    move-object v12, v4

    if-nez v12, :cond_4

    .line 252
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    move v13, v10

    invoke-virtual {v12, v13}, Ljava/util/BitSet;->clear(I)V

    .line 253
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    move v13, v10

    move v14, v3

    add-int/2addr v13, v14

    move v14, v11

    invoke-virtual {v12, v13, v14}, Ljava/util/BitSet;->set(IZ)V

    .line 258
    :goto_2
    move v12, v11

    if-eqz v12, :cond_3

    .line 259
    move-object v12, v7

    move v13, v8

    add-int/lit8 v8, v8, 0x1

    move v14, v10

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v13

    .line 260
    const/4 v12, 0x1

    move v9, v12

    .line 248
    :cond_3
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 255
    :cond_4
    move-object v12, v4

    new-instance v13, Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move v15, v10

    move/from16 v16, v10

    move/from16 v17, v3

    add-int v16, v16, v17

    move/from16 v17, v11

    invoke-direct/range {v14 .. v17}, Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;-><init>(IIZ)V

    invoke-interface {v12, v13}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_2

    .line 263
    .end local v11    # "selected":Z
    :cond_5
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    move v13, v2

    invoke-virtual {v12, v13}, Ljava/util/BitSet;->clear(I)V

    .line 285
    .end local v10    # "i":I
    :cond_6
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/control/MultipleSelectionModelBase;->getSelectedIndex()I

    move-result v12

    move v10, v12

    .line 286
    .local v10, "selectedIndex":I
    move v12, v10

    move v13, v2

    if-lt v12, v13, :cond_7

    move v12, v10

    const/4 v13, -0x1

    if-le v12, v13, :cond_7

    .line 291
    const/4 v12, 0x0

    move v13, v10

    move v14, v3

    add-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v11, v12

    .line 293
    .local v11, "newSelectionLead":I
    move-object v12, v1

    move v13, v11

    invoke-virtual {v12, v13}, Ljavafx/scene/control/MultipleSelectionModelBase;->setSelectedIndex(I)V

    .line 299
    move v12, v9

    if-eqz v12, :cond_e

    .line 300
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    move v13, v11

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Ljava/util/BitSet;->set(IZ)V

    .line 309
    .end local v11    # "newSelectionLead":I
    :cond_7
    :goto_3
    move v12, v9

    if-eqz v12, :cond_8

    .line 310
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    new-instance v13, Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x0

    move/from16 v16, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;-><init>(II[ILjavafx/collections/ObservableList;)V

    invoke-virtual {v12, v13}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    .line 317
    :cond_8
    goto/16 :goto_0

    .line 264
    .end local v10    # "selectedIndex":I
    :cond_9
    move v12, v3

    if-gez v12, :cond_6

    .line 265
    move v12, v2

    move v10, v12

    .local v10, "i":I
    :goto_4
    move v12, v10

    move v13, v6

    if-ge v12, v13, :cond_6

    .line 266
    move v12, v10

    move v13, v3

    add-int/2addr v12, v13

    if-gez v12, :cond_b

    .line 265
    :cond_a
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 267
    :cond_b
    move v12, v10

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v3

    add-int/2addr v12, v13

    move v13, v2

    if-ge v12, v13, :cond_c

    goto :goto_5

    .line 268
    :cond_c
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    move v13, v10

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    move v11, v12

    .line 270
    .local v11, "selected":Z
    move-object v12, v4

    if-nez v12, :cond_d

    .line 271
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    move v13, v10

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/BitSet;->clear(I)V

    .line 272
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    move v13, v10

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v14, v3

    add-int/2addr v13, v14

    move v14, v11

    invoke-virtual {v12, v13, v14}, Ljava/util/BitSet;->set(IZ)V

    .line 277
    :goto_6
    move v12, v11

    if-eqz v12, :cond_a

    .line 278
    move-object v12, v7

    move v13, v8

    add-int/lit8 v8, v8, 0x1

    move v14, v10

    aput v14, v12, v13

    .line 279
    const/4 v12, 0x1

    move v9, v12

    goto :goto_5

    .line 274
    :cond_d
    move-object v12, v4

    new-instance v13, Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move v15, v10

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v10

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v17, v3

    add-int v16, v16, v17

    move/from16 v17, v11

    invoke-direct/range {v14 .. v17}, Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;-><init>(IIZ)V

    invoke-interface {v12, v13}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_6

    .line 302
    .local v10, "selectedIndex":I
    .local v11, "newSelectionLead":I
    :cond_e
    move-object v12, v1

    move v13, v11

    invoke-virtual {v12, v13}, Ljavafx/scene/control/MultipleSelectionModelBase;->select(I)V

    goto/16 :goto_3
.end method

.method startAtomic()V
    .locals 5

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Ljavafx/scene/control/MultipleSelectionModelBase;->atomicityCount:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ljavafx/scene/control/MultipleSelectionModelBase;->atomicityCount:I

    .line 175
    return-void
.end method

.method stopAtomic()V
    .locals 8

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase;, "Ljavafx/scene/control/MultipleSelectionModelBase<TT;>;"
    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase;->atomicityCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Ljavafx/scene/control/MultipleSelectionModelBase;->atomicityCount:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Ljavafx/scene/control/MultipleSelectionModelBase;->atomicityCount:I

    .line 178
    return-void
.end method

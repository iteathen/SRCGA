.class Ljavafx/scene/control/ListView$ListViewFocusModel;
.super Ljavafx/scene/control/FocusModel;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListViewFocusModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/FocusModel",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private itemCount:I

.field private final itemsContentListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final itemsObserver:Ljavafx/beans/InvalidationListener;

.field private final listView:Ljavafx/scene/control/ListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/ListView",
            "<TT;>;"
        }
    .end annotation
.end field

.field private weakItemsContentListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/control/ListView;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ListView",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1492
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$ListViewFocusModel;, "Ljavafx/scene/control/ListView$ListViewFocusModel<TT;>;"
    move-object v1, p1

    .local v1, "listView":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/FocusModel;-><init>()V

    .line 1490
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Ljavafx/scene/control/ListView$ListViewFocusModel;->itemCount:I

    .line 1534
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/ListView$ListViewFocusModel$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/ListView$ListViewFocusModel;)Ljavafx/collections/ListChangeListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/ListView$ListViewFocusModel;->itemsContentListener:Ljavafx/collections/ListChangeListener;

    .line 1564
    move-object v2, v0

    new-instance v3, Ljavafx/collections/WeakListChangeListener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ListView$ListViewFocusModel;->itemsContentListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v4, v5}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v3, v2, Ljavafx/scene/control/ListView$ListViewFocusModel;->weakItemsContentListener:Ljavafx/collections/WeakListChangeListener;

    .line 1493
    move-object v2, v1

    if-nez v2, :cond_0

    .line 1494
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "ListView can not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1497
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ListView$ListViewFocusModel;->listView:Ljavafx/scene/control/ListView;

    .line 1499
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ListView$ListViewFocusModel$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/ListView$ListViewFocusModel$1;-><init>(Ljavafx/scene/control/ListView$ListViewFocusModel;Ljavafx/scene/control/ListView;)V

    iput-object v3, v2, Ljavafx/scene/control/ListView$ListViewFocusModel;->itemsObserver:Ljavafx/beans/InvalidationListener;

    .line 1508
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ListView$ListViewFocusModel;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    new-instance v3, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ListView$ListViewFocusModel;->itemsObserver:Ljavafx/beans/InvalidationListener;

    invoke-direct {v4, v5}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 1509
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1510
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ListView$ListViewFocusModel;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ListView$ListViewFocusModel;->weakItemsContentListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 1513
    :cond_1
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ListView$ListViewFocusModel;->updateItemCount()V

    .line 1515
    move-object v2, v0

    iget v2, v2, Ljavafx/scene/control/ListView$ListViewFocusModel;->itemCount:I

    if-lez v2, :cond_2

    .line 1516
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ListView$ListViewFocusModel;->focus(I)V

    .line 1518
    :cond_2
    return-void
.end method

.method static synthetic access$1700(Ljavafx/scene/control/ListView$ListViewFocusModel;Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V
    .locals 6

    .prologue
    .line 1487
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListView$ListViewFocusModel;
    move-object v1, p1

    .local v1, "x1":Ljavafx/collections/ObservableList;
    move-object v2, p2

    .local v2, "x2":Ljavafx/collections/ObservableList;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/ListView$ListViewFocusModel;->updateItemsObserver(Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/ListView$ListViewFocusModel;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ListView$ListViewFocusModel;->lambda$new$157(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private isEmpty()Z
    .locals 3

    .prologue
    .line 1579
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$ListViewFocusModel;, "Ljavafx/scene/control/ListView$ListViewFocusModel<TT;>;"
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/ListView$ListViewFocusModel;->itemCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView$ListViewFocusModel;, "Ljavafx/scene/control/ListView$ListViewFocusModel<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/ListView$ListViewFocusModel;, "Ljavafx/scene/control/ListView$ListViewFocusModel<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private synthetic lambda$new$157(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 11

    .prologue
    .line 1535
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$ListViewFocusModel;, "Ljavafx/scene/control/ListView$ListViewFocusModel<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/control/ListView$ListViewFocusModel;->updateItemCount()V

    .line 1537
    :goto_0
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1539
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v7

    move v2, v7

    .line 1540
    .local v2, "from":I
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/ListView$ListViewFocusModel;->getFocusedIndex()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    move v7, v2

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/ListView$ListViewFocusModel;->getFocusedIndex()I

    move-result v8

    if-le v7, v8, :cond_1

    .line 1541
    .line 1562
    .end local v2    # "from":I
    :cond_0
    :goto_1
    return-void

    .line 1544
    .restart local v2    # "from":I
    :cond_1
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 1545
    const/4 v7, 0x0

    move v3, v7

    .line 1546
    .local v3, "added":Z
    const/4 v7, 0x0

    move v4, v7

    .line 1547
    .local v4, "removed":Z
    const/4 v7, 0x0

    move v5, v7

    .line 1548
    .local v5, "addedSize":I
    const/4 v7, 0x0

    move v6, v7

    .line 1549
    .local v6, "removedSize":I
    :goto_2
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1550
    move v7, v3

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v8

    or-int/2addr v7, v8

    move v3, v7

    .line 1551
    move v7, v4

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v8

    or-int/2addr v7, v8

    move v4, v7

    .line 1552
    move v7, v5

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getAddedSize()I

    move-result v8

    add-int/2addr v7, v8

    move v5, v7

    .line 1553
    move v7, v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v8

    add-int/2addr v7, v8

    move v6, v7

    goto :goto_2

    .line 1556
    :cond_2
    move v7, v3

    if-eqz v7, :cond_4

    move v7, v4

    if-nez v7, :cond_4

    .line 1557
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/ListView$ListViewFocusModel;->getItemCount()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/ListView$ListViewFocusModel;->getFocusedIndex()I

    move-result v9

    move v10, v5

    add-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v7, v8}, Ljavafx/scene/control/ListView$ListViewFocusModel;->focus(I)V

    .line 1561
    :cond_3
    :goto_3
    goto :goto_0

    .line 1558
    :cond_4
    move v7, v3

    if-nez v7, :cond_3

    move v7, v4

    if-eqz v7, :cond_3

    .line 1559
    move-object v7, v0

    const/4 v8, 0x0

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/ListView$ListViewFocusModel;->getFocusedIndex()I

    move-result v9

    move v10, v6

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v7, v8}, Ljavafx/scene/control/ListView$ListViewFocusModel;->focus(I)V

    goto :goto_3

    .line 1562
    .end local v2    # "from":I
    .end local v3    # "added":Z
    .end local v4    # "removed":Z
    .end local v5    # "addedSize":I
    .end local v6    # "removedSize":I
    :cond_5
    goto :goto_1
.end method

.method private updateItemCount()V
    .locals 4

    .prologue
    .line 1583
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$ListViewFocusModel;, "Ljavafx/scene/control/ListView$ListViewFocusModel<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ListView$ListViewFocusModel;->listView:Ljavafx/scene/control/ListView;

    if-nez v2, :cond_0

    .line 1584
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Ljavafx/scene/control/ListView$ListViewFocusModel;->itemCount:I

    .line 1589
    :goto_0
    return-void

    .line 1586
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ListView$ListViewFocusModel;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v1, v2

    .line 1587
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_1

    const/4 v3, -0x1

    :goto_1
    iput v3, v2, Ljavafx/scene/control/ListView$ListViewFocusModel;->itemCount:I

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
            "<TT;>;",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1524
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$ListViewFocusModel;, "Ljavafx/scene/control/ListView$ListViewFocusModel<TT;>;"
    move-object v1, p1

    .local v1, "oldList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, p2

    .local v2, "newList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ListView$ListViewFocusModel;->weakItemsContentListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 1525
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ListView$ListViewFocusModel;->weakItemsContentListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 1527
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/ListView$ListViewFocusModel;->updateItemCount()V

    .line 1528
    return-void
.end method


# virtual methods
.method protected getItemCount()I
    .locals 2

    .prologue
    .line 1568
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$ListViewFocusModel;, "Ljavafx/scene/control/ListView$ListViewFocusModel<TT;>;"
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/ListView$ListViewFocusModel;->itemCount:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView$ListViewFocusModel;, "Ljavafx/scene/control/ListView$ListViewFocusModel<TT;>;"
    return v0
.end method

.method protected getModelItem(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1572
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$ListViewFocusModel;, "Ljavafx/scene/control/ListView$ListViewFocusModel<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ListView$ListViewFocusModel;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 1575
    .end local v0    # "this":Ljavafx/scene/control/ListView$ListViewFocusModel;, "Ljavafx/scene/control/ListView$ListViewFocusModel<TT;>;"
    :goto_0
    return-object v0

    .line 1573
    .restart local v0    # "this":Ljavafx/scene/control/ListView$ListViewFocusModel;, "Ljavafx/scene/control/ListView$ListViewFocusModel<TT;>;"
    :cond_0
    move v2, v1

    if-ltz v2, :cond_1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/ListView$ListViewFocusModel;->itemCount:I

    if-lt v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 1575
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ListView$ListViewFocusModel;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

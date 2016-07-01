.class Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;
.super Ljavafx/scene/control/MultipleSelectionModelBase;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListViewBitSetSelectionModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/MultipleSelectionModelBase",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private itemCount:I

.field private final itemsContentObserver:Ljavafx/collections/ListChangeListener;
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

.field private previousModelSize:I

.field private weakItemsContentObserver:Ljavafx/collections/WeakListChangeListener;
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
    .line 1172
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;, "Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel<TT;>;"
    move-object v1, p1

    .local v1, "listView":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/MultipleSelectionModelBase;-><init>()V

    .line 1209
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;-><init>(Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;)V

    iput-object v3, v2, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->itemsContentObserver:Ljavafx/collections/ListChangeListener;

    .line 1252
    move-object v2, v0

    new-instance v3, Ljavafx/collections/WeakListChangeListener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->itemsContentObserver:Ljavafx/collections/ListChangeListener;

    invoke-direct {v4, v5}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v3, v2, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->weakItemsContentObserver:Ljavafx/collections/WeakListChangeListener;

    .line 1266
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->itemCount:I

    .line 1268
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->previousModelSize:I

    .line 1173
    move-object v2, v1

    if-nez v2, :cond_0

    .line 1174
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "ListView can not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1177
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->listView:Ljavafx/scene/control/ListView;

    .line 1188
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$1;-><init>(Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;Ljavafx/scene/control/ListView;)V

    iput-object v3, v2, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->itemsObserver:Ljavafx/beans/InvalidationListener;

    .line 1198
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    new-instance v3, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->itemsObserver:Ljavafx/beans/InvalidationListener;

    invoke-direct {v4, v5}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 1199
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1200
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->weakItemsContentObserver:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 1203
    :cond_1
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->updateItemCount()V

    .line 1205
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->updateDefaultSelection()V

    .line 1206
    return-void
.end method

.method static synthetic access$1200(Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V
    .locals 6

    .prologue
    .line 1164
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;
    move-object v1, p1

    .local v1, "x1":Ljavafx/collections/ObservableList;
    move-object v2, p2

    .local v2, "x2":Ljavafx/collections/ObservableList;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->updateItemsObserver(Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V

    return-void
.end method

.method static synthetic access$1300(Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;)V
    .locals 2

    .prologue
    .line 1164
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->updateItemCount()V

    return-void
.end method

.method static synthetic access$1400(Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;)Ljavafx/scene/control/ListView;
    .locals 2

    .prologue
    .line 1164
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->listView:Ljavafx/scene/control/ListView;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;
    return-object v0
.end method

.method static synthetic access$1500(Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    .prologue
    .line 1164
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;
    move-object v1, p1

    .local v1, "x1":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->updateSelection(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private updateDefaultSelection()V
    .locals 6

    .prologue
    .line 1462
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;, "Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel<TT;>;"
    const/4 v4, -0x1

    move v1, v4

    .line 1463
    .local v1, "newSelectionIndex":I
    const/4 v4, -0x1

    move v2, v4

    .line 1464
    .local v2, "newFocusIndex":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v4}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1465
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 1466
    .local v3, "selectedItem":Ljava/lang/Object;, "TT;"
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 1467
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v4}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move v1, v4

    .line 1468
    move v4, v1

    move v2, v4

    .line 1473
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->listView:Ljavafx/scene/control/ListView;

    invoke-static {v4}, Ljavafx/scene/control/ListView;->access$1600(Ljavafx/scene/control/ListView;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 1474
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v4}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 1478
    .end local v3    # "selectedItem":Ljava/lang/Object;, "TT;"
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->clearSelection()V

    .line 1479
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->select(I)V

    .line 1480
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->focus(I)V

    .line 1481
    return-void

    .line 1474
    .restart local v3    # "selectedItem":Ljava/lang/Object;, "TT;"
    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private updateItemCount()V
    .locals 4

    .prologue
    .line 1438
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;, "Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->listView:Ljavafx/scene/control/ListView;

    if-nez v2, :cond_0

    .line 1439
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->itemCount:I

    .line 1444
    :goto_0
    return-void

    .line 1441
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v1, v2

    .line 1442
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_1

    const/4 v3, -0x1

    :goto_1
    iput v3, v2, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->itemCount:I

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
    .line 1448
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;, "Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel<TT;>;"
    move-object v1, p1

    .local v1, "oldList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, p2

    .local v2, "newList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 1449
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->weakItemsContentObserver:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 1451
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 1452
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->weakItemsContentObserver:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 1455
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->updateItemCount()V

    .line 1456
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->updateDefaultSelection()V

    .line 1457
    return-void
.end method

.method private updateSelection(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1290
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;, "Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel<TT;>;"
    move-object/from16 v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TT;>;"
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 1292
    const/4 v10, 0x0

    move v2, v10

    .line 1293
    .local v2, "shift":I
    :cond_0
    :goto_0
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1294
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->wasReplaced()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1295
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v10

    invoke-interface {v10}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1297
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->clearSelection()V

    goto :goto_0

    .line 1299
    :cond_1
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->getSelectedIndex()I

    move-result v10

    move v3, v10

    .line 1301
    .local v3, "index":I
    move-object v10, v0

    iget v10, v10, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->previousModelSize:I

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v11

    if-ne v10, v11, :cond_2

    .line 1303
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->clearSelection()V

    .line 1315
    :goto_1
    goto :goto_0

    .line 1304
    :cond_2
    move v10, v3

    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->getItemCount()I

    move-result v11

    if-ge v10, v11, :cond_3

    move v10, v3

    if-ltz v10, :cond_3

    .line 1307
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->startAtomic()V

    .line 1308
    move-object v10, v0

    move v11, v3

    invoke-virtual {v10, v11}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->clearSelection(I)V

    .line 1309
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->stopAtomic()V

    .line 1310
    move-object v10, v0

    move v11, v3

    invoke-virtual {v10, v11}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->select(I)V

    goto :goto_1

    .line 1313
    :cond_3
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->clearSelection()V

    goto :goto_1

    .line 1316
    .end local v3    # "index":I
    :cond_4
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v10

    if-nez v10, :cond_5

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1317
    :cond_5
    move v10, v2

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v11

    if-eqz v11, :cond_6

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/collections/ListChangeListener$Change;->getAddedSize()I

    move-result v11

    :goto_2
    add-int/2addr v10, v11

    move v2, v10

    goto :goto_0

    :cond_6
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v11

    neg-int v11, v11

    goto :goto_2

    .line 1318
    :cond_7
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1332
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v10

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v11

    sub-int/2addr v10, v11

    move v3, v10

    .line 1333
    .local v3, "length":I
    new-instance v10, Ljava/util/HashMap;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move v12, v3

    invoke-direct {v11, v12}, Ljava/util/HashMap;-><init>(I)V

    move-object v4, v10

    .line 1334
    .local v4, "pMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v10

    move v5, v10

    .local v5, "i":I
    :goto_3
    move v10, v5

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v11

    if-ge v10, v11, :cond_8

    .line 1335
    move-object v10, v4

    move v11, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v12, v1

    move v13, v5

    invoke-virtual {v12, v13}, Ljavafx/collections/ListChangeListener$Change;->getPermutation(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1334
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1339
    :cond_8
    new-instance v10, Ljava/util/ArrayList;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v10

    .line 1343
    .local v5, "selectedIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->clearSelection()V

    .line 1346
    new-instance v10, Ljava/util/ArrayList;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v12

    invoke-interface {v12}, Ljavafx/collections/ObservableList;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v10

    .line 1349
    .local v6, "newIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    :goto_4
    move v10, v7

    move-object v11, v5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_a

    .line 1350
    move-object v10, v5

    move v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v8, v10

    .line 1352
    .local v8, "oldIndex":I
    move-object v10, v4

    move v11, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1353
    move-object v10, v4

    move v11, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    move-object v9, v10

    .line 1354
    .local v9, "newIndex":Ljava/lang/Integer;
    move-object v10, v6

    move-object v11, v9

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 1349
    .end local v9    # "newIndex":Ljava/lang/Integer;
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1359
    .end local v8    # "oldIndex":I
    :cond_a
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b

    .line 1360
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c

    .line 1361
    move-object v10, v0

    move-object v11, v6

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->select(I)V

    .line 1370
    .end local v7    # "i":I
    :cond_b
    :goto_5
    goto/16 :goto_0

    .line 1363
    .restart local v7    # "i":I
    :cond_c
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    new-array v10, v10, [I

    move-object v7, v10

    .line 1364
    .local v7, "ints":[I
    const/4 v10, 0x0

    move v8, v10

    .local v8, "i":I
    :goto_6
    move v10, v8

    move-object v11, v6

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    if-ge v10, v11, :cond_d

    .line 1365
    move-object v10, v7

    move v11, v8

    move-object v12, v6

    move v13, v8

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v10, v11

    .line 1364
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1367
    :cond_d
    move-object v10, v0

    move-object v11, v6

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object v12, v7

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->selectIndices(I[I)V

    goto :goto_5

    .line 1373
    .end local v3    # "length":I
    .end local v4    # "pMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "selectedIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "newIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "ints":[I
    .end local v8    # "i":I
    :cond_e
    move v10, v2

    if-eqz v10, :cond_f

    .line 1374
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v11

    move v12, v2

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->shiftSelection(IILjavafx/util/Callback;)V

    .line 1377
    :cond_f
    move-object v10, v0

    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->getItemCount()I

    move-result v11

    iput v11, v10, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->previousModelSize:I

    .line 1378
    return-void
.end method


# virtual methods
.method public clearAndSelect(I)V
    .locals 5

    .prologue
    .line 1399
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;, "Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel<TT;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->listView:Ljavafx/scene/control/ListView;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;->setAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;Z)V

    .line 1400
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->clearAndSelect(I)V

    .line 1401
    return-void
.end method

.method protected focus(I)V
    .locals 4

    .prologue
    .line 1405
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;, "Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel<TT;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1409
    :goto_0
    return-void

    .line 1406
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 1408
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->listView:Ljavafx/scene/control/ListView;

    sget-object v3, Ljavafx/scene/AccessibleAttribute;->FOCUS_ITEM:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ListView;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 1409
    goto :goto_0
.end method

.method protected getFocusedIndex()I
    .locals 2

    .prologue
    .line 1413
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;, "Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v1}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    move v0, v1

    .line 1414
    .end local v0    # "this":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;, "Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel<TT;>;"
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;, "Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v1}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method protected getItemCount()I
    .locals 2

    .prologue
    .line 1418
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;, "Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel<TT;>;"
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->itemCount:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;, "Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel<TT;>;"
    return v0
.end method

.method protected getModelItem(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1422
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;, "Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v2, v3

    .line 1423
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 1426
    .end local v0    # "this":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;, "Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel<TT;>;"
    :goto_0
    return-object v0

    .line 1424
    .restart local v0    # "this":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;, "Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel<TT;>;"
    :cond_0
    move v3, v1

    if-ltz v3, :cond_1

    move v3, v1

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->itemCount:I

    if-lt v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 1426
    :cond_2
    move-object v3, v2

    move v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public selectAll()V
    .locals 5

    .prologue
    .line 1392
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;, "Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->listView:Ljavafx/scene/control/ListView;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;->getAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v1, v2

    .line 1393
    .local v1, "anchor":I
    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/control/MultipleSelectionModelBase;->selectAll()V

    .line 1394
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->listView:Ljavafx/scene/control/ListView;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;->setAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;Z)V

    .line 1395
    return-void
.end method

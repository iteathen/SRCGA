.class Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;
.super Ljavafx/scene/control/MultipleSelectionModelBase;
.source "TreeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TreeViewBitSetSelectionModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/MultipleSelectionModelBase",
        "<",
        "Ljavafx/scene/control/TreeItem",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private rootPropertyListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private treeItemListener:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private treeView:Ljavafx/scene/control/TreeView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeView",
            "<TT;>;"
        }
    .end annotation
.end field

.field private weakRootPropertyListener:Ljavafx/beans/value/WeakChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/WeakChangeListener",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private weakTreeItemListener:Ljavafx/event/WeakEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/WeakEventHandler",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TreeView;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1246
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    move-object v1, p1

    .local v1, "treeView":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/MultipleSelectionModelBase;-><init>()V

    .line 1236
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    .line 1273
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->rootPropertyListener:Ljavafx/beans/value/ChangeListener;

    .line 1278
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;)Ljavafx/event/EventHandler;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeItemListener:Ljavafx/event/EventHandler;

    .line 1408
    move-object v2, v0

    new-instance v3, Ljavafx/beans/value/WeakChangeListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->rootPropertyListener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v4, v5}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    iput-object v3, v2, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->weakRootPropertyListener:Ljavafx/beans/value/WeakChangeListener;

    .line 1247
    move-object v2, v1

    if-nez v2, :cond_0

    .line 1248
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "TreeView can not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1251
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    .line 1252
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->rootProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->weakRootPropertyListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 1253
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->showRootProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;Ljavafx/scene/control/TreeView;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 1257
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->updateTreeEventListener(Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V

    .line 1259
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->updateDefaultSelection()V

    .line 1260
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->lambda$new$259(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->lambda$new$260(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;Ljavafx/scene/control/TreeView;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->lambda$new$258(Ljavafx/scene/control/TreeView;Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$new$258(Ljavafx/scene/control/TreeView;Ljavafx/beans/Observable;)V
    .locals 7

    .prologue
    .line 1254
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    move-object v1, p1

    .local v1, "treeView":Ljavafx/scene/control/TreeView;
    move-object v2, p2

    .local v2, "o":Ljavafx/beans/Observable;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TreeView;->isShowRoot()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->shiftSelection(IILjavafx/util/Callback;)V

    .line 1255
    return-void

    .line 1254
    :cond_0
    const/4 v5, -0x1

    goto :goto_0
.end method

.method private synthetic lambda$new$259(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V
    .locals 7

    .prologue
    .line 1274
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljavafx/scene/control/TreeItem;
    move-object v3, p3

    .local v3, "newValue":Ljavafx/scene/control/TreeItem;
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->updateDefaultSelection()V

    .line 1275
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->updateTreeEventListener(Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V

    .line 1276
    return-void
.end method

.method private synthetic lambda$new$260(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V
    .locals 26

    .prologue
    .line 1279
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    move-object/from16 v3, p1

    .local v3, "e":Ljavafx/scene/control/TreeItem$TreeModificationEvent;
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->getSelectedIndex()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_0

    .line 1406
    :goto_0
    return-void

    .line 1281
    :cond_0
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v19

    move-object/from16 v4, v19

    .line 1282
    .local v4, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object/from16 v19, v4

    if-nez v19, :cond_1

    goto :goto_0

    .line 1284
    :cond_1
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Ljavafx/scene/control/TreeView;->access$202(Ljavafx/scene/control/TreeView;Z)Z

    move-result v19

    .line 1288
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Ljavafx/scene/control/TreeView;->getRow(Ljavafx/scene/control/TreeItem;)I

    move-result v19

    move/from16 v5, v19

    .line 1290
    .local v5, "startRow":I
    const/16 v19, 0x0

    move/from16 v6, v19

    .line 1291
    .local v6, "shift":I
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getChange()Ljavafx/collections/ListChangeListener$Change;

    move-result-object v19

    move-object/from16 v7, v19

    .line 1292
    .local v7, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljavafx/scene/control/TreeItem<*>;>;"
    move-object/from16 v19, v7

    if-eqz v19, :cond_2

    .line 1293
    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v19

    .line 1297
    :cond_2
    move-object/from16 v19, v7

    if-nez v19, :cond_7

    const/16 v19, 0x0

    :goto_1
    move/from16 v8, v19

    .line 1298
    .local v8, "addedSize":I
    move-object/from16 v19, v7

    if-nez v19, :cond_8

    const/16 v19, 0x0

    :goto_2
    move/from16 v9, v19

    .line 1300
    .local v9, "removedSize":I
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasExpanded()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1302
    move/from16 v19, v6

    move-object/from16 v20, v4

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/control/TreeItem;->getExpandedDescendentCount(Z)I

    move-result v20

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    add-int v19, v19, v20

    move/from16 v6, v19

    .line 1303
    add-int/lit8 v5, v5, 0x1

    .line 1396
    :cond_3
    :goto_3
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getChange()Ljavafx/collections/ListChangeListener$Change;

    move-result-object v19

    if-eqz v19, :cond_4

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getChange()Ljavafx/collections/ListChangeListener$Change;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v19

    if-nez v19, :cond_2

    .line 1398
    :cond_4
    move-object/from16 v19, v2

    move/from16 v20, v5

    move/from16 v21, v6

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->shiftSelection(IILjavafx/util/Callback;)V

    .line 1400
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasAdded()Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasRemoved()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1401
    :cond_5
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->getAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    move-object/from16 v8, v19

    .line 1402
    .local v8, "anchor":Ljava/lang/Integer;
    move-object/from16 v19, v8

    if-eqz v19, :cond_6

    move-object/from16 v19, v2

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v21, v6

    add-int v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->isSelected(I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1403
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    move-object/from16 v19, v0

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v21, v6

    add-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->setAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;Z)V

    .line 1406
    .end local v8    # "anchor":Ljava/lang/Integer;
    :cond_6
    goto/16 :goto_0

    .line 1297
    .end local v9    # "removedSize":I
    :cond_7
    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Ljavafx/collections/ListChangeListener$Change;->getAddedSize()I

    move-result v19

    goto/16 :goto_1

    .line 1298
    .local v8, "addedSize":I
    :cond_8
    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v19

    goto/16 :goto_2

    .line 1304
    .restart local v9    # "removedSize":I
    :cond_9
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasCollapsed()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1308
    move-object/from16 v19, v4

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljavafx/scene/control/TreeItem;->getExpandedDescendentCount(Z)I

    move-result v19

    .line 1309
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/scene/control/TreeItem;->previousExpandedDescendentCount:I

    move/from16 v19, v0

    move/from16 v10, v19

    .line 1311
    .local v10, "count":I
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->getSelectedIndex()I

    move-result v19

    move/from16 v11, v19

    .line 1312
    .local v11, "selectedIndex":I
    move/from16 v19, v11

    move/from16 v20, v5

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_b

    move/from16 v19, v11

    move/from16 v20, v5

    move/from16 v21, v10

    add-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    const/16 v19, 0x1

    :goto_4
    move/from16 v12, v19

    .line 1316
    .local v12, "wasPrimarySelectionInChild":Z
    const/16 v19, 0x0

    move/from16 v13, v19

    .line 1318
    .local v13, "wasAnyChildSelected":Z
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->startAtomic()V

    .line 1319
    move/from16 v19, v5

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v14, v19

    .line 1320
    .local v14, "from":I
    move/from16 v19, v5

    move/from16 v20, v10

    add-int v19, v19, v20

    move/from16 v15, v19

    .line 1321
    .local v15, "to":I
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v19

    .line 1322
    .local v16, "removed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v19, v14

    move/from16 v17, v19

    .local v17, "i":I
    :goto_5
    move/from16 v19, v17

    move/from16 v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    .line 1323
    move-object/from16 v19, v2

    move/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->isSelected(I)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1324
    const/16 v19, 0x1

    move/from16 v13, v19

    .line 1325
    move-object/from16 v19, v2

    move/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->clearSelection(I)V

    .line 1326
    move-object/from16 v19, v16

    move/from16 v20, v17

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v19

    .line 1322
    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 1312
    .end local v12    # "wasPrimarySelectionInChild":Z
    .end local v13    # "wasAnyChildSelected":Z
    .end local v14    # "from":I
    .end local v15    # "to":I
    .end local v16    # "removed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "i":I
    :cond_b
    const/16 v19, 0x0

    goto :goto_4

    .line 1329
    .restart local v12    # "wasPrimarySelectionInChild":Z
    .restart local v13    # "wasAnyChildSelected":Z
    .restart local v14    # "from":I
    .restart local v15    # "to":I
    .restart local v16    # "removed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17    # "i":I
    :cond_c
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->stopAtomic()V

    .line 1332
    move/from16 v19, v12

    if-eqz v19, :cond_d

    move/from16 v19, v13

    if-eqz v19, :cond_d

    .line 1333
    move-object/from16 v19, v2

    move/from16 v20, v5

    invoke-virtual/range {v19 .. v20}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->select(I)V

    .line 1342
    .end local v17    # "i":I
    :goto_6
    move/from16 v19, v6

    move/from16 v20, v10

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    add-int v19, v19, v20

    move/from16 v6, v19

    .line 1343
    add-int/lit8 v5, v5, 0x1

    .line 1344
    goto/16 :goto_3

    .line 1337
    .restart local v17    # "i":I
    :cond_d
    new-instance v19, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move/from16 v21, v14

    move/from16 v22, v14

    move-object/from16 v23, v16

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object/from16 v24, v0

    invoke-direct/range {v20 .. v24}, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;-><init>(IILjava/util/List;Ljavafx/collections/ObservableList;)V

    move-object/from16 v17, v19

    .line 1339
    .local v17, "newChange":Ljavafx/collections/ListChangeListener$Change;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object/from16 v19, v0

    move-object/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    goto :goto_6

    .line 1344
    .end local v10    # "count":I
    .end local v11    # "selectedIndex":I
    .end local v12    # "wasPrimarySelectionInChild":Z
    .end local v13    # "wasAnyChildSelected":Z
    .end local v14    # "from":I
    .end local v15    # "to":I
    .end local v16    # "removed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "newChange":Ljavafx/collections/ListChangeListener$Change;
    :cond_e
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasPermutated()Z

    move-result v19

    if-eqz v19, :cond_f

    goto/16 :goto_3

    .line 1346
    :cond_f
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasAdded()Z

    move-result v19

    if-eqz v19, :cond_11

    .line 1348
    move/from16 v19, v6

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v20

    if-eqz v20, :cond_10

    move/from16 v20, v8

    :goto_7
    add-int v19, v19, v20

    move/from16 v6, v19

    .line 1356
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getChange()Ljavafx/collections/ListChangeListener$Change;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/control/TreeItem;

    invoke-virtual/range {v19 .. v20}, Ljavafx/scene/control/TreeView;->getRow(Ljavafx/scene/control/TreeItem;)I

    move-result v19

    move/from16 v5, v19

    goto/16 :goto_3

    .line 1348
    :cond_10
    const/16 v20, 0x0

    goto :goto_7

    .line 1357
    :cond_11
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasRemoved()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1359
    move/from16 v19, v6

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v20

    if-eqz v20, :cond_12

    move/from16 v20, v9

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    :goto_8
    add-int v19, v19, v20

    move/from16 v6, v19

    .line 1366
    move/from16 v19, v5

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getFrom()I

    move-result v20

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    add-int v19, v19, v20

    move/from16 v5, v19

    .line 1371
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v19

    move-object/from16 v10, v19

    .line 1372
    .local v10, "selectedIndices1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->getSelectedIndex()I

    move-result v19

    move/from16 v11, v19

    .line 1373
    .restart local v11    # "selectedIndex":I
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->getSelectedItems()Ljavafx/collections/ObservableList;

    move-result-object v19

    move-object/from16 v12, v19

    .line 1374
    .local v12, "selectedItems":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljavafx/scene/control/TreeItem;

    move-object/from16 v13, v19

    .line 1375
    .local v13, "selectedItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getChange()Ljavafx/collections/ListChangeListener$Change;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v19

    move-object/from16 v14, v19

    .line 1377
    .local v14, "removedChildren":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TreeItem<TT;>;>;"
    const/16 v19, 0x0

    move/from16 v15, v19

    .local v15, "i":I
    :goto_9
    move/from16 v19, v15

    move-object/from16 v20, v10

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    move-object/from16 v19, v12

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_3

    .line 1378
    move-object/from16 v19, v10

    move/from16 v20, v15

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v16, v19

    .line 1379
    .local v16, "index":I
    move/from16 v19, v16

    move-object/from16 v20, v12

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_13

    goto/16 :goto_3

    .line 1359
    .end local v10    # "selectedIndices1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "selectedIndex":I
    .end local v12    # "selectedItems":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeItem<TT;>;>;"
    .end local v13    # "selectedItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    .end local v14    # "removedChildren":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TreeItem<TT;>;>;"
    .end local v15    # "i":I
    .end local v16    # "index":I
    :cond_12
    const/16 v20, 0x0

    goto :goto_8

    .line 1381
    .restart local v10    # "selectedIndices1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "selectedIndex":I
    .restart local v12    # "selectedItems":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeItem<TT;>;>;"
    .restart local v13    # "selectedItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    .restart local v14    # "removedChildren":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TreeItem<TT;>;>;"
    .restart local v15    # "i":I
    .restart local v16    # "index":I
    :cond_13
    move-object/from16 v19, v14

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    move-object/from16 v19, v12

    .line 1382
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    move-object/from16 v19, v13

    if-eqz v19, :cond_14

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    const/16 v21, 0x0

    .line 1384
    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 1386
    move/from16 v19, v11

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->getItemCount()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_14

    .line 1387
    move/from16 v19, v11

    if-nez v19, :cond_15

    const/16 v19, 0x0

    :goto_a
    move/from16 v17, v19

    .line 1388
    .local v17, "previousRow":I
    move-object/from16 v19, v2

    move/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->getModelItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v19

    move-object/from16 v18, v19

    .line 1389
    .local v18, "newSelectedItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object/from16 v19, v13

    move-object/from16 v20, v18

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_14

    .line 1390
    move-object/from16 v19, v2

    move-object/from16 v20, v18

    invoke-virtual/range {v19 .. v20}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->select(Ljavafx/scene/control/TreeItem;)V

    .line 1377
    .end local v17    # "previousRow":I
    .end local v18    # "newSelectedItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_14
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_9

    .line 1387
    :cond_15
    move/from16 v19, v11

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    goto :goto_a
.end method

.method private updateDefaultSelection()V
    .locals 3

    .prologue
    .line 1525
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->clearSelection()V

    .line 1529
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->getItemCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->focus(I)V

    .line 1530
    return-void

    .line 1529
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private updateTreeEventListener(Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1263
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    move-object v1, p1

    .local v1, "oldRoot":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v2, p2

    .local v2, "newRoot":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->weakTreeItemListener:Ljavafx/event/WeakEventHandler;

    if-eqz v3, :cond_0

    .line 1264
    move-object v3, v1

    invoke-static {}, Ljavafx/scene/control/TreeItem;->expandedItemCountChangeEvent()Ljavafx/event/EventType;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->weakTreeItemListener:Ljavafx/event/WeakEventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeItem;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1267
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 1268
    move-object v3, v0

    new-instance v4, Ljavafx/event/WeakEventHandler;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeItemListener:Ljavafx/event/EventHandler;

    invoke-direct {v5, v6}, Ljavafx/event/WeakEventHandler;-><init>(Ljavafx/event/EventHandler;)V

    iput-object v4, v3, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->weakTreeItemListener:Ljavafx/event/WeakEventHandler;

    .line 1269
    move-object v3, v2

    invoke-static {}, Ljavafx/scene/control/TreeItem;->expandedItemCountChangeEvent()Ljavafx/event/EventType;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->weakTreeItemListener:Ljavafx/event/WeakEventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeItem;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1271
    :cond_1
    return-void
.end method


# virtual methods
.method public clearAndSelect(I)V
    .locals 5

    .prologue
    .line 1475
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->setAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;Z)V

    .line 1476
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->clearAndSelect(I)V

    .line 1477
    return-void
.end method

.method protected focus(I)V
    .locals 4

    .prologue
    .line 1488
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    move v1, p1

    .local v1, "itemIndex":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1489
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 1493
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    sget-object v3, Ljavafx/scene/AccessibleAttribute;->FOCUS_ITEM:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeView;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 1494
    return-void
.end method

.method protected getFocusedIndex()I
    .locals 2

    .prologue
    .line 1498
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    move v0, v1

    .line 1499
    .end local v0    # "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method protected getItemCount()I
    .locals 2

    .prologue
    .line 1504
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeView;->getExpandedItemCount()I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic getModelItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->getModelItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    return-object v0
.end method

.method public getModelItem(I)Ljavafx/scene/control/TreeItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1509
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 1513
    .end local v0    # "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    :goto_0
    return-object v0

    .line 1511
    .restart local v0    # "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    :cond_0
    move v2, v1

    if-ltz v2, :cond_1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getExpandedItemCount()I

    move-result v3

    if-lt v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 1513
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeView;->getTreeItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic select(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeItem;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->select(Ljavafx/scene/control/TreeItem;)V

    return-void
.end method

.method public select(Ljavafx/scene/control/TreeItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1434
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    move-object v1, p1

    .local v1, "obj":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, v1

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v3, v4, :cond_0

    .line 1435
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->clearSelection()V

    .line 1436
    .line 1471
    :goto_0
    return-void

    .line 1443
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 1444
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    move-object v2, v3

    .line 1445
    .local v2, "item":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    :goto_1
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 1446
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeItem;->setExpanded(Z)V

    .line 1447
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    move-object v2, v3

    goto :goto_1

    .line 1453
    .end local v2    # "item":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v4

    invoke-static {v3, v4}, Ljavafx/scene/control/TreeView;->access$400(Ljavafx/scene/control/TreeView;Ljavafx/scene/control/TreeItem;)V

    .line 1458
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeView;->getRow(Ljavafx/scene/control/TreeItem;)I

    move-result v3

    move v2, v3

    .line 1460
    .local v2, "row":I
    move v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1466
    move-object v3, v0

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->setSelectedIndex(I)V

    .line 1467
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->setSelectedItem(Ljava/lang/Object;)V

    .line 1471
    :goto_2
    goto :goto_0

    .line 1469
    :cond_2
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->select(I)V

    goto :goto_2
.end method

.method public selectAll()V
    .locals 5

    .prologue
    .line 1425
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;, "Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->getAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v1, v2

    .line 1426
    .local v1, "anchor":I
    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/control/MultipleSelectionModelBase;->selectAll()V

    .line 1427
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;->treeView:Ljavafx/scene/control/TreeView;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->setAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;Z)V

    .line 1428
    return-void
.end method

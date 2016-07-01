.class Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;
.super Ljava/lang/Object;
.source "TreeTableView.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
        "<TS;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)V
    .locals 4

    .prologue
    .line 2365
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 2365
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeItem$TreeModificationEvent;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->handle(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V

    return-void
.end method

.method public handle(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 2368
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;"
    move-object/from16 v3, p1

    .local v3, "e":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TS;>;"
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectedIndex()I

    move-result v25

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v25

    if-nez v25, :cond_0

    .line 2563
    :goto_0
    return-void

    .line 2370
    :cond_0
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v25

    move-object/from16 v4, v25

    .line 2371
    .local v4, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object/from16 v25, v4

    if-nez v25, :cond_1

    goto :goto_0

    .line 2373
    :cond_1
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectedIndex()I

    move-result v25

    move/from16 v5, v25

    .line 2374
    .local v5, "oldSelectedIndex":I
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavafx/scene/control/TreeItem;

    move-object/from16 v6, v25

    .line 2376
    .local v6, "oldSelectedItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->access$2500(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)Ljavafx/scene/control/TreeTableView;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Ljavafx/scene/control/TreeTableView;->access$1102(Ljavafx/scene/control/TreeTableView;Z)Z

    move-result v25

    .line 2380
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->access$2500(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)Ljavafx/scene/control/TreeTableView;

    move-result-object v25

    move-object/from16 v26, v4

    invoke-virtual/range {v25 .. v26}, Ljavafx/scene/control/TreeTableView;->getRow(Ljavafx/scene/control/TreeItem;)I

    move-result v25

    move/from16 v7, v25

    .line 2382
    .local v7, "startRow":I
    const/16 v25, 0x0

    move/from16 v8, v25

    .line 2383
    .local v8, "shift":I
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getChange()Ljavafx/collections/ListChangeListener$Change;

    move-result-object v25

    move-object/from16 v9, v25

    .line 2384
    .local v9, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljavafx/scene/control/TreeItem<*>;>;"
    move-object/from16 v25, v9

    if-eqz v25, :cond_2

    .line 2385
    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v25

    .line 2389
    :cond_2
    move-object/from16 v25, v9

    if-nez v25, :cond_5

    const/16 v25, 0x0

    :goto_1
    move/from16 v10, v25

    .line 2390
    .local v10, "addedSize":I
    move-object/from16 v25, v9

    if-nez v25, :cond_6

    const/16 v25, 0x0

    :goto_2
    move/from16 v11, v25

    .line 2392
    .local v11, "removedSize":I
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasExpanded()Z

    move-result v25

    if-eqz v25, :cond_7

    .line 2394
    move/from16 v25, v8

    move-object/from16 v26, v4

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/control/TreeItem;->getExpandedDescendentCount(Z)I

    move-result v26

    const/16 v27, 0x1

    add-int/lit8 v26, v26, -0x1

    add-int v25, v25, v26

    move/from16 v8, v25

    .line 2395
    add-int/lit8 v7, v7, 0x1

    .line 2527
    :cond_3
    :goto_3
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getChange()Ljavafx/collections/ListChangeListener$Change;

    move-result-object v25

    if-eqz v25, :cond_4

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getChange()Ljavafx/collections/ListChangeListener$Change;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v25

    if-nez v25, :cond_2

    .line 2529
    :cond_4
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    move/from16 v26, v7

    move/from16 v27, v8

    new-instance v28, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;

    move-object/from16 v31, v28

    move-object/from16 v28, v31

    move-object/from16 v29, v31

    move-object/from16 v30, v2

    invoke-direct/range {v29 .. v30}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;-><init>(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;)V

    invoke-virtual/range {v25 .. v28}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->shiftSelection(IILjavafx/util/Callback;)V

    .line 2563
    goto/16 :goto_0

    .line 2389
    .end local v10    # "addedSize":I
    .end local v11    # "removedSize":I
    :cond_5
    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Ljavafx/collections/ListChangeListener$Change;->getAddedSize()I

    move-result v25

    goto :goto_1

    .line 2390
    .restart local v10    # "addedSize":I
    :cond_6
    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v25

    goto :goto_2

    .line 2396
    .restart local v11    # "removedSize":I
    :cond_7
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasCollapsed()Z

    move-result v25

    if-eqz v25, :cond_11

    .line 2400
    move-object/from16 v25, v4

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljavafx/scene/control/TreeItem;->getExpandedDescendentCount(Z)I

    move-result v25

    .line 2401
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget v0, v0, Ljavafx/scene/control/TreeItem;->previousExpandedDescendentCount:I

    move/from16 v25, v0

    move/from16 v12, v25

    .line 2403
    .local v12, "count":I
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectedIndex()I

    move-result v25

    move/from16 v13, v25

    .line 2404
    .local v13, "selectedIndex":I
    move/from16 v25, v13

    move/from16 v26, v7

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_a

    move/from16 v25, v13

    move/from16 v26, v7

    move/from16 v27, v12

    add-int v26, v26, v27

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_a

    const/16 v25, 0x1

    :goto_4
    move/from16 v14, v25

    .line 2408
    .local v14, "wasPrimarySelectionInChild":Z
    const/16 v25, 0x0

    move/from16 v15, v25

    .line 2409
    .local v15, "wasAnyChildSelected":Z
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v25

    move/from16 v16, v25

    .line 2410
    .local v16, "isCellSelectionMode":Z
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v25

    move-object/from16 v17, v25

    .line 2412
    .local v17, "columns":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    move/from16 v25, v16

    if-nez v25, :cond_8

    .line 2413
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->startAtomic()V

    .line 2416
    :cond_8
    move/from16 v25, v7

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    move/from16 v18, v25

    .line 2417
    .local v18, "from":I
    move/from16 v25, v7

    move/from16 v26, v12

    add-int v25, v25, v26

    move/from16 v19, v25

    .line 2418
    .local v19, "to":I
    new-instance v25, Ljava/util/ArrayList;

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v25

    .line 2419
    .local v20, "removed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v25, 0x0

    move-object/from16 v21, v25

    .line 2420
    .local v21, "selectedColumn":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move/from16 v25, v18

    move/from16 v22, v25

    .local v22, "i":I
    :goto_5
    move/from16 v25, v22

    move/from16 v26, v19

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    .line 2427
    move/from16 v25, v16

    if-eqz v25, :cond_c

    .line 2428
    const/16 v25, 0x0

    move/from16 v23, v25

    .local v23, "column":I
    :goto_6
    move/from16 v25, v23

    move-object/from16 v26, v17

    invoke-interface/range {v26 .. v26}, Ljavafx/collections/ObservableList;->size()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_b

    .line 2429
    move-object/from16 v25, v17

    move/from16 v26, v23

    invoke-interface/range {v25 .. v26}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavafx/scene/control/TreeTableColumn;

    move-object/from16 v24, v25

    .line 2430
    .local v24, "col":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    move/from16 v26, v22

    move-object/from16 v27, v24

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isSelected(ILjavafx/scene/control/TableColumnBase;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 2431
    const/16 v25, 0x1

    move/from16 v15, v25

    .line 2432
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    move/from16 v26, v22

    move-object/from16 v27, v24

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->clearSelection(ILjavafx/scene/control/TableColumnBase;)V

    .line 2433
    move-object/from16 v25, v24

    move-object/from16 v21, v25

    .line 2428
    :cond_9
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 2404
    .end local v14    # "wasPrimarySelectionInChild":Z
    .end local v15    # "wasAnyChildSelected":Z
    .end local v16    # "isCellSelectionMode":Z
    .end local v17    # "columns":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    .end local v18    # "from":I
    .end local v19    # "to":I
    .end local v20    # "removed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v21    # "selectedColumn":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    .end local v22    # "i":I
    .end local v23    # "column":I
    .end local v24    # "col":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    :cond_a
    const/16 v25, 0x0

    goto/16 :goto_4

    .line 2428
    .line 2420
    .restart local v14    # "wasPrimarySelectionInChild":Z
    .restart local v15    # "wasAnyChildSelected":Z
    .restart local v16    # "isCellSelectionMode":Z
    .restart local v17    # "columns":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    .restart local v18    # "from":I
    .restart local v19    # "to":I
    .restart local v20    # "removed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v21    # "selectedColumn":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    .restart local v22    # "i":I
    :cond_b
    :goto_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 2437
    :cond_c
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    move/from16 v26, v22

    invoke-virtual/range {v25 .. v26}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isSelected(I)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 2438
    const/16 v25, 0x1

    move/from16 v15, v25

    .line 2439
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    move/from16 v26, v22

    invoke-virtual/range {v25 .. v26}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->clearSelection(I)V

    .line 2440
    move-object/from16 v25, v20

    move/from16 v26, v22

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v25

    goto :goto_7

    .line 2445
    :cond_d
    move/from16 v25, v16

    if-nez v25, :cond_e

    .line 2446
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->stopAtomic()V

    .line 2450
    :cond_e
    move/from16 v25, v14

    if-eqz v25, :cond_10

    move/from16 v25, v15

    if-eqz v25, :cond_10

    .line 2451
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    move/from16 v26, v7

    move-object/from16 v27, v21

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 2460
    .end local v22    # "i":I
    :cond_f
    :goto_8
    move/from16 v25, v8

    move/from16 v26, v12

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    add-int v25, v25, v26

    move/from16 v8, v25

    .line 2461
    add-int/lit8 v7, v7, 0x1

    .line 2462
    goto/16 :goto_3

    .line 2452
    .restart local v22    # "i":I
    :cond_10
    move/from16 v25, v16

    if-nez v25, :cond_f

    .line 2455
    new-instance v25, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    move/from16 v27, v18

    move/from16 v28, v18

    move-object/from16 v29, v20

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object/from16 v30, v0

    invoke-direct/range {v26 .. v30}, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;-><init>(IILjava/util/List;Ljavafx/collections/ObservableList;)V

    move-object/from16 v22, v25

    .line 2457
    .local v22, "newChange":Ljavafx/collections/ListChangeListener$Change;
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object/from16 v25, v0

    move-object/from16 v26, v22

    invoke-virtual/range {v25 .. v26}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    goto :goto_8

    .line 2462
    .end local v12    # "count":I
    .end local v13    # "selectedIndex":I
    .end local v14    # "wasPrimarySelectionInChild":Z
    .end local v15    # "wasAnyChildSelected":Z
    .end local v16    # "isCellSelectionMode":Z
    .end local v17    # "columns":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    .end local v18    # "from":I
    .end local v19    # "to":I
    .end local v20    # "removed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v21    # "selectedColumn":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    .end local v22    # "newChange":Ljavafx/collections/ListChangeListener$Change;
    :cond_11
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasPermutated()Z

    move-result v25

    if-eqz v25, :cond_12

    .line 2467
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->access$2600(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)V

    .line 2468
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    move-object/from16 v26, v6

    invoke-virtual/range {v25 .. v26}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->select(Ljavafx/scene/control/TreeItem;)V

    goto/16 :goto_3

    .line 2469
    :cond_12
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasAdded()Z

    move-result v25

    if-eqz v25, :cond_15

    .line 2471
    move/from16 v25, v8

    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v26

    if-eqz v26, :cond_14

    move/from16 v26, v10

    :goto_9
    add-int v25, v25, v26

    move/from16 v8, v25

    .line 2479
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->access$2500(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)Ljavafx/scene/control/TreeTableView;

    move-result-object v25

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getChange()Ljavafx/collections/ListChangeListener$Change;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljavafx/scene/control/TreeItem;

    invoke-virtual/range {v25 .. v26}, Ljavafx/scene/control/TreeTableView;->getRow(Ljavafx/scene/control/TreeItem;)I

    move-result v25

    move/from16 v7, v25

    .line 2481
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->access$2500(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)Ljavafx/scene/control/TreeTableView;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->getAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavafx/scene/control/TreeTablePosition;

    move-object/from16 v12, v25

    .line 2482
    .local v12, "anchor":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object/from16 v25, v12

    if-eqz v25, :cond_13

    .line 2483
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    move-object/from16 v26, v12

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v26

    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isSelected(ILjavafx/scene/control/TableColumnBase;)Z

    move-result v25

    move/from16 v13, v25

    .line 2484
    .local v13, "isAnchorSelected":Z
    move/from16 v25, v13

    if-eqz v25, :cond_13

    .line 2485
    new-instance v25, Ljavafx/scene/control/TreeTablePosition;

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->access$2500(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)Ljavafx/scene/control/TreeTableView;

    move-result-object v27

    move-object/from16 v28, v12

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v28

    move/from16 v29, v8

    add-int v28, v28, v29

    move-object/from16 v29, v12

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v29

    invoke-direct/range {v26 .. v29}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    move-object/from16 v14, v25

    .line 2486
    .local v14, "newAnchor":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->access$2500(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)Ljavafx/scene/control/TreeTableView;

    move-result-object v25

    move-object/from16 v26, v14

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->setAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;Z)V

    .line 2489
    .end local v13    # "isAnchorSelected":Z
    .end local v14    # "newAnchor":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    :cond_13
    goto/16 :goto_3

    .line 2471
    .end local v12    # "anchor":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    :cond_14
    const/16 v26, 0x0

    goto/16 :goto_9

    .line 2489
    :cond_15
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasRemoved()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 2491
    move/from16 v25, v8

    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v26

    if-eqz v26, :cond_16

    move/from16 v26, v11

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v26, v0

    :goto_a
    add-int v25, v25, v26

    move/from16 v8, v25

    .line 2498
    move/from16 v25, v7

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getFrom()I

    move-result v26

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    add-int v25, v25, v26

    move/from16 v7, v25

    .line 2503
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v25

    move-object/from16 v12, v25

    .line 2504
    .local v12, "selectedIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectedItems()Ljavafx/collections/ObservableList;

    move-result-object v25

    move-object/from16 v13, v25

    .line 2505
    .local v13, "selectedItems":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeItem<TS;>;>;"
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavafx/scene/control/TreeItem;

    move-object/from16 v14, v25

    .line 2506
    .local v14, "selectedItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getChange()Ljavafx/collections/ListChangeListener$Change;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v25

    move-object/from16 v15, v25

    .line 2508
    .local v15, "removedChildren":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TreeItem<TS;>;>;"
    const/16 v25, 0x0

    move/from16 v16, v25

    .local v16, "i":I
    :goto_b
    move/from16 v25, v16

    move-object/from16 v26, v12

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    move-object/from16 v25, v13

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_3

    .line 2509
    move-object/from16 v25, v12

    move/from16 v26, v16

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move/from16 v17, v25

    .line 2510
    .local v17, "index":I
    move/from16 v25, v17

    move-object/from16 v26, v13

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_17

    goto/16 :goto_3

    .line 2491
    .end local v12    # "selectedIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "selectedItems":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeItem<TS;>;>;"
    .end local v14    # "selectedItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    .end local v15    # "removedChildren":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TreeItem<TS;>;>;"
    .end local v16    # "i":I
    .end local v17    # "index":I
    :cond_16
    const/16 v26, 0x0

    goto/16 :goto_a

    .line 2512
    .restart local v12    # "selectedIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v13    # "selectedItems":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeItem<TS;>;>;"
    .restart local v14    # "selectedItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    .restart local v15    # "removedChildren":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TreeItem<TS;>;>;"
    .restart local v16    # "i":I
    .restart local v17    # "index":I
    :cond_17
    move-object/from16 v25, v15

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    move-object/from16 v25, v13

    .line 2513
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    move-object/from16 v25, v14

    if-eqz v25, :cond_18

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    const/16 v27, 0x0

    .line 2515
    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18

    .line 2517
    move/from16 v25, v5

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getItemCount()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_18

    .line 2518
    move/from16 v25, v5

    if-nez v25, :cond_19

    const/16 v25, 0x0

    :goto_c
    move/from16 v18, v25

    .line 2519
    .local v18, "previousRow":I
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    move/from16 v26, v18

    invoke-virtual/range {v25 .. v26}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getModelItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v25

    move-object/from16 v19, v25

    .line 2520
    .local v19, "newSelectedItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object/from16 v25, v14

    move-object/from16 v26, v19

    invoke-virtual/range {v25 .. v26}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_18

    .line 2521
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object/from16 v25, v0

    move/from16 v26, v18

    invoke-virtual/range {v25 .. v26}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->clearAndSelect(I)V

    .line 2508
    .end local v18    # "previousRow":I
    .end local v19    # "newSelectedItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    :cond_18
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_b

    .line 2518
    :cond_19
    move/from16 v25, v5

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    goto :goto_c
.end method

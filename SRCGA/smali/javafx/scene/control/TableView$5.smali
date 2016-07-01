.class Ljavafx/scene/control/TableView$5;
.super Ljava/lang/Object;
.source "TableView.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/collections/ListChangeListener",
        "<",
        "Ljavafx/scene/control/TableColumn",
        "<TS;*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TableView;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TableView;)V
    .locals 4

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$5;, "Ljavafx/scene/control/TableView$5;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TableView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;>;)V"
        }
    .end annotation

    .prologue
    .line 600
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/control/TableView$5;, "Ljavafx/scene/control/TableView$5;"
    move-object/from16 v2, p1

    .local v2, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljavafx/scene/control/TableColumn<TS;*>;>;"
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    invoke-virtual {v14}, Ljavafx/scene/control/TableView;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v14

    move-object v3, v14

    .line 603
    .local v3, "columns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumn<TS;*>;>;"
    :cond_0
    :goto_0
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 604
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 605
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v14

    .line 606
    .local v4, "duplicates":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumn<TS;*>;>;"
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v5, v14

    :goto_1
    move-object v14, v5

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    move-object v14, v5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/TableColumn;

    move-object v6, v14

    .line 607
    .local v6, "addedColumn":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object v14, v6

    if-nez v14, :cond_1

    goto :goto_1

    .line 609
    :cond_1
    const/4 v14, 0x0

    move v7, v14

    .line 610
    .local v7, "count":I
    move-object v14, v3

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v8, v14

    :goto_2
    move-object v14, v8

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    move-object v14, v8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/TableColumn;

    move-object v9, v14

    .line 611
    .local v9, "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object v14, v6

    move-object v15, v9

    if-ne v14, v15, :cond_2

    .line 612
    add-int/lit8 v7, v7, 0x1

    .line 614
    :cond_2
    goto :goto_2

    .line 616
    .end local v9    # "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    :cond_3
    move v14, v7

    const/4 v15, 0x1

    if-le v14, v15, :cond_4

    .line 617
    move-object v14, v4

    move-object v15, v6

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 619
    :cond_4
    goto :goto_1

    .line 621
    .end local v6    # "addedColumn":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    .end local v7    # "count":I
    :cond_5
    move-object v14, v4

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_7

    .line 622
    const-string v14, ""

    move-object v5, v14

    .line 623
    .local v5, "titleList":Ljava/lang/String;
    move-object v14, v4

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v6, v14

    :goto_3
    move-object v14, v6

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    move-object v14, v6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/TableColumn;

    move-object v7, v14

    .line 624
    .local v7, "dupe":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v7

    invoke-virtual {v15}, Ljavafx/scene/control/TableColumn;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\', "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v5, v14

    .line 625
    goto :goto_3

    .line 626
    .end local v7    # "dupe":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    :cond_6
    new-instance v14, Ljava/lang/IllegalStateException;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Duplicate TableColumns detected in TableView columns list with titles "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 628
    .end local v5    # "titleList":Ljava/lang/String;
    :cond_7
    goto/16 :goto_0

    .line 630
    .end local v4    # "duplicates":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumn<TS;*>;>;"
    :cond_8
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 634
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    invoke-static {v14}, Ljavafx/scene/control/TableView;->access$200(Ljavafx/scene/control/TableView;)V

    .line 638
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v14

    .line 639
    .local v4, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumn<TS;*>;>;"
    :goto_4
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 640
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v14

    move-object v5, v14

    .line 641
    .local v5, "removed":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumn<TS;*>;>;"
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v14

    move-object v6, v14

    .line 643
    .local v6, "added":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumn<TS;*>;>;"
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 644
    move-object v14, v4

    move-object v15, v5

    invoke-interface {v14, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v14

    .line 645
    move-object v14, v5

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v7, v14

    :goto_5
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/TableColumn;

    move-object v8, v14

    .line 646
    .local v8, "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object v14, v8

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljavafx/scene/control/TableColumn;->setTableView(Ljavafx/scene/control/TableView;)V

    .line 647
    goto :goto_5

    .line 650
    .end local v8    # "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    :cond_9
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 651
    move-object v14, v4

    move-object v15, v6

    invoke-interface {v14, v15}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v14

    .line 652
    move-object v14, v6

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v7, v14

    :goto_6
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/TableColumn;

    move-object v8, v14

    .line 653
    .restart local v8    # "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object v14, v8

    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    invoke-virtual {v14, v15}, Ljavafx/scene/control/TableColumn;->setTableView(Ljavafx/scene/control/TableView;)V

    .line 654
    goto :goto_6

    .line 658
    .end local v8    # "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    :cond_a
    move-object v14, v5

    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    invoke-static {v15}, Ljavafx/scene/control/TableView;->access$300(Ljavafx/scene/control/TableView;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v15

    invoke-static {v14, v15}, Ljavafx/scene/control/TableUtil;->removeColumnsListener(Ljava/util/List;Ljavafx/collections/ListChangeListener;)V

    .line 659
    move-object v14, v6

    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    invoke-static {v15}, Ljavafx/scene/control/TableView;->access$300(Ljavafx/scene/control/TableView;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v15

    invoke-static {v14, v15}, Ljavafx/scene/control/TableUtil;->addColumnsListener(Ljava/util/List;Ljavafx/collections/ListChangeListener;)V

    .line 661
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v14

    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    .line 662
    invoke-static {v15}, Ljavafx/scene/control/TableView;->access$400(Ljavafx/scene/control/TableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    move-object/from16 v16, v0

    .line 663
    invoke-static/range {v16 .. v16}, Ljavafx/scene/control/TableView;->access$500(Ljavafx/scene/control/TableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    move-object/from16 v17, v0

    .line 664
    invoke-static/range {v17 .. v17}, Ljavafx/scene/control/TableView;->access$600(Ljavafx/scene/control/TableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v17

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    move-object/from16 v18, v0

    .line 665
    invoke-static/range {v18 .. v18}, Ljavafx/scene/control/TableView;->access$700(Ljavafx/scene/control/TableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v18

    .line 661
    invoke-static/range {v14 .. v18}, Ljavafx/scene/control/TableUtil;->removeTableColumnListener(Ljava/util/List;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V

    .line 666
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v14

    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    .line 667
    invoke-static {v15}, Ljavafx/scene/control/TableView;->access$400(Ljavafx/scene/control/TableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    move-object/from16 v16, v0

    .line 668
    invoke-static/range {v16 .. v16}, Ljavafx/scene/control/TableView;->access$500(Ljavafx/scene/control/TableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    move-object/from16 v17, v0

    .line 669
    invoke-static/range {v17 .. v17}, Ljavafx/scene/control/TableView;->access$600(Ljavafx/scene/control/TableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v17

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    move-object/from16 v18, v0

    .line 670
    invoke-static/range {v18 .. v18}, Ljavafx/scene/control/TableView;->access$700(Ljavafx/scene/control/TableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v18

    .line 666
    invoke-static/range {v14 .. v18}, Ljavafx/scene/control/TableUtil;->addTableColumnListener(Ljava/util/List;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V

    .line 671
    goto/16 :goto_4

    .line 673
    .end local v5    # "removed":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumn<TS;*>;>;"
    .end local v6    # "added":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumn<TS;*>;>;"
    :cond_b
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    invoke-static {v14}, Ljavafx/scene/control/TableView;->access$800(Ljavafx/scene/control/TableView;)Ljavafx/collections/ObservableList;

    move-result-object v14

    move-object v15, v4

    invoke-interface {v14, v15}, Ljavafx/collections/ObservableList;->removeAll(Ljava/util/Collection;)Z

    move-result v14

    .line 676
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    invoke-virtual {v14}, Ljavafx/scene/control/TableView;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v14

    move-object v5, v14

    .line 677
    .local v5, "fm":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    invoke-virtual {v14}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v14

    move-object v6, v14

    .line 678
    .local v6, "sm":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 679
    :goto_7
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v14

    if-eqz v14, :cond_19

    .line 680
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v14

    if-nez v14, :cond_c

    goto :goto_7

    .line 682
    :cond_c
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v14

    move-object v7, v14

    .line 687
    .local v7, "removed":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumn<TS;*>;>;"
    move-object v14, v5

    if-eqz v14, :cond_e

    .line 688
    move-object v14, v5

    invoke-virtual {v14}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TablePosition;

    move-result-object v14

    move-object v8, v14

    .line 689
    .local v8, "focusedCell":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    const/4 v14, 0x0

    move v9, v14

    .line 690
    .local v9, "match":Z
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v10, v14

    :goto_8
    move-object v14, v10

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    move-object v14, v10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/TableColumn;

    move-object v11, v14

    .line 691
    .local v11, "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object v14, v8

    if-eqz v14, :cond_10

    move-object v14, v8

    invoke-virtual {v14}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v14

    move-object v15, v11

    if-ne v14, v15, :cond_10

    const/4 v14, 0x1

    :goto_9
    move v9, v14

    .line 692
    move v14, v9

    if-eqz v14, :cond_11

    .line 693
    .line 697
    .end local v11    # "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    :cond_d
    move v14, v9

    if-eqz v14, :cond_e

    .line 698
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    invoke-static {v14}, Ljavafx/scene/control/TableView;->access$900(Ljavafx/scene/control/TableView;)Ljava/util/WeakHashMap;

    move-result-object v14

    move-object v15, v8

    invoke-virtual {v15}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/WeakHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move v10, v14

    .line 699
    .local v10, "matchingColumnIndex":I
    move v14, v10

    if-nez v14, :cond_12

    const/4 v14, 0x0

    .line 701
    :goto_a
    move v11, v14

    .line 702
    .local v11, "newFocusColumnIndex":I
    move-object v14, v5

    move-object v15, v8

    invoke-virtual {v15}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    move-object/from16 v16, v0

    move/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Ljavafx/scene/control/TableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumn;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focus(ILjavafx/scene/control/TableColumn;)V

    .line 708
    .end local v8    # "focusedCell":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    .end local v9    # "match":Z
    .end local v10    # "matchingColumnIndex":I
    .end local v11    # "newFocusColumnIndex":I
    :cond_e
    move-object v14, v6

    if-eqz v14, :cond_18

    .line 709
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v14

    .line 710
    .local v8, "selectedCells":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TablePosition;>;"
    move-object v14, v8

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v9, v14

    :goto_b
    move-object v14, v9

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18

    move-object v14, v9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/TablePosition;

    move-object v10, v14

    .line 711
    .local v10, "selectedCell":Ljavafx/scene/control/TablePosition;
    const/4 v14, 0x0

    move v11, v14

    .line 712
    .local v11, "match":Z
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v12, v14

    :goto_c
    move-object v14, v12

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    move-object v14, v12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/TableColumn;

    move-object v13, v14

    .line 713
    .local v13, "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object v14, v10

    if-eqz v14, :cond_13

    move-object v14, v10

    invoke-virtual {v14}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v14

    move-object v15, v13

    if-ne v14, v15, :cond_13

    const/4 v14, 0x1

    :goto_d
    move v11, v14

    .line 714
    move v14, v11

    if-eqz v14, :cond_14

    .line 717
    .end local v13    # "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    :cond_f
    move v14, v11

    if-eqz v14, :cond_16

    .line 720
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    invoke-static {v14}, Ljavafx/scene/control/TableView;->access$900(Ljavafx/scene/control/TableView;)Ljava/util/WeakHashMap;

    move-result-object v14

    move-object v15, v10

    invoke-virtual {v15}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v15

    const/16 v16, -0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/WeakHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move v12, v14

    .line 721
    .local v12, "matchingColumnIndex":I
    move v14, v12

    const/4 v15, -0x1

    if-ne v14, v15, :cond_15

    goto :goto_b

    .line 691
    .end local v10    # "selectedCell":Ljavafx/scene/control/TablePosition;
    .end local v12    # "matchingColumnIndex":I
    .local v8, "focusedCell":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    .restart local v9    # "match":Z
    .local v11, "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_9

    .line 695
    :cond_11
    goto/16 :goto_8

    .line 699
    .end local v11    # "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    .local v10, "matchingColumnIndex":I
    :cond_12
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    .line 701
    invoke-virtual {v14}, Ljavafx/scene/control/TableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v14

    invoke-interface {v14}, Ljavafx/collections/ObservableList;->size()I

    move-result v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    move v15, v10

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto/16 :goto_a

    .line 713
    .end local v9    # "match":Z
    .local v8, "selectedCells":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TablePosition;>;"
    .local v10, "selectedCell":Ljavafx/scene/control/TablePosition;
    .local v11, "match":Z
    .restart local v13    # "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    :cond_13
    const/4 v14, 0x0

    goto :goto_d

    .line 715
    :cond_14
    goto :goto_c

    .line 723
    .end local v13    # "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    .restart local v12    # "matchingColumnIndex":I
    :cond_15
    move-object v14, v6

    instance-of v14, v14, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;

    if-eqz v14, :cond_17

    .line 730
    new-instance v14, Ljavafx/scene/control/TablePosition;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    .line 732
    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v17

    move-object/from16 v18, v10

    .line 733
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    move-object v13, v14

    .line 734
    .local v13, "fixedTablePosition":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v14, v13

    move v15, v12

    iput v15, v14, Ljavafx/scene/control/TablePosition;->fixedColumnIndex:I

    .line 736
    move-object v14, v6

    check-cast v14, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;

    move-object v15, v13

    invoke-static {v14, v15}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->access$1000(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;Ljavafx/scene/control/TablePosition;)V

    .line 737
    .line 741
    .end local v12    # "matchingColumnIndex":I
    .end local v13    # "fixedTablePosition":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    :cond_16
    :goto_e
    goto/16 :goto_b

    .line 738
    .restart local v12    # "matchingColumnIndex":I
    :cond_17
    move-object v14, v6

    move-object v15, v10

    invoke-virtual {v15}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v15

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->clearSelection(ILjavafx/scene/control/TableColumn;)V

    goto :goto_e

    .line 743
    .end local v8    # "selectedCells":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TablePosition;>;"
    .end local v10    # "selectedCell":Ljavafx/scene/control/TablePosition;
    .end local v11    # "match":Z
    .end local v12    # "matchingColumnIndex":I
    :cond_18
    goto/16 :goto_7

    .line 747
    .end local v7    # "removed":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumn<TS;*>;>;"
    :cond_19
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    invoke-static {v14}, Ljavafx/scene/control/TableView;->access$900(Ljavafx/scene/control/TableView;)Ljava/util/WeakHashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/WeakHashMap;->clear()V

    .line 748
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    invoke-virtual {v14}, Ljavafx/scene/control/TableView;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v14

    invoke-interface {v14}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v7, v14

    :goto_f
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1b

    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/TableColumn;

    move-object v8, v14

    .line 749
    .local v8, "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    move-object v15, v8

    invoke-virtual {v14, v15}, Ljavafx/scene/control/TableView;->getVisibleLeafIndex(Ljavafx/scene/control/TableColumn;)I

    move-result v14

    move v9, v14

    .line 750
    .local v9, "index":I
    move v14, v9

    const/4 v15, -0x1

    if-le v14, v15, :cond_1a

    .line 751
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TableView$5;->this$0:Ljavafx/scene/control/TableView;

    invoke-static {v14}, Ljavafx/scene/control/TableView;->access$900(Ljavafx/scene/control/TableView;)Ljava/util/WeakHashMap;

    move-result-object v14

    move-object v15, v8

    move/from16 v16, v9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 753
    :cond_1a
    goto :goto_f

    .line 754
    .end local v8    # "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    .end local v9    # "index":I
    :cond_1b
    return-void
.end method

.class Ljavafx/scene/control/TreeTableView$4;
.super Ljava/lang/Object;
.source "TreeTableView.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeTableView;
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
        "Ljavafx/scene/control/TreeTableColumn",
        "<TS;*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeTableView;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeTableView;)V
    .locals 4

    .prologue
    .line 654
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$4;, "Ljavafx/scene/control/TreeTableView$4;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeTableView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

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
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;)V"
        }
    .end annotation

    .prologue
    .line 656
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/control/TreeTableView$4;, "Ljavafx/scene/control/TreeTableView$4;"
    move-object/from16 v2, p1

    .local v2, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v14}, Ljavafx/scene/control/TreeTableView;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v14

    move-object v3, v14

    .line 659
    .local v3, "columns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    :cond_0
    :goto_0
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 660
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 661
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v14

    .line 662
    .local v4, "duplicates":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
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

    check-cast v14, Ljavafx/scene/control/TreeTableColumn;

    move-object v6, v14

    .line 663
    .local v6, "addedColumn":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object v14, v6

    if-nez v14, :cond_1

    goto :goto_1

    .line 665
    :cond_1
    const/4 v14, 0x0

    move v7, v14

    .line 666
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

    check-cast v14, Ljavafx/scene/control/TreeTableColumn;

    move-object v9, v14

    .line 667
    .local v9, "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object v14, v6

    move-object v15, v9

    if-ne v14, v15, :cond_2

    .line 668
    add-int/lit8 v7, v7, 0x1

    .line 670
    :cond_2
    goto :goto_2

    .line 672
    .end local v9    # "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    :cond_3
    move v14, v7

    const/4 v15, 0x1

    if-le v14, v15, :cond_4

    .line 673
    move-object v14, v4

    move-object v15, v6

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 675
    :cond_4
    goto :goto_1

    .line 677
    .end local v6    # "addedColumn":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    .end local v7    # "count":I
    :cond_5
    move-object v14, v4

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_7

    .line 678
    const-string v14, ""

    move-object v5, v14

    .line 679
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

    check-cast v14, Ljavafx/scene/control/TreeTableColumn;

    move-object v7, v14

    .line 680
    .local v7, "dupe":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
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

    invoke-virtual {v15}, Ljavafx/scene/control/TreeTableColumn;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\', "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v5, v14

    .line 681
    goto :goto_3

    .line 682
    .end local v7    # "dupe":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
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

    const-string v17, "Duplicate TreeTableColumns detected in TreeTableView columns list with titles "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 684
    .end local v5    # "titleList":Ljava/lang/String;
    :cond_7
    goto/16 :goto_0

    .line 686
    .end local v4    # "duplicates":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    :cond_8
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 690
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-static {v14}, Ljavafx/scene/control/TreeTableView;->access$000(Ljavafx/scene/control/TreeTableView;)V

    .line 694
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v14

    .line 695
    .local v4, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    :goto_4
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 696
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v14

    move-object v5, v14

    .line 697
    .local v5, "removed":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v14

    move-object v6, v14

    .line 699
    .local v6, "added":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 700
    move-object v14, v4

    move-object v15, v5

    invoke-interface {v14, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v14

    .line 701
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

    check-cast v14, Ljavafx/scene/control/TreeTableColumn;

    move-object v8, v14

    .line 702
    .local v8, "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object v14, v8

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljavafx/scene/control/TreeTableColumn;->setTreeTableView(Ljavafx/scene/control/TreeTableView;)V

    .line 703
    goto :goto_5

    .line 706
    .end local v8    # "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    :cond_9
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 707
    move-object v14, v4

    move-object v15, v6

    invoke-interface {v14, v15}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v14

    .line 708
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

    check-cast v14, Ljavafx/scene/control/TreeTableColumn;

    move-object v8, v14

    .line 709
    .restart local v8    # "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object v14, v8

    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v14, v15}, Ljavafx/scene/control/TreeTableColumn;->setTreeTableView(Ljavafx/scene/control/TreeTableView;)V

    .line 710
    goto :goto_6

    .line 714
    .end local v8    # "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    :cond_a
    move-object v14, v5

    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-static {v15}, Ljavafx/scene/control/TreeTableView;->access$100(Ljavafx/scene/control/TreeTableView;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v15

    invoke-static {v14, v15}, Ljavafx/scene/control/TableUtil;->removeColumnsListener(Ljava/util/List;Ljavafx/collections/ListChangeListener;)V

    .line 715
    move-object v14, v6

    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-static {v15}, Ljavafx/scene/control/TreeTableView;->access$100(Ljavafx/scene/control/TreeTableView;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v15

    invoke-static {v14, v15}, Ljavafx/scene/control/TableUtil;->addColumnsListener(Ljava/util/List;Ljavafx/collections/ListChangeListener;)V

    .line 717
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v14

    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    .line 718
    invoke-static {v15}, Ljavafx/scene/control/TreeTableView;->access$200(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    move-object/from16 v16, v0

    .line 719
    invoke-static/range {v16 .. v16}, Ljavafx/scene/control/TreeTableView;->access$300(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    move-object/from16 v17, v0

    .line 720
    invoke-static/range {v17 .. v17}, Ljavafx/scene/control/TreeTableView;->access$400(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v17

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    move-object/from16 v18, v0

    .line 721
    invoke-static/range {v18 .. v18}, Ljavafx/scene/control/TreeTableView;->access$500(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v18

    .line 717
    invoke-static/range {v14 .. v18}, Ljavafx/scene/control/TableUtil;->removeTableColumnListener(Ljava/util/List;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V

    .line 722
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v14

    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    .line 723
    invoke-static {v15}, Ljavafx/scene/control/TreeTableView;->access$200(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    move-object/from16 v16, v0

    .line 724
    invoke-static/range {v16 .. v16}, Ljavafx/scene/control/TreeTableView;->access$300(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    move-object/from16 v17, v0

    .line 725
    invoke-static/range {v17 .. v17}, Ljavafx/scene/control/TreeTableView;->access$400(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v17

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    move-object/from16 v18, v0

    .line 726
    invoke-static/range {v18 .. v18}, Ljavafx/scene/control/TreeTableView;->access$500(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v18

    .line 722
    invoke-static/range {v14 .. v18}, Ljavafx/scene/control/TableUtil;->addTableColumnListener(Ljava/util/List;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V

    .line 727
    goto/16 :goto_4

    .line 729
    .end local v5    # "removed":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    .end local v6    # "added":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    :cond_b
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-static {v14}, Ljavafx/scene/control/TreeTableView;->access$600(Ljavafx/scene/control/TreeTableView;)Ljavafx/collections/ObservableList;

    move-result-object v14

    move-object v15, v4

    invoke-interface {v14, v15}, Ljavafx/collections/ObservableList;->removeAll(Ljava/util/Collection;)Z

    move-result v14

    .line 732
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v14}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v14

    move-object v5, v14

    .line 733
    .local v5, "fm":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v14}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v14

    move-object v6, v14

    .line 734
    .local v6, "sm":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 735
    :goto_7
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v14

    if-eqz v14, :cond_19

    .line 736
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v14

    if-nez v14, :cond_c

    goto :goto_7

    .line 738
    :cond_c
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v14

    move-object v7, v14

    .line 743
    .local v7, "removed":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    move-object v14, v5

    if-eqz v14, :cond_e

    .line 744
    move-object v14, v5

    invoke-virtual {v14}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v14

    move-object v8, v14

    .line 745
    .local v8, "focusedCell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    const/4 v14, 0x0

    move v9, v14

    .line 746
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

    check-cast v14, Ljavafx/scene/control/TreeTableColumn;

    move-object v11, v14

    .line 747
    .local v11, "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object v14, v8

    if-eqz v14, :cond_10

    move-object v14, v8

    invoke-virtual {v14}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v14

    move-object v15, v11

    if-ne v14, v15, :cond_10

    const/4 v14, 0x1

    :goto_9
    move v9, v14

    .line 748
    move v14, v9

    if-eqz v14, :cond_11

    .line 749
    .line 753
    .end local v11    # "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    :cond_d
    move v14, v9

    if-eqz v14, :cond_e

    .line 754
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-static {v14}, Ljavafx/scene/control/TreeTableView;->access$700(Ljavafx/scene/control/TreeTableView;)Ljava/util/WeakHashMap;

    move-result-object v14

    move-object v15, v8

    invoke-virtual {v15}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

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

    .line 755
    .local v10, "matchingColumnIndex":I
    move v14, v10

    if-nez v14, :cond_12

    const/4 v14, 0x0

    .line 757
    :goto_a
    move v11, v14

    .line 758
    .local v11, "newFocusColumnIndex":I
    move-object v14, v5

    move-object v15, v8

    invoke-virtual {v15}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    move-object/from16 v16, v0

    move/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focus(ILjavafx/scene/control/TreeTableColumn;)V

    .line 764
    .end local v8    # "focusedCell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    .end local v9    # "match":Z
    .end local v10    # "matchingColumnIndex":I
    .end local v11    # "newFocusColumnIndex":I
    :cond_e
    move-object v14, v6

    if-eqz v14, :cond_18

    .line 765
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v14

    .line 766
    .local v8, "selectedCells":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTablePosition;>;"
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

    check-cast v14, Ljavafx/scene/control/TreeTablePosition;

    move-object v10, v14

    .line 767
    .local v10, "selectedCell":Ljavafx/scene/control/TreeTablePosition;
    const/4 v14, 0x0

    move v11, v14

    .line 768
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

    check-cast v14, Ljavafx/scene/control/TreeTableColumn;

    move-object v13, v14

    .line 769
    .local v13, "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object v14, v10

    if-eqz v14, :cond_13

    move-object v14, v10

    invoke-virtual {v14}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v14

    move-object v15, v13

    if-ne v14, v15, :cond_13

    const/4 v14, 0x1

    :goto_d
    move v11, v14

    .line 770
    move v14, v11

    if-eqz v14, :cond_14

    .line 773
    .end local v13    # "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    :cond_f
    move v14, v11

    if-eqz v14, :cond_16

    .line 776
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-static {v14}, Ljavafx/scene/control/TreeTableView;->access$700(Ljavafx/scene/control/TreeTableView;)Ljava/util/WeakHashMap;

    move-result-object v14

    move-object v15, v10

    invoke-virtual {v15}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

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

    .line 777
    .local v12, "matchingColumnIndex":I
    move v14, v12

    const/4 v15, -0x1

    if-ne v14, v15, :cond_15

    goto :goto_b

    .line 747
    .end local v10    # "selectedCell":Ljavafx/scene/control/TreeTablePosition;
    .end local v12    # "matchingColumnIndex":I
    .local v8, "focusedCell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    .restart local v9    # "match":Z
    .local v11, "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_9

    .line 751
    :cond_11
    goto/16 :goto_8

    .line 755
    .end local v11    # "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    .local v10, "matchingColumnIndex":I
    :cond_12
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    .line 757
    invoke-virtual {v14}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

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

    .line 769
    .end local v9    # "match":Z
    .local v8, "selectedCells":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTablePosition;>;"
    .local v10, "selectedCell":Ljavafx/scene/control/TreeTablePosition;
    .local v11, "match":Z
    .restart local v13    # "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    :cond_13
    const/4 v14, 0x0

    goto :goto_d

    .line 771
    :cond_14
    goto :goto_c

    .line 779
    .end local v13    # "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    .restart local v12    # "matchingColumnIndex":I
    :cond_15
    move-object v14, v6

    instance-of v14, v14, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    if-eqz v14, :cond_17

    .line 786
    new-instance v14, Ljavafx/scene/control/TreeTablePosition;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    .line 788
    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v17

    move-object/from16 v18, v10

    .line 789
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    move-object v13, v14

    .line 790
    .local v13, "fixedTablePosition":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v14, v13

    move v15, v12

    iput v15, v14, Ljavafx/scene/control/TreeTablePosition;->fixedColumnIndex:I

    .line 792
    move-object v14, v6

    check-cast v14, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object v15, v13

    invoke-static {v14, v15}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->access$800(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;Ljavafx/scene/control/TreeTablePosition;)V

    .line 793
    .line 797
    .end local v12    # "matchingColumnIndex":I
    .end local v13    # "fixedTablePosition":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    :cond_16
    :goto_e
    goto/16 :goto_b

    .line 794
    .restart local v12    # "matchingColumnIndex":I
    :cond_17
    move-object v14, v6

    move-object v15, v10

    invoke-virtual {v15}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v15

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->clearSelection(ILjavafx/scene/control/TableColumnBase;)V

    goto :goto_e

    .line 799
    .end local v8    # "selectedCells":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTablePosition;>;"
    .end local v10    # "selectedCell":Ljavafx/scene/control/TreeTablePosition;
    .end local v11    # "match":Z
    .end local v12    # "matchingColumnIndex":I
    :cond_18
    goto/16 :goto_7

    .line 803
    .end local v7    # "removed":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    :cond_19
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-static {v14}, Ljavafx/scene/control/TreeTableView;->access$700(Ljavafx/scene/control/TreeTableView;)Ljava/util/WeakHashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/WeakHashMap;->clear()V

    .line 804
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v14}, Ljavafx/scene/control/TreeTableView;->getColumns()Ljavafx/collections/ObservableList;

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

    check-cast v14, Ljavafx/scene/control/TreeTableColumn;

    move-object v8, v14

    .line 805
    .local v8, "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    move-object v15, v8

    invoke-virtual {v14, v15}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafIndex(Ljavafx/scene/control/TreeTableColumn;)I

    move-result v14

    move v9, v14

    .line 806
    .local v9, "index":I
    move v14, v9

    const/4 v15, -0x1

    if-le v14, v15, :cond_1a

    .line 807
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/control/TreeTableView$4;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-static {v14}, Ljavafx/scene/control/TreeTableView;->access$700(Ljavafx/scene/control/TreeTableView;)Ljava/util/WeakHashMap;

    move-result-object v14

    move-object v15, v8

    move/from16 v16, v9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 809
    :cond_1a
    goto :goto_f

    .line 810
    .end local v8    # "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    .end local v9    # "index":I
    :cond_1b
    return-void
.end method

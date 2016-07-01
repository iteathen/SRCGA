.class public Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;
.super Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;
.source "TreeTableCellSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/skin/TableCellSkinBase",
        "<",
        "Ljavafx/scene/control/TreeTableCell",
        "<TS;TT;>;",
        "Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior",
        "<TS;TT;>;>;"
    }
.end annotation


# instance fields
.field private final tableColumn:Ljavafx/scene/control/TreeTableColumn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;"
        }
    .end annotation
.end field

.field private final treeTableCell:Ljavafx/scene/control/TreeTableCell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeTableCell",
            "<TS;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TreeTableCell;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableCell",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin<TS;TT;>;"
    move-object v1, p1

    .local v1, "treeTableCell":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;-><init>(Ljavafx/scene/control/TreeTableCell;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;-><init>(Ljavafx/scene/control/IndexedCell;Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;)V

    .line 50
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;->treeTableCell:Ljavafx/scene/control/TreeTableCell;

    .line 51
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;->tableColumn:Ljavafx/scene/control/TreeTableColumn;

    .line 53
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->init(Ljavafx/scene/control/IndexedCell;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected columnVisibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;->tableColumn:Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableColumn;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin<TS;TT;>;"
    return-object v0
.end method

.method protected columnWidthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;->tableColumn:Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableColumn;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin<TS;TT;>;"
    return-object v0
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 23

    .prologue
    .line 115
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin<TS;TT;>;"
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    iget-boolean v12, v12, Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;->isDeferToParentForPrefWidth:Z

    if-eqz v12, :cond_0

    .line 118
    move-object v12, v1

    move-wide v13, v2

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    invoke-super/range {v12 .. v22}, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->computePrefWidth(DDDDD)D

    move-result-wide v12

    move-wide v1, v12

    .line 120
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin<TS;TT;>;"
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin<TS;TT;>;"
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;->columnWidthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v12

    invoke-virtual {v12}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->get()D

    move-result-wide v12

    move-wide v1, v12

    goto :goto_0
.end method

.method protected leftLabelPadding()D
    .locals 26

    .prologue
    .line 65
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin<TS;TT;>;"
    move-object/from16 v20, v3

    invoke-super/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->leftLabelPadding()D

    move-result-wide v20

    move-wide/from16 v4, v20

    .line 69
    .local v4, "leftPadding":D
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;->getCellSize()D

    move-result-wide v20

    move-wide/from16 v6, v20

    .line 71
    .local v6, "height":D
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v20

    check-cast v20, Ljavafx/scene/control/TreeTableCell;

    move-object/from16 v8, v20

    .line 73
    .local v8, "cell":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v20

    move-object/from16 v9, v20

    .line 74
    .local v9, "tableColumn":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object/from16 v20, v9

    if-nez v20, :cond_0

    move-wide/from16 v20, v4

    move-wide/from16 v3, v20

    .line 111
    .end local v3    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin<TS;TT;>;"
    :goto_0
    return-wide v3

    .line 78
    .restart local v3    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin<TS;TT;>;"
    :cond_0
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/TreeTableCell;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v20

    move-object/from16 v10, v20

    .line 79
    .local v10, "treeTable":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object/from16 v20, v10

    if-nez v20, :cond_1

    move-wide/from16 v20, v4

    move-wide/from16 v3, v20

    goto :goto_0

    .line 81
    :cond_1
    move-object/from16 v20, v10

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafIndex(Ljavafx/scene/control/TreeTableColumn;)I

    move-result v20

    move/from16 v11, v20

    .line 83
    .local v11, "columnIndex":I
    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/TreeTableView;->getTreeColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v20

    move-object/from16 v12, v20

    .line 84
    .local v12, "treeColumn":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object/from16 v20, v12

    if-nez v20, :cond_2

    move/from16 v20, v11

    if-nez v20, :cond_3

    :cond_2
    move-object/from16 v20, v12

    if-eqz v20, :cond_4

    move-object/from16 v20, v9

    move-object/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 85
    :cond_3
    move-wide/from16 v20, v4

    move-wide/from16 v3, v20

    goto :goto_0

    .line 88
    :cond_4
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/TreeTableCell;->getTreeTableRow()Ljavafx/scene/control/TreeTableRow;

    move-result-object v20

    move-object/from16 v13, v20

    .line 89
    .local v13, "treeTableRow":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TS;>;"
    move-object/from16 v20, v13

    if-nez v20, :cond_5

    move-wide/from16 v20, v4

    move-wide/from16 v3, v20

    goto :goto_0

    .line 91
    :cond_5
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/TreeTableRow;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v20

    move-object/from16 v14, v20

    .line 92
    .local v14, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object/from16 v20, v14

    if-nez v20, :cond_6

    move-wide/from16 v20, v4

    move-wide/from16 v3, v20

    goto :goto_0

    .line 94
    :cond_6
    move-object/from16 v20, v10

    move-object/from16 v21, v14

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/control/TreeTableView;->getTreeItemLevel(Ljavafx/scene/control/TreeItem;)I

    move-result v20

    move/from16 v15, v20

    .line 95
    .local v15, "nodeLevel":I
    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/TreeTableView;->isShowRoot()Z

    move-result v20

    if-nez v20, :cond_7

    add-int/lit8 v15, v15, -0x1

    .line 97
    :cond_7
    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    move-wide/from16 v16, v20

    .line 98
    .local v16, "indentPerLevel":D
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/TreeTableRow;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 99
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/TreeTableRow;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getIndentationPerLevel()D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 101
    :cond_8
    move-wide/from16 v20, v4

    move/from16 v22, v15

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v16

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v4, v20

    .line 104
    sget-object v20, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->maxDisclosureWidthMap:Ljava/util/Map;

    move-object/from16 v18, v20

    .line 105
    .local v18, "mdwp":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/scene/control/Control;Ljava/lang/Double;>;"
    move-wide/from16 v20, v4

    move-object/from16 v22, v18

    move-object/from16 v23, v10

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v22, v18

    move-object/from16 v23, v10

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Double;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    :goto_1
    add-double v20, v20, v22

    move-wide/from16 v4, v20

    .line 108
    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/TreeItem;->getGraphic()Ljavafx/scene/Node;

    move-result-object v20

    move-object/from16 v19, v20

    .line 109
    .local v19, "graphic":Ljavafx/scene/Node;
    move-wide/from16 v20, v4

    move-object/from16 v22, v19

    if-nez v22, :cond_a

    const-wide/16 v22, 0x0

    :goto_2
    add-double v20, v20, v22

    move-wide/from16 v4, v20

    .line 111
    move-wide/from16 v20, v4

    move-wide/from16 v3, v20

    goto/16 :goto_0

    .line 105
    .end local v19    # "graphic":Ljavafx/scene/Node;
    :cond_9
    const-wide/16 v22, 0x0

    goto :goto_1

    .line 109
    .restart local v19    # "graphic":Ljavafx/scene/Node;
    :cond_a
    move-object/from16 v22, v19

    move-wide/from16 v23, v6

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v22

    goto :goto_2
.end method

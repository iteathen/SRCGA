.class public abstract Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;
.super Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;
.source "TableRowBehaviorBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljavafx/scene/control/Cell;",
        ">",
        "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljavafx/scene/control/Cell;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase<TT;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/Cell;, "TT;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;-><init>(Ljavafx/scene/control/Cell;Ljava/util/List;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected doSelect(DDLjavafx/scene/input/MouseButton;IZZ)V
    .locals 23

    .prologue
    .line 83
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase<TT;>;"
    move-wide/from16 v3, p1

    .local v3, "x":D
    move-wide/from16 v5, p3

    .local v5, "y":D
    move-object/from16 v7, p5

    .local v7, "button":Ljavafx/scene/input/MouseButton;
    move/from16 v8, p6

    .local v8, "clickCount":I
    move/from16 v9, p7

    .local v9, "shiftDown":Z
    move/from16 v10, p8

    .local v10, "shortcutDown":Z
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;->getCellContainer()Ljavafx/scene/control/Control;

    move-result-object v17

    move-object/from16 v11, v17

    .line 84
    .local v11, "table":Ljavafx/scene/control/Control;
    move-object/from16 v17, v11

    if-nez v17, :cond_0

    .line 122
    :goto_0
    return-void

    .line 88
    :cond_0
    move-object/from16 v17, v2

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    invoke-virtual/range {v17 .. v21}, Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;->handleDisclosureNode(DD)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 89
    goto :goto_0

    .line 92
    :cond_1
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v17

    move-object/from16 v12, v17

    .line 93
    .local v12, "sm":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<*>;"
    move-object/from16 v17, v12

    if-eqz v17, :cond_2

    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v17

    if-eqz v17, :cond_3

    :cond_2
    goto :goto_0

    .line 95
    :cond_3
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;->getIndex()I

    move-result v17

    move/from16 v13, v17

    .line 96
    .local v13, "index":I
    move-object/from16 v17, v12

    move/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Ljavafx/scene/control/TableSelectionModel;->isSelected(I)Z

    move-result v17

    move/from16 v14, v17

    .line 97
    .local v14, "isAlreadySelected":Z
    move/from16 v17, v8

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 99
    move-object/from16 v17, v2

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    invoke-virtual/range {v17 .. v21}, Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;->isClickPositionValid(DD)Z

    move-result v17

    if-nez v17, :cond_4

    goto :goto_0

    .line 104
    :cond_4
    move/from16 v17, v14

    if-eqz v17, :cond_5

    move/from16 v17, v10

    if-eqz v17, :cond_5

    .line 105
    move-object/from16 v17, v12

    move/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Ljavafx/scene/control/TableSelectionModel;->clearSelection(I)V

    .line 122
    :goto_1
    goto :goto_0

    .line 107
    :cond_5
    move/from16 v17, v10

    if-eqz v17, :cond_6

    .line 108
    move-object/from16 v17, v12

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;->getIndex()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljavafx/scene/control/TableSelectionModel;->select(I)V

    goto :goto_1

    .line 109
    :cond_6
    move/from16 v17, v9

    if-eqz v17, :cond_7

    .line 112
    move-object/from16 v17, v11

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;->getAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljavafx/scene/control/TablePositionBase;

    move-object/from16 v15, v17

    .line 113
    .local v15, "anchor":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<*>;"
    move-object/from16 v17, v15

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v17

    move/from16 v16, v17

    .line 114
    .local v16, "anchorRow":I
    move-object/from16 v17, v2

    move/from16 v18, v16

    move/from16 v19, v13

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;->selectRows(II)V

    .line 115
    goto :goto_1

    .line 116
    .end local v15    # "anchor":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<*>;"
    .end local v16    # "anchorRow":I
    :cond_7
    move-object/from16 v17, v2

    move-object/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v10

    invoke-virtual/range {v17 .. v20}, Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;->simpleSelect(Ljavafx/scene/input/MouseButton;IZ)V

    goto :goto_1

    .line 120
    :cond_8
    move-object/from16 v17, v2

    move-object/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v10

    invoke-virtual/range {v17 .. v20}, Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;->simpleSelect(Ljavafx/scene/input/MouseButton;IZ)V

    goto :goto_1
.end method

.method protected abstract getFocusedCell()Ljavafx/scene/control/TablePositionBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TablePositionBase",
            "<*>;"
        }
    .end annotation
.end method

.method protected bridge synthetic getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase<TT;>;"
    return-object v0
.end method

.method protected abstract getSelectionModel()Ljavafx/scene/control/TableSelectionModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableSelectionModel",
            "<*>;"
        }
    .end annotation
.end method

.method protected abstract getVisibleLeafColumns()Ljavafx/collections/ObservableList;
.end method

.method protected isClickPositionValid(DD)Z
    .locals 15

    .prologue
    .line 127
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v6, v10

    .line 128
    .local v6, "columns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumnBase<TT;*>;>;"
    const-wide/16 v10, 0x0

    move-wide v7, v10

    .line 129
    .local v7, "width":D
    const/4 v10, 0x0

    move v9, v10

    .local v9, "i":I
    :goto_0
    move v10, v9

    move-object v11, v6

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_0

    .line 130
    move-wide v10, v7

    move-object v12, v6

    move v13, v9

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v12}, Ljavafx/scene/control/TableColumnBase;->getWidth()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v7, v10

    .line 129
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 133
    :cond_0
    move-wide v10, v2

    move-wide v12, v7

    cmpl-double v10, v10, v12

    if-lez v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    move v1, v10

    .end local v1    # "this":Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase<TT;>;"
    return v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase<TT;>;"
    :cond_1
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public mousePressed(Ljavafx/scene/input/MouseEvent;)V
    .locals 8

    .prologue
    .line 62
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase<TT;>;"
    move-object v2, p1

    .local v2, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/TableRowBehaviorBase;->isClickPositionValid(DD)Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->mousePressed(Ljavafx/scene/input/MouseEvent;)V

    .line 65
    goto :goto_0
.end method

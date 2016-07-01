.class public abstract Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;
.super Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;
.source "TableCellBehaviorBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "TC:",
        "Ljavafx/scene/control/TableColumnBase",
        "<TS;*>;C:",
        "Ljavafx/scene/control/IndexedCell",
        "<TT;>;>",
        "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase",
        "<TC;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljavafx/scene/control/IndexedCell;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase<TS;TT;TTC;TC;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/IndexedCell;, "TC;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;-><init>(Ljavafx/scene/control/Cell;Ljava/util/List;)V

    .line 56
    return-void
.end method

.method private getColumn()I
    .locals 4

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase<TS;TT;TTC;TC;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v2

    move-object v1, v2

    .line 224
    .local v1, "tc":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->getVisibleLeafIndex(Ljavafx/scene/control/TableColumnBase;)I

    move-result v2

    move v0, v2

    .line 227
    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase<TS;TT;TTC;TC;>;"
    :goto_0
    return v0

    .end local v1    # "tc":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase<TS;TT;TTC;TC;>;"
    :cond_0
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected doSelect(DDLjavafx/scene/input/MouseButton;IZZ)V
    .locals 35

    .prologue
    .line 101
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase<TS;TT;TTC;TC;>;"
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-object/from16 v8, p5

    .local v8, "button":Ljavafx/scene/input/MouseButton;
    move/from16 v9, p6

    .local v9, "clickCount":I
    move/from16 v10, p7

    .local v10, "shiftDown":Z
    move/from16 v11, p8

    .local v11, "shortcutDown":Z
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v29

    check-cast v29, Ljavafx/scene/control/IndexedCell;

    move-object/from16 v12, v29

    .line 105
    .local v12, "tableCell":Ljavafx/scene/control/IndexedCell;, "TC;"
    move-object/from16 v29, v12

    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    invoke-virtual/range {v29 .. v33}, Ljavafx/scene/control/IndexedCell;->contains(DD)Z

    move-result v29

    if-nez v29, :cond_0

    .line 201
    :goto_0
    return-void

    .line 107
    :cond_0
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->getCellContainer()Ljavafx/scene/control/Control;

    move-result-object v29

    move-object/from16 v13, v29

    .line 108
    .local v13, "tableView":Ljavafx/scene/control/Control;
    move-object/from16 v29, v13

    if-nez v29, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->getItemCount()I

    move-result v29

    move/from16 v14, v29

    .line 111
    .local v14, "count":I
    move-object/from16 v29, v12

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/IndexedCell;->getIndex()I

    move-result v29

    move/from16 v30, v14

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_2

    goto :goto_0

    .line 113
    :cond_2
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v29

    move-object/from16 v15, v29

    .line 114
    .local v15, "sm":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TS;>;"
    move-object/from16 v29, v15

    if-nez v29, :cond_3

    goto :goto_0

    .line 116
    :cond_3
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->isSelected()Z

    move-result v29

    move/from16 v16, v29

    .line 117
    .local v16, "selected":Z
    move-object/from16 v29, v12

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/IndexedCell;->getIndex()I

    move-result v29

    move/from16 v17, v29

    .line 118
    .local v17, "row":I
    move-object/from16 v29, v3

    invoke-direct/range {v29 .. v29}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->getColumn()I

    move-result v29

    move/from16 v18, v29

    .line 119
    .local v18, "column":I
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v29

    move-object/from16 v19, v29

    .line 121
    .local v19, "tableColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v29

    move-object/from16 v20, v29

    .line 122
    .local v20, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object/from16 v29, v20

    if-nez v29, :cond_4

    goto :goto_0

    .line 124
    :cond_4
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v29

    move-object/from16 v21, v29

    .line 128
    .local v21, "focusedCell":Ljavafx/scene/control/TablePositionBase;
    move-object/from16 v29, v3

    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    invoke-virtual/range {v29 .. v33}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->handleDisclosureNode(DD)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 129
    goto :goto_0

    .line 136
    :cond_5
    move/from16 v29, v10

    if-eqz v29, :cond_9

    .line 137
    move-object/from16 v29, v13

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->hasNonDefaultAnchor(Ljavafx/scene/control/Control;)Z

    move-result v29

    if-nez v29, :cond_6

    .line 138
    move-object/from16 v29, v13

    move-object/from16 v30, v21

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->setAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;Z)V

    .line 146
    :cond_6
    :goto_1
    move-object/from16 v29, v8

    sget-object v30, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_7

    move-object/from16 v29, v8

    sget-object v30, Ljavafx/scene/input/MouseButton;->SECONDARY:Ljavafx/scene/input/MouseButton;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_8

    move/from16 v29, v16

    if-nez v29, :cond_8

    .line 147
    :cond_7
    move-object/from16 v29, v15

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/TableSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v29

    sget-object v30, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_a

    .line 148
    move-object/from16 v29, v3

    move-object/from16 v30, v8

    move/from16 v31, v9

    move/from16 v32, v11

    invoke-virtual/range {v29 .. v32}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->simpleSelect(Ljavafx/scene/input/MouseButton;IZ)V

    .line 201
    :cond_8
    :goto_2
    goto/16 :goto_0

    .line 141
    :cond_9
    move-object/from16 v29, v13

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->removeAnchor(Ljavafx/scene/control/Control;)V

    goto :goto_1

    .line 150
    :cond_a
    move/from16 v29, v11

    if-eqz v29, :cond_c

    .line 151
    move/from16 v29, v16

    if-eqz v29, :cond_b

    .line 153
    move-object/from16 v29, v15

    move/from16 v30, v17

    move-object/from16 v31, v19

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/control/TableSelectionModel;->clearSelection(ILjavafx/scene/control/TableColumnBase;)V

    .line 154
    move-object/from16 v29, v20

    move/from16 v30, v17

    move-object/from16 v31, v19

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/control/TableFocusModel;->focus(ILjavafx/scene/control/TableColumnBase;)V

    goto :goto_2

    .line 157
    :cond_b
    move-object/from16 v29, v15

    move/from16 v30, v17

    move-object/from16 v31, v19

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/control/TableSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    goto :goto_2

    .line 159
    :cond_c
    move/from16 v29, v10

    if-eqz v29, :cond_11

    .line 162
    move-object/from16 v29, v13

    move-object/from16 v30, v21

    invoke-static/range {v29 .. v30}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->getAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljavafx/scene/control/TablePositionBase;

    move-object/from16 v22, v29

    .line 164
    .local v22, "anchor":Ljavafx/scene/control/TablePositionBase;
    move-object/from16 v29, v22

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v29

    move/from16 v23, v29

    .line 166
    .local v23, "anchorRow":I
    move/from16 v29, v23

    move/from16 v30, v17

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_d

    const/16 v29, 0x1

    :goto_3
    move/from16 v24, v29

    .line 169
    .local v24, "asc":Z
    move-object/from16 v29, v15

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/TableSelectionModel;->clearSelection()V

    .line 172
    move/from16 v29, v23

    move/from16 v30, v17

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->min(II)I

    move-result v29

    move/from16 v25, v29

    .line 173
    .local v25, "minRow":I
    move/from16 v29, v23

    move/from16 v30, v17

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->max(II)I

    move-result v29

    move/from16 v26, v29

    .line 174
    .local v26, "maxRow":I
    move-object/from16 v29, v22

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/TablePositionBase;->getColumn()I

    move-result v29

    move/from16 v30, v18

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_e

    move-object/from16 v29, v22

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v29

    :goto_4
    move-object/from16 v27, v29

    .line 175
    .local v27, "minColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object/from16 v29, v22

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/TablePositionBase;->getColumn()I

    move-result v29

    move/from16 v30, v18

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_f

    move-object/from16 v29, v22

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v29

    :goto_5
    move-object/from16 v28, v29

    .line 182
    .local v28, "maxColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move/from16 v29, v24

    if-eqz v29, :cond_10

    .line 183
    move-object/from16 v29, v15

    move/from16 v30, v25

    move-object/from16 v31, v27

    move/from16 v32, v26

    move-object/from16 v33, v28

    invoke-virtual/range {v29 .. v33}, Ljavafx/scene/control/TableSelectionModel;->selectRange(ILjavafx/scene/control/TableColumnBase;ILjavafx/scene/control/TableColumnBase;)V

    .line 196
    :goto_6
    goto/16 :goto_2

    .line 166
    .end local v24    # "asc":Z
    .end local v25    # "minRow":I
    .end local v26    # "maxRow":I
    .end local v27    # "minColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    .end local v28    # "maxColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    :cond_d
    const/16 v29, 0x0

    goto :goto_3

    .line 174
    .restart local v24    # "asc":Z
    .restart local v25    # "minRow":I
    .restart local v26    # "maxRow":I
    :cond_e
    move-object/from16 v29, v19

    goto :goto_4

    .line 175
    .restart local v27    # "minColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    :cond_f
    move-object/from16 v29, v19

    goto :goto_5

    .line 185
    .restart local v28    # "maxColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    :cond_10
    move-object/from16 v29, v15

    move/from16 v30, v26

    move-object/from16 v31, v27

    move/from16 v32, v25

    move-object/from16 v33, v28

    invoke-virtual/range {v29 .. v33}, Ljavafx/scene/control/TableSelectionModel;->selectRange(ILjavafx/scene/control/TableColumnBase;ILjavafx/scene/control/TableColumnBase;)V

    goto :goto_6

    .line 197
    .end local v22    # "anchor":Ljavafx/scene/control/TablePositionBase;
    .end local v23    # "anchorRow":I
    .end local v24    # "asc":Z
    .end local v25    # "minRow":I
    .end local v26    # "maxRow":I
    .end local v27    # "minColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    .end local v28    # "maxColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    :cond_11
    move-object/from16 v29, v3

    move-object/from16 v30, v8

    move/from16 v31, v9

    move/from16 v32, v11

    invoke-virtual/range {v29 .. v32}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->simpleSelect(Ljavafx/scene/input/MouseButton;IZ)V

    goto/16 :goto_2
.end method

.method protected abstract focus(ILjavafx/scene/control/TableColumnBase;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;TT;>;)V"
        }
    .end annotation
.end method

.method protected bridge synthetic getFocusModel()Ljavafx/scene/control/FocusModel;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase<TS;TT;TTC;TC;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase<TS;TT;TTC;TC;>;"
    return-object v0
.end method

.method protected abstract getFocusModel()Ljavafx/scene/control/TableFocusModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableFocusModel",
            "<TS;TTC;>;"
        }
    .end annotation
.end method

.method protected abstract getFocusedCell()Ljavafx/scene/control/TablePositionBase;
.end method

.method protected abstract getItemCount()I
.end method

.method protected bridge synthetic getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase<TS;TT;TTC;TC;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase<TS;TT;TTC;TC;>;"
    return-object v0
.end method

.method protected abstract getSelectionModel()Ljavafx/scene/control/TableSelectionModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableSelectionModel",
            "<TS;>;"
        }
    .end annotation
.end method

.method protected abstract getTableColumn()Ljavafx/scene/control/TableColumnBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;TT;>;"
        }
    .end annotation
.end method

.method protected abstract getVisibleLeafIndex(Ljavafx/scene/control/TableColumnBase;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;TT;>;)I"
        }
    .end annotation
.end method

.method protected isSelected()Z
    .locals 4

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase<TS;TT;TTC;TC;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v3

    move-object v1, v3

    .line 233
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TS;>;"
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 239
    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase<TS;TT;TTC;TC;>;"
    :goto_0
    return v0

    .line 235
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase<TS;TT;TTC;TC;>;"
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/IndexedCell;

    move-object v2, v3

    .line 237
    .local v2, "cell":Ljavafx/scene/control/IndexedCell;, "TC;"
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/IndexedCell;->isSelected()Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 239
    .end local v2    # "cell":Ljavafx/scene/control/IndexedCell;, "TC;"
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->isTableRowSelected()Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method protected abstract isTableRowSelected()Z
.end method

.method protected simpleSelect(Ljavafx/scene/input/MouseButton;IZ)V
    .locals 12

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase<TS;TT;TTC;TC;>;"
    move-object v1, p1

    .local v1, "button":Ljavafx/scene/input/MouseButton;
    move v2, p2

    .local v2, "clickCount":I
    move v3, p3

    .local v3, "shortcutDown":Z
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v8

    move-object v4, v8

    .line 205
    .local v4, "sm":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TS;>;"
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/IndexedCell;

    invoke-virtual {v8}, Ljavafx/scene/control/IndexedCell;->getIndex()I

    move-result v8

    move v5, v8

    .line 206
    .local v5, "row":I
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v8

    move-object v6, v8

    .line 207
    .local v6, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v8, v4

    move v9, v5

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TableSelectionModel;->isSelected(ILjavafx/scene/control/TableColumnBase;)Z

    move-result v8

    move v7, v8

    .line 209
    .local v7, "isAlreadySelected":Z
    move v8, v7

    if-eqz v8, :cond_0

    move v8, v3

    if-eqz v8, :cond_0

    .line 210
    move-object v8, v4

    move v9, v5

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TableSelectionModel;->clearSelection(ILjavafx/scene/control/TableColumnBase;)V

    .line 211
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v8

    move v9, v5

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TableFocusModel;->focus(ILjavafx/scene/control/TableColumnBase;)V

    .line 212
    const/4 v8, 0x0

    move v7, v8

    .line 218
    :goto_0
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move v11, v7

    invoke-virtual {v8, v9, v10, v11}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->handleClicks(Ljavafx/scene/input/MouseButton;IZ)V

    .line 219
    return-void

    .line 215
    :cond_0
    move-object v8, v4

    move v9, v5

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TableSelectionModel;->clearAndSelect(ILjavafx/scene/control/TableColumnBase;)V

    goto :goto_0
.end method

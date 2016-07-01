.class public Lcom/sun/javafx/scene/control/skin/DateCellSkin;
.super Lcom/sun/javafx/scene/control/skin/CellSkinBase;
.source "DateCellSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/CellSkinBase",
        "<",
        "Ljavafx/scene/control/DateCell;",
        "Lcom/sun/javafx/scene/control/behavior/DateCellBehavior;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljavafx/scene/control/DateCell;)V
    .locals 9

    .prologue
    .line 36
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/DateCellSkin;
    move-object v2, p1

    .local v2, "control":Ljavafx/scene/control/DateCell;
    move-object v3, v1

    move-object v4, v2

    new-instance v5, Lcom/sun/javafx/scene/control/behavior/DateCellBehavior;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/behavior/DateCellBehavior;-><init>(Ljavafx/scene/control/DateCell;)V

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;-><init>(Ljavafx/scene/control/Cell;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 38
    move-object v3, v2

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/DateCell;->setMaxWidth(D)V

    .line 39
    return-void
.end method

.method private cellSize()D
    .locals 8

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DateCellSkin;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/DateCellSkin;->getCellSize()D

    move-result-wide v4

    move-wide v1, v4

    .line 68
    .local v1, "cellSize":D
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/DateCellSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/DateCell;

    invoke-virtual {v4}, Ljavafx/scene/control/DateCell;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v4

    const-string v5, "DateCell.secondaryText"

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/text/Text;

    move-object v3, v4

    .line 69
    .local v3, "secondaryText":Ljavafx/scene/text/Text;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-wide v4, v1

    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 71
    const-wide/high16 v4, 0x4042000000000000L    # 36.0

    move-wide v1, v4

    .line 73
    :cond_0
    move-wide v4, v1

    move-wide v0, v4

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/DateCellSkin;
    return-wide v0
.end method


# virtual methods
.method protected computePrefHeight(DDDDD)D
    .locals 25

    .prologue
    .line 86
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DateCellSkin;
    move-wide/from16 v1, p1

    .local v1, "width":D
    move-wide/from16 v3, p3

    .local v3, "topInset":D
    move-wide/from16 v5, p5

    .local v5, "rightInset":D
    move-wide/from16 v7, p7

    .local v7, "bottomInset":D
    move-wide/from16 v9, p9

    .local v9, "leftInset":D
    move-object v13, v0

    move-wide v14, v1

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    invoke-super/range {v13 .. v23}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->computePrefHeight(DDDDD)D

    move-result-wide v13

    move-wide v11, v13

    .line 87
    .local v11, "pref":D
    move-object v13, v0

    move-wide v14, v11

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/DateCellSkin;->cellSize()D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/sun/javafx/scene/control/skin/DateCellSkin;->snapSize(D)D

    move-result-wide v13

    move-wide v0, v13

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/DateCellSkin;
    return-wide v0
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 25

    .prologue
    .line 79
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DateCellSkin;
    move-wide/from16 v1, p1

    .local v1, "height":D
    move-wide/from16 v3, p3

    .local v3, "topInset":D
    move-wide/from16 v5, p5

    .local v5, "rightInset":D
    move-wide/from16 v7, p7

    .local v7, "bottomInset":D
    move-wide/from16 v9, p9

    .local v9, "leftInset":D
    move-object v13, v0

    move-wide v14, v1

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    invoke-super/range {v13 .. v23}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->computePrefWidth(DDDDD)D

    move-result-wide v13

    move-wide v11, v13

    .line 80
    .local v11, "pref":D
    move-object v13, v0

    move-wide v14, v11

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/DateCellSkin;->cellSize()D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/sun/javafx/scene/control/skin/DateCellSkin;->snapSize(D)D

    move-result-wide v13

    move-wide v0, v13

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/DateCellSkin;
    return-wide v0
.end method

.method protected layoutChildren(DDDD)V
    .locals 23

    .prologue
    .line 55
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DateCellSkin;
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "w":D
    move-wide/from16 v7, p7

    .local v7, "h":D
    move-object v14, v0

    move-wide v15, v1

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    move-wide/from16 v21, v7

    invoke-super/range {v14 .. v22}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->layoutChildren(DDDD)V

    .line 57
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/DateCellSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/DateCell;

    invoke-virtual {v14}, Ljavafx/scene/control/DateCell;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v14

    const-string v15, "DateCell.secondaryText"

    invoke-interface {v14, v15}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/text/Text;

    move-object v9, v14

    .line 58
    .local v9, "secondaryText":Ljavafx/scene/text/Text;
    move-object v14, v9

    if-eqz v14, :cond_0

    .line 60
    move-wide v14, v1

    move-wide/from16 v16, v5

    add-double v14, v14, v16

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/DateCellSkin;->rightLabelPadding()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-wide v10, v14

    .line 61
    .local v10, "textX":D
    move-wide v14, v3

    move-wide/from16 v16, v7

    add-double v14, v14, v16

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/DateCellSkin;->bottomLabelPadding()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-wide v12, v14

    .line 62
    .local v12, "textY":D
    move-object v14, v9

    move-object v15, v0

    move-wide/from16 v16, v10

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/scene/control/skin/DateCellSkin;->snapPosition(D)D

    move-result-wide v15

    move-object/from16 v17, v0

    move-wide/from16 v18, v12

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/scene/control/skin/DateCellSkin;->snapPosition(D)D

    move-result-wide v17

    invoke-virtual/range {v14 .. v18}, Ljavafx/scene/text/Text;->relocate(DD)V

    .line 64
    .end local v10    # "textX":D
    .end local v12    # "textY":D
    :cond_0
    return-void
.end method

.method protected updateChildren()V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DateCellSkin;
    move-object v2, v0

    invoke-super {v2}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->updateChildren()V

    .line 44
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/DateCellSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/DateCell;

    invoke-virtual {v2}, Ljavafx/scene/control/DateCell;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    const-string v3, "DateCell.secondaryText"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/text/Text;

    move-object v1, v2

    .line 45
    .local v1, "secondaryText":Ljavafx/scene/text/Text;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 48
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->setManaged(Z)V

    .line 49
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/DateCellSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 51
    :cond_0
    return-void
.end method

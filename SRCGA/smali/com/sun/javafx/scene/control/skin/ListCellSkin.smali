.class public Lcom/sun/javafx/scene/control/skin/ListCellSkin;
.super Lcom/sun/javafx/scene/control/skin/CellSkinBase;
.source "ListCellSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/skin/CellSkinBase",
        "<",
        "Ljavafx/scene/control/ListCell",
        "<TT;>;",
        "Lcom/sun/javafx/scene/control/behavior/ListCellBehavior",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private fixedCellSize:D

.field private fixedCellSizeEnabled:Z


# direct methods
.method public constructor <init>(Ljavafx/scene/control/ListCell;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ListCellSkin;, "Lcom/sun/javafx/scene/control/skin/ListCellSkin<TT;>;"
    move-object v2, p1

    .local v2, "control":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v3, v1

    move-object v4, v2

    new-instance v5, Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;-><init>(Ljavafx/scene/control/ListCell;)V

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;-><init>(Ljavafx/scene/control/Cell;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 42
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ListCell;->getListView()Ljavafx/scene/control/ListView;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/ListView;->getFixedCellSize()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ListCellSkin;->fixedCellSize:D

    .line 43
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/ListCellSkin;->fixedCellSize:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/ListCellSkin;->fixedCellSizeEnabled:Z

    .line 45
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ListCell;->getListView()Ljavafx/scene/control/ListView;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/ListView;->fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    const-string v5, "FIXED_CELL_SIZE"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ListCellSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 46
    return-void

    .line 43
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected computeMaxHeight(DDDDD)D
    .locals 23

    .prologue
    .line 84
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ListCellSkin;, "Lcom/sun/javafx/scene/control/skin/ListCellSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    iget-boolean v12, v12, Lcom/sun/javafx/scene/control/skin/ListCellSkin;->fixedCellSizeEnabled:Z

    if-eqz v12, :cond_0

    .line 85
    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/control/skin/ListCellSkin;->fixedCellSize:D

    move-wide v1, v12

    .line 88
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ListCellSkin;, "Lcom/sun/javafx/scene/control/skin/ListCellSkin<TT;>;"
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ListCellSkin;, "Lcom/sun/javafx/scene/control/skin/ListCellSkin<TT;>;"
    :cond_0
    move-object v12, v1

    move-wide v13, v2

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    invoke-super/range {v12 .. v22}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->computeMaxHeight(DDDDD)D

    move-result-wide v12

    move-wide v1, v12

    goto :goto_0
.end method

.method protected computeMinHeight(DDDDD)D
    .locals 23

    .prologue
    .line 76
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ListCellSkin;, "Lcom/sun/javafx/scene/control/skin/ListCellSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    iget-boolean v12, v12, Lcom/sun/javafx/scene/control/skin/ListCellSkin;->fixedCellSizeEnabled:Z

    if-eqz v12, :cond_0

    .line 77
    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/control/skin/ListCellSkin;->fixedCellSize:D

    move-wide v1, v12

    .line 80
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ListCellSkin;, "Lcom/sun/javafx/scene/control/skin/ListCellSkin<TT;>;"
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ListCellSkin;, "Lcom/sun/javafx/scene/control/skin/ListCellSkin<TT;>;"
    :cond_0
    move-object v12, v1

    move-wide v13, v2

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    invoke-super/range {v12 .. v22}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->computeMinHeight(DDDDD)D

    move-result-wide v12

    move-wide v1, v12

    goto :goto_0
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 29

    .prologue
    .line 64
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/ListCellSkin;, "Lcom/sun/javafx/scene/control/skin/ListCellSkin<TT;>;"
    move-wide/from16 v4, p1

    .local v4, "width":D
    move-wide/from16 v6, p3

    .local v6, "topInset":D
    move-wide/from16 v8, p5

    .local v8, "rightInset":D
    move-wide/from16 v10, p7

    .local v10, "bottomInset":D
    move-wide/from16 v12, p9

    .local v12, "leftInset":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ListCellSkin;->fixedCellSizeEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 65
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ListCellSkin;->fixedCellSize:D

    move-wide/from16 v18, v0

    move-wide/from16 v3, v18

    .line 72
    .end local v3    # "this":Lcom/sun/javafx/scene/control/skin/ListCellSkin;, "Lcom/sun/javafx/scene/control/skin/ListCellSkin<TT;>;"
    :goto_0
    return-wide v3

    .line 70
    .restart local v3    # "this":Lcom/sun/javafx/scene/control/skin/ListCellSkin;, "Lcom/sun/javafx/scene/control/skin/ListCellSkin<TT;>;"
    :cond_0
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ListCellSkin;->getCellSize()D

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 71
    .local v14, "cellSize":D
    move-wide/from16 v18, v14

    const-wide/high16 v20, 0x4038000000000000L    # 24.0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_1

    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move-wide/from16 v25, v10

    move-wide/from16 v27, v12

    invoke-super/range {v18 .. v28}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->computePrefHeight(DDDDD)D

    move-result-wide v18

    :goto_1
    move-wide/from16 v16, v18

    .line 72
    .local v16, "prefHeight":D
    move-wide/from16 v18, v16

    move-wide/from16 v3, v18

    goto :goto_0

    .line 71
    .end local v16    # "prefHeight":D
    :cond_1
    move-wide/from16 v18, v14

    goto :goto_1
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 27

    .prologue
    .line 57
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ListCellSkin;, "Lcom/sun/javafx/scene/control/skin/ListCellSkin<TT;>;"
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
    move-object v15, v1

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-wide/from16 v24, v10

    invoke-super/range {v15 .. v25}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->computePrefWidth(DDDDD)D

    move-result-wide v15

    move-wide v12, v15

    .line 58
    .local v12, "pref":D
    move-object v15, v1

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/ListCellSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/ListCell;

    invoke-virtual {v15}, Ljavafx/scene/control/ListCell;->getListView()Ljavafx/scene/control/ListView;

    move-result-object v15

    move-object v14, v15

    .line 59
    .local v14, "listView":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v15, v14

    if-nez v15, :cond_0

    const-wide/16 v15, 0x0

    .line 60
    :goto_0
    move-wide v1, v15

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ListCellSkin;, "Lcom/sun/javafx/scene/control/skin/ListCellSkin<TT;>;"
    return-wide v1

    .line 59
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ListCellSkin;, "Lcom/sun/javafx/scene/control/skin/ListCellSkin<TT;>;"
    :cond_0
    move-object v15, v14

    .line 60
    invoke-virtual {v15}, Ljavafx/scene/control/ListView;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v15

    sget-object v16, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1

    move-wide v15, v12

    goto :goto_0

    :cond_1
    move-wide v15, v12

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/ListCellSkin;->getCellSize()D

    move-result-wide v17

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->max(DD)D

    move-result-wide v15

    goto :goto_0
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ListCellSkin;, "Lcom/sun/javafx/scene/control/skin/ListCellSkin<TT;>;"
    move-object v2, p1

    .local v2, "p":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 50
    const-string v3, "FIXED_CELL_SIZE"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ListCellSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ListCell;

    invoke-virtual {v4}, Ljavafx/scene/control/ListCell;->getListView()Ljavafx/scene/control/ListView;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/ListView;->getFixedCellSize()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ListCellSkin;->fixedCellSize:D

    .line 52
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/ListCellSkin;->fixedCellSize:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/ListCellSkin;->fixedCellSizeEnabled:Z

    .line 54
    :cond_0
    return-void

    .line 52
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.class public Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;
.super Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;
.source "CheckBoxSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase",
        "<",
        "Ljavafx/scene/control/CheckBox;",
        "Lcom/sun/javafx/scene/control/behavior/ButtonBehavior",
        "<",
        "Ljavafx/scene/control/CheckBox;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final box:Ljavafx/scene/layout/StackPane;

.field private innerbox:Ljavafx/scene/layout/StackPane;


# direct methods
.method public constructor <init>(Ljavafx/scene/control/CheckBox;)V
    .locals 8

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;
    move-object v1, p1

    .local v1, "checkbox":Ljavafx/scene/control/CheckBox;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;-><init>(Ljavafx/scene/control/ButtonBase;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;-><init>(Ljavafx/scene/control/Labeled;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 39
    move-object v2, v0

    new-instance v3, Ljavafx/scene/layout/StackPane;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->box:Ljavafx/scene/layout/StackPane;

    .line 45
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->box:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "box"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 46
    move-object v2, v0

    new-instance v3, Ljavafx/scene/layout/StackPane;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->innerbox:Ljavafx/scene/layout/StackPane;

    .line 47
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->innerbox:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "mark"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 48
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->innerbox:Ljavafx/scene/layout/StackPane;

    sget-object v3, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/StackPane;->setNodeOrientation(Ljavafx/geometry/NodeOrientation;)V

    .line 49
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->box:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->innerbox:Ljavafx/scene/layout/StackPane;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 50
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->updateChildren()V

    .line 51
    return-void
.end method


# virtual methods
.method protected computeMinHeight(DDDDD)D
    .locals 23

    .prologue
    .line 65
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;
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

    move-wide v13, v2

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->box:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v15 .. v17}, Ljavafx/scene/layout/StackPane;->minWidth(D)D

    move-result-wide v15

    sub-double/2addr v13, v15

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    invoke-super/range {v12 .. v22}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->computeMinHeight(DDDDD)D

    move-result-wide v12

    move-wide v14, v4

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->box:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    .line 66
    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/StackPane;->minHeight(D)D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide/from16 v16, v8

    add-double v14, v14, v16

    .line 65
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;
    return-wide v1
.end method

.method protected computeMinWidth(DDDDD)D
    .locals 23

    .prologue
    .line 61
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;
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

    move-wide v13, v2

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    invoke-super/range {v12 .. v22}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->computeMinWidth(DDDDD)D

    move-result-wide v12

    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->box:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v15 .. v17}, Ljavafx/scene/layout/StackPane;->minWidth(D)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->snapSize(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;
    return-wide v1
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 23

    .prologue
    .line 74
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;
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

    move-wide v13, v2

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->box:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v15 .. v17}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v15

    sub-double/2addr v13, v15

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    invoke-super/range {v12 .. v22}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->computePrefHeight(DDDDD)D

    move-result-wide v12

    move-wide v14, v4

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->box:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    .line 75
    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide/from16 v16, v8

    add-double v14, v14, v16

    .line 74
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;
    return-wide v1
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 23

    .prologue
    .line 70
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;
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

    move-wide v13, v2

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    invoke-super/range {v12 .. v22}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->computePrefWidth(DDDDD)D

    move-result-wide v12

    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->box:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v15 .. v17}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->snapSize(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;
    return-wide v1
.end method

.method protected layoutChildren(DDDD)V
    .locals 43

    .prologue
    .line 80
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;
    move-wide/from16 v3, p1

    .local v3, "x":D
    move-wide/from16 v5, p3

    .local v5, "y":D
    move-wide/from16 v7, p5

    .local v7, "w":D
    move-wide/from16 v9, p7

    .local v9, "h":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v28

    check-cast v28, Ljavafx/scene/control/CheckBox;

    move-object/from16 v11, v28

    .line 81
    .local v11, "checkBox":Ljavafx/scene/control/CheckBox;
    move-object/from16 v28, v2

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->box:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->snapSize(D)D

    move-result-wide v28

    move-wide/from16 v12, v28

    .line 82
    .local v12, "boxWidth":D
    move-object/from16 v28, v2

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->box:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->snapSize(D)D

    move-result-wide v28

    move-wide/from16 v14, v28

    .line 83
    .local v14, "boxHeight":D
    move-object/from16 v28, v11

    const-wide/high16 v29, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/control/CheckBox;->prefWidth(D)D

    move-result-wide v28

    move-object/from16 v30, v11

    const-wide/high16 v31, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v30 .. v32}, Ljavafx/scene/control/CheckBox;->minWidth(D)D

    move-result-wide v30

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    move-wide/from16 v16, v28

    .line 84
    .local v16, "computeWidth":D
    move-wide/from16 v28, v16

    move-wide/from16 v30, v12

    sub-double v28, v28, v30

    move-wide/from16 v30, v7

    move-object/from16 v32, v2

    move-wide/from16 v33, v12

    invoke-virtual/range {v32 .. v34}, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->snapSize(D)D

    move-result-wide v32

    sub-double v30, v30, v32

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v18, v28

    .line 85
    .local v18, "labelWidth":D
    move-object/from16 v28, v11

    move-wide/from16 v29, v18

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/control/CheckBox;->prefHeight(D)D

    move-result-wide v28

    move-wide/from16 v30, v9

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v20, v28

    .line 86
    .local v20, "labelHeight":D
    move-wide/from16 v28, v14

    move-wide/from16 v30, v20

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    move-wide/from16 v22, v28

    .line 87
    .local v22, "maxHeight":D
    move-wide/from16 v28, v7

    move-wide/from16 v30, v18

    move-wide/from16 v32, v12

    add-double v30, v30, v32

    move-object/from16 v32, v11

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/control/CheckBox;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v32

    invoke-static/range {v28 .. v32}, Lcom/sun/javafx/scene/control/skin/Utils;->computeXOffset(DDLjavafx/geometry/HPos;)D

    move-result-wide v28

    move-wide/from16 v30, v3

    add-double v28, v28, v30

    move-wide/from16 v24, v28

    .line 88
    .local v24, "xOffset":D
    move-wide/from16 v28, v9

    move-wide/from16 v30, v22

    move-object/from16 v32, v11

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/control/CheckBox;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v32

    invoke-static/range {v28 .. v32}, Lcom/sun/javafx/scene/control/skin/Utils;->computeYOffset(DDLjavafx/geometry/VPos;)D

    move-result-wide v28

    move-wide/from16 v30, v3

    add-double v28, v28, v30

    move-wide/from16 v26, v28

    .line 90
    .local v26, "yOffset":D
    move-object/from16 v28, v2

    move-wide/from16 v29, v24

    move-wide/from16 v31, v12

    add-double v29, v29, v31

    move-wide/from16 v31, v26

    move-wide/from16 v33, v18

    move-wide/from16 v35, v22

    move-object/from16 v37, v11

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/control/CheckBox;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v37

    invoke-virtual/range {v28 .. v37}, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->layoutLabelInArea(DDDDLjavafx/geometry/Pos;)V

    .line 91
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->box:Ljavafx/scene/layout/StackPane;

    move-object/from16 v28, v0

    move-wide/from16 v29, v12

    move-wide/from16 v31, v14

    invoke-virtual/range {v28 .. v32}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 92
    move-object/from16 v28, v2

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->box:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    move-wide/from16 v30, v24

    move-wide/from16 v32, v26

    move-wide/from16 v34, v12

    move-wide/from16 v36, v22

    const-wide/16 v38, 0x0

    move-object/from16 v40, v11

    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/control/CheckBox;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v40

    move-object/from16 v41, v11

    invoke-virtual/range {v41 .. v41}, Ljavafx/scene/control/CheckBox;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v41

    invoke-virtual/range {v28 .. v41}, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 93
    return-void
.end method

.method protected updateChildren()V
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->updateChildren()V

    .line 55
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->box:Ljavafx/scene/layout/StackPane;

    if-eqz v1, :cond_0

    .line 56
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;->box:Ljavafx/scene/layout/StackPane;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 58
    :cond_0
    return-void
.end method

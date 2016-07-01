.class public Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;
.super Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;
.source "RadioButtonSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase",
        "<",
        "Ljavafx/scene/control/RadioButton;",
        "Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior",
        "<",
        "Ljavafx/scene/control/RadioButton;",
        ">;>;"
    }
.end annotation


# instance fields
.field private radio:Ljavafx/scene/layout/StackPane;


# direct methods
.method public constructor <init>(Ljavafx/scene/control/RadioButton;)V
    .locals 8

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;
    move-object v1, p1

    .local v1, "radioButton":Ljavafx/scene/control/RadioButton;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;-><init>(Ljavafx/scene/control/ToggleButton;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;-><init>(Ljavafx/scene/control/Labeled;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 47
    move-object v2, v0

    invoke-static {}, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->createRadio()Ljavafx/scene/layout/StackPane;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->radio:Ljavafx/scene/layout/StackPane;

    .line 48
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->updateChildren()V

    .line 49
    return-void
.end method

.method private static createRadio()Ljavafx/scene/layout/StackPane;
    .locals 8

    .prologue
    .line 59
    new-instance v2, Ljavafx/scene/layout/StackPane;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v0, v2

    .line 60
    .local v0, "radio":Ljavafx/scene/layout/StackPane;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "radio"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 61
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/StackPane;->setSnapToPixel(Z)V

    .line 62
    new-instance v2, Ljavafx/scene/layout/StackPane;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v1, v2

    .line 63
    .local v1, "region":Ljavafx/scene/layout/StackPane;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "dot"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 64
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->clear()V

    .line 65
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/scene/Node;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v2

    .line 66
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "radio":Ljavafx/scene/layout/StackPane;
    return-object v0
.end method


# virtual methods
.method protected computeMinHeight(DDDDD)D
    .locals 25

    .prologue
    .line 81
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;
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

    move-object v13, v1

    move-wide v14, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->radio:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/StackPane;->minWidth(D)D

    move-result-wide v16

    sub-double v14, v14, v16

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    invoke-super/range {v13 .. v23}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->computeMinHeight(DDDDD)D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->snapSize(D)D

    move-result-wide v12

    move-wide v14, v4

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->radio:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    .line 82
    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/StackPane;->minHeight(D)D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide/from16 v16, v8

    add-double v14, v14, v16

    .line 81
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;
    return-wide v1
.end method

.method protected computeMinWidth(DDDDD)D
    .locals 23

    .prologue
    .line 77
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;
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

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->radio:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v15 .. v17}, Ljavafx/scene/layout/StackPane;->minWidth(D)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->snapSize(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;
    return-wide v1
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 25

    .prologue
    .line 90
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;
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

    move-object v13, v1

    move-wide v14, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->radio:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v16

    sub-double v14, v14, v16

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    invoke-super/range {v13 .. v23}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->computePrefHeight(DDDDD)D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->snapSize(D)D

    move-result-wide v12

    move-wide v14, v4

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->radio:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    .line 91
    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide/from16 v16, v8

    add-double v14, v14, v16

    .line 90
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;
    return-wide v1
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 23

    .prologue
    .line 86
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;
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

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->radio:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v15 .. v17}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->snapSize(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;
    return-wide v1
.end method

.method protected layoutChildren(DDDD)V
    .locals 43

    .prologue
    .line 96
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;
    move-wide/from16 v3, p1

    .local v3, "x":D
    move-wide/from16 v5, p3

    .local v5, "y":D
    move-wide/from16 v7, p5

    .local v7, "w":D
    move-wide/from16 v9, p7

    .local v9, "h":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v28

    check-cast v28, Ljavafx/scene/control/RadioButton;

    move-object/from16 v11, v28

    .line 97
    .local v11, "radioButton":Ljavafx/scene/control/RadioButton;
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->radio:Ljavafx/scene/layout/StackPane;

    move-object/from16 v28, v0

    const-wide/high16 v29, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v28

    move-wide/from16 v12, v28

    .line 98
    .local v12, "radioWidth":D
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->radio:Ljavafx/scene/layout/StackPane;

    move-object/from16 v28, v0

    const-wide/high16 v29, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v28

    move-wide/from16 v14, v28

    .line 99
    .local v14, "radioHeight":D
    move-object/from16 v28, v11

    const-wide/high16 v29, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/control/RadioButton;->prefWidth(D)D

    move-result-wide v28

    move-object/from16 v30, v11

    const-wide/high16 v31, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v30 .. v32}, Ljavafx/scene/control/RadioButton;->minWidth(D)D

    move-result-wide v30

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    move-wide/from16 v16, v28

    .line 100
    .local v16, "computeWidth":D
    move-wide/from16 v28, v16

    move-wide/from16 v30, v12

    sub-double v28, v28, v30

    move-wide/from16 v30, v7

    move-object/from16 v32, v2

    move-wide/from16 v33, v12

    invoke-virtual/range {v32 .. v34}, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->snapSize(D)D

    move-result-wide v32

    sub-double v30, v30, v32

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v18, v28

    .line 101
    .local v18, "labelWidth":D
    move-object/from16 v28, v11

    move-wide/from16 v29, v18

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/control/RadioButton;->prefHeight(D)D

    move-result-wide v28

    move-wide/from16 v30, v9

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v20, v28

    .line 102
    .local v20, "labelHeight":D
    move-wide/from16 v28, v14

    move-wide/from16 v30, v20

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    move-wide/from16 v22, v28

    .line 103
    .local v22, "maxHeight":D
    move-wide/from16 v28, v7

    move-wide/from16 v30, v18

    move-wide/from16 v32, v12

    add-double v30, v30, v32

    move-object/from16 v32, v11

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/control/RadioButton;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v32

    invoke-static/range {v28 .. v32}, Lcom/sun/javafx/scene/control/skin/Utils;->computeXOffset(DDLjavafx/geometry/HPos;)D

    move-result-wide v28

    move-wide/from16 v30, v3

    add-double v28, v28, v30

    move-wide/from16 v24, v28

    .line 104
    .local v24, "xOffset":D
    move-wide/from16 v28, v9

    move-wide/from16 v30, v22

    move-object/from16 v32, v11

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/control/RadioButton;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v32

    invoke-static/range {v28 .. v32}, Lcom/sun/javafx/scene/control/skin/Utils;->computeYOffset(DDLjavafx/geometry/VPos;)D

    move-result-wide v28

    move-wide/from16 v30, v5

    add-double v28, v28, v30

    move-wide/from16 v26, v28

    .line 106
    .local v26, "yOffset":D
    move-object/from16 v28, v2

    move-wide/from16 v29, v24

    move-wide/from16 v31, v12

    add-double v29, v29, v31

    move-wide/from16 v31, v26

    move-wide/from16 v33, v18

    move-wide/from16 v35, v22

    move-object/from16 v37, v11

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/control/RadioButton;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v37

    invoke-virtual/range {v28 .. v37}, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->layoutLabelInArea(DDDDLjavafx/geometry/Pos;)V

    .line 107
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->radio:Ljavafx/scene/layout/StackPane;

    move-object/from16 v28, v0

    move-object/from16 v29, v2

    move-wide/from16 v30, v12

    invoke-virtual/range {v29 .. v31}, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->snapSize(D)D

    move-result-wide v29

    move-object/from16 v31, v2

    move-wide/from16 v32, v14

    invoke-virtual/range {v31 .. v33}, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->snapSize(D)D

    move-result-wide v31

    invoke-virtual/range {v28 .. v32}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 108
    move-object/from16 v28, v2

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->radio:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    move-wide/from16 v30, v24

    move-wide/from16 v32, v26

    move-wide/from16 v34, v12

    move-wide/from16 v36, v22

    const-wide/16 v38, 0x0

    move-object/from16 v40, v11

    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/control/RadioButton;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v40

    move-object/from16 v41, v11

    invoke-virtual/range {v41 .. v41}, Ljavafx/scene/control/RadioButton;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v41

    invoke-virtual/range {v28 .. v41}, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 109
    return-void
.end method

.method protected updateChildren()V
    .locals 3

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->updateChildren()V

    .line 53
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->radio:Ljavafx/scene/layout/StackPane;

    if-eqz v1, :cond_0

    .line 54
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;->radio:Ljavafx/scene/layout/StackPane;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 56
    :cond_0
    return-void
.end method

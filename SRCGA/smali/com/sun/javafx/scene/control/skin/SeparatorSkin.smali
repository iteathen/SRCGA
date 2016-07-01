.class public Lcom/sun/javafx/scene/control/skin/SeparatorSkin;
.super Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.source "SeparatorSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase",
        "<",
        "Ljavafx/scene/control/Separator;",
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<",
        "Ljavafx/scene/control/Separator;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LENGTH:D = 10.0


# instance fields
.field private final line:Ljavafx/scene/layout/Region;


# direct methods
.method public constructor <init>(Ljavafx/scene/control/Separator;)V
    .locals 9

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SeparatorSkin;
    move-object v1, p1

    .local v1, "separator":Ljavafx/scene/control/Separator;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 65
    move-object v2, v0

    new-instance v3, Ljavafx/scene/layout/Region;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljavafx/scene/layout/Region;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->line:Ljavafx/scene/layout/Region;

    .line 66
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->line:Ljavafx/scene/layout/Region;

    invoke-virtual {v2}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    const-string v6, "line"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 68
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->line:Ljavafx/scene/layout/Region;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 69
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Separator;->orientationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "ORIENTATION"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 70
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Separator;->halignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "HALIGNMENT"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 71
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Separator;->valignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "VALIGNMENT"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected computeMaxHeight(DDDDD)D
    .locals 17

    .prologue
    .line 134
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SeparatorSkin;
    move-wide/from16 v2, p1

    .local v2, "w":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v13, v1

    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v13

    check-cast v13, Ljavafx/scene/control/Separator;

    move-object v12, v13

    .line 135
    .local v12, "sep":Ljavafx/scene/control/Separator;
    move-object v13, v12

    invoke-virtual {v13}, Ljavafx/scene/control/Separator;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v13

    sget-object v14, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v13, v14, :cond_0

    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    move-wide v1, v13

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SeparatorSkin;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/SeparatorSkin;
    :cond_0
    move-object v13, v12

    move-wide v14, v2

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/control/Separator;->prefHeight(D)D

    move-result-wide v13

    goto :goto_0
.end method

.method protected computeMaxWidth(DDDDD)D
    .locals 17

    .prologue
    .line 129
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SeparatorSkin;
    move-wide/from16 v2, p1

    .local v2, "h":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v13, v1

    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v13

    check-cast v13, Ljavafx/scene/control/Separator;

    move-object v12, v13

    .line 130
    .local v12, "sep":Ljavafx/scene/control/Separator;
    move-object v13, v12

    invoke-virtual {v13}, Ljavafx/scene/control/Separator;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v13

    sget-object v14, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v13, v14, :cond_0

    move-object v13, v12

    move-wide v14, v2

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/control/Separator;->prefWidth(D)D

    move-result-wide v13

    :goto_0
    move-wide v1, v13

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SeparatorSkin;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/SeparatorSkin;
    :cond_0
    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_0
.end method

.method protected computeMinHeight(DDDDD)D
    .locals 23

    .prologue
    .line 113
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SeparatorSkin;
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
    move-object v11, v0

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    invoke-virtual/range {v11 .. v21}, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->computePrefHeight(DDDDD)D

    move-result-wide v11

    move-wide v0, v11

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SeparatorSkin;
    return-wide v0
.end method

.method protected computeMinWidth(DDDDD)D
    .locals 23

    .prologue
    .line 109
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SeparatorSkin;
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
    move-object v11, v0

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    invoke-virtual/range {v11 .. v21}, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->computePrefWidth(DDDDD)D

    move-result-wide v11

    move-wide v0, v11

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SeparatorSkin;
    return-wide v0
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 19

    .prologue
    .line 123
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SeparatorSkin;
    move-wide/from16 v1, p1

    .local v1, "w":D
    move-wide/from16 v3, p3

    .local v3, "topInset":D
    move-wide/from16 v5, p5

    .local v5, "rightInset":D
    move-wide/from16 v7, p7

    .local v7, "bottomInset":D
    move-wide/from16 v9, p9

    .local v9, "leftInset":D
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/Separator;

    move-object v11, v14

    .line 124
    .local v11, "sep":Ljavafx/scene/control/Separator;
    move-object v14, v11

    invoke-virtual {v14}, Ljavafx/scene/control/Separator;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v14

    sget-object v15, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v14, v15, :cond_0

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    :goto_0
    move-wide v12, v14

    .line 125
    .local v12, "h":D
    move-wide v14, v12

    move-wide/from16 v16, v3

    add-double v14, v14, v16

    move-wide/from16 v16, v7

    add-double v14, v14, v16

    move-wide v0, v14

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SeparatorSkin;
    return-wide v0

    .line 124
    .end local v12    # "h":D
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/SeparatorSkin;
    :cond_0
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->line:Ljavafx/scene/layout/Region;

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/layout/Region;->prefHeight(D)D

    move-result-wide v14

    goto :goto_0
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 19

    .prologue
    .line 117
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SeparatorSkin;
    move-wide/from16 v1, p1

    .local v1, "h":D
    move-wide/from16 v3, p3

    .local v3, "topInset":D
    move-wide/from16 v5, p5

    .local v5, "rightInset":D
    move-wide/from16 v7, p7

    .local v7, "bottomInset":D
    move-wide/from16 v9, p9

    .local v9, "leftInset":D
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/Separator;

    move-object v11, v14

    .line 118
    .local v11, "sep":Ljavafx/scene/control/Separator;
    move-object v14, v11

    invoke-virtual {v14}, Ljavafx/scene/control/Separator;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v14

    sget-object v15, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v14, v15, :cond_0

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->line:Ljavafx/scene/layout/Region;

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/layout/Region;->prefWidth(D)D

    move-result-wide v14

    :goto_0
    move-wide v12, v14

    .line 119
    .local v12, "w":D
    move-wide v14, v12

    move-wide/from16 v16, v9

    add-double v14, v14, v16

    move-wide/from16 v16, v5

    add-double v14, v14, v16

    move-wide v0, v14

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SeparatorSkin;
    return-wide v0

    .line 118
    .end local v12    # "w":D
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/SeparatorSkin;
    :cond_0
    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    goto :goto_0
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SeparatorSkin;
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 76
    const-string v2, "ORIENTATION"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "HALIGNMENT"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VALIGNMENT"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Separator;

    invoke-virtual {v2}, Ljavafx/scene/control/Separator;->requestLayout()V

    .line 79
    :cond_1
    return-void
.end method

.method protected layoutChildren(DDDD)V
    .locals 25

    .prologue
    .line 94
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SeparatorSkin;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "w":D
    move-wide/from16 v8, p7

    .local v8, "h":D
    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v11

    check-cast v11, Ljavafx/scene/control/Separator;

    move-object v10, v11

    .line 96
    .local v10, "sep":Ljavafx/scene/control/Separator;
    move-object v11, v10

    invoke-virtual {v11}, Ljavafx/scene/control/Separator;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v11

    sget-object v12, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v11, v12, :cond_0

    .line 98
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->line:Ljavafx/scene/layout/Region;

    move-wide v12, v6

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->line:Ljavafx/scene/layout/Region;

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/layout/Region;->prefHeight(D)D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/layout/Region;->resize(DD)V

    .line 105
    :goto_0
    move-object v11, v1

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->line:Ljavafx/scene/layout/Region;

    move-wide v13, v2

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    const-wide/16 v21, 0x0

    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/control/Separator;->getHalignment()Ljavafx/geometry/HPos;

    move-result-object v23

    move-object/from16 v24, v10

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/Separator;->getValignment()Ljavafx/geometry/VPos;

    move-result-object v24

    invoke-virtual/range {v11 .. v24}, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 106
    return-void

    .line 101
    :cond_0
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->line:Ljavafx/scene/layout/Region;

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;->line:Ljavafx/scene/layout/Region;

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/layout/Region;->prefWidth(D)D

    move-result-wide v12

    move-wide v14, v8

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/layout/Region;->resize(DD)V

    goto :goto_0
.end method

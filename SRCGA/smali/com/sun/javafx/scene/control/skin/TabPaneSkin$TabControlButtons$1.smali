.class Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;
.super Ljavafx/scene/layout/StackPane;
.source "TabPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

.field final synthetic val$this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)V
    .locals 5

    .prologue
    .line 1623
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->val$this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    return-void
.end method

.method private positionArrow(Ljavafx/scene/layout/Pane;Ljavafx/scene/layout/StackPane;DDDD)V
    .locals 31

    .prologue
    .line 1659
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;
    move-object/from16 v2, p1

    .local v2, "btn":Ljavafx/scene/layout/Pane;
    move-object/from16 v3, p2

    .local v3, "arrow":Ljavafx/scene/layout/StackPane;
    move-wide/from16 v4, p3

    .local v4, "x":D
    move-wide/from16 v6, p5

    .local v6, "y":D
    move-wide/from16 v8, p7

    .local v8, "width":D
    move-wide/from16 v10, p9

    .local v10, "height":D
    move-object/from16 v16, v2

    move-wide/from16 v17, v8

    move-wide/from16 v19, v10

    invoke-virtual/range {v16 .. v20}, Ljavafx/scene/layout/Pane;->resize(DD)V

    .line 1660
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-wide/from16 v24, v10

    const-wide/16 v26, 0x0

    sget-object v28, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v29, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v16 .. v29}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 1663
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->snapSize(D)D

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 1664
    .local v12, "arrowWidth":D
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->snapSize(D)D

    move-result-wide v16

    move-wide/from16 v14, v16

    .line 1665
    .local v14, "arrowHeight":D
    move-object/from16 v16, v3

    move-wide/from16 v17, v12

    move-wide/from16 v19, v14

    invoke-virtual/range {v16 .. v20}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 1666
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/Pane;->snappedLeftInset()D

    move-result-wide v18

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/layout/Pane;->snappedTopInset()D

    move-result-wide v20

    move-wide/from16 v22, v8

    move-object/from16 v24, v2

    .line 1667
    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/Pane;->snappedLeftInset()D

    move-result-wide v24

    sub-double v22, v22, v24

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/Pane;->snappedRightInset()D

    move-result-wide v24

    sub-double v22, v22, v24

    move-wide/from16 v24, v10

    move-object/from16 v26, v2

    .line 1668
    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/Pane;->snappedTopInset()D

    move-result-wide v26

    sub-double v24, v24, v26

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/Pane;->snappedBottomInset()D

    move-result-wide v26

    sub-double v24, v24, v26

    const-wide/16 v26, 0x0

    sget-object v28, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v29, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    .line 1666
    invoke-virtual/range {v16 .. v29}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 1670
    return-void
.end method


# virtual methods
.method protected computePrefHeight(D)D
    .locals 13

    .prologue
    .line 1638
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;
    move-wide v2, p1

    .local v2, "width":D
    const-wide/16 v6, 0x0

    move-wide v4, v6

    .line 1639
    .local v4, "height":D
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->access$4200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1640
    move-wide v6, v4

    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->access$4400(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;)Ljavafx/scene/layout/Pane;

    move-result-object v9

    move-wide v10, v2

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/layout/Pane;->prefHeight(D)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->snapSize(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-wide v4, v6

    .line 1642
    :cond_0
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 1643
    move-wide v6, v4

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->snappedTopInset()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->snappedBottomInset()D

    move-result-wide v10

    add-double/2addr v8, v10

    add-double/2addr v6, v8

    move-wide v4, v6

    .line 1645
    :cond_1
    move-wide v6, v4

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;
    return-wide v1
.end method

.method protected computePrefWidth(D)D
    .locals 15

    .prologue
    .line 1626
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->access$4200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;)Z

    move-result v8

    if-nez v8, :cond_2

    const-wide/16 v8, 0x0

    :goto_0
    move-wide v6, v8

    .line 1627
    .local v6, "maxArrowWidth":D
    const-wide/16 v8, 0x0

    move-wide v4, v8

    .line 1628
    .local v4, "pw":D
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->access$4200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1629
    move-wide v8, v4

    move-wide v10, v6

    add-double/2addr v8, v10

    move-wide v4, v8

    .line 1631
    :cond_0
    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    .line 1632
    move-wide v8, v4

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->snappedLeftInset()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->snappedRightInset()D

    move-result-wide v12

    add-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v4, v8

    .line 1634
    :cond_1
    move-wide v8, v4

    move-wide v1, v8

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;
    return-wide v1

    .line 1626
    .end local v4    # "pw":D
    .end local v6    # "maxArrowWidth":D
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;
    :cond_2
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->access$4300(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;)Ljavafx/scene/layout/StackPane;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->getHeight()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->snapSize(D)D

    move-result-wide v8

    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    invoke-static {v11}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->access$4400(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;)Ljavafx/scene/layout/Pane;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->getHeight()D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/layout/Pane;->prefWidth(D)D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->snapSize(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 21

    .prologue
    .line 1649
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->access$4200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1650
    const-wide/16 v10, 0x0

    move-wide v2, v10

    .line 1651
    .local v2, "x":D
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->snappedTopInset()D

    move-result-wide v10

    move-wide v4, v10

    .line 1652
    .local v4, "y":D
    move-object v10, v1

    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->getWidth()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->snapSize(D)D

    move-result-wide v10

    move-wide v12, v2

    sub-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->snappedLeftInset()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v6, v10

    .line 1653
    .local v6, "w":D
    move-object v10, v1

    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->getHeight()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->snapSize(D)D

    move-result-wide v10

    move-wide v12, v4

    sub-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->snappedBottomInset()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v8, v10

    .line 1654
    .local v8, "h":D
    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    invoke-static {v11}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->access$4400(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;)Ljavafx/scene/layout/Pane;

    move-result-object v11

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    invoke-static {v12}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->access$4300(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;)Ljavafx/scene/layout/StackPane;

    move-result-object v12

    move-wide v13, v2

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    invoke-direct/range {v10 .. v20}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons$1;->positionArrow(Ljavafx/scene/layout/Pane;Ljavafx/scene/layout/StackPane;DDDD)V

    .line 1656
    .end local v2    # "x":D
    .end local v4    # "y":D
    .end local v6    # "w":D
    .end local v8    # "h":D
    :cond_0
    return-void
.end method

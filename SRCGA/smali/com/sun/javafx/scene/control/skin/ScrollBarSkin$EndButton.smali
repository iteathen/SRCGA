.class Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;
.super Ljavafx/scene/layout/Region;
.source "ScrollBarSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EndButton"
.end annotation


# instance fields
.field private arrow:Ljavafx/scene/layout/Region;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 599
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;
    move-object v1, p1

    .local v1, "styleClass":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arrowStyleClass":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/Region;-><init>()V

    .line 600
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 601
    move-object v3, v0

    new-instance v4, Ljavafx/scene/layout/Region;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/layout/Region;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->arrow:Ljavafx/scene/layout/Region;

    .line 602
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->arrow:Ljavafx/scene/layout/Region;

    invoke-virtual {v3}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v2

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 603
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/scene/Node;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->arrow:Ljavafx/scene/layout/Region;

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 604
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->requestLayout()V

    .line 605
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$1;)V
    .locals 7

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/String;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/String;
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected computeMinHeight(D)D
    .locals 7

    .prologue
    .line 620
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;
    move-wide v1, p1

    .local v1, "width":D
    move-object v3, v0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->prefHeight(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;
    return-wide v0
.end method

.method protected computeMinWidth(D)D
    .locals 7

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;
    move-wide v1, p1

    .local v1, "height":D
    move-object v3, v0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->prefWidth(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;
    return-wide v0
.end method

.method protected computePrefHeight(D)D
    .locals 15

    .prologue
    .line 635
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->snappedTopInset()D

    move-result-wide v10

    move-wide v4, v10

    .line 636
    .local v4, "top":D
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->snappedBottomInset()D

    move-result-wide v10

    move-wide v6, v10

    .line 637
    .local v6, "bottom":D
    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->arrow:Ljavafx/scene/layout/Region;

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/layout/Region;->prefHeight(D)D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->snapSize(D)D

    move-result-wide v10

    move-wide v8, v10

    .line 638
    .local v8, "ah":D
    move-wide v10, v4

    move-wide v12, v8

    add-double/2addr v10, v12

    move-wide v12, v6

    add-double/2addr v10, v12

    move-wide v1, v10

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;
    return-wide v1
.end method

.method protected computePrefWidth(D)D
    .locals 15

    .prologue
    .line 628
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->snappedLeftInset()D

    move-result-wide v10

    move-wide v4, v10

    .line 629
    .local v4, "left":D
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->snappedRightInset()D

    move-result-wide v10

    move-wide v6, v10

    .line 630
    .local v6, "right":D
    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->arrow:Ljavafx/scene/layout/Region;

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/layout/Region;->prefWidth(D)D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->snapSize(D)D

    move-result-wide v10

    move-wide v8, v10

    .line 631
    .local v8, "aw":D
    move-wide v10, v4

    move-wide v12, v8

    add-double/2addr v10, v12

    move-wide v12, v6

    add-double/2addr v10, v12

    move-wide v1, v10

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;
    return-wide v1
.end method

.method protected layoutChildren()V
    .locals 28

    .prologue
    .line 608
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->snappedTopInset()D

    move-result-wide v19

    move-wide/from16 v3, v19

    .line 609
    .local v3, "top":D
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->snappedLeftInset()D

    move-result-wide v19

    move-wide/from16 v5, v19

    .line 610
    .local v5, "left":D
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->snappedBottomInset()D

    move-result-wide v19

    move-wide/from16 v7, v19

    .line 611
    .local v7, "bottom":D
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->snappedRightInset()D

    move-result-wide v19

    move-wide/from16 v9, v19

    .line 612
    .local v9, "right":D
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->arrow:Ljavafx/scene/layout/Region;

    move-object/from16 v20, v0

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/layout/Region;->prefWidth(D)D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->snapSize(D)D

    move-result-wide v19

    move-wide/from16 v11, v19

    .line 613
    .local v11, "aw":D
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->arrow:Ljavafx/scene/layout/Region;

    move-object/from16 v20, v0

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/layout/Region;->prefHeight(D)D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->snapSize(D)D

    move-result-wide v19

    move-wide/from16 v13, v19

    .line 614
    .local v13, "ah":D
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->getHeight()D

    move-result-wide v20

    move-wide/from16 v22, v3

    move-wide/from16 v24, v7

    add-double v22, v22, v24

    move-wide/from16 v24, v13

    add-double v22, v22, v24

    sub-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->snapPosition(D)D

    move-result-wide v19

    move-wide/from16 v15, v19

    .line 615
    .local v15, "yPos":D
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->getWidth()D

    move-result-wide v20

    move-wide/from16 v22, v5

    move-wide/from16 v24, v9

    add-double v22, v22, v24

    move-wide/from16 v24, v11

    add-double v22, v22, v24

    sub-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->snapPosition(D)D

    move-result-wide v19

    move-wide/from16 v17, v19

    .line 616
    .local v17, "xPos":D
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->arrow:Ljavafx/scene/layout/Region;

    move-object/from16 v19, v0

    move-wide/from16 v20, v17

    move-wide/from16 v22, v5

    add-double v20, v20, v22

    move-wide/from16 v22, v15

    move-wide/from16 v24, v3

    add-double v22, v22, v24

    move-wide/from16 v24, v11

    move-wide/from16 v26, v13

    invoke-virtual/range {v19 .. v27}, Ljavafx/scene/layout/Region;->resizeRelocate(DDDD)V

    .line 617
    return-void
.end method

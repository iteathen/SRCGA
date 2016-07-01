.class Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;
.super Ljavafx/scene/layout/StackPane;
.source "TitledPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TitleRegion"
.end annotation


# instance fields
.field private final arrowRegion:Ljavafx/scene/layout/StackPane;

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)V
    .locals 9

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    .line 341
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "title"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 342
    move-object v3, v0

    new-instance v4, Ljavafx/scene/layout/StackPane;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->arrowRegion:Ljavafx/scene/layout/StackPane;

    .line 343
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->arrowRegion:Ljavafx/scene/layout/StackPane;

    const-string v4, "arrowRegion"

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setId(Ljava/lang/String;)V

    .line 344
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->arrowRegion:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "arrow-button"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 346
    new-instance v3, Ljavafx/scene/layout/StackPane;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v2, v3

    .line 347
    .local v2, "arrow":Ljavafx/scene/layout/StackPane;
    move-object v3, v2

    const-string v4, "arrow"

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setId(Ljava/lang/String;)V

    .line 348
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "arrow"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 349
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->arrowRegion:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/scene/Node;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v2

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 352
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->rotateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    new-instance v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion$1;-><init>(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)V

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 360
    move-object v3, v0

    sget-object v4, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 362
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->setOnMouseReleased(Ljavafx/event/EventHandler;)V

    .line 374
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->update()V

    .line 375
    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;)V
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->update()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->lambda$new$514(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method private labelPrefHeight(D)D
    .locals 27

    .prologue
    .line 493
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;
    move-wide/from16 v4, p1

    .local v4, "width":D
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v20

    check-cast v20, Ljavafx/scene/control/Labeled;

    move-object/from16 v6, v20

    .line 494
    .local v6, "labeled":Ljavafx/scene/control/Labeled;
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getFont()Ljavafx/scene/text/Font;

    move-result-object v20

    move-object/from16 v7, v20

    .line 495
    .local v7, "font":Ljavafx/scene/text/Font;
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/Labeled;->getContentDisplay()Ljavafx/scene/control/ContentDisplay;

    move-result-object v20

    move-object/from16 v8, v20

    .line 496
    .local v8, "contentDisplay":Ljavafx/scene/control/ContentDisplay;
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/Labeled;->getGraphicTextGap()D

    move-result-wide v20

    move-wide/from16 v9, v20

    .line 497
    .local v9, "gap":D
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/Labeled;->getLabelPadding()Ljavafx/geometry/Insets;

    move-result-object v20

    move-object/from16 v11, v20

    .line 498
    .local v11, "labelPadding":Ljavafx/geometry/Insets;
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->snappedLeftInset()D

    move-result-wide v20

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->snappedRightInset()D

    move-result-wide v22

    add-double v20, v20, v22

    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v22

    add-double v20, v20, v22

    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v12, v20

    .line 500
    .local v12, "widthPadding":D
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/Labeled;->getText()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v14, v20

    .line 501
    .local v14, "str":Ljava/lang/String;
    move-object/from16 v20, v14

    if-eqz v20, :cond_0

    move-object/from16 v20, v14

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 503
    move-object/from16 v20, v14

    const/16 v21, 0x0

    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v14, v20

    .line 506
    :cond_0
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->isIgnoreGraphic()Z

    move-result v20

    if-nez v20, :cond_2

    move-object/from16 v20, v8

    sget-object v21, Ljavafx/scene/control/ContentDisplay;->LEFT:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_1

    move-object/from16 v20, v8

    sget-object v21, Ljavafx/scene/control/ContentDisplay;->RIGHT:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 508
    :cond_1
    move-wide/from16 v20, v4

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->graphic:Ljavafx/scene/Node;

    move-object/from16 v22, v0

    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v22

    move-wide/from16 v24, v9

    add-double v22, v22, v24

    sub-double v20, v20, v22

    move-wide/from16 v4, v20

    .line 511
    :cond_2
    move-wide/from16 v20, v4

    move-wide/from16 v22, v12

    sub-double v20, v20, v22

    move-wide/from16 v4, v20

    .line 514
    move-object/from16 v20, v7

    move-object/from16 v21, v14

    move-object/from16 v22, v6

    .line 515
    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/Labeled;->isWrapText()Z

    move-result v22

    if-eqz v22, :cond_5

    move-wide/from16 v22, v4

    :goto_0
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getBoundsType()Ljavafx/scene/text/TextBoundsType;

    move-result-object v24

    .line 514
    invoke-static/range {v20 .. v24}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextHeight(Ljavafx/scene/text/Font;Ljava/lang/String;DLjavafx/scene/text/TextBoundsType;)D

    move-result-wide v20

    move-wide/from16 v15, v20

    .line 518
    .local v15, "textHeight":D
    move-wide/from16 v20, v15

    move-wide/from16 v17, v20

    .line 519
    .local v17, "h":D
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->isIgnoreGraphic()Z

    move-result v20

    if-nez v20, :cond_4

    .line 520
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/Labeled;->getGraphic()Ljavafx/scene/Node;

    move-result-object v20

    move-object/from16 v19, v20

    .line 521
    .local v19, "graphic":Ljavafx/scene/Node;
    move-object/from16 v20, v8

    sget-object v21, Ljavafx/scene/control/ContentDisplay;->TOP:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_3

    move-object/from16 v20, v8

    sget-object v21, Ljavafx/scene/control/ContentDisplay;->BOTTOM:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 522
    :cond_3
    move-object/from16 v20, v19

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v20

    move-wide/from16 v22, v9

    add-double v20, v20, v22

    move-wide/from16 v22, v15

    add-double v20, v20, v22

    move-wide/from16 v17, v20

    .line 528
    .end local v19    # "graphic":Ljavafx/scene/Node;
    :cond_4
    :goto_1
    move-wide/from16 v20, v17

    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v22

    add-double v20, v20, v22

    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v3, v20

    .end local v3    # "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;
    return-wide v3

    .line 515
    .end local v15    # "textHeight":D
    .end local v17    # "h":D
    .restart local v3    # "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;
    :cond_5
    const-wide/16 v22, 0x0

    goto :goto_0

    .line 524
    .restart local v15    # "textHeight":D
    .restart local v17    # "h":D
    .restart local v19    # "graphic":Ljavafx/scene/Node;
    :cond_6
    move-wide/from16 v20, v15

    move-object/from16 v22, v19

    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    move-wide/from16 v17, v20

    goto :goto_1
.end method

.method private labelPrefWidth(D)D
    .locals 19

    .prologue
    .line 468
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/Labeled;

    move-object v4, v14

    .line 469
    .local v4, "labeled":Ljavafx/scene/control/Labeled;
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getFont()Ljavafx/scene/text/Font;

    move-result-object v14

    move-object v5, v14

    .line 470
    .local v5, "font":Ljavafx/scene/text/Font;
    move-object v14, v4

    invoke-virtual {v14}, Ljavafx/scene/control/Labeled;->getText()Ljava/lang/String;

    move-result-object v14

    move-object v6, v14

    .line 471
    .local v6, "string":Ljava/lang/String;
    move-object v14, v6

    if-eqz v14, :cond_0

    move-object v14, v6

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    const/4 v14, 0x1

    :goto_0
    move v7, v14

    .line 472
    .local v7, "emptyText":Z
    move-object v14, v4

    invoke-virtual {v14}, Ljavafx/scene/control/Labeled;->getLabelPadding()Ljavafx/geometry/Insets;

    move-result-object v14

    move-object v8, v14

    .line 473
    .local v8, "labelPadding":Ljavafx/geometry/Insets;
    move-object v14, v8

    invoke-virtual {v14}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v14

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide v9, v14

    .line 474
    .local v9, "widthPadding":D
    move v14, v7

    if-eqz v14, :cond_2

    const-wide/16 v14, 0x0

    :goto_1
    move-wide v11, v14

    .line 477
    .local v11, "textWidth":D
    move-object v14, v4

    invoke-virtual {v14}, Ljavafx/scene/control/Labeled;->getGraphic()Ljavafx/scene/Node;

    move-result-object v14

    move-object v13, v14

    .line 478
    .local v13, "graphic":Ljavafx/scene/Node;
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->isIgnoreGraphic()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 479
    move-wide v14, v11

    move-wide/from16 v16, v9

    add-double v14, v14, v16

    move-wide v1, v14

    .line 486
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;
    :goto_2
    return-wide v1

    .line 471
    .end local v7    # "emptyText":Z
    .end local v8    # "labelPadding":Ljavafx/geometry/Insets;
    .end local v9    # "widthPadding":D
    .end local v11    # "textWidth":D
    .end local v13    # "graphic":Ljavafx/scene/Node;
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 474
    .restart local v7    # "emptyText":Z
    .restart local v8    # "labelPadding":Ljavafx/geometry/Insets;
    .restart local v9    # "widthPadding":D
    :cond_2
    move-object v14, v5

    move-object v15, v6

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextWidth(Ljavafx/scene/text/Font;Ljava/lang/String;D)D

    move-result-wide v14

    goto :goto_1

    .line 480
    .restart local v11    # "textWidth":D
    .restart local v13    # "graphic":Ljavafx/scene/Node;
    :cond_3
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->isIgnoreText()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 481
    move-object v14, v13

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v14

    move-wide/from16 v16, v9

    add-double v14, v14, v16

    move-wide v1, v14

    goto :goto_2

    .line 482
    :cond_4
    move-object v14, v4

    invoke-virtual {v14}, Ljavafx/scene/control/Labeled;->getContentDisplay()Ljavafx/scene/control/ContentDisplay;

    move-result-object v14

    sget-object v15, Ljavafx/scene/control/ContentDisplay;->LEFT:Ljavafx/scene/control/ContentDisplay;

    if-eq v14, v15, :cond_5

    move-object v14, v4

    .line 483
    invoke-virtual {v14}, Ljavafx/scene/control/Labeled;->getContentDisplay()Ljavafx/scene/control/ContentDisplay;

    move-result-object v14

    sget-object v15, Ljavafx/scene/control/ContentDisplay;->RIGHT:Ljavafx/scene/control/ContentDisplay;

    if-ne v14, v15, :cond_6

    .line 484
    :cond_5
    move-wide v14, v11

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/Labeled;->getGraphicTextGap()D

    move-result-wide v16

    add-double v14, v14, v16

    move-object/from16 v16, v13

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide/from16 v16, v9

    add-double v14, v14, v16

    move-wide v1, v14

    goto :goto_2

    .line 486
    :cond_6
    move-wide v14, v11

    move-object/from16 v16, v13

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    move-wide/from16 v16, v9

    add-double v14, v14, v16

    move-wide v1, v14

    goto :goto_2
.end method

.method private synthetic lambda$new$514(Ljavafx/scene/input/MouseEvent;)V
    .locals 5

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    if-eq v3, v4, :cond_0

    .line 371
    :goto_0
    return-void

    .line 364
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TitledPane;->getContextMenu()Ljavafx/scene/control/ContextMenu;

    move-result-object v3

    move-object v2, v3

    .line 365
    .local v2, "contextMenu":Ljavafx/scene/control/ContextMenu;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 366
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->hide()V

    .line 368
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TitledPane;->isCollapsible()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TitledPane;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 369
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;->toggle()V

    .line 371
    :cond_2
    goto :goto_0
.end method

.method private update()V
    .locals 8

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->clear()V

    .line 379
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TitledPane;

    move-object v1, v2

    .line 381
    .local v1, "titledPane":Ljavafx/scene/control/TitledPane;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TitledPane;->isCollapsible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->arrowRegion:Ljavafx/scene/layout/StackPane;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 388
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->graphic:Ljavafx/scene/Node;

    if-eqz v2, :cond_1

    .line 389
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->graphic:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->layoutBoundsProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->graphicPropertyChangedListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 392
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TitledPane;->getGraphic()Ljavafx/scene/Node;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->graphic:Ljavafx/scene/Node;

    .line 394
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->isIgnoreGraphic()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 395
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TitledPane;->getContentDisplay()Ljavafx/scene/control/ContentDisplay;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/ContentDisplay;->GRAPHIC_ONLY:Ljavafx/scene/control/ContentDisplay;

    if-ne v2, v3, :cond_2

    .line 396
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->clear()V

    .line 397
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->arrowRegion:Ljavafx/scene/layout/StackPane;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 409
    :goto_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TitledPane;->isCollapsible()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Ljavafx/scene/Cursor;->HAND:Ljavafx/scene/Cursor;

    :goto_1
    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->setCursor(Ljavafx/scene/Cursor;)V

    .line 410
    return-void

    .line 399
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 402
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->graphic:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->layoutBoundsProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->graphicPropertyChangedListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 403
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->isIgnoreText()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 404
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->graphic:Ljavafx/scene/Node;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 406
    :cond_4
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljavafx/scene/Node;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->graphic:Ljavafx/scene/Node;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 409
    :cond_5
    sget-object v3, Ljavafx/scene/Cursor;->DEFAULT:Ljavafx/scene/Cursor;

    goto :goto_1
.end method


# virtual methods
.method protected computePrefHeight(D)D
    .locals 19

    .prologue
    .line 426
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->snappedTopInset()D

    move-result-wide v12

    move-wide v4, v12

    .line 427
    .local v4, "top":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->snappedBottomInset()D

    move-result-wide v12

    move-wide v6, v12

    .line 428
    .local v6, "bottom":D
    const-wide/16 v12, 0x0

    move-wide v8, v12

    .line 429
    .local v8, "arrowHeight":D
    move-object v12, v1

    move-wide v13, v2

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->labelPrefHeight(D)D

    move-result-wide v12

    move-wide v10, v12

    .line 431
    .local v10, "labelPrefHeight":D
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->arrowRegion:Ljavafx/scene/layout/StackPane;

    if-eqz v12, :cond_0

    .line 432
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->arrowRegion:Ljavafx/scene/layout/StackPane;

    move-wide v14, v2

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->snapSize(D)D

    move-result-wide v12

    move-wide v8, v12

    .line 435
    :cond_0
    move-wide v12, v4

    move-wide v14, v8

    move-wide/from16 v16, v10

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v6

    add-double/2addr v12, v14

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;
    return-wide v1
.end method

.method protected computePrefWidth(D)D
    .locals 17

    .prologue
    .line 413
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->snappedLeftInset()D

    move-result-wide v12

    move-wide v4, v12

    .line 414
    .local v4, "left":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->snappedRightInset()D

    move-result-wide v12

    move-wide v6, v12

    .line 415
    .local v6, "right":D
    const-wide/16 v12, 0x0

    move-wide v8, v12

    .line 416
    .local v8, "arrowWidth":D
    move-object v12, v1

    move-wide v13, v2

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->labelPrefWidth(D)D

    move-result-wide v12

    move-wide v10, v12

    .line 418
    .local v10, "labelPrefWidth":D
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->arrowRegion:Ljavafx/scene/layout/StackPane;

    if-eqz v12, :cond_0

    .line 419
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->arrowRegion:Ljavafx/scene/layout/StackPane;

    move-wide v14, v2

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->snapSize(D)D

    move-result-wide v12

    move-wide v8, v12

    .line 422
    :cond_0
    move-wide v12, v4

    move-wide v14, v8

    add-double/2addr v12, v14

    move-wide v14, v10

    add-double/2addr v12, v14

    move-wide v14, v6

    add-double/2addr v12, v14

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;
    return-wide v1
.end method

.method protected layoutChildren()V
    .locals 42

    .prologue
    .line 439
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->snappedTopInset()D

    move-result-wide v28

    move-wide/from16 v4, v28

    .line 440
    .local v4, "top":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->snappedBottomInset()D

    move-result-wide v28

    move-wide/from16 v6, v28

    .line 441
    .local v6, "bottom":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->snappedLeftInset()D

    move-result-wide v28

    move-wide/from16 v8, v28

    .line 442
    .local v8, "left":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->snappedRightInset()D

    move-result-wide v28

    move-wide/from16 v10, v28

    .line 443
    .local v10, "right":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->getWidth()D

    move-result-wide v28

    move-wide/from16 v30, v8

    move-wide/from16 v32, v10

    add-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v12, v28

    .line 444
    .local v12, "width":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->getHeight()D

    move-result-wide v28

    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    add-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v14, v28

    .line 445
    .local v14, "height":D
    move-object/from16 v28, v3

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->arrowRegion:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->snapSize(D)D

    move-result-wide v28

    move-wide/from16 v16, v28

    .line 446
    .local v16, "arrowWidth":D
    move-object/from16 v28, v3

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->arrowRegion:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->snapSize(D)D

    move-result-wide v28

    move-wide/from16 v18, v28

    .line 447
    .local v18, "arrowHeight":D
    move-object/from16 v28, v3

    move-wide/from16 v29, v12

    move-wide/from16 v31, v16

    const-wide/high16 v33, 0x4000000000000000L    # 2.0

    div-double v31, v31, v33

    sub-double v29, v29, v31

    move-object/from16 v31, v3

    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    invoke-direct/range {v31 .. v33}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->labelPrefWidth(D)D

    move-result-wide v31

    invoke-static/range {v29 .. v32}, Ljava/lang/Math;->min(DD)D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->snapSize(D)D

    move-result-wide v28

    move-wide/from16 v20, v28

    .line 448
    .local v20, "labelWidth":D
    move-object/from16 v28, v3

    move-object/from16 v29, v3

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    invoke-direct/range {v29 .. v31}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->labelPrefHeight(D)D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->snapSize(D)D

    move-result-wide v28

    move-wide/from16 v22, v28

    .line 450
    .local v22, "labelHeight":D
    move-wide/from16 v28, v8

    move-wide/from16 v30, v16

    add-double v28, v28, v30

    move-wide/from16 v30, v12

    move-wide/from16 v32, v16

    sub-double v30, v30, v32

    move-wide/from16 v32, v20

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->access$500(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)Ljavafx/geometry/HPos;

    move-result-object v34

    invoke-static/range {v30 .. v34}, Lcom/sun/javafx/scene/control/skin/Utils;->computeXOffset(DDLjavafx/geometry/HPos;)D

    move-result-wide v30

    add-double v28, v28, v30

    move-wide/from16 v24, v28

    .line 451
    .local v24, "x":D
    sget-object v28, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->access$500(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)Ljavafx/geometry/HPos;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 453
    move-wide/from16 v28, v8

    move-wide/from16 v30, v12

    move-wide/from16 v32, v20

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->access$500(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)Ljavafx/geometry/HPos;

    move-result-object v34

    invoke-static/range {v30 .. v34}, Lcom/sun/javafx/scene/control/skin/Utils;->computeXOffset(DDLjavafx/geometry/HPos;)D

    move-result-wide v30

    add-double v28, v28, v30

    move-wide/from16 v24, v28

    .line 455
    :cond_0
    move-wide/from16 v28, v4

    move-wide/from16 v30, v14

    move-wide/from16 v32, v18

    move-wide/from16 v34, v22

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->max(DD)D

    move-result-wide v32

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->access$600(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)Ljavafx/geometry/VPos;

    move-result-object v34

    invoke-static/range {v30 .. v34}, Lcom/sun/javafx/scene/control/skin/Utils;->computeYOffset(DDLjavafx/geometry/VPos;)D

    move-result-wide v30

    add-double v28, v28, v30

    move-wide/from16 v26, v28

    .line 457
    .local v26, "y":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->arrowRegion:Ljavafx/scene/layout/StackPane;

    move-object/from16 v28, v0

    move-wide/from16 v29, v16

    move-wide/from16 v31, v18

    invoke-virtual/range {v28 .. v32}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 458
    move-object/from16 v28, v3

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->arrowRegion:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    move-wide/from16 v30, v8

    move-wide/from16 v32, v4

    move-wide/from16 v34, v16

    move-wide/from16 v36, v14

    const-wide/16 v38, 0x0

    sget-object v40, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v41, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v28 .. v41}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 461
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move-object/from16 v28, v0

    move-wide/from16 v29, v24

    move-wide/from16 v31, v26

    move-wide/from16 v33, v20

    move-wide/from16 v35, v14

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->access$700(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)Ljavafx/geometry/Pos;

    move-result-object v37

    invoke-virtual/range {v28 .. v37}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->layoutLabelInArea(DDDDLjavafx/geometry/Pos;)V

    .line 462
    return-void
.end method

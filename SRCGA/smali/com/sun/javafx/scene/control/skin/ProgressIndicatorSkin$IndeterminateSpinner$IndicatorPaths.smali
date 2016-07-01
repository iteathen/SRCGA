.class Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;
.super Ljavafx/scene/layout/Pane;
.source "ProgressIndicatorSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndicatorPaths"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;)V
    .locals 4

    .prologue
    .line 608
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;->this$1:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/Pane;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;)V
    .locals 5

    .prologue
    .line 608
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;-><init>(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;)V

    return-void
.end method


# virtual methods
.method protected computePrefHeight(D)D
    .locals 13

    .prologue
    .line 625
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;
    move-wide v1, p1

    .local v1, "width":D
    const-wide/16 v8, 0x0

    move-wide v3, v8

    .line 626
    .local v3, "h":D
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_0
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/Node;

    move-object v6, v8

    .line 627
    .local v6, "child":Ljavafx/scene/Node;
    move-object v8, v6

    instance-of v8, v8, Ljavafx/scene/layout/Region;

    if-eqz v8, :cond_0

    .line 628
    move-object v8, v6

    check-cast v8, Ljavafx/scene/layout/Region;

    move-object v7, v8

    .line 629
    .local v7, "region":Ljavafx/scene/layout/Region;
    move-object v8, v7

    invoke-virtual {v8}, Ljavafx/scene/layout/Region;->getShape()Ljavafx/scene/shape/Shape;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 630
    move-wide v8, v3

    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/scene/layout/Region;->getShape()Ljavafx/scene/shape/Shape;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/scene/shape/Shape;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide v3, v8

    .line 635
    .end local v7    # "region":Ljavafx/scene/layout/Region;
    :cond_0
    :goto_1
    goto :goto_0

    .line 632
    .restart local v7    # "region":Ljavafx/scene/layout/Region;
    :cond_1
    move-wide v8, v3

    move-object v10, v7

    move-wide v11, v1

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/Region;->prefHeight(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide v3, v8

    goto :goto_1

    .line 636
    .end local v6    # "child":Ljavafx/scene/Node;
    .end local v7    # "region":Ljavafx/scene/layout/Region;
    :cond_2
    move-wide v8, v3

    move-wide v0, v8

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;
    return-wide v0
.end method

.method protected computePrefWidth(D)D
    .locals 13

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;
    move-wide v1, p1

    .local v1, "height":D
    const-wide/16 v8, 0x0

    move-wide v3, v8

    .line 611
    .local v3, "w":D
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_0
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/Node;

    move-object v6, v8

    .line 612
    .local v6, "child":Ljavafx/scene/Node;
    move-object v8, v6

    instance-of v8, v8, Ljavafx/scene/layout/Region;

    if-eqz v8, :cond_0

    .line 613
    move-object v8, v6

    check-cast v8, Ljavafx/scene/layout/Region;

    move-object v7, v8

    .line 614
    .local v7, "region":Ljavafx/scene/layout/Region;
    move-object v8, v7

    invoke-virtual {v8}, Ljavafx/scene/layout/Region;->getShape()Ljavafx/scene/shape/Shape;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 615
    move-wide v8, v3

    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/scene/layout/Region;->getShape()Ljavafx/scene/shape/Shape;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/scene/shape/Shape;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide v3, v8

    .line 620
    .end local v7    # "region":Ljavafx/scene/layout/Region;
    :cond_0
    :goto_1
    goto :goto_0

    .line 617
    .restart local v7    # "region":Ljavafx/scene/layout/Region;
    :cond_1
    move-wide v8, v3

    move-object v10, v7

    move-wide v11, v1

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/Region;->prefWidth(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide v3, v8

    goto :goto_1

    .line 621
    .end local v6    # "child":Ljavafx/scene/Node;
    .end local v7    # "region":Ljavafx/scene/layout/Region;
    :cond_2
    move-wide v8, v3

    move-wide v0, v8

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;
    return-wide v0
.end method

.method protected layoutChildren()V
    .locals 21

    .prologue
    .line 641
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;->getWidth()D

    move-result-wide v6

    move-object v8, v0

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;->computePrefWidth(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    move-wide v1, v6

    .line 642
    .local v1, "scale":D
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    move-object v4, v6

    .line 643
    .local v4, "child":Ljavafx/scene/Node;
    move-object v6, v4

    instance-of v6, v6, Ljavafx/scene/layout/Region;

    if-eqz v6, :cond_0

    .line 644
    move-object v6, v4

    check-cast v6, Ljavafx/scene/layout/Region;

    move-object v5, v6

    .line 645
    .local v5, "region":Ljavafx/scene/layout/Region;
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/layout/Region;->getShape()Ljavafx/scene/shape/Shape;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 646
    move-object v6, v5

    move-object v7, v5

    .line 647
    invoke-virtual {v7}, Ljavafx/scene/layout/Region;->getShape()Ljavafx/scene/shape/Shape;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/shape/Shape;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v7

    move-object v9, v5

    .line 648
    invoke-virtual {v9}, Ljavafx/scene/layout/Region;->getShape()Ljavafx/scene/shape/Shape;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/scene/shape/Shape;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v9

    .line 646
    invoke-virtual {v6, v7, v8, v9, v10}, Ljavafx/scene/layout/Region;->resize(DD)V

    .line 650
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/layout/Region;->getTransforms()Ljavafx/collections/ObservableList;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljavafx/scene/transform/Transform;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Ljavafx/scene/transform/Scale;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-wide v12, v1

    move-wide v14, v1

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v11 .. v19}, Ljavafx/scene/transform/Scale;-><init>(DDDD)V

    aput-object v10, v8, v9

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v6

    .line 655
    .end local v5    # "region":Ljavafx/scene/layout/Region;
    :cond_0
    :goto_1
    goto :goto_0

    .line 652
    .restart local v5    # "region":Ljavafx/scene/layout/Region;
    :cond_1
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/layout/Region;->autosize()V

    goto :goto_1

    .line 656
    .end local v4    # "child":Ljavafx/scene/Node;
    .end local v5    # "region":Ljavafx/scene/layout/Region;
    :cond_2
    return-void
.end method

.class Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;
.super Ljavafx/scene/layout/StackPane;
.source "TabPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

.field final synthetic val$this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)V
    .locals 5

    .prologue
    .line 702
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->val$this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    return-void
.end method


# virtual methods
.method protected computePrefHeight(D)D
    .locals 13

    .prologue
    .line 715
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;
    move-wide v1, p1

    .local v1, "width":D
    const-wide/16 v8, 0x0

    move-wide v3, v8

    .line 716
    .local v3, "height":D
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_0
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/Node;

    move-object v6, v8

    .line 717
    .local v6, "child":Ljavafx/scene/Node;
    move-object v8, v6

    check-cast v8, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object v7, v8

    .line 718
    .local v7, "tabHeaderSkin":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-wide v8, v3

    move-object v10, v7

    move-wide v11, v1

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->prefHeight(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide v3, v8

    .line 719
    goto :goto_0

    .line 720
    .end local v6    # "child":Ljavafx/scene/Node;
    .end local v7    # "tabHeaderSkin":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    :cond_0
    move-object v8, v0

    move-wide v9, v3

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->snapSize(D)D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->snappedTopInset()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->snappedBottomInset()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v0, v8

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;
    return-wide v0
.end method

.method protected computePrefWidth(D)D
    .locals 13

    .prologue
    .line 704
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;
    move-wide v1, p1

    .local v1, "height":D
    const-wide/16 v8, 0x0

    move-wide v3, v8

    .line 705
    .local v3, "width":D
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->getChildren()Ljavafx/collections/ObservableList;

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

    .line 706
    .local v6, "child":Ljavafx/scene/Node;
    move-object v8, v6

    check-cast v8, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object v7, v8

    .line 707
    .local v7, "tabHeaderSkin":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v8, v7

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$1900(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v7

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$300(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 708
    :cond_0
    move-wide v8, v3

    move-object v10, v7

    move-wide v11, v1

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->prefWidth(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v3, v8

    .line 710
    :cond_1
    goto :goto_0

    .line 711
    .end local v6    # "child":Ljavafx/scene/Node;
    .end local v7    # "tabHeaderSkin":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    :cond_2
    move-object v8, v0

    move-wide v9, v3

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->snapSize(D)D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->snappedLeftInset()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->snappedRightInset()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v0, v8

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;
    return-wide v0
.end method

.method protected layoutChildren()V
    .locals 22

    .prologue
    .line 724
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$2000(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 725
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v16, v0

    const-wide/16 v17, 0x0

    invoke-static/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$1500(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;D)V

    .line 751
    :cond_0
    :goto_0
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$2400(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 752
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$2500(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)V

    .line 753
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$2402(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Z)Z

    move-result v16

    .line 758
    :goto_1
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v16

    check-cast v16, Ljavafx/scene/control/TabPane;

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/TabPane;->getSide()Ljavafx/geometry/Side;

    move-result-object v16

    move-object/from16 v2, v16

    .line 759
    .local v2, "tabPosition":Ljavafx/geometry/Side;
    move-object/from16 v16, v1

    move-object/from16 v17, v1

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->prefHeight(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->snapSize(D)D

    move-result-wide v16

    move-wide/from16 v3, v16

    .line 760
    .local v3, "tabBackgroundHeight":D
    move-object/from16 v16, v2

    sget-object v17, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    invoke-virtual/range {v16 .. v17}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    move-object/from16 v16, v2

    sget-object v17, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    invoke-virtual/range {v16 .. v17}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    :cond_1
    move-object/from16 v16, v1

    move-object/from16 v17, v1

    .line 761
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->getWidth()D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->snapSize(D)D

    move-result-wide v16

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getScrollOffset()D

    move-result-wide v18

    sub-double v16, v16, v18

    :goto_2
    move-wide/from16 v5, v16

    .line 763
    .local v5, "tabX":D
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$2700(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)V

    .line 764
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-object/from16 v7, v16

    :goto_3
    move-object/from16 v16, v7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    move-object/from16 v16, v7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljavafx/scene/Node;

    move-object/from16 v8, v16

    .line 765
    .local v8, "node":Ljavafx/scene/Node;
    move-object/from16 v16, v8

    check-cast v16, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object/from16 v9, v16

    .line 768
    .local v9, "tabHeader":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object/from16 v16, v1

    move-object/from16 v17, v9

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->prefWidth(D)D

    move-result-wide v17

    move-object/from16 v19, v9

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v19

    mul-double v17, v17, v19

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->snapSize(D)D

    move-result-wide v16

    move-wide/from16 v10, v16

    .line 769
    .local v10, "tabHeaderPrefWidth":D
    move-object/from16 v16, v1

    move-object/from16 v17, v9

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->prefHeight(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->snapSize(D)D

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 770
    .local v12, "tabHeaderPrefHeight":D
    move-object/from16 v16, v9

    move-wide/from16 v17, v10

    move-wide/from16 v19, v12

    invoke-virtual/range {v16 .. v20}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->resize(DD)V

    .line 774
    move-object/from16 v16, v2

    sget-object v17, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    invoke-virtual/range {v16 .. v17}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const-wide/16 v16, 0x0

    .line 775
    :goto_4
    move-wide/from16 v14, v16

    .line 776
    .local v14, "startY":D
    move-object/from16 v16, v2

    sget-object v17, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    invoke-virtual/range {v16 .. v17}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    move-object/from16 v16, v2

    sget-object v17, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    invoke-virtual/range {v16 .. v17}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 778
    :cond_2
    move-wide/from16 v16, v5

    move-wide/from16 v18, v10

    sub-double v16, v16, v18

    move-wide/from16 v5, v16

    .line 779
    move-object/from16 v16, v9

    move-wide/from16 v17, v5

    move-wide/from16 v19, v14

    invoke-virtual/range {v16 .. v20}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->relocate(DD)V

    .line 785
    :goto_5
    goto :goto_3

    .line 727
    .end local v2    # "tabPosition":Ljavafx/geometry/Side;
    .end local v3    # "tabBackgroundHeight":D
    .end local v5    # "tabX":D
    .end local v8    # "node":Ljavafx/scene/Node;
    .end local v9    # "tabHeader":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    .end local v10    # "tabHeaderPrefWidth":D
    .end local v12    # "tabHeaderPrefHeight":D
    .end local v14    # "startY":D
    :cond_3
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$2100(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_0

    .line 728
    const-wide/16 v16, 0x0

    move-wide/from16 v2, v16

    .line 729
    .local v2, "offset":D
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$2200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getWidth()D

    move-result-wide v16

    move-object/from16 v18, v1

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$500(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    move-result-object v19

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v19 .. v21}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->prefWidth(D)D

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->snapSize(D)D

    move-result-wide v18

    sub-double v16, v16, v18

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$2300(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)D

    move-result-wide v18

    sub-double v16, v16, v18

    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    sub-double v16, v16, v18

    move-wide/from16 v4, v16

    .line 730
    .local v4, "w":D
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-object/from16 v6, v16

    .line 731
    .local v6, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/Node;>;"
    :goto_6
    move-object/from16 v16, v6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 732
    move-object/from16 v16, v6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object/from16 v7, v16

    .line 733
    .local v7, "tabHeader":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object/from16 v16, v1

    move-object/from16 v17, v7

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->prefWidth(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->snapSize(D)D

    move-result-wide v16

    move-wide/from16 v8, v16

    .line 734
    .local v8, "tabHeaderPrefWidth":D
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$2100(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v17, v7

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 735
    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    cmpg-double v16, v16, v18

    if-gez v16, :cond_4

    .line 736
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$2402(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Z)Z

    move-result v16

    .line 738
    :cond_4
    move-object/from16 v16, v6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    .line 739
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$2100(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v17, v7

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v16

    .line 740
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$2100(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 741
    goto/16 :goto_0

    .line 744
    :cond_5
    move-wide/from16 v16, v2

    move-wide/from16 v18, v8

    add-double v16, v16, v18

    move-wide/from16 v2, v16

    .line 745
    goto/16 :goto_6

    .line 755
    .end local v2    # "offset":D
    .end local v4    # "w":D
    .end local v6    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/Node;>;"
    .end local v7    # "tabHeader":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    .end local v8    # "tabHeaderPrefWidth":D
    :cond_6
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$2600(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)V

    goto/16 :goto_1

    .line 761
    .local v2, "tabPosition":Ljavafx/geometry/Side;
    .restart local v3    # "tabBackgroundHeight":D
    :cond_7
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getScrollOffset()D

    move-result-wide v16

    goto/16 :goto_2

    .line 774
    .restart local v5    # "tabX":D
    .local v8, "node":Ljavafx/scene/Node;
    .restart local v9    # "tabHeader":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    .restart local v10    # "tabHeaderPrefWidth":D
    .restart local v12    # "tabHeaderPrefHeight":D
    :cond_8
    move-wide/from16 v16, v3

    move-wide/from16 v18, v12

    sub-double v16, v16, v18

    move-object/from16 v18, v1

    .line 775
    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;->snappedBottomInset()D

    move-result-wide v18

    sub-double v16, v16, v18

    goto/16 :goto_4

    .line 782
    .restart local v14    # "startY":D
    :cond_9
    move-object/from16 v16, v9

    move-wide/from16 v17, v5

    move-wide/from16 v19, v14

    invoke-virtual/range {v16 .. v20}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->relocate(DD)V

    .line 783
    move-wide/from16 v16, v5

    move-wide/from16 v18, v10

    add-double v16, v16, v18

    move-wide/from16 v5, v16

    goto/16 :goto_5

    .line 786
    .end local v8    # "node":Ljavafx/scene/Node;
    .end local v9    # "tabHeader":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    .end local v10    # "tabHeaderPrefWidth":D
    .end local v12    # "tabHeaderPrefHeight":D
    .end local v14    # "startY":D
    :cond_a
    return-void
.end method

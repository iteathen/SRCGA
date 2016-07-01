.class Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;
.super Ljavafx/scene/layout/StackPane;
.source "ColorPickerSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickerColorBox"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)V
    .locals 4

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/StackPane;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$1;)V
    .locals 5

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;-><init>(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)V

    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 33

    .prologue
    .line 524
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->snappedTopInset()D

    move-result-wide v18

    move-wide/from16 v4, v18

    .line 525
    .local v4, "top":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->snappedLeftInset()D

    move-result-wide v18

    move-wide/from16 v6, v18

    .line 526
    .local v6, "left":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->getWidth()D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 527
    .local v8, "width":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->getHeight()D

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 528
    .local v10, "height":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->snappedRightInset()D

    move-result-wide v18

    move-wide/from16 v12, v18

    .line 529
    .local v12, "right":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->snappedBottomInset()D

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 530
    .local v14, "bottom":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$1000(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/shape/Rectangle;

    move-result-object v18

    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$900(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/css/StyleableDoubleProperty;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavafx/css/StyleableDoubleProperty;->get()D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->snapPosition(D)D

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/shape/Rectangle;->setX(D)V

    .line 531
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$1000(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/shape/Rectangle;

    move-result-object v18

    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$1100(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/css/StyleableDoubleProperty;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavafx/css/StyleableDoubleProperty;->get()D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->snapPosition(D)D

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/shape/Rectangle;->setY(D)V

    .line 532
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$1000(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/shape/Rectangle;

    move-result-object v18

    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/css/StyleableDoubleProperty;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavafx/css/StyleableDoubleProperty;->get()D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->snapSize(D)D

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    .line 533
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$1000(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/shape/Rectangle;

    move-result-object v18

    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$1300(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/css/StyleableDoubleProperty;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavafx/css/StyleableDoubleProperty;->get()D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->snapSize(D)D

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    .line 534
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljavafx/collections/ObservableList;->size()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 535
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavafx/scene/image/ImageView;

    move-object/from16 v16, v18

    .line 536
    .local v16, "icon":Ljavafx/scene/image/ImageView;
    move-object/from16 v18, v16

    invoke-static/range {v18 .. v18}, Ljavafx/scene/layout/StackPane;->getAlignment(Ljavafx/scene/Node;)Ljavafx/geometry/Pos;

    move-result-object v18

    move-object/from16 v17, v18

    .line 537
    .local v17, "childAlignment":Ljavafx/geometry/Pos;
    move-object/from16 v18, v3

    move-object/from16 v19, v16

    move-wide/from16 v20, v6

    move-wide/from16 v22, v4

    move-wide/from16 v24, v8

    move-wide/from16 v26, v6

    sub-double v24, v24, v26

    move-wide/from16 v26, v12

    sub-double v24, v24, v26

    move-wide/from16 v26, v10

    move-wide/from16 v28, v4

    sub-double v26, v26, v28

    move-wide/from16 v28, v14

    sub-double v26, v26, v28

    const-wide/16 v28, 0x0

    move-object/from16 v30, v16

    .line 539
    invoke-static/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v30

    move-object/from16 v31, v17

    if-eqz v31, :cond_0

    move-object/from16 v31, v17

    .line 540
    invoke-virtual/range {v31 .. v31}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v31

    :goto_0
    move-object/from16 v32, v17

    if-eqz v32, :cond_1

    move-object/from16 v32, v17

    .line 541
    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v32

    .line 537
    :goto_1
    invoke-virtual/range {v18 .. v32}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 542
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$1000(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/shape/Rectangle;

    move-result-object v18

    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/image/ImageView;->getLayoutX()D

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/shape/Rectangle;->setLayoutX(D)V

    .line 543
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$1000(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/shape/Rectangle;

    move-result-object v18

    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/image/ImageView;->getLayoutY()D

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/shape/Rectangle;->setLayoutY(D)V

    .line 544
    .line 552
    .end local v16    # "icon":Ljavafx/scene/image/ImageView;
    .end local v17    # "childAlignment":Ljavafx/geometry/Pos;
    :goto_2
    return-void

    .line 540
    .restart local v16    # "icon":Ljavafx/scene/image/ImageView;
    .restart local v17    # "childAlignment":Ljavafx/geometry/Pos;
    :cond_0
    move-object/from16 v31, v3

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v31

    goto :goto_0

    .line 541
    :cond_1
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v32

    goto :goto_1

    .line 545
    .end local v16    # "icon":Ljavafx/scene/image/ImageView;
    .end local v17    # "childAlignment":Ljavafx/geometry/Pos;
    :cond_2
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$1000(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/shape/Rectangle;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljavafx/scene/layout/StackPane;->getAlignment(Ljavafx/scene/Node;)Ljavafx/geometry/Pos;

    move-result-object v18

    move-object/from16 v16, v18

    .line 546
    .local v16, "childAlignment":Ljavafx/geometry/Pos;
    move-object/from16 v18, v3

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$1000(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/shape/Rectangle;

    move-result-object v19

    move-wide/from16 v20, v6

    move-wide/from16 v22, v4

    move-wide/from16 v24, v8

    move-wide/from16 v26, v6

    sub-double v24, v24, v26

    move-wide/from16 v26, v12

    sub-double v24, v24, v26

    move-wide/from16 v26, v10

    move-wide/from16 v28, v4

    sub-double v26, v26, v28

    move-wide/from16 v28, v14

    sub-double v26, v26, v28

    const-wide/16 v28, 0x0

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object/from16 v30, v0

    .line 548
    invoke-static/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$1000(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/shape/Rectangle;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v30

    move-object/from16 v31, v16

    if-eqz v31, :cond_3

    move-object/from16 v31, v16

    .line 549
    invoke-virtual/range {v31 .. v31}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v31

    :goto_3
    move-object/from16 v32, v16

    if-eqz v32, :cond_4

    move-object/from16 v32, v16

    .line 550
    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v32

    .line 546
    :goto_4
    invoke-virtual/range {v18 .. v32}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    goto :goto_2

    .line 549
    :cond_3
    move-object/from16 v31, v3

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v31

    goto :goto_3

    .line 550
    :cond_4
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v32

    goto :goto_4
.end method

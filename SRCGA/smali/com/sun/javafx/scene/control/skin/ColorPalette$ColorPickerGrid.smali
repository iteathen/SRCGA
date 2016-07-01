.class Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;
.super Ljavafx/scene/layout/GridPane;
.source "ColorPalette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ColorPalette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ColorPickerGrid"
.end annotation


# instance fields
.field private final squares:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/ColorPalette;)V
    .locals 21

    .prologue
    .line 494
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;
    move-object/from16 v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    move-object v8, v0

    invoke-direct {v8}, Ljavafx/scene/layout/GridPane;-><init>()V

    .line 495
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v8

    const-string v9, "color-picker-grid"

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 496
    move-object v8, v0

    const-string v9, "ColorCustomizerColorGrid"

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->setId(Ljava/lang/String;)V

    .line 497
    const/4 v8, 0x0

    move v2, v8

    .local v2, "columnIndex":I
    const/4 v8, 0x0

    move v3, v8

    .line 498
    .local v3, "rowIndex":I
    move-object v8, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->squares:Ljava/util/List;

    .line 499
    # getter for: Lcom/sun/javafx/scene/control/skin/ColorPalette;->RAW_VALUES:[D
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$1100()[D

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x3

    div-int/lit8 v8, v8, 0x3

    move v4, v8

    .line 500
    .local v4, "numColors":I
    move v8, v4

    new-array v8, v8, [Ljavafx/scene/paint/Color;

    move-object v5, v8

    .line 501
    .local v5, "colors":[Ljavafx/scene/paint/Color;
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    move v9, v4

    if-ge v8, v9, :cond_0

    .line 502
    move-object v8, v5

    move v9, v6

    new-instance v10, Ljavafx/scene/paint/Color;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    # getter for: Lcom/sun/javafx/scene/control/skin/ColorPalette;->RAW_VALUES:[D
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$1100()[D

    move-result-object v12

    move v13, v6

    const/4 v14, 0x3

    mul-int/lit8 v13, v13, 0x3

    aget-wide v12, v12, v13

    const-wide v14, 0x406fe00000000000L    # 255.0

    div-double/2addr v12, v14

    .line 503
    # getter for: Lcom/sun/javafx/scene/control/skin/ColorPalette;->RAW_VALUES:[D
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$1100()[D

    move-result-object v14

    move v15, v6

    const/16 v16, 0x3

    mul-int/lit8 v15, v15, 0x3

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aget-wide v14, v14, v15

    const-wide v16, 0x406fe00000000000L    # 255.0

    div-double v14, v14, v16

    # getter for: Lcom/sun/javafx/scene/control/skin/ColorPalette;->RAW_VALUES:[D
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$1100()[D

    move-result-object v16

    move/from16 v17, v6

    const/16 v18, 0x3

    mul-int/lit8 v17, v17, 0x3

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    aget-wide v16, v16, v17

    const-wide v18, 0x406fe00000000000L    # 255.0

    div-double v16, v16, v18

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v11 .. v19}, Ljavafx/scene/paint/Color;-><init>(DDDD)V

    aput-object v10, v8, v9

    .line 505
    new-instance v8, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-object v10, v1

    move-object v11, v5

    move v12, v6

    aget-object v11, v11, v12

    move v12, v6

    invoke-direct {v9, v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;-><init>(Lcom/sun/javafx/scene/control/skin/ColorPalette;Ljavafx/scene/paint/Color;I)V

    move-object v7, v8

    .line 506
    .local v7, "cs":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->squares:Ljava/util/List;

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 501
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 509
    .end local v7    # "cs":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->squares:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    .end local v6    # "i":I
    :goto_1
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    move-object v7, v8

    .line 510
    .local v7, "square":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    move-object v8, v0

    move-object v9, v7

    move v10, v2

    move v11, v3

    invoke-virtual {v8, v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->add(Ljavafx/scene/Node;II)V

    .line 511
    add-int/lit8 v2, v2, 0x1

    .line 512
    move v8, v2

    const/16 v9, 0xc

    if-ne v8, v9, :cond_1

    .line 513
    const/4 v8, 0x0

    move v2, v8

    .line 514
    add-int/lit8 v3, v3, 0x1

    .line 516
    :cond_1
    goto :goto_1

    .line 517
    .end local v7    # "square":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    :cond_2
    move-object v8, v0

    move-object v9, v0

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;)Ljavafx/event/EventHandler;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->setOnMouseDragged(Ljavafx/event/EventHandler;)V

    .line 530
    move-object v8, v0

    sget-object v9, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    move-object v10, v0

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;)Ljavafx/event/EventHandler;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 544
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->lambda$new$312(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->lambda$new$313(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method private synthetic lambda$new$312(Ljavafx/scene/input/MouseEvent;)V
    .locals 9

    .prologue
    .line 518
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;
    move-object v1, p1

    .local v1, "t":Ljavafx/scene/input/MouseEvent;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$800(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 519
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$802(Lcom/sun/javafx/scene/control/skin/ColorPalette;Z)Z

    move-result v5

    .line 520
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ColorPicker;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/ColorPicker;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/paint/Color;

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$1202(Lcom/sun/javafx/scene/control/skin/ColorPalette;Ljavafx/scene/paint/Color;)Ljavafx/scene/paint/Color;

    move-result-object v5

    .line 522
    :cond_0
    const/4 v5, 0x0

    move-object v6, v1

    .line 523
    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v6

    double-to-int v6, v6

    const/16 v7, 0x10

    div-int/lit8 v6, v6, 0x10

    const/16 v7, 0xb

    .line 522
    invoke-static {v5, v6, v7}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v5

    move v2, v5

    .line 524
    .local v2, "xIndex":I
    const/4 v5, 0x0

    move-object v6, v1

    .line 525
    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v6

    double-to-int v6, v6

    const/16 v7, 0x10

    div-int/lit8 v6, v6, 0x10

    # getter for: Lcom/sun/javafx/scene/control/skin/ColorPalette;->NUM_OF_ROWS:I
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$500()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    .line 524
    invoke-static {v5, v6, v7}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v5

    move v3, v5

    .line 526
    .local v3, "yIndex":I
    move v5, v2

    move v6, v3

    const/16 v7, 0xc

    mul-int/lit8 v6, v6, 0xc

    add-int/2addr v5, v6

    move v4, v5

    .line 527
    .local v4, "index":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ColorPicker;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->squares:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->rectangle:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v6}, Ljavafx/scene/shape/Rectangle;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v6

    check-cast v6, Ljavafx/scene/paint/Color;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/ColorPicker;->setValue(Ljava/lang/Object;)V

    .line 528
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ColorPicker;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/ColorPicker;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/paint/Color;

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->updateSelection(Ljavafx/scene/paint/Color;)V

    .line 529
    return-void
.end method

.method private synthetic lambda$new$313(Ljavafx/scene/input/MouseEvent;)V
    .locals 9

    .prologue
    .line 531
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;
    move-object v2, p1

    .local v2, "t":Ljavafx/scene/input/MouseEvent;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->colorPickerGrid:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->getBoundsInLocal()Ljavafx/geometry/Bounds;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/geometry/Bounds;->contains(DD)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 532
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ColorPicker;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/ColorPicker;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/paint/Color;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->updateSelection(Ljavafx/scene/paint/Color;)V

    .line 533
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ColorPicker;

    move-result-object v3

    new-instance v4, Ljavafx/event/ActionEvent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/event/ActionEvent;-><init>()V

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ColorPicker;->fireEvent(Ljavafx/event/Event;)V

    .line 534
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ColorPicker;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/ColorPicker;->hide()V

    .line 542
    :cond_0
    :goto_0
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$802(Lcom/sun/javafx/scene/control/skin/ColorPalette;Z)Z

    move-result v3

    .line 543
    return-void

    .line 537
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$1200(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/paint/Color;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 538
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ColorPicker;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$1200(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/paint/Color;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ColorPicker;->setValue(Ljava/lang/Object;)V

    .line 539
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$1200(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/paint/Color;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->updateSelection(Ljavafx/scene/paint/Color;)V

    goto :goto_0
.end method


# virtual methods
.method protected computePrefHeight(D)D
    .locals 7

    .prologue
    .line 555
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;
    move-wide v2, p1

    .local v2, "width":D
    const/16 v4, 0x10

    # getter for: Lcom/sun/javafx/scene/control/skin/ColorPalette;->NUM_OF_ROWS:I
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$500()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-double v4, v4

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;
    return-wide v1
.end method

.method protected computePrefWidth(D)D
    .locals 7

    .prologue
    .line 551
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;
    move-wide v2, p1

    .local v2, "height":D
    const-wide/high16 v4, 0x4068000000000000L    # 192.0

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;
    return-wide v1
.end method

.method public getSquares()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->squares:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;
    return-object v0
.end method

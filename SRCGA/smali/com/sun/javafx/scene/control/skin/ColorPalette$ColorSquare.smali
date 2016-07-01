.class Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
.super Ljavafx/scene/layout/StackPane;
.source "ColorPalette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ColorPalette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ColorSquare"
.end annotation


# instance fields
.field index:I

.field isCustom:Z

.field isEmpty:Z

.field rectangle:Ljavafx/scene/shape/Rectangle;

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/ColorPalette;)V
    .locals 7

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;-><init>(Lcom/sun/javafx/scene/control/skin/ColorPalette;Ljavafx/scene/paint/Color;IZ)V

    .line 391
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/ColorPalette;Ljavafx/scene/paint/Color;I)V
    .locals 9

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v2, p2

    .local v2, "color":Ljavafx/scene/paint/Color;
    move v3, p3

    .local v3, "index":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;-><init>(Lcom/sun/javafx/scene/control/skin/ColorPalette;Ljavafx/scene/paint/Color;IZ)V

    .line 395
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/ColorPalette;Ljavafx/scene/paint/Color;IZ)V
    .locals 15

    .prologue
    .line 397
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    move-object/from16 v2, p1

    .local v2, "this$0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object/from16 v3, p2

    .local v3, "color":Ljavafx/scene/paint/Color;
    move/from16 v4, p3

    .local v4, "index":I
    move/from16 v5, p4

    .local v5, "isCustom":Z
    move-object v7, v1

    move-object v8, v2

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    move-object v7, v1

    invoke-direct {v7}, Ljavafx/scene/layout/StackPane;-><init>()V

    .line 399
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v7

    const-string v8, "color-square"

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 400
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 401
    move-object v7, v1

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->setFocusTraversable(Z)V

    .line 403
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v7

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;)Ljavafx/beans/value/ChangeListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 407
    move-object v7, v1

    sget-object v8, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    move-object v9, v1

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;)Ljavafx/event/EventHandler;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 410
    move-object v7, v1

    sget-object v8, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    move-object v9, v1

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;)Ljavafx/event/EventHandler;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 414
    move-object v7, v1

    sget-object v8, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    move-object v9, v1

    move v10, v5

    invoke-static {v9, v10}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;Z)Ljavafx/event/EventHandler;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 438
    :cond_0
    move-object v7, v1

    move v8, v4

    iput v8, v7, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->index:I

    .line 439
    move-object v7, v1

    move v8, v5

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->isCustom:Z

    .line 440
    move-object v7, v1

    new-instance v8, Ljavafx/scene/shape/Rectangle;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-wide/high16 v10, 0x402e000000000000L    # 15.0

    const-wide/high16 v12, 0x402e000000000000L    # 15.0

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/scene/shape/Rectangle;-><init>(DD)V

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->rectangle:Ljavafx/scene/shape/Rectangle;

    .line 441
    move-object v7, v3

    if-nez v7, :cond_1

    .line 442
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->rectangle:Ljavafx/scene/shape/Rectangle;

    sget-object v8, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    invoke-virtual {v7, v8}, Ljavafx/scene/shape/Rectangle;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 443
    move-object v7, v1

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->isEmpty:Z

    .line 448
    :goto_0
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->rectangle:Ljavafx/scene/shape/Rectangle;

    sget-object v8, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    invoke-virtual {v7, v8}, Ljavafx/scene/shape/Rectangle;->setStrokeType(Ljavafx/scene/shape/StrokeType;)V

    .line 450
    move-object v7, v3

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->tooltipString(Ljavafx/scene/paint/Color;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 451
    .local v6, "tooltipStr":Ljava/lang/String;
    move-object v7, v1

    new-instance v8, Ljavafx/scene/control/Tooltip;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v6

    if-nez v10, :cond_2

    const-string v10, ""

    :goto_1
    invoke-direct {v9, v10}, Ljavafx/scene/control/Tooltip;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Ljavafx/scene/control/Tooltip;->install(Ljavafx/scene/Node;Ljavafx/scene/control/Tooltip;)V

    .line 453
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->rectangle:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v7}, Ljavafx/scene/shape/Rectangle;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v7

    const-string v8, "color-rect"

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 455
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->rectangle:Ljavafx/scene/shape/Rectangle;

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 456
    return-void

    .line 445
    .end local v6    # "tooltipStr":Ljava/lang/String;
    :cond_1
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->rectangle:Ljavafx/scene/shape/Rectangle;

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljavafx/scene/shape/Rectangle;->setFill(Ljavafx/scene/paint/Paint;)V

    goto :goto_0

    .line 451
    .restart local v6    # "tooltipStr":Ljava/lang/String;
    :cond_2
    move-object v10, v6

    goto :goto_1
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->lambda$new$308(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->lambda$new$309(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->lambda$new$310(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;ZLjavafx/scene/input/MouseEvent;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->lambda$new$311(ZLjavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method private synthetic lambda$new$308(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    move-object v1, p1

    .local v1, "s":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "ov":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "nv":Ljava/lang/Boolean;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    :goto_0
    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$1000(Lcom/sun/javafx/scene/control/skin/ColorPalette;Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;)V

    .line 405
    return-void

    .line 404
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private synthetic lambda$new$309(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    move-object v3, v0

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$1000(Lcom/sun/javafx/scene/control/skin/ColorPalette;Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;)V

    .line 409
    return-void
.end method

.method private synthetic lambda$new$310(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$1000(Lcom/sun/javafx/scene/control/skin/ColorPalette;Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;)V

    .line 412
    return-void
.end method

.method private synthetic lambda$new$311(ZLjavafx/scene/input/MouseEvent;)V
    .locals 13

    .prologue
    .line 415
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    move v2, p1

    .local v2, "isCustom":Z
    move-object v3, p2

    .local v3, "event":Ljavafx/scene/input/MouseEvent;
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$800(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    if-ne v5, v6, :cond_2

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/input/MouseEvent;->getClickCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 416
    move-object v5, v1

    iget-boolean v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->isEmpty:Z

    if-nez v5, :cond_0

    .line 417
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->rectangle:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v5}, Ljavafx/scene/shape/Rectangle;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v5

    check-cast v5, Ljavafx/scene/paint/Color;

    move-object v4, v5

    .line 418
    .local v4, "fill":Ljavafx/scene/paint/Color;
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ColorPicker;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/ColorPicker;->setValue(Ljava/lang/Object;)V

    .line 419
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ColorPicker;

    move-result-object v5

    new-instance v6, Ljavafx/event/ActionEvent;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljavafx/event/ActionEvent;-><init>()V

    invoke-virtual {v5, v6}, Ljavafx/scene/control/ColorPicker;->fireEvent(Ljavafx/event/Event;)V

    .line 420
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->updateSelection(Ljavafx/scene/paint/Color;)V

    .line 421
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 423
    .end local v4    # "fill":Ljavafx/scene/paint/Color;
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ColorPicker;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/ColorPicker;->hide()V

    .line 436
    :cond_1
    :goto_0
    return-void

    .line 424
    :cond_2
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/MouseButton;->SECONDARY:Ljavafx/scene/input/MouseButton;

    if-eq v5, v6, :cond_3

    move-object v5, v3

    .line 425
    invoke-virtual {v5}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/MouseButton;->MIDDLE:Ljavafx/scene/input/MouseButton;

    if-ne v5, v6, :cond_1

    .line 426
    :cond_3
    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$900(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ContextMenu;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 427
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$900(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ContextMenu;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/ContextMenu;->isShowing()Z

    move-result v5

    if-nez v5, :cond_4

    .line 428
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$900(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ContextMenu;

    move-result-object v5

    move-object v6, v1

    sget-object v7, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Ljavafx/scene/control/ContextMenu;->show(Ljavafx/scene/Node;Ljavafx/geometry/Side;DD)V

    .line 429
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$900(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ContextMenu;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->getScene()Ljavafx/scene/Scene;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ColorPicker;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/ColorPicker;->impl_isShowMnemonics()Z

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/Utils;->addMnemonics(Ljavafx/scene/control/ContextMenu;Ljavafx/scene/Scene;Z)V

    goto :goto_0

    .line 431
    :cond_4
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$900(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ContextMenu;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/ContextMenu;->hide()V

    .line 432
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$900(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ContextMenu;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->getScene()Ljavafx/scene/Scene;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/Utils;->removeMnemonics(Ljavafx/scene/control/ContextMenu;Ljavafx/scene/Scene;)V

    goto :goto_0
.end method


# virtual methods
.method public selectColor(Ljavafx/scene/input/KeyEvent;)V
    .locals 6

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/KeyEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->rectangle:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v2}, Ljavafx/scene/shape/Rectangle;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 460
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->rectangle:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v2}, Ljavafx/scene/shape/Rectangle;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v2

    instance-of v2, v2, Ljavafx/scene/paint/Color;

    if-eqz v2, :cond_0

    .line 461
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ColorPicker;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->rectangle:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v3}, Ljavafx/scene/shape/Rectangle;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v3

    check-cast v3, Ljavafx/scene/paint/Color;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ColorPicker;->setValue(Ljava/lang/Object;)V

    .line 462
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ColorPicker;

    move-result-object v2

    new-instance v3, Ljavafx/event/ActionEvent;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljavafx/event/ActionEvent;-><init>()V

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ColorPicker;->fireEvent(Ljavafx/event/Event;)V

    .line 464
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 466
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ColorPicker;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/ColorPicker;->hide()V

    .line 467
    return-void
.end method

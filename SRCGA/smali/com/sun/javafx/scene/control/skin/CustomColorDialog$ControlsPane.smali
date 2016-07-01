.class Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;
.super Ljavafx/scene/layout/VBox;
.source "CustomColorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControlsPane"
.end annotation


# instance fields
.field private bindedProperties:[Ljavafx/beans/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private buttonBox:Ljavafx/scene/layout/HBox;

.field private currentAndNewColor:Ljavafx/scene/layout/GridPane;

.field private currentColorLabel:Ljavafx/scene/control/Label;

.field private currentColorRect:Ljavafx/scene/layout/Region;

.field private currentNewColorBorder:Ljavafx/scene/layout/Region;

.field private currentTransparent:Ljavafx/scene/layout/Region;

.field private fields:[Lcom/sun/javafx/scene/control/skin/IntegerField;

.field private hBox:Ljavafx/scene/layout/HBox;

.field private hsbButton:Ljavafx/scene/control/ToggleButton;

.field private labels:[Ljavafx/scene/control/Label;

.field private newColorLabel:Ljavafx/scene/control/Label;

.field private newColorRect:Ljavafx/scene/layout/Region;

.field private rgbButton:Ljavafx/scene/control/ToggleButton;

.field private settingsPane:Ljavafx/scene/layout/GridPane;

.field private sliders:[Ljavafx/scene/control/Slider;

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

.field private units:[Ljavafx/scene/control/Label;

.field private webButton:Ljavafx/scene/control/ToggleButton;

.field private whiteBox:Ljavafx/scene/layout/Region;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)V
    .locals 18

    .prologue
    .line 494
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;
    move-object/from16 v1, p1

    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/layout/VBox;-><init>()V

    .line 485
    move-object v11, v0

    const/4 v12, 0x4

    new-array v12, v12, [Ljavafx/scene/control/Label;

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->labels:[Ljavafx/scene/control/Label;

    .line 486
    move-object v11, v0

    const/4 v12, 0x4

    new-array v12, v12, [Ljavafx/scene/control/Slider;

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->sliders:[Ljavafx/scene/control/Slider;

    .line 487
    move-object v11, v0

    const/4 v12, 0x4

    new-array v12, v12, [Lcom/sun/javafx/scene/control/skin/IntegerField;

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->fields:[Lcom/sun/javafx/scene/control/skin/IntegerField;

    .line 488
    move-object v11, v0

    const/4 v12, 0x4

    new-array v12, v12, [Ljavafx/scene/control/Label;

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->units:[Ljavafx/scene/control/Label;

    .line 492
    move-object v11, v0

    new-instance v12, Ljavafx/scene/layout/GridPane;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljavafx/scene/layout/GridPane;-><init>()V

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->settingsPane:Ljavafx/scene/layout/GridPane;

    .line 705
    move-object v11, v0

    const/4 v12, 0x4

    new-array v12, v12, [Ljavafx/beans/property/Property;

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->bindedProperties:[Ljavafx/beans/property/Property;

    .line 495
    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v11

    const-string v12, "controls-pane"

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 497
    move-object v11, v0

    new-instance v12, Ljavafx/scene/layout/Region;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljavafx/scene/layout/Region;-><init>()V

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentNewColorBorder:Ljavafx/scene/layout/Region;

    .line 498
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentNewColorBorder:Ljavafx/scene/layout/Region;

    const-string v12, "current-new-color-border"

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/Region;->setId(Ljava/lang/String;)V

    .line 500
    move-object v11, v0

    new-instance v12, Ljavafx/scene/layout/Region;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljavafx/scene/layout/Region;-><init>()V

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentTransparent:Ljavafx/scene/layout/Region;

    .line 501
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentTransparent:Ljavafx/scene/layout/Region;

    invoke-virtual {v11}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    const-string v15, "transparent-pattern"

    aput-object v15, v13, v14

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v11

    .line 503
    move-object v11, v0

    new-instance v12, Ljavafx/scene/layout/Region;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljavafx/scene/layout/Region;-><init>()V

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentColorRect:Ljavafx/scene/layout/Region;

    .line 504
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentColorRect:Ljavafx/scene/layout/Region;

    invoke-virtual {v11}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v11

    const-string v12, "color-rect"

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 505
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentColorRect:Ljavafx/scene/layout/Region;

    const-string v12, "current-color"

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/Region;->setId(Ljava/lang/String;)V

    .line 506
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentColorRect:Ljavafx/scene/layout/Region;

    invoke-virtual {v11}, Ljavafx/scene/layout/Region;->backgroundProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v11

    new-instance v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane$1;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    move-object v15, v1

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane$1;-><init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)V

    invoke-virtual {v11, v12}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 515
    move-object v11, v0

    new-instance v12, Ljavafx/scene/layout/Region;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljavafx/scene/layout/Region;-><init>()V

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->newColorRect:Ljavafx/scene/layout/Region;

    .line 516
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->newColorRect:Ljavafx/scene/layout/Region;

    invoke-virtual {v11}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v11

    const-string v12, "color-rect"

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 517
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->newColorRect:Ljavafx/scene/layout/Region;

    const-string v12, "new-color"

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/Region;->setId(Ljava/lang/String;)V

    .line 518
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->newColorRect:Ljavafx/scene/layout/Region;

    invoke-virtual {v11}, Ljavafx/scene/layout/Region;->backgroundProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v11

    new-instance v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane$2;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    move-object v15, v1

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane$2;-><init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)V

    invoke-virtual {v11, v12}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 527
    move-object v11, v0

    new-instance v12, Ljavafx/scene/control/Label;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const-string v14, "currentColor"

    invoke-static {v14}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljavafx/scene/control/Label;-><init>(Ljava/lang/String;)V

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentColorLabel:Ljavafx/scene/control/Label;

    .line 528
    move-object v11, v0

    new-instance v12, Ljavafx/scene/control/Label;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const-string v14, "newColor"

    invoke-static {v14}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljavafx/scene/control/Label;-><init>(Ljava/lang/String;)V

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->newColorLabel:Ljavafx/scene/control/Label;

    .line 530
    move-object v11, v0

    new-instance v12, Ljavafx/scene/layout/Region;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljavafx/scene/layout/Region;-><init>()V

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->whiteBox:Ljavafx/scene/layout/Region;

    .line 531
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->whiteBox:Ljavafx/scene/layout/Region;

    invoke-virtual {v11}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v11

    const-string v12, "customcolor-controls-background"

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 533
    move-object v11, v0

    new-instance v12, Ljavafx/scene/control/ToggleButton;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const-string v14, "colorType.hsb"

    invoke-static {v14}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljavafx/scene/control/ToggleButton;-><init>(Ljava/lang/String;)V

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->hsbButton:Ljavafx/scene/control/ToggleButton;

    .line 534
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->hsbButton:Ljavafx/scene/control/ToggleButton;

    invoke-virtual {v11}, Ljavafx/scene/control/ToggleButton;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v11

    const-string v12, "left-pill"

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 535
    move-object v11, v0

    new-instance v12, Ljavafx/scene/control/ToggleButton;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const-string v14, "colorType.rgb"

    invoke-static {v14}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljavafx/scene/control/ToggleButton;-><init>(Ljava/lang/String;)V

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->rgbButton:Ljavafx/scene/control/ToggleButton;

    .line 536
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->rgbButton:Ljavafx/scene/control/ToggleButton;

    invoke-virtual {v11}, Ljavafx/scene/control/ToggleButton;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v11

    const-string v12, "center-pill"

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 537
    move-object v11, v0

    new-instance v12, Ljavafx/scene/control/ToggleButton;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const-string v14, "colorType.web"

    invoke-static {v14}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljavafx/scene/control/ToggleButton;-><init>(Ljava/lang/String;)V

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->webButton:Ljavafx/scene/control/ToggleButton;

    .line 538
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->webButton:Ljavafx/scene/control/ToggleButton;

    invoke-virtual {v11}, Ljavafx/scene/control/ToggleButton;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v11

    const-string v12, "right-pill"

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 539
    new-instance v11, Ljavafx/scene/control/ToggleGroup;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljavafx/scene/control/ToggleGroup;-><init>()V

    move-object v2, v11

    .line 541
    .local v2, "group":Ljavafx/scene/control/ToggleGroup;
    move-object v11, v0

    new-instance v12, Ljavafx/scene/layout/HBox;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljavafx/scene/layout/HBox;-><init>()V

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->hBox:Ljavafx/scene/layout/HBox;

    .line 542
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->hBox:Ljavafx/scene/layout/HBox;

    sget-object v12, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/HBox;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 543
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->hBox:Ljavafx/scene/layout/HBox;

    invoke-virtual {v11}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v11

    const/4 v12, 0x3

    new-array v12, v12, [Ljavafx/scene/Node;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->hsbButton:Ljavafx/scene/control/ToggleButton;

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x1

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->rgbButton:Ljavafx/scene/control/ToggleButton;

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x2

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->webButton:Ljavafx/scene/control/ToggleButton;

    aput-object v15, v13, v14

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v11

    .line 545
    new-instance v11, Ljavafx/scene/layout/Region;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljavafx/scene/layout/Region;-><init>()V

    move-object v3, v11

    .line 546
    .local v3, "spacer1":Ljavafx/scene/layout/Region;
    move-object v11, v3

    const-string v12, "spacer1"

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/Region;->setId(Ljava/lang/String;)V

    .line 547
    new-instance v11, Ljavafx/scene/layout/Region;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljavafx/scene/layout/Region;-><init>()V

    move-object v4, v11

    .line 548
    .local v4, "spacer2":Ljavafx/scene/layout/Region;
    move-object v11, v4

    const-string v12, "spacer2"

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/Region;->setId(Ljava/lang/String;)V

    .line 549
    new-instance v11, Ljavafx/scene/layout/Region;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljavafx/scene/layout/Region;-><init>()V

    move-object v5, v11

    .line 550
    .local v5, "leftSpacer":Ljavafx/scene/layout/Region;
    move-object v11, v5

    const-string v12, "spacer-side"

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/Region;->setId(Ljava/lang/String;)V

    .line 551
    new-instance v11, Ljavafx/scene/layout/Region;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljavafx/scene/layout/Region;-><init>()V

    move-object v6, v11

    .line 552
    .local v6, "rightSpacer":Ljavafx/scene/layout/Region;
    move-object v11, v6

    const-string v12, "spacer-side"

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/Region;->setId(Ljava/lang/String;)V

    .line 553
    new-instance v11, Ljavafx/scene/layout/Region;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljavafx/scene/layout/Region;-><init>()V

    move-object v7, v11

    .line 554
    .local v7, "bottomSpacer":Ljavafx/scene/layout/Region;
    move-object v11, v7

    const-string v12, "spacer-bottom"

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/Region;->setId(Ljava/lang/String;)V

    .line 556
    move-object v11, v0

    new-instance v12, Ljavafx/scene/layout/GridPane;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljavafx/scene/layout/GridPane;-><init>()V

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentAndNewColor:Ljavafx/scene/layout/GridPane;

    .line 557
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentAndNewColor:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v11}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljavafx/scene/layout/ColumnConstraints;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    new-instance v15, Ljavafx/scene/layout/ColumnConstraints;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljavafx/scene/layout/ColumnConstraints;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x1

    new-instance v15, Ljavafx/scene/layout/ColumnConstraints;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljavafx/scene/layout/ColumnConstraints;-><init>()V

    aput-object v15, v13, v14

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v11

    .line 558
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentAndNewColor:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v11}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/scene/layout/ColumnConstraints;

    sget-object v12, Ljavafx/scene/layout/Priority;->ALWAYS:Ljavafx/scene/layout/Priority;

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/ColumnConstraints;->setHgrow(Ljavafx/scene/layout/Priority;)V

    .line 559
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentAndNewColor:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v11}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/scene/layout/ColumnConstraints;

    sget-object v12, Ljavafx/scene/layout/Priority;->ALWAYS:Ljavafx/scene/layout/Priority;

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/ColumnConstraints;->setHgrow(Ljavafx/scene/layout/Priority;)V

    .line 560
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentAndNewColor:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v11}, Ljavafx/scene/layout/GridPane;->getRowConstraints()Ljavafx/collections/ObservableList;

    move-result-object v11

    const/4 v12, 0x3

    new-array v12, v12, [Ljavafx/scene/layout/RowConstraints;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    new-instance v15, Ljavafx/scene/layout/RowConstraints;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljavafx/scene/layout/RowConstraints;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x1

    new-instance v15, Ljavafx/scene/layout/RowConstraints;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljavafx/scene/layout/RowConstraints;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x2

    new-instance v15, Ljavafx/scene/layout/RowConstraints;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljavafx/scene/layout/RowConstraints;-><init>()V

    aput-object v15, v13, v14

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v11

    .line 561
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentAndNewColor:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v11}, Ljavafx/scene/layout/GridPane;->getRowConstraints()Ljavafx/collections/ObservableList;

    move-result-object v11

    const/4 v12, 0x2

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/scene/layout/RowConstraints;

    sget-object v12, Ljavafx/scene/layout/Priority;->ALWAYS:Ljavafx/scene/layout/Priority;

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/RowConstraints;->setVgrow(Ljavafx/scene/layout/Priority;)V

    .line 562
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentAndNewColor:Ljavafx/scene/layout/GridPane;

    sget-object v12, Ljavafx/scene/layout/Priority;->ALWAYS:Ljavafx/scene/layout/Priority;

    invoke-static {v11, v12}, Ljavafx/scene/layout/VBox;->setVgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V

    .line 564
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentAndNewColor:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v11}, Ljavafx/scene/layout/GridPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v11

    const-string v12, "current-new-color-grid"

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 565
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentAndNewColor:Ljavafx/scene/layout/GridPane;

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentColorLabel:Ljavafx/scene/control/Label;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 566
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentAndNewColor:Ljavafx/scene/layout/GridPane;

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->newColorLabel:Ljavafx/scene/control/Label;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 567
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentAndNewColor:Ljavafx/scene/layout/GridPane;

    move-object v12, v3

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x2

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v16}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;IIII)V

    .line 568
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentAndNewColor:Ljavafx/scene/layout/GridPane;

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentTransparent:Ljavafx/scene/layout/Region;

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x2

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v16}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;IIII)V

    .line 569
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentAndNewColor:Ljavafx/scene/layout/GridPane;

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentColorRect:Ljavafx/scene/layout/Region;

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-virtual {v11, v12, v13, v14}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 570
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentAndNewColor:Ljavafx/scene/layout/GridPane;

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->newColorRect:Ljavafx/scene/layout/Region;

    const/4 v13, 0x1

    const/4 v14, 0x2

    invoke-virtual {v11, v12, v13, v14}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 571
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentAndNewColor:Ljavafx/scene/layout/GridPane;

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentNewColorBorder:Ljavafx/scene/layout/Region;

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x2

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v16}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;IIII)V

    .line 572
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentAndNewColor:Ljavafx/scene/layout/GridPane;

    move-object v12, v4

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v16}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;IIII)V

    .line 574
    move-object v11, v0

    new-instance v12, Ljavafx/scene/layout/GridPane;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljavafx/scene/layout/GridPane;-><init>()V

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->settingsPane:Ljavafx/scene/layout/GridPane;

    .line 575
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->settingsPane:Ljavafx/scene/layout/GridPane;

    const-string v12, "settings-pane"

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/GridPane;->setId(Ljava/lang/String;)V

    .line 576
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->settingsPane:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v11}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v11

    const/4 v12, 0x6

    new-array v12, v12, [Ljavafx/scene/layout/ColumnConstraints;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    new-instance v15, Ljavafx/scene/layout/ColumnConstraints;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljavafx/scene/layout/ColumnConstraints;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x1

    new-instance v15, Ljavafx/scene/layout/ColumnConstraints;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljavafx/scene/layout/ColumnConstraints;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x2

    new-instance v15, Ljavafx/scene/layout/ColumnConstraints;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljavafx/scene/layout/ColumnConstraints;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x3

    new-instance v15, Ljavafx/scene/layout/ColumnConstraints;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljavafx/scene/layout/ColumnConstraints;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x4

    new-instance v15, Ljavafx/scene/layout/ColumnConstraints;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljavafx/scene/layout/ColumnConstraints;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x5

    new-instance v15, Ljavafx/scene/layout/ColumnConstraints;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljavafx/scene/layout/ColumnConstraints;-><init>()V

    aput-object v15, v13, v14

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v11

    .line 580
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->settingsPane:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v11}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/scene/layout/ColumnConstraints;

    sget-object v12, Ljavafx/scene/layout/Priority;->NEVER:Ljavafx/scene/layout/Priority;

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/ColumnConstraints;->setHgrow(Ljavafx/scene/layout/Priority;)V

    .line 581
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->settingsPane:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v11}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v11

    const/4 v12, 0x2

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/scene/layout/ColumnConstraints;

    sget-object v12, Ljavafx/scene/layout/Priority;->ALWAYS:Ljavafx/scene/layout/Priority;

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/ColumnConstraints;->setHgrow(Ljavafx/scene/layout/Priority;)V

    .line 582
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->settingsPane:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v11}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v11

    const/4 v12, 0x3

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/scene/layout/ColumnConstraints;

    sget-object v12, Ljavafx/scene/layout/Priority;->NEVER:Ljavafx/scene/layout/Priority;

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/ColumnConstraints;->setHgrow(Ljavafx/scene/layout/Priority;)V

    .line 583
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->settingsPane:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v11}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v11

    const/4 v12, 0x4

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/scene/layout/ColumnConstraints;

    sget-object v12, Ljavafx/scene/layout/Priority;->NEVER:Ljavafx/scene/layout/Priority;

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/ColumnConstraints;->setHgrow(Ljavafx/scene/layout/Priority;)V

    .line 584
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->settingsPane:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v11}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/scene/layout/ColumnConstraints;

    sget-object v12, Ljavafx/scene/layout/Priority;->NEVER:Ljavafx/scene/layout/Priority;

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/ColumnConstraints;->setHgrow(Ljavafx/scene/layout/Priority;)V

    .line 585
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->settingsPane:Ljavafx/scene/layout/GridPane;

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->whiteBox:Ljavafx/scene/layout/Region;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x5

    invoke-virtual/range {v11 .. v16}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;IIII)V

    .line 586
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->settingsPane:Ljavafx/scene/layout/GridPane;

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->hBox:Ljavafx/scene/layout/HBox;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v16}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;IIII)V

    .line 587
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->settingsPane:Ljavafx/scene/layout/GridPane;

    move-object v12, v5

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 588
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->settingsPane:Ljavafx/scene/layout/GridPane;

    move-object v12, v6

    const/4 v13, 0x5

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 589
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->settingsPane:Ljavafx/scene/layout/GridPane;

    move-object v12, v7

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-virtual {v11, v12, v13, v14}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 591
    move-object v11, v1

    new-instance v12, Lcom/sun/javafx/scene/control/skin/WebColorField;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Lcom/sun/javafx/scene/control/skin/WebColorField;-><init>()V

    invoke-static {v11, v12}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$1302(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;Lcom/sun/javafx/scene/control/skin/WebColorField;)Lcom/sun/javafx/scene/control/skin/WebColorField;

    move-result-object v11

    .line 592
    move-object v11, v1

    invoke-static {v11}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$1300(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Lcom/sun/javafx/scene/control/skin/WebColorField;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/WebColorField;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v11

    const-string v12, "web-field"

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 593
    move-object v11, v1

    invoke-static {v11}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$1300(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Lcom/sun/javafx/scene/control/skin/WebColorField;

    move-result-object v11

    new-instance v12, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    invoke-static {v14}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$1300(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Lcom/sun/javafx/scene/control/skin/WebColorField;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;-><init>(Lcom/sun/javafx/scene/control/skin/WebColorField;)V

    invoke-virtual {v11, v12}, Lcom/sun/javafx/scene/control/skin/WebColorField;->setSkin(Ljavafx/scene/control/Skin;)V

    .line 594
    move-object v11, v1

    invoke-static {v11}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$1300(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Lcom/sun/javafx/scene/control/skin/WebColorField;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/WebColorField;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v11

    move-object v12, v1

    invoke-static {v12}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$1200(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljavafx/beans/property/ObjectProperty;->bindBidirectional(Ljavafx/beans/property/Property;)V

    .line 595
    move-object v11, v1

    invoke-static {v11}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$1300(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Lcom/sun/javafx/scene/control/skin/WebColorField;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/WebColorField;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/control/ToggleGroup;->selectedToggleProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->webButton:Ljavafx/scene/control/ToggleButton;

    invoke-virtual {v12, v13}, Ljavafx/beans/property/ReadOnlyObjectProperty;->isEqualTo(Ljava/lang/Object;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 596
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->settingsPane:Ljavafx/scene/layout/GridPane;

    move-object v12, v1

    invoke-static {v12}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$1300(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Lcom/sun/javafx/scene/control/skin/WebColorField;

    move-result-object v12

    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 599
    const/4 v11, 0x0

    move v8, v11

    .local v8, "i":I
    :goto_0
    move v11, v8

    const/4 v12, 0x4

    if-ge v11, v12, :cond_4

    .line 600
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->labels:[Ljavafx/scene/control/Label;

    move v12, v8

    new-instance v13, Ljavafx/scene/control/Label;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljavafx/scene/control/Label;-><init>()V

    aput-object v13, v11, v12

    .line 601
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->labels:[Ljavafx/scene/control/Label;

    move v12, v8

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljavafx/scene/control/Label;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v11

    const-string v12, "settings-label"

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 603
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->sliders:[Ljavafx/scene/control/Slider;

    move v12, v8

    new-instance v13, Ljavafx/scene/control/Slider;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljavafx/scene/control/Slider;-><init>()V

    aput-object v13, v11, v12

    .line 605
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->fields:[Lcom/sun/javafx/scene/control/skin/IntegerField;

    move v12, v8

    new-instance v13, Lcom/sun/javafx/scene/control/skin/IntegerField;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Lcom/sun/javafx/scene/control/skin/IntegerField;-><init>()V

    aput-object v13, v11, v12

    .line 606
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->fields:[Lcom/sun/javafx/scene/control/skin/IntegerField;

    move v12, v8

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/IntegerField;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v11

    const-string v12, "color-input-field"

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 607
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->fields:[Lcom/sun/javafx/scene/control/skin/IntegerField;

    move v12, v8

    aget-object v11, v11, v12

    new-instance v12, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->fields:[Lcom/sun/javafx/scene/control/skin/IntegerField;

    move v15, v8

    aget-object v14, v14, v15

    invoke-direct {v13, v14}, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;-><init>(Lcom/sun/javafx/scene/control/skin/IntegerField;)V

    invoke-virtual {v11, v12}, Lcom/sun/javafx/scene/control/skin/IntegerField;->setSkin(Ljavafx/scene/control/Skin;)V

    .line 609
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->units:[Ljavafx/scene/control/Label;

    move v12, v8

    new-instance v13, Ljavafx/scene/control/Label;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move v15, v8

    if-nez v15, :cond_3

    const-string v15, "\u00b0"

    :goto_1
    invoke-direct {v14, v15}, Ljavafx/scene/control/Label;-><init>(Ljava/lang/String;)V

    aput-object v13, v11, v12

    .line 610
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->units:[Ljavafx/scene/control/Label;

    move v12, v8

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljavafx/scene/control/Label;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v11

    const-string v12, "settings-unit"

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 612
    move v11, v8

    if-lez v11, :cond_0

    move v11, v8

    const/4 v12, 0x3

    if-ge v11, v12, :cond_0

    .line 615
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->labels:[Ljavafx/scene/control/Label;

    move v12, v8

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljavafx/scene/control/Label;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/control/ToggleGroup;->selectedToggleProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->webButton:Ljavafx/scene/control/ToggleButton;

    invoke-virtual {v12, v13}, Ljavafx/beans/property/ReadOnlyObjectProperty;->isNotEqualTo(Ljava/lang/Object;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 617
    :cond_0
    move v11, v8

    const/4 v12, 0x3

    if-ge v11, v12, :cond_1

    .line 619
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->sliders:[Ljavafx/scene/control/Slider;

    move v12, v8

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljavafx/scene/control/Slider;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/control/ToggleGroup;->selectedToggleProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->webButton:Ljavafx/scene/control/ToggleButton;

    invoke-virtual {v12, v13}, Ljavafx/beans/property/ReadOnlyObjectProperty;->isNotEqualTo(Ljava/lang/Object;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 620
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->fields:[Lcom/sun/javafx/scene/control/skin/IntegerField;

    move v12, v8

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/IntegerField;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/control/ToggleGroup;->selectedToggleProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->webButton:Ljavafx/scene/control/ToggleButton;

    invoke-virtual {v12, v13}, Ljavafx/beans/property/ReadOnlyObjectProperty;->isNotEqualTo(Ljava/lang/Object;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 621
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->units:[Ljavafx/scene/control/Label;

    move v12, v8

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljavafx/scene/control/Label;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/control/ToggleGroup;->selectedToggleProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->hsbButton:Ljavafx/scene/control/ToggleButton;

    invoke-virtual {v12, v13}, Ljavafx/beans/property/ReadOnlyObjectProperty;->isEqualTo(Ljava/lang/Object;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 623
    :cond_1
    const/4 v11, 0x1

    move v12, v8

    add-int/2addr v11, v12

    move v9, v11

    .line 624
    .local v9, "row":I
    move v11, v8

    const/4 v12, 0x3

    if-ne v11, v12, :cond_2

    .line 626
    add-int/lit8 v9, v9, 0x1

    .line 629
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->settingsPane:Ljavafx/scene/layout/GridPane;

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->labels:[Ljavafx/scene/control/Label;

    move v13, v8

    aget-object v12, v12, v13

    const/4 v13, 0x1

    move v14, v9

    invoke-virtual {v11, v12, v13, v14}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 630
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->settingsPane:Ljavafx/scene/layout/GridPane;

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->sliders:[Ljavafx/scene/control/Slider;

    move v13, v8

    aget-object v12, v12, v13

    const/4 v13, 0x2

    move v14, v9

    invoke-virtual {v11, v12, v13, v14}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 631
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->settingsPane:Ljavafx/scene/layout/GridPane;

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->fields:[Lcom/sun/javafx/scene/control/skin/IntegerField;

    move v13, v8

    aget-object v12, v12, v13

    const/4 v13, 0x3

    move v14, v9

    invoke-virtual {v11, v12, v13, v14}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 632
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->settingsPane:Ljavafx/scene/layout/GridPane;

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->units:[Ljavafx/scene/control/Label;

    move v13, v8

    aget-object v12, v12, v13

    const/4 v13, 0x4

    move v14, v9

    invoke-virtual {v11, v12, v13, v14}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 599
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 609
    .end local v9    # "row":I
    :cond_3
    const-string v15, "%"

    goto/16 :goto_1

    .line 635
    :cond_4
    move-object v11, v0

    const/4 v12, 0x3

    const-string v13, "opacity_colon"

    invoke-static {v13}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x64

    move-object v15, v1

    invoke-static {v15}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$1400(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    move-result-object v15

    invoke-static {v15}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$700(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v15

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->set(ILjava/lang/String;ILjavafx/beans/property/Property;)V

    .line 637
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->hsbButton:Ljavafx/scene/control/ToggleButton;

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljavafx/scene/control/ToggleButton;->setToggleGroup(Ljavafx/scene/control/ToggleGroup;)V

    .line 638
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->rgbButton:Ljavafx/scene/control/ToggleButton;

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljavafx/scene/control/ToggleButton;->setToggleGroup(Ljavafx/scene/control/ToggleGroup;)V

    .line 639
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->webButton:Ljavafx/scene/control/ToggleButton;

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljavafx/scene/control/ToggleButton;->setToggleGroup(Ljavafx/scene/control/ToggleGroup;)V

    .line 640
    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/control/ToggleGroup;->selectedToggleProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v11

    move-object v12, v0

    move-object v13, v2

    invoke-static {v12, v13}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;Ljavafx/scene/control/ToggleGroup;)Ljavafx/beans/value/ChangeListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 653
    move-object v11, v2

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->hsbButton:Ljavafx/scene/control/ToggleButton;

    invoke-virtual {v11, v12}, Ljavafx/scene/control/ToggleGroup;->selectToggle(Ljavafx/scene/control/Toggle;)V

    .line 655
    move-object v11, v0

    new-instance v12, Ljavafx/scene/layout/HBox;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljavafx/scene/layout/HBox;-><init>()V

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->buttonBox:Ljavafx/scene/layout/HBox;

    .line 656
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->buttonBox:Ljavafx/scene/layout/HBox;

    const-string v12, "buttons-hbox"

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/HBox;->setId(Ljava/lang/String;)V

    .line 658
    new-instance v11, Ljavafx/scene/control/Button;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string v13, "Save"

    invoke-static {v13}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljavafx/scene/control/Button;-><init>(Ljava/lang/String;)V

    move-object v8, v11

    .line 659
    .local v8, "saveButton":Ljavafx/scene/control/Button;
    move-object v11, v8

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljavafx/scene/control/Button;->setDefaultButton(Z)V

    .line 660
    move-object v11, v8

    move-object v12, v0

    invoke-static {v12}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;)Ljavafx/event/EventHandler;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljavafx/scene/control/Button;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 667
    new-instance v11, Ljavafx/scene/control/Button;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string v13, "Use"

    invoke-static {v13}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljavafx/scene/control/Button;-><init>(Ljava/lang/String;)V

    move-object v9, v11

    .line 668
    .local v9, "useButton":Ljavafx/scene/control/Button;
    move-object v11, v9

    move-object v12, v0

    invoke-static {v12}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;)Ljavafx/event/EventHandler;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljavafx/scene/control/Button;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 675
    new-instance v11, Ljavafx/scene/control/Button;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string v13, "Cancel"

    invoke-static {v13}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljavafx/scene/control/Button;-><init>(Ljava/lang/String;)V

    move-object v10, v11

    .line 676
    .local v10, "cancelButton":Ljavafx/scene/control/Button;
    move-object v11, v10

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljavafx/scene/control/Button;->setCancelButton(Z)V

    .line 677
    move-object v11, v10

    move-object v12, v0

    invoke-static {v12}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;)Ljavafx/event/EventHandler;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljavafx/scene/control/Button;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 684
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->buttonBox:Ljavafx/scene/layout/HBox;

    invoke-virtual {v11}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v11

    const/4 v12, 0x3

    new-array v12, v12, [Ljavafx/scene/Node;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    move-object v15, v8

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x1

    move-object v15, v9

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x2

    move-object v15, v10

    aput-object v15, v13, v14

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v11

    .line 686
    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v11

    const/4 v12, 0x3

    new-array v12, v12, [Ljavafx/scene/Node;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->currentAndNewColor:Ljavafx/scene/layout/GridPane;

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x1

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->settingsPane:Ljavafx/scene/layout/GridPane;

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x2

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->buttonBox:Ljavafx/scene/layout/HBox;

    aput-object v15, v13, v14

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v11

    .line 687
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;Ljavafx/scene/control/ToggleGroup;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/Toggle;Ljavafx/scene/control/Toggle;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->lambda$new$318(Ljavafx/scene/control/ToggleGroup;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/Toggle;Ljavafx/scene/control/Toggle;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->lambda$new$319(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->lambda$new$320(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->lambda$new$321(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private synthetic lambda$new$318(Ljavafx/scene/control/ToggleGroup;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/Toggle;Ljavafx/scene/control/Toggle;)V
    .locals 7

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;
    move-object v1, p1

    .local v1, "group":Ljavafx/scene/control/ToggleGroup;
    move-object v2, p2

    .local v2, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v3, p3

    .local v3, "oldValue":Ljavafx/scene/control/Toggle;
    move-object v4, p4

    .local v4, "newValue":Ljavafx/scene/control/Toggle;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 642
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljavafx/scene/control/ToggleGroup;->selectToggle(Ljavafx/scene/control/Toggle;)V

    .line 652
    :goto_0
    return-void

    .line 644
    :cond_0
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->hsbButton:Ljavafx/scene/control/ToggleButton;

    if-ne v5, v6, :cond_1

    .line 645
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->showHSBSettings()V

    goto :goto_0

    .line 646
    :cond_1
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->rgbButton:Ljavafx/scene/control/ToggleButton;

    if-ne v5, v6, :cond_2

    .line 647
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->showRGBSettings()V

    goto :goto_0

    .line 649
    :cond_2
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->showWebSettings()V

    goto :goto_0
.end method

.method private synthetic lambda$new$319(Ljavafx/event/ActionEvent;)V
    .locals 3

    .prologue
    .line 661
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;
    move-object v1, p1

    .local v1, "t":Ljavafx/event/ActionEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$2200(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 662
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$2200(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 664
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$100(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljavafx/stage/Stage;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/stage/Stage;->hide()V

    .line 665
    return-void
.end method

.method private synthetic lambda$new$320(Ljavafx/event/ActionEvent;)V
    .locals 3

    .prologue
    .line 669
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;
    move-object v1, p1

    .local v1, "t":Ljavafx/event/ActionEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$2100(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 670
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$2100(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 672
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$100(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljavafx/stage/Stage;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/stage/Stage;->hide()V

    .line 673
    return-void
.end method

.method private synthetic lambda$new$321(Ljavafx/event/ActionEvent;)V
    .locals 4

    .prologue
    .line 678
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;
    move-object v1, p1

    .local v1, "e":Ljavafx/event/ActionEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$1200(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getCurrentColor()Ljavafx/scene/paint/Color;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 679
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$2000(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 680
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$2000(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 682
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$100(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljavafx/stage/Stage;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/stage/Stage;->hide()V

    .line 683
    return-void
.end method

.method private set(ILjava/lang/String;ILjavafx/beans/property/Property;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 708
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "caption":Ljava/lang/String;
    move v3, p3

    .local v3, "maxValue":I
    move-object v4, p4

    .local v4, "prop":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Number;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->labels:[Ljavafx/scene/control/Label;

    move v6, v1

    aget-object v5, v5, v6

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 709
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->bindedProperties:[Ljavafx/beans/property/Property;

    move v6, v1

    aget-object v5, v5, v6

    if-eqz v5, :cond_0

    .line 710
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->sliders:[Ljavafx/scene/control/Slider;

    move v6, v1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljavafx/scene/control/Slider;->valueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->bindedProperties:[Ljavafx/beans/property/Property;

    move v7, v1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljavafx/beans/property/DoubleProperty;->unbindBidirectional(Ljavafx/beans/property/Property;)V

    .line 711
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->fields:[Lcom/sun/javafx/scene/control/skin/IntegerField;

    move v6, v1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/IntegerField;->valueProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->bindedProperties:[Ljavafx/beans/property/Property;

    move v7, v1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljavafx/beans/property/IntegerProperty;->unbindBidirectional(Ljavafx/beans/property/Property;)V

    .line 713
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->sliders:[Ljavafx/scene/control/Slider;

    move v6, v1

    aget-object v5, v5, v6

    move v6, v3

    int-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/Slider;->setMax(D)V

    .line 714
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->sliders:[Ljavafx/scene/control/Slider;

    move v6, v1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljavafx/scene/control/Slider;->valueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/beans/property/DoubleProperty;->bindBidirectional(Ljavafx/beans/property/Property;)V

    .line 715
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->labels:[Ljavafx/scene/control/Label;

    move v6, v1

    aget-object v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->sliders:[Ljavafx/scene/control/Slider;

    move v7, v1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Label;->setLabelFor(Ljavafx/scene/Node;)V

    .line 716
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->fields:[Lcom/sun/javafx/scene/control/skin/IntegerField;

    move v6, v1

    aget-object v5, v5, v6

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/IntegerField;->setMaxValue(I)V

    .line 717
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->fields:[Lcom/sun/javafx/scene/control/skin/IntegerField;

    move v6, v1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/IntegerField;->valueProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/beans/property/IntegerProperty;->bindBidirectional(Ljavafx/beans/property/Property;)V

    .line 718
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->bindedProperties:[Ljavafx/beans/property/Property;

    move v6, v1

    move-object v7, v4

    aput-object v7, v5, v6

    .line 719
    return-void
.end method

.method private showHSBSettings()V
    .locals 6

    .prologue
    .line 690
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;
    move-object v1, v0

    const/4 v2, 0x0

    const-string v3, "hue_colon"

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x168

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$1400(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$900(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->set(ILjava/lang/String;ILjavafx/beans/property/Property;)V

    .line 691
    move-object v1, v0

    const/4 v2, 0x1

    const-string v3, "saturation_colon"

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$1400(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$1500(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->set(ILjava/lang/String;ILjavafx/beans/property/Property;)V

    .line 692
    move-object v1, v0

    const/4 v2, 0x2

    const-string v3, "brightness_colon"

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$1400(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$1600(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->set(ILjava/lang/String;ILjavafx/beans/property/Property;)V

    .line 693
    return-void
.end method

.method private showRGBSettings()V
    .locals 6

    .prologue
    .line 696
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;
    move-object v1, v0

    const/4 v2, 0x0

    const-string v3, "red_colon"

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xff

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$1400(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$1700(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Ljavafx/beans/property/IntegerProperty;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->set(ILjava/lang/String;ILjavafx/beans/property/Property;)V

    .line 697
    move-object v1, v0

    const/4 v2, 0x1

    const-string v3, "green_colon"

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xff

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$1400(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$1800(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Ljavafx/beans/property/IntegerProperty;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->set(ILjava/lang/String;ILjavafx/beans/property/Property;)V

    .line 698
    move-object v1, v0

    const/4 v2, 0x2

    const-string v3, "blue_colon"

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xff

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$1400(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$1900(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Ljavafx/beans/property/IntegerProperty;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->set(ILjava/lang/String;ILjavafx/beans/property/Property;)V

    .line 699
    return-void
.end method

.method private showWebSettings()V
    .locals 3

    .prologue
    .line 702
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;->labels:[Ljavafx/scene/control/Label;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "web_colon"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 703
    return-void
.end method

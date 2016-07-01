.class Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
.super Ljavafx/scene/layout/StackPane;
.source "PaginationSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/PaginationSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NavigationControl"
.end annotation


# instance fields
.field private controlBox:Ljavafx/scene/layout/HBox;

.field private indicatorButtons:Ljavafx/scene/control/ToggleGroup;

.field private leftArrow:Ljavafx/scene/layout/StackPane;

.field private leftArrowButton:Ljavafx/scene/control/Button;

.field private minButtonSize:D

.field private pageInformation:Ljavafx/scene/control/Label;

.field private previousIndicatorCount:I

.field private previousWidth:D

.field private rightArrow:Ljavafx/scene/layout/StackPane;

.field private rightArrowButton:Ljavafx/scene/control/Button;

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)V
    .locals 16

    .prologue
    .line 728
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object/from16 v2, p1

    .local v2, "this$0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    .line 725
    move-object v3, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->previousWidth:D

    .line 726
    move-object v3, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->minButtonSize:D

    .line 880
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->previousIndicatorCount:I

    .line 729
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v15, v4

    move-object v4, v15

    move-object v5, v15

    const/4 v6, 0x0

    const-string v7, "pagination-control"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 732
    move-object v3, v1

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v5, v1

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 733
    move-object v3, v1

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    move-object v5, v1

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 734
    move-object v3, v1

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    move-object v5, v1

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 735
    move-object v3, v1

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    move-object v5, v1

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 737
    move-object v3, v1

    new-instance v4, Ljavafx/scene/layout/HBox;

    move-object v15, v4

    move-object v4, v15

    move-object v5, v15

    invoke-direct {v5}, Ljavafx/scene/layout/HBox;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->controlBox:Ljavafx/scene/layout/HBox;

    .line 738
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->controlBox:Ljavafx/scene/layout/HBox;

    invoke-virtual {v3}, Ljavafx/scene/layout/HBox;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "control-box"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 740
    move-object v3, v1

    new-instance v4, Ljavafx/scene/control/Button;

    move-object v15, v4

    move-object v4, v15

    move-object v5, v15

    invoke-direct {v5}, Ljavafx/scene/control/Button;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    .line 741
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    const-string v4, "Accessibility.title.Pagination.PreviousButton"

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Button;->setAccessibleText(Ljava/lang/String;)V

    .line 742
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    invoke-virtual {v4}, Ljavafx/scene/control/Button;->getFont()Ljavafx/scene/text/Font;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/text/Font;->getSize()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->minButtonSize:D

    .line 743
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 751
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->minButtonSize:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->minButtonSize:D

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/control/Button;->setMinSize(DD)V

    .line 752
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->prefWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    invoke-virtual {v4}, Ljavafx/scene/control/Button;->minWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 753
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->prefHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    invoke-virtual {v4}, Ljavafx/scene/control/Button;->minHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 754
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "left-arrow-button"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 755
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Button;->setFocusTraversable(Z)V

    .line 756
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    new-instance v4, Ljavafx/geometry/Insets;

    move-object v15, v4

    move-object v4, v15

    move-object v5, v15

    const-wide/16 v6, 0x0

    move-object v8, v1

    move-object v9, v2

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1400(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v5 .. v13}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    invoke-static {v3, v4}, Ljavafx/scene/layout/HBox;->setMargin(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)V

    .line 757
    move-object v3, v1

    new-instance v4, Ljavafx/scene/layout/StackPane;

    move-object v15, v4

    move-object v4, v15

    move-object v5, v15

    invoke-direct {v5}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrow:Ljavafx/scene/layout/StackPane;

    .line 758
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrow:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/layout/StackPane;->setMaxSize(DD)V

    .line 759
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrow:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Button;->setGraphic(Ljavafx/scene/Node;)V

    .line 760
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrow:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "left-arrow"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 762
    move-object v3, v1

    new-instance v4, Ljavafx/scene/control/Button;

    move-object v15, v4

    move-object v4, v15

    move-object v5, v15

    invoke-direct {v5}, Ljavafx/scene/control/Button;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    .line 763
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    const-string v4, "Accessibility.title.Pagination.NextButton"

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Button;->setAccessibleText(Ljava/lang/String;)V

    .line 764
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->minButtonSize:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->minButtonSize:D

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/control/Button;->setMinSize(DD)V

    .line 765
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->prefWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    invoke-virtual {v4}, Ljavafx/scene/control/Button;->minWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 766
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->prefHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    invoke-virtual {v4}, Ljavafx/scene/control/Button;->minHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 767
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "right-arrow-button"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 768
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Button;->setFocusTraversable(Z)V

    .line 769
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    new-instance v4, Ljavafx/geometry/Insets;

    move-object v15, v4

    move-object v4, v15

    move-object v5, v15

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v12, v1

    move-object v13, v2

    invoke-static {v13}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1400(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v12

    invoke-direct/range {v5 .. v13}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    invoke-static {v3, v4}, Ljavafx/scene/layout/HBox;->setMargin(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)V

    .line 770
    move-object v3, v1

    new-instance v4, Ljavafx/scene/layout/StackPane;

    move-object v15, v4

    move-object v4, v15

    move-object v5, v15

    invoke-direct {v5}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrow:Ljavafx/scene/layout/StackPane;

    .line 771
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrow:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/layout/StackPane;->setMaxSize(DD)V

    .line 772
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrow:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Button;->setGraphic(Ljavafx/scene/Node;)V

    .line 773
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrow:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "right-arrow"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 775
    move-object v3, v1

    new-instance v4, Ljavafx/scene/control/ToggleGroup;

    move-object v15, v4

    move-object v4, v15

    move-object v5, v15

    invoke-direct {v5}, Ljavafx/scene/control/ToggleGroup;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->indicatorButtons:Ljavafx/scene/control/ToggleGroup;

    .line 777
    move-object v3, v1

    new-instance v4, Ljavafx/scene/control/Label;

    move-object v15, v4

    move-object v4, v15

    move-object v5, v15

    invoke-direct {v5}, Ljavafx/scene/control/Label;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->pageInformation:Ljavafx/scene/control/Label;

    .line 778
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->pageInformation:Ljavafx/scene/control/Label;

    invoke-virtual {v3}, Ljavafx/scene/control/Label;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "page-information"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 780
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/scene/Node;

    move-object v15, v4

    move-object v4, v15

    move-object v5, v15

    const/4 v6, 0x0

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->controlBox:Ljavafx/scene/layout/HBox;

    aput-object v7, v5, v6

    move-object v15, v4

    move-object v4, v15

    move-object v5, v15

    const/4 v6, 0x1

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->pageInformation:Ljavafx/scene/control/Label;

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    .line 781
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->initializeNavigationHandlers()V

    .line 782
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->initializePageIndicators()V

    .line 783
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->updatePageIndex()V

    .line 786
    move-object v3, v2

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1400(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 796
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;)V
    .locals 2

    .prologue
    .line 716
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->initializePageIndicators()V

    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;)V
    .locals 2

    .prologue
    .line 716
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->updatePageIndicators()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;)Ljavafx/scene/control/ToggleGroup;
    .locals 2

    .prologue
    .line 716
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->indicatorButtons:Ljavafx/scene/control/ToggleGroup;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->lambda$new$419(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->lambda$new$420(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->lambda$new$421(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->lambda$new$422(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/text/Font;Ljavafx/scene/text/Font;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->lambda$new$423(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/text/Font;Ljavafx/scene/text/Font;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->lambda$new$424(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->lambda$initializeNavigationHandlers$425(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->lambda$initializeNavigationHandlers$426(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->lambda$initializeNavigationHandlers$427(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method private changePageSet()Z
    .locals 6

    .prologue
    .line 973
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->indexToIndicatorButtonsIndex(I)I

    move-result v3

    move v1, v3

    .line 974
    .local v1, "index":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2000(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .line 975
    .local v2, "lastIndicatorButtonIndex":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2300(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v4

    if-ge v3, v4, :cond_0

    move v3, v1

    if-nez v3, :cond_0

    move v3, v2

    if-eqz v3, :cond_0

    move v3, v1

    move v4, v2

    rem-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 980
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1602(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v3

    .line 981
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v4

    move v5, v2

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1702(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v3

    .line 1001
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1700(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2100(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_5

    .line 1002
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2100(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_4

    .line 1003
    const/4 v3, 0x0

    move v0, v3

    .line 1015
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    :goto_1
    return v0

    .line 982
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2300(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v4

    if-ge v3, v4, :cond_1

    move v3, v1

    move v4, v2

    if-ne v3, v4, :cond_1

    move v3, v2

    if-eqz v3, :cond_1

    move v3, v1

    move v4, v2

    rem-int/2addr v3, v4

    if-nez v3, :cond_1

    .line 987
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1702(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v3

    .line 988
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1700(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v4

    move v5, v2

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1602(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v3

    goto :goto_0

    .line 992
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v4

    if-lt v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1700(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v4

    if-le v3, v4, :cond_3

    .line 993
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v4

    move v5, v1

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1602(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v3

    .line 994
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v4

    move v5, v2

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1702(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v3

    goto/16 :goto_0

    .line 996
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 1005
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2100(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1702(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v3

    .line 1011
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v3

    if-gez v3, :cond_6

    .line 1012
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1602(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v3

    .line 1013
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v4

    move v5, v2

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1702(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v3

    .line 1015
    :cond_6
    const/4 v3, 0x1

    move v0, v3

    goto/16 :goto_1
.end method

.method private clearIndicatorButtons()V
    .locals 5

    .prologue
    .line 839
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->indicatorButtons:Ljavafx/scene/control/ToggleGroup;

    invoke-virtual {v4}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Toggle;

    move-object v2, v4

    .line 840
    .local v2, "toggle":Ljavafx/scene/control/Toggle;
    move-object v4, v2

    instance-of v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;

    if-eqz v4, :cond_0

    .line 841
    move-object v4, v2

    check-cast v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;

    move-object v3, v4

    .line 842
    .local v3, "indicatorButton":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->release()V

    .line 844
    .end local v3    # "indicatorButton":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    :cond_0
    goto :goto_0

    .line 845
    .end local v2    # "toggle":Ljavafx/scene/control/Toggle;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->indicatorButtons:Ljavafx/scene/control/ToggleGroup;

    invoke-virtual {v4}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->clear()V

    .line 846
    return-void
.end method

.method private indexToIndicatorButtonsIndex(I)I
    .locals 7

    .prologue
    .line 1020
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move v1, p1

    .local v1, "index":I
    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v6

    if-lt v5, v6, :cond_0

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1700(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 1021
    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v6

    sub-int/2addr v5, v6

    move v0, v5

    .line 1058
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    :goto_0
    return v0

    .line 1025
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    .line 1026
    .local v2, "i":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v5

    move v3, v5

    .line 1027
    .local v3, "from":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1700(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v5

    move v4, v5

    .line 1028
    .local v4, "to":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2300(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v6

    if-le v5, v6, :cond_5

    .line 1029
    :goto_1
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2100(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v6

    if-ge v5, v6, :cond_8

    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2100(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 1030
    move v5, v3

    move v6, v2

    add-int/2addr v5, v6

    move v3, v5

    .line 1031
    move v5, v4

    move v6, v2

    add-int/2addr v5, v6

    move v4, v5

    .line 1032
    move v5, v1

    move v6, v3

    if-lt v5, v6, :cond_3

    move v5, v1

    move v6, v4

    if-gt v5, v6, :cond_3

    .line 1033
    move v5, v1

    move v6, v3

    if-ne v5, v6, :cond_1

    .line 1034
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 1035
    :cond_1
    move v5, v1

    move v6, v4

    if-ne v5, v6, :cond_2

    .line 1036
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2000(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v0, v5

    goto :goto_0

    .line 1038
    :cond_2
    move v5, v1

    move v6, v3

    sub-int/2addr v5, v6

    move v0, v5

    goto :goto_0

    .line 1040
    :cond_3
    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2000(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v6

    add-int/2addr v5, v6

    move v2, v5

    goto :goto_1

    .line 1054
    :cond_4
    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2000(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v6

    add-int/2addr v5, v6

    move v2, v5

    .line 1043
    :cond_5
    move v5, v3

    if-lez v5, :cond_8

    move v5, v4

    if-lez v5, :cond_8

    .line 1044
    move v5, v3

    move v6, v2

    sub-int/2addr v5, v6

    move v3, v5

    .line 1045
    move v5, v4

    move v6, v2

    sub-int/2addr v5, v6

    move v4, v5

    .line 1046
    move v5, v1

    move v6, v3

    if-lt v5, v6, :cond_4

    move v5, v1

    move v6, v4

    if-gt v5, v6, :cond_4

    .line 1047
    move v5, v1

    move v6, v3

    if-ne v5, v6, :cond_6

    .line 1048
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 1049
    :cond_6
    move v5, v1

    move v6, v4

    if-ne v5, v6, :cond_7

    .line 1050
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2000(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v0, v5

    goto/16 :goto_0

    .line 1052
    :cond_7
    move v5, v1

    move v6, v3

    sub-int/2addr v5, v6

    move v0, v5

    goto/16 :goto_0

    .line 1058
    :cond_8
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2000(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v0, v5

    goto/16 :goto_0
.end method

.method private initializeNavigationHandlers()V
    .locals 3

    .prologue
    .line 799
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;)Ljavafx/event/EventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Button;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 804
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl$$Lambda$8;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;)Ljavafx/event/EventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Button;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 809
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1500(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/scene/control/Pagination;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/Pagination;->currentPageIndexProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v1

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl$$Lambda$9;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;)Ljavafx/beans/value/ChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/IntegerProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 820
    return-void
.end method

.method private initializePageIndicators()V
    .locals 9

    .prologue
    .line 824
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->previousIndicatorCount:I

    .line 825
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->controlBox:Ljavafx/scene/layout/HBox;

    invoke-virtual {v3}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->clear()V

    .line 826
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->clearIndicatorButtons()V

    .line 828
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->controlBox:Ljavafx/scene/layout/HBox;

    invoke-virtual {v3}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 829
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v3

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1700(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 830
    new-instance v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;-><init>(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)V

    move-object v2, v3

    .line 831
    .local v2, "ib":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    move-object v3, v2

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->minButtonSize:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->minButtonSize:D

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->setMinSize(DD)V

    .line 832
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->indicatorButtons:Ljavafx/scene/control/ToggleGroup;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->setToggleGroup(Ljavafx/scene/control/ToggleGroup;)V

    .line 833
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->controlBox:Ljavafx/scene/layout/HBox;

    invoke-virtual {v3}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 829
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 835
    .end local v2    # "ib":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->controlBox:Ljavafx/scene/layout/HBox;

    invoke-virtual {v3}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 836
    return-void
.end method

.method private synthetic lambda$initializeNavigationHandlers$425(Ljavafx/event/ActionEvent;)V
    .locals 3

    .prologue
    .line 800
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object v1, p1

    .local v1, "arg0":Ljavafx/event/ActionEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->selectPrevious()V

    .line 801
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->requestLayout()V

    .line 802
    return-void
.end method

.method private synthetic lambda$initializeNavigationHandlers$426(Ljavafx/event/ActionEvent;)V
    .locals 3

    .prologue
    .line 805
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object v1, p1

    .local v1, "arg0":Ljavafx/event/ActionEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->selectNext()V

    .line 806
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->requestLayout()V

    .line 807
    return-void
.end method

.method private synthetic lambda$initializeNavigationHandlers$427(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 7

    .prologue
    .line 810
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object v1, p1

    .local v1, "arg0":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Number;
    move-object v3, p3

    .local v3, "arg2":Ljava/lang/Number;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2302(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v4

    .line 811
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1802(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v4

    .line 812
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->updatePageIndex()V

    .line 813
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2400(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 814
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2502(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v4

    .line 815
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$500(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)V

    .line 819
    :goto_0
    return-void

    .line 817
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;Ljavafx/scene/layout/StackPane;I)Z

    move-result v4

    goto :goto_0
.end method

.method private synthetic lambda$new$419(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 732
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;->mousePressed(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method private synthetic lambda$new$420(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 733
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;->mouseReleased(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method private synthetic lambda$new$421(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 734
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;->mouseEntered(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method private synthetic lambda$new$422(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 735
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;->mouseExited(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method private synthetic lambda$new$423(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/text/Font;Ljavafx/scene/text/Font;)V
    .locals 12

    .prologue
    .line 744
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object v2, p1

    .local v2, "arg0":Ljavafx/beans/value/ObservableValue;
    move-object v3, p2

    .local v3, "arg1":Ljavafx/scene/text/Font;
    move-object v4, p3

    .local v4, "newFont":Ljavafx/scene/text/Font;
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/text/Font;->getSize()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->minButtonSize:D

    .line 745
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->controlBox:Ljavafx/scene/layout/HBox;

    invoke-virtual {v7}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_0
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Node;

    move-object v6, v7

    .line 746
    .local v6, "child":Ljavafx/scene/Node;
    move-object v7, v6

    check-cast v7, Ljavafx/scene/control/Control;

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->minButtonSize:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->minButtonSize:D

    invoke-virtual {v7, v8, v9, v10, v11}, Ljavafx/scene/control/Control;->setMinSize(DD)V

    .line 747
    goto :goto_0

    .line 749
    .end local v6    # "child":Ljavafx/scene/Node;
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->requestLayout()V

    .line 750
    return-void
.end method

.method private synthetic lambda$new$424(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 18

    .prologue
    .line 787
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object/from16 v2, p1

    .local v2, "observable":Ljavafx/beans/value/ObservableValue;
    move-object/from16 v3, p2

    .local v3, "oldValue":Ljava/lang/Number;
    move-object/from16 v4, p3

    .local v4, "newValue":Ljava/lang/Number;
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_0

    .line 788
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljavafx/scene/layout/HBox;->setMargin(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)V

    .line 789
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljavafx/scene/layout/HBox;->setMargin(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)V

    .line 795
    :goto_0
    return-void

    .line 792
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    new-instance v6, Ljavafx/geometry/Insets;

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    const-wide/16 v8, 0x0

    move-object v10, v1

    move-object v11, v4

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-direct/range {v7 .. v15}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    invoke-static {v5, v6}, Ljavafx/scene/layout/HBox;->setMargin(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)V

    .line 793
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    new-instance v6, Ljavafx/geometry/Insets;

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v14, v1

    move-object v15, v4

    invoke-virtual {v15}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v14

    invoke-direct/range {v7 .. v15}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    invoke-static {v5, v6}, Ljavafx/scene/layout/HBox;->setMargin(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)V

    goto :goto_0
.end method

.method private layoutPageIndicators()V
    .locals 38

    .prologue
    .line 884
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snappedLeftInset()D

    move-result-wide v30

    move-wide/from16 v4, v30

    .line 885
    .local v4, "left":D
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snappedRightInset()D

    move-result-wide v30

    move-wide/from16 v6, v30

    .line 886
    .local v6, "right":D
    move-object/from16 v30, v3

    move-object/from16 v31, v3

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->getWidth()D

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v30

    move-wide/from16 v32, v4

    move-wide/from16 v34, v6

    add-double v32, v32, v34

    sub-double v30, v30, v32

    move-wide/from16 v8, v30

    .line 887
    .local v8, "width":D
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->controlBox:Ljavafx/scene/layout/HBox;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/layout/HBox;->snappedLeftInset()D

    move-result-wide v30

    move-wide/from16 v10, v30

    .line 888
    .local v10, "controlBoxleft":D
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->controlBox:Ljavafx/scene/layout/HBox;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/layout/HBox;->snappedRightInset()D

    move-result-wide v30

    move-wide/from16 v12, v30

    .line 889
    .local v12, "controlBoxRight":D
    move-object/from16 v30, v3

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    move-object/from16 v31, v0

    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/control/Button;->prefWidth(D)D

    move-result-wide v31

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    move-object/from16 v33, v0

    const-wide/high16 v34, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v33 .. v35}, Ljavafx/scene/control/Button;->minWidth(D)D

    move-result-wide v33

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    move-object/from16 v35, v0

    const-wide/high16 v36, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v35 .. v37}, Ljavafx/scene/control/Button;->maxWidth(D)D

    move-result-wide v35

    invoke-static/range {v31 .. v36}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v30

    move-wide/from16 v14, v30

    .line 890
    .local v14, "leftArrowWidth":D
    move-object/from16 v30, v3

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    move-object/from16 v31, v0

    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/control/Button;->prefWidth(D)D

    move-result-wide v31

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    move-object/from16 v33, v0

    const-wide/high16 v34, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v33 .. v35}, Ljavafx/scene/control/Button;->minWidth(D)D

    move-result-wide v33

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    move-object/from16 v35, v0

    const-wide/high16 v36, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v35 .. v37}, Ljavafx/scene/control/Button;->maxWidth(D)D

    move-result-wide v35

    invoke-static/range {v31 .. v36}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v30

    move-wide/from16 v16, v30

    .line 891
    .local v16, "rightArrowWidth":D
    move-object/from16 v30, v3

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->controlBox:Ljavafx/scene/layout/HBox;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljavafx/scene/layout/HBox;->getSpacing()D

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v30

    move-wide/from16 v18, v30

    .line 892
    .local v18, "spacing":D
    move-wide/from16 v30, v8

    move-wide/from16 v32, v10

    move-wide/from16 v34, v14

    add-double v32, v32, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1400(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v36

    mul-double v34, v34, v36

    add-double v32, v32, v34

    move-wide/from16 v34, v18

    add-double v32, v32, v34

    move-wide/from16 v34, v16

    add-double v32, v32, v34

    move-wide/from16 v34, v12

    add-double v32, v32, v34

    sub-double v30, v30, v32

    move-wide/from16 v20, v30

    .line 894
    .local v20, "w":D
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->isPageInformationVisible()Z

    move-result v30

    if-eqz v30, :cond_1

    sget-object v30, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v31, v0

    .line 895
    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getPageInformationAlignment()Ljavafx/geometry/Side;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_0

    sget-object v30, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v31, v0

    .line 896
    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getPageInformationAlignment()Ljavafx/geometry/Side;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1

    .line 897
    :cond_0
    move-wide/from16 v30, v20

    move-object/from16 v32, v3

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->pageInformation:Ljavafx/scene/control/Label;

    move-object/from16 v33, v0

    const-wide/high16 v34, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v33 .. v35}, Ljavafx/scene/control/Label;->prefWidth(D)D

    move-result-wide v33

    invoke-virtual/range {v32 .. v34}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v32

    sub-double v30, v30, v32

    move-wide/from16 v20, v30

    .line 900
    :cond_1
    const-wide/16 v30, 0x0

    move-wide/from16 v22, v30

    .line 901
    .local v22, "x":D
    const/16 v30, 0x0

    move/from16 v24, v30

    .line 902
    .local v24, "indicatorCount":I
    const/16 v30, 0x0

    move/from16 v25, v30

    .local v25, "i":I
    :goto_0
    move/from16 v30, v25

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2200(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_3

    .line 903
    move/from16 v30, v25

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->indicatorButtons:Ljavafx/scene/control/ToggleGroup;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljavafx/collections/ObservableList;->size()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_8

    move/from16 v30, v25

    :goto_1
    move/from16 v26, v30

    .line 904
    .local v26, "index":I
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->minButtonSize:D

    move-wide/from16 v30, v0

    move-wide/from16 v27, v30

    .line 905
    .local v27, "iw":D
    move/from16 v30, v26

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    .line 906
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->indicatorButtons:Ljavafx/scene/control/ToggleGroup;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v30

    move/from16 v31, v26

    invoke-interface/range {v30 .. v31}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;

    move-object/from16 v29, v30

    .line 907
    .local v29, "ib":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    move-object/from16 v30, v3

    move-object/from16 v31, v29

    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v31 .. v33}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->prefWidth(D)D

    move-result-wide v31

    move-object/from16 v33, v29

    const-wide/high16 v34, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v33 .. v35}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->minWidth(D)D

    move-result-wide v33

    move-object/from16 v35, v29

    const-wide/high16 v36, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v35 .. v37}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->maxWidth(D)D

    move-result-wide v35

    invoke-static/range {v31 .. v36}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v30

    move-wide/from16 v27, v30

    .line 910
    .end local v29    # "ib":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    :cond_2
    move-wide/from16 v30, v22

    move-wide/from16 v32, v27

    move-wide/from16 v34, v18

    add-double v32, v32, v34

    add-double v30, v30, v32

    move-wide/from16 v22, v30

    .line 911
    move-wide/from16 v30, v22

    move-wide/from16 v32, v20

    cmpl-double v30, v30, v32

    if-lez v30, :cond_9

    .line 912
    .line 916
    .end local v26    # "index":I
    .end local v27    # "iw":D
    :cond_3
    move/from16 v30, v24

    if-nez v30, :cond_4

    .line 917
    const/16 v30, 0x1

    move/from16 v24, v30

    .line 921
    :cond_4
    move/from16 v30, v24

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->previousIndicatorCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_7

    .line 922
    move/from16 v30, v24

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2200(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_a

    .line 923
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v30, v0

    move/from16 v31, v24

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2002(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v30

    .line 929
    :goto_2
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1900(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v30

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2000(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_b

    .line 930
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v30, v0

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2000(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v31

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1902(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v30

    .line 931
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2000(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v30

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    move/from16 v25, v30

    .line 942
    .local v25, "lastIndicatorButtonIndex":I
    :goto_3
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v30

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1700(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_d

    .line 944
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v30, v0

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v31

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1702(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v30

    .line 945
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v30, v0

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1700(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v31

    move/from16 v32, v25

    sub-int v31, v31, v32

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1602(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v30

    .line 954
    :goto_4
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1700(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v30

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2100(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v31

    const/16 v32, 0x1

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_5

    .line 955
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v30, v0

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2100(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v31

    const/16 v32, 0x1

    add-int/lit8 v31, v31, -0x1

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1702(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v30

    .line 959
    :cond_5
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v30

    if-gez v30, :cond_6

    .line 960
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1602(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v30

    .line 961
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v30, v0

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v31

    move/from16 v32, v25

    add-int v31, v31, v32

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1702(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v30

    .line 964
    :cond_6
    move-object/from16 v30, v3

    invoke-direct/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->initializePageIndicators()V

    .line 965
    move-object/from16 v30, v3

    invoke-direct/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->updatePageIndicators()V

    .line 966
    move-object/from16 v30, v3

    move/from16 v31, v24

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->previousIndicatorCount:I

    .line 968
    .end local v25    # "lastIndicatorButtonIndex":I
    :cond_7
    return-void

    .line 903
    .local v25, "i":I
    :cond_8
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->indicatorButtons:Ljavafx/scene/control/ToggleGroup;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljavafx/collections/ObservableList;->size()I

    move-result v30

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    goto/16 :goto_1

    .line 914
    .restart local v26    # "index":I
    .restart local v27    # "iw":D
    :cond_9
    add-int/lit8 v24, v24, 0x1

    .line 902
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    .line 925
    .end local v26    # "index":I
    .end local v27    # "iw":D
    :cond_a
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v30, v0

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2200(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v31

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2002(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v30

    goto/16 :goto_2

    .line 933
    :cond_b
    move/from16 v30, v24

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2100(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_c

    .line 934
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v30, v0

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2100(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v31

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1902(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v30

    .line 935
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2100(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v30

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    move/from16 v25, v30

    .local v25, "lastIndicatorButtonIndex":I
    goto/16 :goto_3

    .line 937
    .local v25, "i":I
    :cond_c
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v30, v0

    move/from16 v31, v24

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1902(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v30

    .line 938
    move/from16 v30, v24

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    move/from16 v25, v30

    .local v25, "lastIndicatorButtonIndex":I
    goto/16 :goto_3

    .line 946
    :cond_d
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v30

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_e

    .line 948
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v30, v0

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v31

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1602(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v30

    .line 949
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v30, v0

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v31

    move/from16 v32, v25

    add-int v31, v31, v32

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1702(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v30

    goto/16 :goto_4

    .line 951
    :cond_e
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v30, v0

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v31

    move/from16 v32, v25

    add-int v31, v31, v32

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1702(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I

    move-result v30

    goto/16 :goto_4
.end method

.method private sideToPos(Ljavafx/geometry/Side;)Ljavafx/geometry/Pos;
    .locals 4

    .prologue
    .line 1062
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object v1, p1

    .local v1, "s":Ljavafx/geometry/Side;
    sget-object v2, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1063
    sget-object v2, Ljavafx/geometry/Pos;->TOP_CENTER:Ljavafx/geometry/Pos;

    move-object v0, v2

    .line 1069
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    :goto_0
    return-object v0

    .line 1064
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    :cond_0
    sget-object v2, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1065
    sget-object v2, Ljavafx/geometry/Pos;->CENTER_RIGHT:Ljavafx/geometry/Pos;

    move-object v0, v2

    goto :goto_0

    .line 1066
    :cond_1
    sget-object v2, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1067
    sget-object v2, Ljavafx/geometry/Pos;->BOTTOM_CENTER:Ljavafx/geometry/Pos;

    move-object v0, v2

    goto :goto_0

    .line 1069
    :cond_2
    sget-object v2, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    move-object v0, v2

    goto :goto_0
.end method

.method private updatePageIndex()V
    .locals 3

    .prologue
    .line 865
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1900(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2000(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 866
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->changePageSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 867
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->initializePageIndicators()V

    .line 870
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->updatePageIndicators()V

    .line 871
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->requestLayout()V

    .line 872
    return-void
.end method

.method private updatePageIndicators()V
    .locals 5

    .prologue
    .line 850
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->indicatorButtons:Ljavafx/scene/control/ToggleGroup;

    invoke-virtual {v4}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 851
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->indicatorButtons:Ljavafx/scene/control/ToggleGroup;

    invoke-virtual {v3}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v3

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;

    move-object v2, v3

    .line 852
    .local v2, "ib":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->getPageNumber()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 853
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->setSelected(Z)V

    .line 854
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->updatePageInformation()V

    .line 855
    .line 858
    .end local v2    # "ib":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Pagination;

    sget-object v4, Ljavafx/scene/AccessibleAttribute;->FOCUS_ITEM:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Pagination;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 859
    return-void

    .line 850
    .restart local v2    # "ib":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updatePageInformation()V
    .locals 7

    .prologue
    .line 875
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 876
    .local v1, "currentPageNumber":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2100(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v3

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    const-string v3, "..."

    :goto_0
    move-object v2, v3

    .line 877
    .local v2, "lastPageNumber":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->pageInformation:Ljavafx/scene/control/Label;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 878
    return-void

    .line 876
    .end local v2    # "lastPageNumber":Ljava/lang/String;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2100(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method protected computeMinHeight(D)D
    .locals 7

    .prologue
    .line 1090
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-wide v1, p1

    .local v1, "width":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->computePrefHeight(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    return-wide v0
.end method

.method protected computeMinWidth(D)D
    .locals 29

    .prologue
    .line 1073
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-wide/from16 v3, p1

    .local v3, "height":D
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snappedLeftInset()D

    move-result-wide v20

    move-wide/from16 v5, v20

    .line 1074
    .local v5, "left":D
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snappedRightInset()D

    move-result-wide v20

    move-wide/from16 v7, v20

    .line 1075
    .local v7, "right":D
    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    move-object/from16 v21, v0

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v21 .. v23}, Ljavafx/scene/control/Button;->prefWidth(D)D

    move-result-wide v21

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    move-object/from16 v23, v0

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/control/Button;->minWidth(D)D

    move-result-wide v23

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    move-object/from16 v25, v0

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/control/Button;->maxWidth(D)D

    move-result-wide v25

    invoke-static/range {v21 .. v26}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v9, v20

    .line 1076
    .local v9, "leftArrowWidth":D
    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    move-object/from16 v21, v0

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v21 .. v23}, Ljavafx/scene/control/Button;->prefWidth(D)D

    move-result-wide v21

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    move-object/from16 v23, v0

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/control/Button;->minWidth(D)D

    move-result-wide v23

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    move-object/from16 v25, v0

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/control/Button;->maxWidth(D)D

    move-result-wide v25

    invoke-static/range {v21 .. v26}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v11, v20

    .line 1077
    .local v11, "rightArrowWidth":D
    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->controlBox:Ljavafx/scene/layout/HBox;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/HBox;->getSpacing()D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v13, v20

    .line 1078
    .local v13, "spacing":D
    const-wide/16 v20, 0x0

    move-wide/from16 v15, v20

    .line 1079
    .local v15, "pageInformationWidth":D
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getPageInformationAlignment()Ljavafx/geometry/Side;

    move-result-object v20

    move-object/from16 v17, v20

    .line 1080
    .local v17, "side":Ljavafx/geometry/Side;
    sget-object v20, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    move-object/from16 v21, v17

    invoke-virtual/range {v20 .. v21}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    sget-object v20, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    move-object/from16 v21, v17

    invoke-virtual/range {v20 .. v21}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1081
    :cond_0
    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->pageInformation:Ljavafx/scene/control/Label;

    move-object/from16 v21, v0

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v21 .. v23}, Ljavafx/scene/control/Label;->prefWidth(D)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v15, v20

    .line 1083
    :cond_1
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1400(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 1085
    .local v18, "arrowGap":D
    move-wide/from16 v20, v5

    move-wide/from16 v22, v9

    add-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    move-wide/from16 v24, v18

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->minButtonSize:D

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    move-wide/from16 v24, v13

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v22, v11

    add-double v20, v20, v22

    move-wide/from16 v22, v7

    add-double v20, v20, v22

    move-wide/from16 v22, v15

    add-double v20, v20, v22

    move-wide/from16 v2, v20

    .end local v2    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    return-wide v2
.end method

.method protected computePrefHeight(D)D
    .locals 17

    .prologue
    .line 1107
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-wide/from16 v1, p1

    .local v1, "width":D
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snappedTopInset()D

    move-result-wide v12

    move-wide v3, v12

    .line 1108
    .local v3, "top":D
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snappedBottomInset()D

    move-result-wide v12

    move-wide v5, v12

    .line 1109
    .local v5, "bottom":D
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->controlBox:Ljavafx/scene/layout/HBox;

    move-wide v14, v1

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/layout/HBox;->prefHeight(D)D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v12

    move-wide v7, v12

    .line 1110
    .local v7, "boxHeight":D
    const-wide/16 v12, 0x0

    move-wide v9, v12

    .line 1111
    .local v9, "pageInformationHeight":D
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getPageInformationAlignment()Ljavafx/geometry/Side;

    move-result-object v12

    move-object v11, v12

    .line 1112
    .local v11, "side":Ljavafx/geometry/Side;
    sget-object v12, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    move-object v13, v11

    invoke-virtual {v12, v13}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    sget-object v12, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    move-object v13, v11

    invoke-virtual {v12, v13}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1113
    :cond_0
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->pageInformation:Ljavafx/scene/control/Label;

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/control/Label;->prefHeight(D)D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v12

    move-wide v9, v12

    .line 1116
    :cond_1
    move-wide v12, v3

    move-wide v14, v7

    add-double/2addr v12, v14

    move-wide v14, v9

    add-double/2addr v12, v14

    move-wide v14, v5

    add-double/2addr v12, v14

    move-wide v0, v12

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    return-wide v0
.end method

.method protected computePrefWidth(D)D
    .locals 17

    .prologue
    .line 1094
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-wide/from16 v1, p1

    .local v1, "height":D
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snappedLeftInset()D

    move-result-wide v12

    move-wide v3, v12

    .line 1095
    .local v3, "left":D
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snappedRightInset()D

    move-result-wide v12

    move-wide v5, v12

    .line 1096
    .local v5, "right":D
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->controlBox:Ljavafx/scene/layout/HBox;

    move-wide v14, v1

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/layout/HBox;->prefWidth(D)D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v12

    move-wide v7, v12

    .line 1097
    .local v7, "controlBoxWidth":D
    const-wide/16 v12, 0x0

    move-wide v9, v12

    .line 1098
    .local v9, "pageInformationWidth":D
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getPageInformationAlignment()Ljavafx/geometry/Side;

    move-result-object v12

    move-object v11, v12

    .line 1099
    .local v11, "side":Ljavafx/geometry/Side;
    sget-object v12, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    move-object v13, v11

    invoke-virtual {v12, v13}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    sget-object v12, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    move-object v13, v11

    invoke-virtual {v12, v13}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1100
    :cond_0
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->pageInformation:Ljavafx/scene/control/Label;

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/control/Label;->prefWidth(D)D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v12

    move-wide v9, v12

    .line 1103
    :cond_1
    move-wide v12, v3

    move-wide v14, v7

    add-double/2addr v12, v14

    move-wide v14, v5

    add-double/2addr v12, v14

    move-wide v14, v9

    add-double/2addr v12, v14

    move-wide v0, v12

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    return-wide v0
.end method

.method protected layoutChildren()V
    .locals 52

    .prologue
    .line 1120
    move-object/from16 v4, p0

    .local v4, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    move-object/from16 v38, v4

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snappedTopInset()D

    move-result-wide v38

    move-wide/from16 v5, v38

    .line 1121
    .local v5, "top":D
    move-object/from16 v38, v4

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snappedBottomInset()D

    move-result-wide v38

    move-wide/from16 v7, v38

    .line 1122
    .local v7, "bottom":D
    move-object/from16 v38, v4

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snappedLeftInset()D

    move-result-wide v38

    move-wide/from16 v9, v38

    .line 1123
    .local v9, "left":D
    move-object/from16 v38, v4

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snappedRightInset()D

    move-result-wide v38

    move-wide/from16 v11, v38

    .line 1124
    .local v11, "right":D
    move-object/from16 v38, v4

    move-object/from16 v39, v4

    invoke-virtual/range {v39 .. v39}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->getWidth()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v38

    move-wide/from16 v40, v9

    move-wide/from16 v42, v11

    add-double v40, v40, v42

    sub-double v38, v38, v40

    move-wide/from16 v13, v38

    .line 1125
    .local v13, "width":D
    move-object/from16 v38, v4

    move-object/from16 v39, v4

    invoke-virtual/range {v39 .. v39}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->getHeight()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v38

    move-wide/from16 v40, v5

    move-wide/from16 v42, v7

    add-double v40, v40, v42

    sub-double v38, v38, v40

    move-wide/from16 v15, v38

    .line 1126
    .local v15, "height":D
    move-object/from16 v38, v4

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->controlBox:Ljavafx/scene/layout/HBox;

    move-object/from16 v39, v0

    const-wide/high16 v40, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v39 .. v41}, Ljavafx/scene/layout/HBox;->prefWidth(D)D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v38

    move-wide/from16 v17, v38

    .line 1127
    .local v17, "controlBoxWidth":D
    move-object/from16 v38, v4

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->controlBox:Ljavafx/scene/layout/HBox;

    move-object/from16 v39, v0

    const-wide/high16 v40, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v39 .. v41}, Ljavafx/scene/layout/HBox;->prefHeight(D)D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v38

    move-wide/from16 v19, v38

    .line 1128
    .local v19, "controlBoxHeight":D
    move-object/from16 v38, v4

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->pageInformation:Ljavafx/scene/control/Label;

    move-object/from16 v39, v0

    const-wide/high16 v40, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v39 .. v41}, Ljavafx/scene/control/Label;->prefWidth(D)D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v38

    move-wide/from16 v21, v38

    .line 1129
    .local v21, "pageInformationWidth":D
    move-object/from16 v38, v4

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->pageInformation:Ljavafx/scene/control/Label;

    move-object/from16 v39, v0

    const-wide/high16 v40, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v39 .. v41}, Ljavafx/scene/control/Label;->prefHeight(D)D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->snapSize(D)D

    move-result-wide v38

    move-wide/from16 v23, v38

    .line 1131
    .local v23, "pageInformationHeight":D
    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/control/Button;->setDisable(Z)V

    .line 1132
    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/control/Button;->setDisable(Z)V

    .line 1134
    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v38

    if-nez v38, :cond_0

    .line 1136
    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/control/Button;->setDisable(Z)V

    .line 1138
    :cond_0
    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v38

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2100(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v39

    const/16 v40, 0x1

    add-int/lit8 v39, v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1

    .line 1140
    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/control/Button;->setDisable(Z)V

    .line 1144
    :cond_1
    move-object/from16 v38, v4

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->applyCss()V

    .line 1146
    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->leftArrowButton:Ljavafx/scene/control/Button;

    move-object/from16 v38, v0

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->isArrowsVisible()Z

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/control/Button;->setVisible(Z)V

    .line 1147
    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->rightArrowButton:Ljavafx/scene/control/Button;

    move-object/from16 v38, v0

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->isArrowsVisible()Z

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/control/Button;->setVisible(Z)V

    .line 1148
    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->pageInformation:Ljavafx/scene/control/Label;

    move-object/from16 v38, v0

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->isPageInformationVisible()Z

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/control/Label;->setVisible(Z)V

    .line 1152
    move-object/from16 v38, v4

    invoke-direct/range {v38 .. v38}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->layoutPageIndicators()V

    .line 1154
    move-object/from16 v38, v4

    move-object/from16 v39, v4

    invoke-virtual/range {v39 .. v39}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->getWidth()D

    move-result-wide v39

    move-wide/from16 v0, v39

    move-object/from16 v2, v38

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->previousWidth:D

    .line 1156
    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->controlBox:Ljavafx/scene/layout/HBox;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/layout/HBox;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v38

    move-object/from16 v25, v38

    .line 1157
    .local v25, "controlBoxHPos":Ljavafx/geometry/HPos;
    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->controlBox:Ljavafx/scene/layout/HBox;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/layout/HBox;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v38

    move-object/from16 v26, v38

    .line 1158
    .local v26, "controlBoxVPos":Ljavafx/geometry/VPos;
    move-wide/from16 v38, v9

    move-wide/from16 v40, v13

    move-wide/from16 v42, v17

    move-object/from16 v44, v25

    invoke-static/range {v40 .. v44}, Lcom/sun/javafx/scene/control/skin/Utils;->computeXOffset(DDLjavafx/geometry/HPos;)D

    move-result-wide v40

    add-double v38, v38, v40

    move-wide/from16 v27, v38

    .line 1159
    .local v27, "controlBoxX":D
    move-wide/from16 v38, v5

    move-wide/from16 v40, v15

    move-wide/from16 v42, v19

    move-object/from16 v44, v26

    invoke-static/range {v40 .. v44}, Lcom/sun/javafx/scene/control/skin/Utils;->computeYOffset(DDLjavafx/geometry/VPos;)D

    move-result-wide v40

    add-double v38, v38, v40

    move-wide/from16 v29, v38

    .line 1161
    .local v29, "controlBoxY":D
    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->isPageInformationVisible()Z

    move-result v38

    if-eqz v38, :cond_3

    .line 1162
    move-object/from16 v38, v4

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getPageInformationAlignment()Ljavafx/geometry/Side;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->sideToPos(Ljavafx/geometry/Side;)Ljavafx/geometry/Pos;

    move-result-object v38

    move-object/from16 v31, v38

    .line 1163
    .local v31, "p":Ljavafx/geometry/Pos;
    move-object/from16 v38, v31

    invoke-virtual/range {v38 .. v38}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v38

    move-object/from16 v32, v38

    .line 1164
    .local v32, "pageInformationHPos":Ljavafx/geometry/HPos;
    move-object/from16 v38, v31

    invoke-virtual/range {v38 .. v38}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v38

    move-object/from16 v33, v38

    .line 1165
    .local v33, "pageInformationVPos":Ljavafx/geometry/VPos;
    move-wide/from16 v38, v9

    move-wide/from16 v40, v13

    move-wide/from16 v42, v21

    move-object/from16 v44, v32

    invoke-static/range {v40 .. v44}, Lcom/sun/javafx/scene/control/skin/Utils;->computeXOffset(DDLjavafx/geometry/HPos;)D

    move-result-wide v40

    add-double v38, v38, v40

    move-wide/from16 v34, v38

    .line 1166
    .local v34, "pageInformationX":D
    move-wide/from16 v38, v5

    move-wide/from16 v40, v15

    move-wide/from16 v42, v23

    move-object/from16 v44, v33

    invoke-static/range {v40 .. v44}, Lcom/sun/javafx/scene/control/skin/Utils;->computeYOffset(DDLjavafx/geometry/VPos;)D

    move-result-wide v40

    add-double v38, v38, v40

    move-wide/from16 v36, v38

    .line 1168
    .local v36, "pageInformationY":D
    sget-object v38, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getPageInformationAlignment()Ljavafx/geometry/Side;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_4

    .line 1169
    move-wide/from16 v38, v5

    move-wide/from16 v36, v38

    .line 1170
    move-wide/from16 v38, v5

    move-wide/from16 v40, v23

    add-double v38, v38, v40

    move-wide/from16 v29, v38

    .line 1179
    :cond_2
    :goto_0
    move-object/from16 v38, v4

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->pageInformation:Ljavafx/scene/control/Label;

    move-object/from16 v39, v0

    move-wide/from16 v40, v34

    move-wide/from16 v42, v36

    move-wide/from16 v44, v21

    move-wide/from16 v46, v23

    const-wide/16 v48, 0x0

    move-object/from16 v50, v32

    move-object/from16 v51, v33

    invoke-virtual/range {v38 .. v51}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 1182
    .end local v31    # "p":Ljavafx/geometry/Pos;
    .end local v32    # "pageInformationHPos":Ljavafx/geometry/HPos;
    .end local v33    # "pageInformationVPos":Ljavafx/geometry/VPos;
    .end local v34    # "pageInformationX":D
    .end local v36    # "pageInformationY":D
    :cond_3
    move-object/from16 v38, v4

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->controlBox:Ljavafx/scene/layout/HBox;

    move-object/from16 v39, v0

    move-wide/from16 v40, v27

    move-wide/from16 v42, v29

    move-wide/from16 v44, v17

    move-wide/from16 v46, v19

    const-wide/16 v48, 0x0

    move-object/from16 v50, v25

    move-object/from16 v51, v26

    invoke-virtual/range {v38 .. v51}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 1183
    return-void

    .line 1171
    .restart local v31    # "p":Ljavafx/geometry/Pos;
    .restart local v32    # "pageInformationHPos":Ljavafx/geometry/HPos;
    .restart local v33    # "pageInformationVPos":Ljavafx/geometry/VPos;
    .restart local v34    # "pageInformationX":D
    .restart local v36    # "pageInformationY":D
    :cond_4
    sget-object v38, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getPageInformationAlignment()Ljavafx/geometry/Side;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_5

    .line 1172
    move-wide/from16 v38, v13

    move-wide/from16 v40, v11

    sub-double v38, v38, v40

    move-wide/from16 v40, v21

    sub-double v38, v38, v40

    move-wide/from16 v34, v38

    goto :goto_0

    .line 1173
    :cond_5
    sget-object v38, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getPageInformationAlignment()Ljavafx/geometry/Side;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_6

    .line 1174
    move-wide/from16 v38, v5

    move-wide/from16 v29, v38

    .line 1175
    move-wide/from16 v38, v5

    move-wide/from16 v40, v19

    add-double v38, v38, v40

    move-wide/from16 v36, v38

    goto :goto_0

    .line 1176
    :cond_6
    sget-object v38, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getPageInformationAlignment()Ljavafx/geometry/Side;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2

    .line 1177
    move-wide/from16 v38, v9

    move-wide/from16 v34, v38

    goto/16 :goto_0
.end method

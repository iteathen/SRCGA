.class public Lcom/sun/javafx/scene/control/skin/SliderSkin;
.super Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.source "SliderSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase",
        "<",
        "Ljavafx/scene/control/Slider;",
        "Lcom/sun/javafx/scene/control/behavior/SliderBehavior;",
        ">;"
    }
.end annotation


# instance fields
.field private dragStart:Ljavafx/geometry/Point2D;

.field private preDragThumbPos:D

.field private showTickMarks:Z

.field stringConverterWrapper:Ljavafx/util/StringConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/StringConverter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private thumb:Ljavafx/scene/layout/StackPane;

.field private thumbHeight:D

.field private thumbLeft:D

.field private thumbTop:D

.field private thumbWidth:D

.field private tickLine:Ljavafx/scene/chart/NumberAxis;

.field private track:Ljavafx/scene/layout/StackPane;

.field private trackClicked:Z

.field private trackLength:D

.field private trackStart:D

.field private trackToTickGap:D


# direct methods
.method public constructor <init>(Ljavafx/scene/control/Slider;)V
    .locals 9

    .prologue
    .line 69
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    move-object v2, p1

    .local v2, "slider":Ljavafx/scene/control/Slider;
    move-object v3, v1

    move-object v4, v2

    new-instance v5, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;-><init>(Ljavafx/scene/control/Slider;)V

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 49
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    .line 50
    move-object v3, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackToTickGap:D

    .line 65
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackClicked:Z

    .line 144
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/skin/SliderSkin$2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/SliderSkin$2;-><init>(Lcom/sun/javafx/scene/control/skin/SliderSkin;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->stringConverterWrapper:Ljavafx/util/StringConverter;

    .line 71
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->initialize()V

    .line 72
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->requestLayout()V

    .line 73
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->minProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    const-string v5, "MIN"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 74
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->maxProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    const-string v5, "MAX"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 75
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->valueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    const-string v5, "VALUE"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 76
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->orientationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    const-string v5, "ORIENTATION"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 77
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->showTickMarksProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    const-string v5, "SHOW_TICK_MARKS"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 78
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->showTickLabelsProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    const-string v5, "SHOW_TICK_LABELS"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 79
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->majorTickUnitProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    const-string v5, "MAJOR_TICK_UNIT"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 80
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->minorTickCountProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v4

    const-string v5, "MINOR_TICK_COUNT"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 81
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->labelFormatterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    const-string v5, "TICK_LABEL_FORMATTER"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/SliderSkin;)Ljavafx/scene/layout/StackPane;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/SliderSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->lambda$initialize$460(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/SliderSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->lambda$initialize$461(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/SliderSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->lambda$initialize$462(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/SliderSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->lambda$initialize$463(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/SliderSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->lambda$initialize$464(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method private initialize()V
    .locals 7

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/SliderSkin$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/SliderSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/SliderSkin;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    .line 94
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v1}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "thumb"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 95
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    sget-object v2, Ljavafx/scene/AccessibleRole;->THUMB:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/layout/StackPane;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 96
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/StackPane;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/SliderSkin;->track:Ljavafx/scene/layout/StackPane;

    .line 97
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/SliderSkin;->track:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v1}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "track"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 100
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->clear()V

    .line 101
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljavafx/scene/Node;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SliderSkin;->track:Ljavafx/scene/layout/StackPane;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v1

    .line 102
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Slider;

    invoke-virtual {v2}, Ljavafx/scene/control/Slider;->isShowTickMarks()Z

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Slider;

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->isShowTickLabels()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->setShowTickMarks(ZZ)V

    .line 103
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/SliderSkin;->track:Ljavafx/scene/layout/StackPane;

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/SliderSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/SliderSkin;)Ljavafx/event/EventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/layout/StackPane;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 115
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/SliderSkin;->track:Ljavafx/scene/layout/StackPane;

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/SliderSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/SliderSkin;)Ljavafx/event/EventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/layout/StackPane;->setOnMouseDragged(Ljavafx/event/EventHandler;)V

    .line 125
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/SliderSkin$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/SliderSkin;)Ljavafx/event/EventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/layout/StackPane;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 132
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/SliderSkin$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/SliderSkin;)Ljavafx/event/EventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/layout/StackPane;->setOnMouseReleased(Ljavafx/event/EventHandler;)V

    .line 136
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/SliderSkin$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/SliderSkin;)Ljavafx/event/EventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/layout/StackPane;->setOnMouseDragged(Ljavafx/event/EventHandler;)V

    .line 142
    return-void
.end method

.method private synthetic lambda$initialize$460(Ljavafx/scene/input/MouseEvent;)V
    .locals 8

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    move-object v1, p1

    .local v1, "me":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->isPressed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackClicked:Z

    .line 106
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Slider;

    invoke-virtual {v2}, Ljavafx/scene/control/Slider;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v2

    sget-object v3, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v2, v3, :cond_1

    .line 107
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v4

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackLength:D

    div-double/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->trackPress(Ljavafx/scene/input/MouseEvent;D)V

    .line 111
    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackClicked:Z

    .line 113
    :cond_0
    return-void

    .line 109
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v4

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackLength:D

    div-double/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->trackPress(Ljavafx/scene/input/MouseEvent;D)V

    goto :goto_0
.end method

.method private synthetic lambda$initialize$461(Ljavafx/scene/input/MouseEvent;)V
    .locals 8

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    move-object v1, p1

    .local v1, "me":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->isPressed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Slider;

    invoke-virtual {v2}, Ljavafx/scene/control/Slider;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v2

    sget-object v3, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v2, v3, :cond_1

    .line 118
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v4

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackLength:D

    div-double/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->trackPress(Ljavafx/scene/input/MouseEvent;D)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v4

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackLength:D

    div-double/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->trackPress(Ljavafx/scene/input/MouseEvent;D)V

    goto :goto_0
.end method

.method private synthetic lambda$initialize$462(Ljavafx/scene/input/MouseEvent;)V
    .locals 10

    .prologue
    .line 126
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    move-object v2, p1

    .local v2, "me":Ljavafx/scene/input/MouseEvent;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;

    move-object v4, v2

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->thumbPressed(Ljavafx/scene/input/MouseEvent;D)V

    .line 127
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v5

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Ljavafx/scene/layout/StackPane;->localToParent(DD)Ljavafx/geometry/Point2D;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->dragStart:Ljavafx/geometry/Point2D;

    .line 128
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Slider;

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getValue()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/Slider;

    invoke-virtual {v6}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v6

    sub-double/2addr v4, v6

    move-object v6, v1

    .line 129
    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/Slider;

    invoke-virtual {v6}, Ljavafx/scene/control/Slider;->getMax()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/Slider;

    invoke-virtual {v8}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v8

    sub-double/2addr v6, v8

    div-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->preDragThumbPos:D

    .line 130
    return-void
.end method

.method private synthetic lambda$initialize$463(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    move-object v1, p1

    .local v1, "me":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->thumbReleased(Ljavafx/scene/input/MouseEvent;)V

    .line 134
    return-void
.end method

.method private synthetic lambda$initialize$464(Ljavafx/scene/input/MouseEvent;)V
    .locals 14

    .prologue
    .line 137
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    move-object v2, p1

    .local v2, "me":Ljavafx/scene/input/MouseEvent;
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v7

    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v9

    invoke-virtual {v6, v7, v8, v9, v10}, Ljavafx/scene/layout/StackPane;->localToParent(DD)Ljavafx/geometry/Point2D;

    move-result-object v6

    move-object v3, v6

    .line 138
    .local v3, "cur":Ljavafx/geometry/Point2D;
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/Slider;

    invoke-virtual {v6}, Ljavafx/scene/control/Slider;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v6

    sget-object v7, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_0

    move-object v6, v3

    .line 139
    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v6

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/SliderSkin;->dragStart:Ljavafx/geometry/Point2D;

    invoke-virtual {v8}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    :goto_0
    move-wide v4, v6

    .line 140
    .local v4, "dragPos":D
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;

    move-object v7, v2

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/SliderSkin;->preDragThumbPos:D

    move-wide v10, v4

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackLength:D

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->thumbDragged(Ljavafx/scene/input/MouseEvent;D)V

    .line 141
    return-void

    .line 139
    .end local v4    # "dragPos":D
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/SliderSkin;->dragStart:Ljavafx/geometry/Point2D;

    invoke-virtual {v8}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    neg-double v6, v6

    goto :goto_0
.end method

.method private setShowTickMarks(ZZ)V
    .locals 11

    .prologue
    .line 155
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    move v2, p1

    .local v2, "ticksVisible":Z
    move v3, p2

    .local v3, "labelsVisible":Z
    move-object v5, v1

    move v6, v2

    if-nez v6, :cond_0

    move v6, v3

    if-eqz v6, :cond_2

    :cond_0
    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, v5, Lcom/sun/javafx/scene/control/skin/SliderSkin;->showTickMarks:Z

    .line 156
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/Slider;

    move-object v4, v5

    .line 157
    .local v4, "slider":Ljavafx/scene/control/Slider;
    move-object v5, v1

    iget-boolean v5, v5, Lcom/sun/javafx/scene/control/skin/SliderSkin;->showTickMarks:Z

    if-eqz v5, :cond_6

    .line 158
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    if-nez v5, :cond_5

    .line 159
    move-object v5, v1

    new-instance v6, Ljavafx/scene/chart/NumberAxis;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljavafx/scene/chart/NumberAxis;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    .line 160
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/NumberAxis;->setAutoRanging(Z)V

    .line 161
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/Slider;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v6

    sget-object v7, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_3

    sget-object v6, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    :goto_1
    invoke-virtual {v5, v6}, Ljavafx/scene/chart/NumberAxis;->setSide(Ljavafx/geometry/Side;)V

    .line 162
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/Slider;->getMax()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/chart/NumberAxis;->setUpperBound(D)V

    .line 163
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/chart/NumberAxis;->setLowerBound(D)V

    .line 164
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/Slider;->getMajorTickUnit()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/chart/NumberAxis;->setTickUnit(D)V

    .line 165
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move v6, v2

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/NumberAxis;->setTickMarkVisible(Z)V

    .line 166
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move v6, v3

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/NumberAxis;->setTickLabelsVisible(Z)V

    .line 167
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move v6, v2

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/NumberAxis;->setMinorTickVisible(Z)V

    .line 170
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/Slider;->getMinorTickCount()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/NumberAxis;->setMinorTickCount(I)V

    .line 171
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/Slider;->getLabelFormatter()Ljavafx/util/StringConverter;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 172
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/SliderSkin;->stringConverterWrapper:Ljavafx/util/StringConverter;

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/NumberAxis;->setTickLabelFormatter(Ljavafx/util/StringConverter;)V

    .line 174
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->clear()V

    .line 175
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljavafx/scene/Node;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/SliderSkin;->track:Ljavafx/scene/layout/StackPane;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v5

    .line 188
    :goto_2
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/Slider;

    invoke-virtual {v5}, Ljavafx/scene/control/Slider;->requestLayout()V

    .line 189
    return-void

    .line 155
    .end local v4    # "slider":Ljavafx/scene/control/Slider;
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 161
    .restart local v4    # "slider":Ljavafx/scene/control/Slider;
    :cond_3
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/Slider;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v6

    if-nez v6, :cond_4

    sget-object v6, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    goto/16 :goto_1

    :cond_4
    sget-object v6, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    goto/16 :goto_1

    .line 177
    :cond_5
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move v6, v3

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/NumberAxis;->setTickLabelsVisible(Z)V

    .line 178
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move v6, v2

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/NumberAxis;->setTickMarkVisible(Z)V

    .line 179
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move v6, v2

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/NumberAxis;->setMinorTickVisible(Z)V

    goto :goto_2

    .line 183
    :cond_6
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->clear()V

    .line 184
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljavafx/scene/Node;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/SliderSkin;->track:Ljavafx/scene/layout/StackPane;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v5

    goto :goto_2
.end method


# virtual methods
.method protected computeMaxHeight(DDDDD)D
    .locals 15

    .prologue
    .line 408
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/Slider;

    invoke-virtual {v12}, Ljavafx/scene/control/Slider;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v12

    sget-object v13, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v12, v13, :cond_0

    .line 409
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/Slider;

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/control/Slider;->prefHeight(D)D

    move-result-wide v12

    move-wide v1, v12

    .line 411
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    :cond_0
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v1, v12

    goto :goto_0
.end method

.method protected computeMaxWidth(DDDDD)D
    .locals 15

    .prologue
    .line 400
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/Slider;

    invoke-virtual {v12}, Ljavafx/scene/control/Slider;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v12

    sget-object v13, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v12, v13, :cond_0

    .line 401
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v1, v12

    .line 403
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/Slider;

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/control/Slider;->prefWidth(D)D

    move-result-wide v12

    move-wide v1, v12

    goto :goto_0
.end method

.method protected computeMinHeight(DDDDD)D
    .locals 21

    .prologue
    .line 362
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    move-wide/from16 v3, p1

    .local v3, "width":D
    move-wide/from16 v5, p3

    .local v5, "topInset":D
    move-wide/from16 v7, p5

    .local v7, "rightInset":D
    move-wide/from16 v9, p7

    .local v9, "bottomInset":D
    move-wide/from16 v11, p9

    .local v11, "leftInset":D
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v16

    check-cast v16, Ljavafx/scene/control/Slider;

    move-object/from16 v13, v16

    .line 363
    .local v13, "s":Ljavafx/scene/control/Slider;
    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/Slider;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v16

    sget-object v17, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 364
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->showTickMarks:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/chart/NumberAxis;->prefHeight(D)D

    move-result-wide v16

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackToTickGap:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    :goto_0
    move-wide/from16 v14, v16

    .line 365
    .local v14, "axisHeight":D
    move-wide/from16 v16, v5

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object/from16 v18, v0

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v18, v14

    add-double v16, v16, v18

    move-wide/from16 v18, v9

    add-double v16, v16, v18

    move-wide/from16 v2, v16

    .line 367
    .end local v2    # "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    .end local v14    # "axisHeight":D
    :goto_1
    return-wide v2

    .line 364
    .restart local v2    # "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    :cond_0
    const-wide/16 v16, 0x0

    goto :goto_0

    .line 367
    :cond_1
    move-wide/from16 v16, v5

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->minTrackLength()D

    move-result-wide v18

    add-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object/from16 v18, v0

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v18, v9

    add-double v16, v16, v18

    move-wide/from16 v2, v16

    goto :goto_1
.end method

.method protected computeMinWidth(DDDDD)D
    .locals 17

    .prologue
    .line 353
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    move-wide/from16 v1, p1

    .local v1, "height":D
    move-wide/from16 v3, p3

    .local v3, "topInset":D
    move-wide/from16 v5, p5

    .local v5, "rightInset":D
    move-wide/from16 v7, p7

    .local v7, "bottomInset":D
    move-wide/from16 v9, p9

    .local v9, "leftInset":D
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/Slider;

    move-object v11, v12

    .line 354
    .local v11, "s":Ljavafx/scene/control/Slider;
    move-object v12, v11

    invoke-virtual {v12}, Ljavafx/scene/control/Slider;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v12

    sget-object v13, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v12, v13, :cond_0

    .line 355
    move-wide v12, v9

    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->minTrackLength()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/layout/StackPane;->minWidth(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v5

    add-double/2addr v12, v14

    move-wide v0, v12

    .line 357
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    :goto_0
    return-wide v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    :cond_0
    move-wide v12, v9

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v5

    add-double/2addr v12, v14

    move-wide v0, v12

    goto :goto_0
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 21

    .prologue
    .line 386
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    move-wide/from16 v3, p1

    .local v3, "width":D
    move-wide/from16 v5, p3

    .local v5, "topInset":D
    move-wide/from16 v7, p5

    .local v7, "rightInset":D
    move-wide/from16 v9, p7

    .local v9, "bottomInset":D
    move-wide/from16 v11, p9

    .local v11, "leftInset":D
    move-object v14, v2

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/Slider;

    move-object v13, v14

    .line 387
    .local v13, "s":Ljavafx/scene/control/Slider;
    move-object v14, v13

    invoke-virtual {v14}, Ljavafx/scene/control/Slider;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v14

    sget-object v15, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v14, v15, :cond_1

    .line 388
    move-wide v14, v5

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v16

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->track:Ljavafx/scene/layout/StackPane;

    move-object/from16 v18, v0

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    add-double v14, v14, v16

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->showTickMarks:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackToTickGap:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object/from16 v18, v0

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    .line 389
    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/chart/NumberAxis;->prefHeight(D)D

    move-result-wide v18

    add-double v16, v16, v18

    :goto_0
    add-double v14, v14, v16

    move-wide/from16 v16, v9

    add-double v14, v14, v16

    move-wide v2, v14

    .line 394
    .end local v2    # "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    :goto_1
    return-wide v2

    .line 389
    .restart local v2    # "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    :cond_0
    const-wide/16 v16, 0x0

    goto :goto_0

    .line 391
    :cond_1
    move-object v14, v2

    iget-boolean v14, v14, Lcom/sun/javafx/scene/control/skin/SliderSkin;->showTickMarks:Z

    if-eqz v14, :cond_2

    .line 392
    const-wide v14, 0x4061800000000000L    # 140.0

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/chart/NumberAxis;->prefHeight(D)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    move-wide v2, v14

    goto :goto_1

    .line 394
    :cond_2
    const-wide v14, 0x4061800000000000L    # 140.0

    move-wide v2, v14

    goto :goto_1
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 23

    .prologue
    .line 372
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    move-wide/from16 v3, p1

    .local v3, "height":D
    move-wide/from16 v5, p3

    .local v5, "topInset":D
    move-wide/from16 v7, p5

    .local v7, "rightInset":D
    move-wide/from16 v9, p7

    .local v9, "bottomInset":D
    move-wide/from16 v11, p9

    .local v11, "leftInset":D
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v16

    check-cast v16, Ljavafx/scene/control/Slider;

    move-object/from16 v13, v16

    .line 373
    .local v13, "s":Ljavafx/scene/control/Slider;
    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/Slider;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v16

    sget-object v17, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 374
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->showTickMarks:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 375
    const-wide v16, 0x4061800000000000L    # 140.0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object/from16 v18, v0

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/chart/NumberAxis;->prefWidth(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    move-wide/from16 v2, v16

    .line 381
    .end local v2    # "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    :goto_0
    return-wide v2

    .line 377
    .restart local v2    # "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    :cond_0
    const-wide v16, 0x4061800000000000L    # 140.0

    move-wide/from16 v2, v16

    goto :goto_0

    .line 380
    :cond_1
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->showTickMarks:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/chart/NumberAxis;->prefWidth(D)D

    move-result-wide v16

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackToTickGap:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    :goto_1
    move-wide/from16 v14, v16

    .line 381
    .local v14, "axisWidth":D
    move-wide/from16 v16, v11

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object/from16 v18, v0

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v18

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->track:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v18, v14

    add-double v16, v16, v18

    move-wide/from16 v18, v7

    add-double v16, v16, v18

    move-wide/from16 v2, v16

    goto :goto_0

    .line 380
    .end local v14    # "axisWidth":D
    :cond_2
    const-wide/16 v16, 0x0

    goto :goto_1
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 193
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Slider;

    move-object v2, v3

    .line 194
    .local v2, "slider":Ljavafx/scene/control/Slider;
    const-string v3, "ORIENTATION"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 195
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->showTickMarks:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    if-eqz v3, :cond_0

    .line 196
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v4

    sget-object v5, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v4, v5, :cond_2

    sget-object v4, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    :goto_0
    invoke-virtual {v3, v4}, Ljavafx/scene/chart/NumberAxis;->setSide(Ljavafx/geometry/Side;)V

    .line 198
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Slider;

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->requestLayout()V

    .line 234
    :cond_1
    :goto_1
    return-void

    .line 196
    :cond_2
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v4

    if-nez v4, :cond_3

    sget-object v4, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    goto :goto_0

    :cond_3
    sget-object v4, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    goto :goto_0

    .line 199
    :cond_4
    const-string v3, "VALUE"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 201
    move-object v3, v0

    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackClicked:Z

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->positionThumb(Z)V

    goto :goto_1

    .line 202
    :cond_5
    const-string v3, "MIN"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 203
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->showTickMarks:Z

    if-eqz v3, :cond_6

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    if-eqz v3, :cond_6

    .line 204
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/NumberAxis;->setLowerBound(D)V

    .line 206
    :cond_6
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Slider;

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->requestLayout()V

    goto :goto_1

    .line 207
    :cond_7
    const-string v3, "MAX"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 208
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->showTickMarks:Z

    if-eqz v3, :cond_8

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    if-eqz v3, :cond_8

    .line 209
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getMax()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/NumberAxis;->setUpperBound(D)V

    .line 211
    :cond_8
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Slider;

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->requestLayout()V

    goto :goto_1

    .line 212
    :cond_9
    const-string v3, "SHOW_TICK_MARKS"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "SHOW_TICK_LABELS"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 213
    :cond_a
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->isShowTickMarks()Z

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Slider;->isShowTickLabels()Z

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->setShowTickMarks(ZZ)V

    goto/16 :goto_1

    .line 214
    :cond_b
    const-string v3, "MAJOR_TICK_UNIT"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 215
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    if-eqz v3, :cond_1

    .line 216
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getMajorTickUnit()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/NumberAxis;->setTickUnit(D)V

    .line 217
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Slider;

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->requestLayout()V

    goto/16 :goto_1

    .line 219
    :cond_c
    const-string v3, "MINOR_TICK_COUNT"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 220
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    if-eqz v3, :cond_1

    .line 221
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getMinorTickCount()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/NumberAxis;->setMinorTickCount(I)V

    .line 222
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Slider;

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->requestLayout()V

    goto/16 :goto_1

    .line 224
    :cond_d
    const-string v3, "TICK_LABEL_FORMATTER"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    if-eqz v3, :cond_1

    .line 226
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->getLabelFormatter()Ljavafx/util/StringConverter;

    move-result-object v3

    if-nez v3, :cond_e

    .line 227
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/NumberAxis;->setTickLabelFormatter(Ljavafx/util/StringConverter;)V

    goto/16 :goto_1

    .line 229
    :cond_e
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/SliderSkin;->stringConverterWrapper:Ljavafx/util/StringConverter;

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/NumberAxis;->setTickLabelFormatter(Ljavafx/util/StringConverter;)V

    .line 230
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    invoke-virtual {v3}, Ljavafx/scene/chart/NumberAxis;->requestAxisLayout()V

    goto/16 :goto_1
.end method

.method protected layoutChildren(DDDD)V
    .locals 37

    .prologue
    .line 278
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-wide/from16 v8, p5

    .local v8, "w":D
    move-wide/from16 v10, p7

    .local v10, "h":D
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object/from16 v28, v0

    const-wide/high16 v29, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->snapSize(D)D

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumbWidth:D

    .line 279
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object/from16 v28, v0

    const-wide/high16 v29, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->snapSize(D)D

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumbHeight:D

    .line 280
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object/from16 v26, v0

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumbWidth:D

    move-wide/from16 v27, v0

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumbHeight:D

    move-wide/from16 v29, v0

    invoke-virtual/range {v26 .. v30}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 282
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->track:Ljavafx/scene/layout/StackPane;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/StackPane;->getBackground()Ljavafx/scene/layout/Background;

    move-result-object v26

    if-nez v26, :cond_0

    const-wide/16 v26, 0x0

    .line 283
    :goto_0
    move-wide/from16 v12, v26

    .line 285
    .local v12, "trackRadius":D
    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v26

    check-cast v26, Ljavafx/scene/control/Slider;

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/Slider;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v26

    sget-object v27, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 286
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->showTickMarks:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object/from16 v26, v0

    const-wide/high16 v27, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/chart/NumberAxis;->prefHeight(D)D

    move-result-wide v26

    :goto_1
    move-wide/from16 v14, v26

    .line 287
    .local v14, "tickLineHeight":D
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->track:Ljavafx/scene/layout/StackPane;

    move-object/from16 v27, v0

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->snapSize(D)D

    move-result-wide v26

    move-wide/from16 v16, v26

    .line 288
    .local v16, "trackHeight":D
    move-wide/from16 v26, v16

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumbHeight:D

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->max(DD)D

    move-result-wide v26

    move-wide/from16 v18, v26

    .line 289
    .local v18, "trackAreaHeight":D
    move-wide/from16 v26, v18

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->showTickMarks:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackToTickGap:D

    move-wide/from16 v28, v0

    move-wide/from16 v30, v14

    add-double v28, v28, v30

    :goto_2
    add-double v26, v26, v28

    move-wide/from16 v20, v26

    .line 290
    .local v20, "totalHeightNeeded":D
    move-wide/from16 v26, v6

    move-wide/from16 v28, v10

    move-wide/from16 v30, v20

    sub-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v22, v26

    .line 291
    .local v22, "startY":D
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-wide/from16 v28, v8

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumbWidth:D

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->snapSize(D)D

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackLength:D

    .line 292
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-wide/from16 v28, v4

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumbWidth:D

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    add-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->snapPosition(D)D

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackStart:D

    .line 293
    move-wide/from16 v26, v22

    move-wide/from16 v28, v18

    move-wide/from16 v30, v16

    sub-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v24, v26

    .line 294
    .local v24, "trackTop":D
    move-object/from16 v26, v3

    move-wide/from16 v27, v22

    move-wide/from16 v29, v18

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumbHeight:D

    move-wide/from16 v31, v0

    sub-double v29, v29, v31

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    div-double v29, v29, v31

    add-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumbTop:D

    .line 296
    move-object/from16 v26, v3

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->positionThumb(Z)V

    .line 298
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->track:Ljavafx/scene/layout/StackPane;

    move-object/from16 v26, v0

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackStart:D

    move-wide/from16 v27, v0

    move-wide/from16 v29, v12

    sub-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-wide/from16 v29, v24

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackLength:D

    move-wide/from16 v31, v0

    move-wide/from16 v33, v12

    add-double v31, v31, v33

    move-wide/from16 v33, v12

    add-double v31, v31, v33

    move-wide/from16 v0, v31

    double-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v31, v0

    move-wide/from16 v33, v16

    invoke-virtual/range {v26 .. v34}, Ljavafx/scene/layout/StackPane;->resizeRelocate(DDDD)V

    .line 303
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->showTickMarks:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    .line 304
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object/from16 v26, v0

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackStart:D

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/chart/NumberAxis;->setLayoutX(D)V

    .line 305
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object/from16 v26, v0

    move-wide/from16 v27, v24

    move-wide/from16 v29, v16

    add-double v27, v27, v29

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackToTickGap:D

    move-wide/from16 v29, v0

    add-double v27, v27, v29

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/chart/NumberAxis;->setLayoutY(D)V

    .line 306
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object/from16 v26, v0

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackLength:D

    move-wide/from16 v27, v0

    move-wide/from16 v29, v14

    invoke-virtual/range {v26 .. v30}, Ljavafx/scene/chart/NumberAxis;->resize(DD)V

    .line 307
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/NumberAxis;->requestAxisLayout()V

    .line 315
    .line 346
    .end local v14    # "tickLineHeight":D
    .end local v16    # "trackHeight":D
    .end local v18    # "trackAreaHeight":D
    .end local v20    # "totalHeightNeeded":D
    .end local v22    # "startY":D
    .end local v24    # "trackTop":D
    :goto_3
    return-void

    .line 282
    .end local v12    # "trackRadius":D
    :cond_0
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->track:Ljavafx/scene/layout/StackPane;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/StackPane;->getBackground()Ljavafx/scene/layout/Background;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/Background;->getFills()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_1

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->track:Ljavafx/scene/layout/StackPane;

    move-object/from16 v26, v0

    .line 283
    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/StackPane;->getBackground()Ljavafx/scene/layout/Background;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/Background;->getFills()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljavafx/scene/layout/BackgroundFill;

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/BackgroundFill;->getRadii()Ljavafx/scene/layout/CornerRadii;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/CornerRadii;->getTopLeftHorizontalRadius()D

    move-result-wide v26

    goto/16 :goto_0

    :cond_1
    const-wide/16 v26, 0x0

    goto/16 :goto_0

    .line 286
    .restart local v12    # "trackRadius":D
    :cond_2
    const-wide/16 v26, 0x0

    goto/16 :goto_1

    .line 289
    .restart local v14    # "tickLineHeight":D
    .restart local v16    # "trackHeight":D
    .restart local v18    # "trackAreaHeight":D
    :cond_3
    const-wide/16 v28, 0x0

    goto/16 :goto_2

    .line 309
    .restart local v20    # "totalHeightNeeded":D
    .restart local v22    # "startY":D
    .restart local v24    # "trackTop":D
    :cond_4
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    .line 310
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object/from16 v26, v0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    invoke-virtual/range {v26 .. v30}, Ljavafx/scene/chart/NumberAxis;->resize(DD)V

    .line 311
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/NumberAxis;->requestAxisLayout()V

    .line 313
    :cond_5
    move-object/from16 v26, v3

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    goto :goto_3

    .line 316
    .end local v14    # "tickLineHeight":D
    .end local v16    # "trackHeight":D
    .end local v18    # "trackAreaHeight":D
    .end local v20    # "totalHeightNeeded":D
    .end local v22    # "startY":D
    .end local v24    # "trackTop":D
    :cond_6
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->showTickMarks:Z

    move/from16 v26, v0

    if-eqz v26, :cond_7

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object/from16 v26, v0

    const-wide/high16 v27, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/chart/NumberAxis;->prefWidth(D)D

    move-result-wide v26

    :goto_4
    move-wide/from16 v14, v26

    .line 317
    .local v14, "tickLineWidth":D
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->track:Ljavafx/scene/layout/StackPane;

    move-object/from16 v27, v0

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->snapSize(D)D

    move-result-wide v26

    move-wide/from16 v16, v26

    .line 318
    .local v16, "trackWidth":D
    move-wide/from16 v26, v16

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumbWidth:D

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->max(DD)D

    move-result-wide v26

    move-wide/from16 v18, v26

    .line 319
    .local v18, "trackAreaWidth":D
    move-wide/from16 v26, v18

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->showTickMarks:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackToTickGap:D

    move-wide/from16 v28, v0

    move-wide/from16 v30, v14

    add-double v28, v28, v30

    :goto_5
    add-double v26, v26, v28

    move-wide/from16 v20, v26

    .line 320
    .local v20, "totalWidthNeeded":D
    move-wide/from16 v26, v4

    move-wide/from16 v28, v8

    move-wide/from16 v30, v20

    sub-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v22, v26

    .line 321
    .local v22, "startX":D
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-wide/from16 v28, v10

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumbHeight:D

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->snapSize(D)D

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackLength:D

    .line 322
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-wide/from16 v28, v6

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumbHeight:D

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    add-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->snapPosition(D)D

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackStart:D

    .line 323
    move-wide/from16 v26, v22

    move-wide/from16 v28, v18

    move-wide/from16 v30, v16

    sub-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v24, v26

    .line 324
    .local v24, "trackLeft":D
    move-object/from16 v26, v3

    move-wide/from16 v27, v22

    move-wide/from16 v29, v18

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumbWidth:D

    move-wide/from16 v31, v0

    sub-double v29, v29, v31

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    div-double v29, v29, v31

    add-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumbLeft:D

    .line 326
    move-object/from16 v26, v3

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->positionThumb(Z)V

    .line 328
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->track:Ljavafx/scene/layout/StackPane;

    move-object/from16 v26, v0

    move-wide/from16 v27, v24

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackStart:D

    move-wide/from16 v29, v0

    move-wide/from16 v31, v12

    sub-double v29, v29, v31

    move-wide/from16 v0, v29

    double-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    move-wide/from16 v31, v16

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackLength:D

    move-wide/from16 v33, v0

    move-wide/from16 v35, v12

    add-double v33, v33, v35

    move-wide/from16 v35, v12

    add-double v33, v33, v35

    move-wide/from16 v0, v33

    double-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-virtual/range {v26 .. v34}, Ljavafx/scene/layout/StackPane;->resizeRelocate(DDDD)V

    .line 333
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->showTickMarks:Z

    move/from16 v26, v0

    if-eqz v26, :cond_9

    .line 334
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object/from16 v26, v0

    move-wide/from16 v27, v24

    move-wide/from16 v29, v16

    add-double v27, v27, v29

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackToTickGap:D

    move-wide/from16 v29, v0

    add-double v27, v27, v29

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/chart/NumberAxis;->setLayoutX(D)V

    .line 335
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object/from16 v26, v0

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackStart:D

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/chart/NumberAxis;->setLayoutY(D)V

    .line 336
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object/from16 v26, v0

    move-wide/from16 v27, v14

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackLength:D

    move-wide/from16 v29, v0

    invoke-virtual/range {v26 .. v30}, Ljavafx/scene/chart/NumberAxis;->resize(DD)V

    .line 337
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/NumberAxis;->requestAxisLayout()V

    goto/16 :goto_3

    .line 316
    .end local v14    # "tickLineWidth":D
    .end local v16    # "trackWidth":D
    .end local v18    # "trackAreaWidth":D
    .end local v20    # "totalWidthNeeded":D
    .end local v22    # "startX":D
    .end local v24    # "trackLeft":D
    :cond_7
    const-wide/16 v26, 0x0

    goto/16 :goto_4

    .line 319
    .restart local v14    # "tickLineWidth":D
    .restart local v16    # "trackWidth":D
    .restart local v18    # "trackAreaWidth":D
    :cond_8
    const-wide/16 v28, 0x0

    goto/16 :goto_5

    .line 339
    .restart local v20    # "totalWidthNeeded":D
    .restart local v22    # "startX":D
    .restart local v24    # "trackLeft":D
    :cond_9
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    .line 340
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object/from16 v26, v0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    invoke-virtual/range {v26 .. v30}, Ljavafx/scene/chart/NumberAxis;->resize(DD)V

    .line 341
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/NumberAxis;->requestAxisLayout()V

    .line 343
    :cond_a
    move-object/from16 v26, v3

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/sun/javafx/scene/control/skin/SliderSkin;->tickLine:Ljavafx/scene/chart/NumberAxis;

    goto/16 :goto_3
.end method

.method minTrackLength()D
    .locals 7

    .prologue
    .line 349
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    return-wide v1
.end method

.method positionThumb(Z)V
    .locals 28

    .prologue
    .line 240
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    move/from16 v4, p1

    .local v4, "animate":Z
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v16

    check-cast v16, Ljavafx/scene/control/Slider;

    move-object/from16 v5, v16

    .line 241
    .local v5, "s":Ljavafx/scene/control/Slider;
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/Slider;->getValue()D

    move-result-wide v16

    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/Slider;->getMax()D

    move-result-wide v18

    cmpl-double v16, v16, v18

    if-lez v16, :cond_0

    .line 272
    :goto_0
    return-void

    .line 242
    :cond_0
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/Slider;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v16

    sget-object v17, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1

    const/16 v16, 0x1

    :goto_1
    move/from16 v6, v16

    .line 243
    .local v6, "horizontal":Z
    move/from16 v16, v6

    if-eqz v16, :cond_2

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackStart:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackLength:D

    move-wide/from16 v18, v0

    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/Slider;->getValue()D

    move-result-wide v20

    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v22

    sub-double v20, v20, v22

    move-object/from16 v22, v5

    .line 244
    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/Slider;->getMax()D

    move-result-wide v22

    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v24

    sub-double v22, v22, v24

    div-double v20, v20, v22

    mul-double v18, v18, v20

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumbWidth:D

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    sub-double v18, v18, v20

    add-double v16, v16, v18

    :goto_2
    move-wide/from16 v7, v16

    .line 245
    .local v7, "endX":D
    move/from16 v16, v6

    if-eqz v16, :cond_3

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumbTop:D

    move-wide/from16 v16, v0

    .line 247
    :goto_3
    move-wide/from16 v9, v16

    .line 249
    .local v9, "endY":D
    move/from16 v16, v4

    if-eqz v16, :cond_4

    .line 251
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/layout/StackPane;->getLayoutX()D

    move-result-wide v16

    move-wide/from16 v11, v16

    .line 252
    .local v11, "startX":D
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/layout/StackPane;->getLayoutY()D

    move-result-wide v16

    move-wide/from16 v13, v16

    .line 253
    .local v13, "startY":D
    new-instance v16, Lcom/sun/javafx/scene/control/skin/SliderSkin$3;

    move-object/from16 v27, v16

    move-object/from16 v16, v27

    move-object/from16 v17, v27

    move-object/from16 v18, v3

    move-wide/from16 v19, v11

    move-wide/from16 v21, v7

    move-wide/from16 v23, v13

    move-wide/from16 v25, v9

    invoke-direct/range {v17 .. v26}, Lcom/sun/javafx/scene/control/skin/SliderSkin$3;-><init>(Lcom/sun/javafx/scene/control/skin/SliderSkin;DDDD)V

    move-object/from16 v15, v16

    .line 267
    .local v15, "transition":Ljavafx/animation/Transition;
    move-object/from16 v16, v15

    invoke-virtual/range {v16 .. v16}, Ljavafx/animation/Transition;->play()V

    .line 268
    .line 272
    .end local v11    # "startX":D
    .end local v13    # "startY":D
    .end local v15    # "transition":Ljavafx/animation/Transition;
    :goto_4
    goto/16 :goto_0

    .line 242
    .end local v6    # "horizontal":Z
    .end local v7    # "endX":D
    .end local v9    # "endY":D
    :cond_1
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 244
    .restart local v6    # "horizontal":Z
    :cond_2
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumbLeft:D

    move-wide/from16 v16, v0

    goto :goto_2

    .line 245
    .restart local v7    # "endX":D
    :cond_3
    move-object/from16 v16, v3

    .line 246
    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->snappedTopInset()D

    move-result-wide v16

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackLength:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->trackLength:D

    move-wide/from16 v18, v0

    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/Slider;->getValue()D

    move-result-wide v20

    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v22

    sub-double v20, v20, v22

    move-object/from16 v22, v5

    .line 247
    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/Slider;->getMax()D

    move-result-wide v22

    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v24

    sub-double v22, v22, v24

    div-double v20, v20, v22

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    goto/16 :goto_3

    .line 269
    .restart local v9    # "endY":D
    :cond_4
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    move-wide/from16 v17, v7

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/StackPane;->setLayoutX(D)V

    .line 270
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SliderSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    move-wide/from16 v17, v9

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/StackPane;->setLayoutY(D)V

    goto :goto_4
.end method

.class public Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
.super Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;
.source "TextAreaSkin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin",
        "<",
        "Ljavafx/scene/control/TextArea;",
        "Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;",
        ">;"
    }
.end annotation


# static fields
.field public static final SCROLL_RATE:I = 0x1e

.field private static final tmpCaretPath:Ljavafx/scene/shape/Path;


# instance fields
.field private final USE_MULTIPLE_NODES:Z

.field private caretPosition:Ljavafx/beans/value/ObservableIntegerValue;

.field private characterBoundingPath:Ljavafx/scene/shape/Path;

.field private characterWidth:D

.field private computedMinHeight:D

.field private computedMinWidth:D

.field private computedPrefHeight:D

.field private computedPrefWidth:D

.field private contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

.field private handlePressed:Z

.field private lineHeight:D

.field private oldViewportBounds:Ljavafx/geometry/Bounds;

.field private paragraphNodes:Ljavafx/scene/Group;

.field private pressX:D

.field private pressY:D

.field private promptNode:Ljavafx/scene/text/Text;

.field private scrollDirection:Ljavafx/geometry/VerticalDirection;

.field private scrollPane:Ljavafx/scene/control/ScrollPane;

.field private scrollSelectionHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private scrollSelectionTimeline:Ljavafx/animation/Timeline;

.field private selectionHighlightGroup:Ljavafx/scene/Group;

.field targetCaretX:D

.field private final textArea:Ljavafx/scene/control/TextArea;

.field private usePromptText:Ljavafx/beans/value/ObservableBooleanValue;

.field private widthForComputedPrefHeight:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1135
    new-instance v0, Ljavafx/scene/shape/Path;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/shape/Path;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->tmpCaretPath:Ljavafx/scene/shape/Path;

    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/TextArea;)V
    .locals 14

    .prologue
    .line 411
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v2, p1

    .local v2, "textArea":Ljavafx/scene/control/TextArea;
    move-object v7, v1

    move-object v8, v2

    new-instance v9, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v2

    invoke-direct {v10, v11}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;-><init>(Ljavafx/scene/control/TextArea;)V

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;-><init>(Ljavafx/scene/control/TextInputControl;Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;)V

    .line 73
    move-object v7, v1

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->USE_MULTIPLE_NODES:Z

    .line 75
    move-object v7, v1

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->computedMinWidth:D

    .line 76
    move-object v7, v1

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->computedMinHeight:D

    .line 77
    move-object v7, v1

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->computedPrefWidth:D

    .line 78
    move-object v7, v1

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->computedPrefHeight:D

    .line 79
    move-object v7, v1

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->widthForComputedPrefHeight:D

    .line 374
    move-object v7, v1

    new-instance v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;-><init>(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Lcom/sun/javafx/scene/control/skin/TextAreaSkin$1;)V

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    .line 375
    move-object v7, v1

    new-instance v8, Ljavafx/scene/Group;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljavafx/scene/Group;-><init>()V

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    .line 381
    move-object v7, v1

    new-instance v8, Ljavafx/scene/Group;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljavafx/scene/Group;-><init>()V

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHighlightGroup:Ljavafx/scene/Group;

    .line 386
    move-object v7, v1

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollDirection:Ljavafx/geometry/VerticalDirection;

    .line 388
    move-object v7, v1

    new-instance v8, Ljavafx/scene/shape/Path;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljavafx/scene/shape/Path;-><init>()V

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->characterBoundingPath:Ljavafx/scene/shape/Path;

    .line 390
    move-object v7, v1

    new-instance v8, Ljavafx/animation/Timeline;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollSelectionTimeline:Ljavafx/animation/Timeline;

    .line 391
    move-object v7, v1

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/event/EventHandler;

    move-result-object v8

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollSelectionHandler:Ljavafx/event/EventHandler;

    .line 1092
    move-object v7, v1

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->targetCaretX:D

    .line 412
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->setTextAreaSkin(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)V

    .line 413
    move-object v7, v1

    move-object v8, v2

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->textArea:Ljavafx/scene/control/TextArea;

    .line 415
    move-object v7, v1

    new-instance v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$1;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/control/TextArea;)V

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPosition:Ljavafx/beans/value/ObservableIntegerValue;

    .line 421
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPosition:Ljavafx/beans/value/ObservableIntegerValue;

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/beans/value/ChangeListener;

    move-result-object v8

    invoke-interface {v7, v8}, Ljavafx/beans/value/ObservableIntegerValue;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 428
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->forwardBiasProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v7

    move-object v8, v1

    move-object v9, v2

    invoke-static {v8, v9}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/control/TextArea;)Ljavafx/beans/InvalidationListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 437
    move-object v7, v1

    new-instance v8, Ljavafx/scene/control/ScrollPane;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljavafx/scene/control/ScrollPane;-><init>()V

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    .line 438
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/TextArea;->isWrapText()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljavafx/scene/control/ScrollPane;->setFitToWidth(Z)V

    .line 439
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v7, v8}, Ljavafx/scene/control/ScrollPane;->setContent(Ljavafx/scene/Node;)V

    .line 440
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 442
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TextArea;

    sget-object v8, Ljavafx/scene/input/ScrollEvent;->ANY:Ljavafx/event/EventType;

    move-object v9, v1

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/event/EventHandler;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/TextArea;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 449
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHighlightGroup:Ljavafx/scene/Group;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/scene/Group;->setManaged(Z)V

    .line 450
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHighlightGroup:Ljavafx/scene/Group;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/scene/Group;->setVisible(Z)V

    .line 451
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHighlightGroup:Ljavafx/scene/Group;

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 454
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/scene/Group;->setManaged(Z)V

    .line 455
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 458
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/scene/shape/Path;->setManaged(Z)V

    .line 459
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/shape/Path;->setStrokeWidth(D)V

    .line 460
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v7}, Ljavafx/scene/shape/Path;->fillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->textFill:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v7, v8}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 461
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v7}, Ljavafx/scene/shape/Path;->strokeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->textFill:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v7, v8}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 464
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v7}, Ljavafx/scene/shape/Path;->opacityProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v7

    new-instance v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$2;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$2;-><init>(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)V

    invoke-virtual {v7, v8}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 470
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 472
    sget-boolean v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->SHOW_HANDLES:Z

    if-eqz v7, :cond_0

    .line 473
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljavafx/scene/Node;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x1

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x2

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    aput-object v11, v9, v10

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v7

    .line 476
    :cond_0
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v7}, Ljavafx/scene/control/ScrollPane;->hvalueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v7

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/beans/value/ChangeListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 480
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v7}, Ljavafx/scene/control/ScrollPane;->vvalueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v7

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/beans/value/ChangeListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 485
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollSelectionTimeline:Ljavafx/animation/Timeline;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Ljavafx/animation/Timeline;->setCycleCount(I)V

    .line 486
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollSelectionTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v7}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v3, v7

    .line 487
    .local v3, "scrollSelectionFrames":Ljava/util/List;, "Ljava/util/List<Ljavafx/animation/KeyFrame;>;"
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 488
    move-object v7, v3

    new-instance v8, Ljavafx/animation/KeyFrame;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-wide v10, 0x4075e00000000000L    # 350.0

    invoke-static {v10, v11}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v10

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollSelectionHandler:Ljavafx/event/EventHandler;

    const/4 v12, 0x0

    new-array v12, v12, [Ljavafx/animation/KeyValue;

    invoke-direct {v9, v10, v11, v12}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 491
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    const/4 v7, 0x1

    move v5, v7

    .local v5, "n":I
    :goto_0
    move v7, v4

    move v8, v5

    if-ge v7, v8, :cond_2

    .line 492
    move v7, v5

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TextArea;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/beans/property/StringProperty;->getValueSafe()Ljava/lang/String;

    move-result-object v7

    :goto_1
    move-object v6, v7

    .line 493
    .local v6, "paragraph":Ljava/lang/CharSequence;
    move-object v7, v1

    move v8, v4

    move-object v9, v6

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->addParagraphNode(ILjava/lang/String;)V

    .line 491
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 492
    .end local v6    # "paragraph":Ljava/lang/CharSequence;
    :cond_1
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TextArea;->getParagraphs()Ljavafx/collections/ObservableList;

    move-result-object v7

    move v8, v4

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    goto :goto_1

    .line 496
    :cond_2
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TextArea;->selectionProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v7

    move-object v8, v1

    move-object v9, v2

    invoke-static {v8, v9}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/control/TextArea;)Ljavafx/beans/value/ChangeListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 502
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TextArea;->wrapTextProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v7

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$8;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/beans/value/ChangeListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 507
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TextArea;->prefColumnCountProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v7

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$9;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/beans/value/ChangeListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/IntegerProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 512
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TextArea;->prefRowCountProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v7

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$10;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/beans/value/ChangeListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/IntegerProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 517
    move-object v7, v1

    invoke-direct {v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->updateFontMetrics()V

    .line 518
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->fontMetrics:Ljavafx/beans/value/ObservableObjectValue;

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$11;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v8

    invoke-interface {v7, v8}, Ljavafx/beans/value/ObservableObjectValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 522
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->paddingProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v7

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$12;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 527
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v7}, Ljavafx/scene/control/ScrollPane;->viewportBoundsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v7

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$13;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 544
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TextArea;->scrollTopProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v7

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$14;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/beans/value/ChangeListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 550
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TextArea;->scrollLeftProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v7

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$15;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/beans/value/ChangeListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 584
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TextArea;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v7

    move-object v8, v1

    move-object v9, v2

    invoke-static {v8, v9}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$16;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/control/TextArea;)Ljavafx/beans/InvalidationListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/StringProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 591
    move-object v7, v1

    new-instance v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$3;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$3;-><init>(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/control/TextArea;)V

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->usePromptText:Ljavafx/beans/value/ObservableBooleanValue;

    .line 601
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->usePromptText:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-interface {v7}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 602
    move-object v7, v1

    invoke-direct {v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->createPromptNode()V

    .line 605
    :cond_3
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->usePromptText:Ljavafx/beans/value/ObservableBooleanValue;

    move-object v8, v1

    move-object v9, v2

    invoke-static {v8, v9}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$17;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/control/TextArea;)Ljavafx/beans/InvalidationListener;

    move-result-object v8

    invoke-interface {v7, v8}, Ljavafx/beans/value/ObservableBooleanValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 610
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->updateHighlightFill()V

    .line 611
    move-object v7, v1

    invoke-direct {v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->updatePrefViewportWidth()V

    .line 612
    move-object v7, v1

    invoke-direct {v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->updatePrefViewportHeight()V

    .line 613
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TextArea;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v1

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->setCaretAnimating(Z)V

    .line 615
    :cond_4
    sget-boolean v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->SHOW_HANDLES:Z

    if-eqz v7, :cond_5

    .line 616
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    const-wide v8, 0x4066800000000000L    # 180.0

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/StackPane;->setRotate(D)V

    .line 618
    move-object v7, v1

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$18;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/event/EventHandler;

    move-result-object v7

    move-object v4, v7

    .line 625
    .local v4, "handlePressHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/input/MouseEvent;>;"
    move-object v7, v1

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$19;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/event/EventHandler;

    move-result-object v7

    move-object v5, v7

    .line 629
    .local v5, "handleReleaseHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/input/MouseEvent;>;"
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljavafx/scene/layout/StackPane;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 630
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljavafx/scene/layout/StackPane;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 631
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljavafx/scene/layout/StackPane;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 633
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljavafx/scene/layout/StackPane;->setOnMouseReleased(Ljavafx/event/EventHandler;)V

    .line 634
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljavafx/scene/layout/StackPane;->setOnMouseReleased(Ljavafx/event/EventHandler;)V

    .line 635
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljavafx/scene/layout/StackPane;->setOnMouseReleased(Ljavafx/event/EventHandler;)V

    .line 637
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$20;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/event/EventHandler;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/scene/layout/StackPane;->setOnMouseDragged(Ljavafx/event/EventHandler;)V

    .line 657
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    new-instance v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$4;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$4;-><init>(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)V

    invoke-virtual {v7, v8}, Ljavafx/scene/layout/StackPane;->setOnMouseDragged(Ljavafx/event/EventHandler;)V

    .line 687
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    new-instance v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$5;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$5;-><init>(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)V

    invoke-virtual {v7, v8}, Ljavafx/scene/layout/StackPane;->setOnMouseDragged(Ljavafx/event/EventHandler;)V

    .line 717
    .end local v4    # "handlePressHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/input/MouseEvent;>;"
    .end local v5    # "handleReleaseHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/input/MouseEvent;>;"
    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->computedPrefWidth:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-wide v0
.end method

.method static synthetic access$002(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;D)D
    .locals 13

    .prologue
    .line 68
    move-object v1, p0

    .local v1, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-wide v2, p1

    .local v2, "x1":D
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->computedPrefWidth:D

    move-wide v1, v4

    .end local v1    # "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-wide v1
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/Group;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-object v0
.end method

.method static synthetic access$1000(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/Group;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHighlightGroup:Ljavafx/scene/Group;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-object v0
.end method

.method static synthetic access$1100(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;I)V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->updateTextNodeCaretPos(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)V
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollCaretToVisible()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)V
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->updatePrefViewportWidth()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)V
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->updatePrefViewportHeight()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/text/Text;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getTextNode()Ljavafx/scene/text/Text;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-object v0
.end method

.method static synthetic access$1700(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->pressX:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-wide v0
.end method

.method static synthetic access$1800(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->pressY:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-wide v0
.end method

.method static synthetic access$1900(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "x1":Ljavafx/geometry/Point2D;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->translateCaretPosition(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/control/ScrollPane;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-object v0
.end method

.method static synthetic access$2000(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getTextTranslateY()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-wide v0
.end method

.method static synthetic access$300(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->widthForComputedPrefHeight:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-wide v0
.end method

.method static synthetic access$302(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;D)D
    .locals 13

    .prologue
    .line 68
    move-object v1, p0

    .local v1, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-wide v2, p1

    .local v2, "x1":D
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->widthForComputedPrefHeight:D

    move-wide v1, v4

    .end local v1    # "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-wide v1
.end method

.method static synthetic access$400(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->computedPrefHeight:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-wide v0
.end method

.method static synthetic access$402(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;D)D
    .locals 13

    .prologue
    .line 68
    move-object v1, p0

    .local v1, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-wide v2, p1

    .local v2, "x1":D
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->computedPrefHeight:D

    move-wide v1, v4

    .end local v1    # "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-wide v1
.end method

.method static synthetic access$500(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->computedMinWidth:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-wide v0
.end method

.method static synthetic access$502(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;D)D
    .locals 13

    .prologue
    .line 68
    move-object v1, p0

    .local v1, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-wide v2, p1

    .local v2, "x1":D
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->computedMinWidth:D

    move-wide v1, v4

    .end local v1    # "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-wide v1
.end method

.method static synthetic access$600(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->characterWidth:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-wide v0
.end method

.method static synthetic access$700(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->computedMinHeight:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-wide v0
.end method

.method static synthetic access$702(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;D)D
    .locals 13

    .prologue
    .line 68
    move-object v1, p0

    .local v1, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-wide v2, p1

    .local v2, "x1":D
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->computedMinHeight:D

    move-wide v1, v4

    .end local v1    # "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-wide v1
.end method

.method static synthetic access$800(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lineHeight:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-wide v0
.end method

.method static synthetic access$900(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/text/Text;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->promptNode:Ljavafx/scene/text/Text;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$new$229(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$new$230(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method static synthetic access$lambda$10(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$new$239(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$11(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$new$240(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$12(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$new$241(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$13(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$new$242(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method static synthetic access$lambda$14(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$new$243(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method static synthetic access$lambda$15(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/control/TextArea;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$new$245(Ljavafx/scene/control/TextArea;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$16(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/control/TextArea;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$new$246(Ljavafx/scene/control/TextArea;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$17(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$new$247(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$18(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$new$248(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$19(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$new$249(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/control/TextArea;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$new$231(Ljavafx/scene/control/TextArea;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$20(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/text/TextBoundsType;Ljavafx/scene/text/TextBoundsType;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$addParagraphNode$250(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/text/TextBoundsType;Ljavafx/scene/text/TextBoundsType;)V

    return-void
.end method

.method static synthetic access$lambda$21(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$scrollCharacterToVisible$251(I)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/input/ScrollEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$new$232(Ljavafx/scene/input/ScrollEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$new$233(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$new$234(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/control/TextArea;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/IndexRange;Ljavafx/scene/control/IndexRange;)V
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

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$new$235(Ljavafx/scene/control/TextArea;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/IndexRange;Ljavafx/scene/control/IndexRange;)V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$new$236(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$new$237(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method static synthetic access$lambda$9(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lambda$new$238(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method private addParagraphNode(ILjava/lang/String;)V
    .locals 9

    .prologue
    .line 738
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move v1, p1

    .local v1, "i":I
    move-object v2, p2

    .local v2, "string":Ljava/lang/String;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TextArea;

    move-object v3, v5

    .line 739
    .local v3, "textArea":Ljavafx/scene/control/TextArea;
    new-instance v5, Ljavafx/scene/text/Text;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Ljavafx/scene/text/Text;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 740
    .local v4, "paragraphNode":Ljavafx/scene/text/Text;
    move-object v5, v4

    sget-object v6, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    invoke-virtual {v5, v6}, Ljavafx/scene/text/Text;->setTextOrigin(Ljavafx/geometry/VPos;)V

    .line 741
    move-object v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/text/Text;->setManaged(Z)V

    .line 742
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const-string v6, "text"

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 743
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->boundsTypeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v5

    move-object v6, v0

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$21;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/beans/value/ChangeListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 747
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    invoke-virtual {v5}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move v6, v1

    move-object v7, v4

    invoke-interface {v5, v6, v7}, Ljavafx/collections/ObservableList;->add(ILjava/lang/Object;)V

    .line 749
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/TextArea;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 750
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->fillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->textFill:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 751
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->impl_selectionFillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->highlightTextFill:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 752
    return-void
.end method

.method private createPromptNode()V
    .locals 5

    .prologue
    .line 725
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->promptNode:Ljavafx/scene/text/Text;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->usePromptText:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-interface {v1}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/text/Text;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->promptNode:Ljavafx/scene/text/Text;

    .line 727
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->promptNode:Ljavafx/scene/text/Text;

    invoke-interface {v1, v2, v3}, Ljavafx/collections/ObservableList;->add(ILjava/lang/Object;)V

    .line 728
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->promptNode:Ljavafx/scene/text/Text;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/text/Text;->setManaged(Z)V

    .line 729
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->promptNode:Ljavafx/scene/text/Text;

    invoke-virtual {v1}, Ljavafx/scene/text/Text;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "text"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 730
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->promptNode:Ljavafx/scene/text/Text;

    invoke-virtual {v1}, Ljavafx/scene/text/Text;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->usePromptText:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 731
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->promptNode:Ljavafx/scene/text/Text;

    invoke-virtual {v1}, Ljavafx/scene/text/Text;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TextArea;

    invoke-virtual {v2}, Ljavafx/scene/control/TextArea;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 732
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->promptNode:Ljavafx/scene/text/Text;

    invoke-virtual {v1}, Ljavafx/scene/text/Text;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TextArea;

    invoke-virtual {v2}, Ljavafx/scene/control/TextArea;->promptTextProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/StringProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 733
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->promptNode:Ljavafx/scene/text/Text;

    invoke-virtual {v1}, Ljavafx/scene/text/Text;->fillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->promptTextFill:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 735
    :cond_0
    return-void
.end method

.method private getInsertionPoint(Ljavafx/scene/text/Text;DD)I
    .locals 16

    .prologue
    .line 869
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object/from16 v1, p1

    .local v1, "paragraphNode":Ljavafx/scene/text/Text;
    move-wide/from16 v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    move-object v7, v1

    new-instance v8, Ljavafx/geometry/Point2D;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-wide v10, v2

    move-wide v12, v4

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/geometry/Point2D;-><init>(DD)V

    invoke-virtual {v7, v8}, Ljavafx/scene/text/Text;->impl_hitTestChar(Ljavafx/geometry/Point2D;)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v7

    move-object v6, v7

    .line 870
    .local v6, "hitInfo":Lcom/sun/javafx/scene/text/HitInfo;
    move-object v7, v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/text/Text;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sun/javafx/scene/control/skin/Utils;->getHitInsertionIndex(Lcom/sun/javafx/scene/text/HitInfo;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return v0
.end method

.method private getNextInsertionPoint(Ljavafx/scene/text/Text;DILjavafx/geometry/VerticalDirection;)I
    .locals 8

    .prologue
    .line 881
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "paragraphNode":Ljavafx/scene/text/Text;
    move-wide v2, p2

    .local v2, "x":D
    move v4, p4

    .local v4, "from":I
    move-object v5, p5

    .local v5, "scrollDirection":Ljavafx/geometry/VerticalDirection;
    const/4 v6, 0x0

    move v0, v6

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return v0
.end method

.method private getScrollLeftMax()D
    .locals 8

    .prologue
    .line 865
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    const-wide/16 v2, 0x0

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->getWidth()D

    move-result-wide v4

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollPane;->getViewportBounds()Ljavafx/geometry/Bounds;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-wide v1
.end method

.method private getScrollTopMax()D
    .locals 8

    .prologue
    .line 861
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    const-wide/16 v2, 0x0

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->getHeight()D

    move-result-wide v4

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollPane;->getViewportBounds()Ljavafx/geometry/Bounds;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-wide v1
.end method

.method private getTextLeft()D
    .locals 3

    .prologue
    .line 1056
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-wide v0
.end method

.method private getTextNode()Ljavafx/scene/text/Text;
    .locals 3

    .prologue
    .line 1067
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    invoke-virtual {v1}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/text/Text;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-object v0
.end method

.method private getTextTranslateX()D
    .locals 3

    .prologue
    .line 1048
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedLeftInset()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-wide v0
.end method

.method private getTextTranslateY()D
    .locals 3

    .prologue
    .line 1052
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedTopInset()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-wide v0
.end method

.method private synthetic lambda$addParagraphNode$250(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/text/TextBoundsType;Ljavafx/scene/text/TextBoundsType;)V
    .locals 5

    .prologue
    .line 744
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljavafx/scene/text/TextBoundsType;
    move-object v3, p3

    .local v3, "newValue":Ljavafx/scene/text/TextBoundsType;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->invalidateMetrics()V

    .line 745
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->updateFontMetrics()V

    .line 746
    return-void
.end method

.method private synthetic lambda$new$229(Ljavafx/event/ActionEvent;)V
    .locals 4

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    sget-object v2, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$6;->$SwitchMap$javafx$geometry$VerticalDirection:[I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollDirection:Ljavafx/geometry/VerticalDirection;

    invoke-virtual {v3}, Ljavafx/geometry/VerticalDirection;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 403
    :goto_0
    return-void

    .line 395
    :pswitch_0
    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$new$230(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 8

    .prologue
    .line 422
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v2, p1

    .local v2, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v3, p2

    .local v3, "oldValue":Ljava/lang/Number;
    move-object v4, p3

    .local v4, "newValue":Ljava/lang/Number;
    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iput-wide v6, v5, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->targetCaretX:D

    .line 423
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 424
    move-object v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->setForwardBias(Z)V

    .line 426
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$231(Ljavafx/scene/control/TextArea;Ljavafx/beans/Observable;)V
    .locals 8

    .prologue
    .line 429
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v2, p1

    .local v2, "textArea":Ljavafx/scene/control/TextArea;
    move-object v3, p2

    .local v3, "observable":Ljavafx/beans/Observable;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TextArea;->getWidth()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 430
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TextArea;->getCaretPosition()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->updateTextNodeCaretPos(I)V

    .line 432
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$232(Ljavafx/scene/input/ScrollEvent;)V
    .locals 3

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/ScrollEvent;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/ScrollEvent;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->handlePressed:Z

    if-eqz v2, :cond_0

    .line 444
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/ScrollEvent;->consume()V

    .line 446
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$233(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 10

    .prologue
    .line 477
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v2, p1

    .local v2, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v3, p2

    .local v3, "oldValue":Ljava/lang/Number;
    move-object v4, p3

    .local v4, "newValue":Ljava/lang/Number;
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TextArea;

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-object v8, v1

    invoke-direct {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getScrollLeftMax()D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TextArea;->setScrollLeft(D)V

    .line 478
    return-void
.end method

.method private synthetic lambda$new$234(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 10

    .prologue
    .line 481
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v2, p1

    .local v2, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v3, p2

    .local v3, "oldValue":Ljava/lang/Number;
    move-object v4, p3

    .local v4, "newValue":Ljava/lang/Number;
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TextArea;

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-object v8, v1

    invoke-direct {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getScrollTopMax()D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TextArea;->setScrollTop(D)V

    .line 482
    return-void
.end method

.method private synthetic lambda$new$235(Ljavafx/scene/control/TextArea;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/IndexRange;Ljavafx/scene/control/IndexRange;)V
    .locals 6

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "textArea":Ljavafx/scene/control/TextArea;
    move-object v2, p2

    .local v2, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v3, p3

    .local v3, "oldValue":Ljavafx/scene/control/IndexRange;
    move-object v4, p4

    .local v4, "newValue":Ljavafx/scene/control/IndexRange;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TextArea;->requestLayout()V

    .line 499
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->requestLayout()V

    .line 500
    return-void
.end method

.method private synthetic lambda$new$236(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Boolean;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->invalidateMetrics()V

    .line 504
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ScrollPane;->setFitToWidth(Z)V

    .line 505
    return-void
.end method

.method private synthetic lambda$new$237(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 5

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Number;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Number;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->invalidateMetrics()V

    .line 509
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->updatePrefViewportWidth()V

    .line 510
    return-void
.end method

.method private synthetic lambda$new$238(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 5

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Number;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Number;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->invalidateMetrics()V

    .line 514
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->updatePrefViewportHeight()V

    .line 515
    return-void
.end method

.method private synthetic lambda$new$239(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->updateFontMetrics()V

    .line 520
    return-void
.end method

.method private synthetic lambda$new$240(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 523
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->updatePrefViewportWidth()V

    .line 524
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->updatePrefViewportHeight()V

    .line 525
    return-void
.end method

.method private synthetic lambda$new$241(Ljavafx/beans/Observable;)V
    .locals 8

    .prologue
    .line 528
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v2, p1

    .local v2, "valueModel":Ljavafx/beans/Observable;
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getViewportBounds()Ljavafx/geometry/Bounds;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 532
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getViewportBounds()Ljavafx/geometry/Bounds;

    move-result-object v4

    move-object v3, v4

    .line 533
    .local v3, "newViewportBounds":Ljavafx/geometry/Bounds;
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->oldViewportBounds:Ljavafx/geometry/Bounds;

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->oldViewportBounds:Ljavafx/geometry/Bounds;

    .line 534
    invoke-virtual {v4}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->oldViewportBounds:Ljavafx/geometry/Bounds;

    .line 535
    invoke-virtual {v4}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 537
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->invalidateMetrics()V

    .line 538
    move-object v4, v1

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->oldViewportBounds:Ljavafx/geometry/Bounds;

    .line 539
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->requestLayout()V

    .line 542
    .end local v3    # "newViewportBounds":Ljavafx/geometry/Bounds;
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$242(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 10

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Number;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Number;
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getScrollTopMax()D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    move-object v6, v3

    .line 546
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getScrollTopMax()D

    move-result-wide v8

    div-double/2addr v6, v8

    :goto_0
    move-wide v4, v6

    .line 547
    .local v4, "vValue":D
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/ScrollPane;->setVvalue(D)V

    .line 548
    return-void

    .line 546
    .end local v4    # "vValue":D
    :cond_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_0
.end method

.method private synthetic lambda$new$243(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 10

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Number;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Number;
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getScrollLeftMax()D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    move-object v6, v3

    .line 552
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getScrollLeftMax()D

    move-result-wide v8

    div-double/2addr v6, v8

    :goto_0
    move-wide v4, v6

    .line 553
    .local v4, "hValue":D
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/ScrollPane;->setHvalue(D)V

    .line 554
    return-void

    .line 552
    .end local v4    # "hValue":D
    :cond_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_0
.end method

.method private synthetic lambda$new$244(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 13

    .prologue
    .line 558
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/ListChangeListener$Change;
    :goto_0
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 559
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v9

    move v2, v9

    .line 560
    .local v2, "from":I
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v9

    move v3, v9

    .line 561
    .local v3, "to":I
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v9

    move-object v4, v9

    .line 562
    .local v4, "removed":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/CharSequence;>;"
    move v9, v2

    move v10, v3

    if-ge v9, v10, :cond_3

    .line 564
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 566
    move v9, v2

    move v5, v9

    .local v5, "i":I
    move v9, v3

    move v6, v9

    .local v6, "n":I
    :goto_1
    move v9, v5

    move v10, v6

    if-ge v9, v10, :cond_0

    .line 567
    move-object v9, v0

    move v10, v5

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v11

    move v12, v5

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->addParagraphNode(ILjava/lang/String;)V

    .line 566
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 581
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_0
    :goto_2
    goto :goto_0

    .line 571
    :cond_1
    move v9, v2

    move v5, v9

    .restart local v5    # "i":I
    move v9, v3

    move v6, v9

    .restart local v6    # "n":I
    :goto_3
    move v9, v5

    move v10, v6

    if-ge v9, v10, :cond_2

    .line 572
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    invoke-virtual {v9}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    move v10, v5

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/Node;

    move-object v7, v9

    .line 573
    .local v7, "node":Ljavafx/scene/Node;
    move-object v9, v7

    check-cast v9, Ljavafx/scene/text/Text;

    move-object v8, v9

    .line 574
    .local v8, "paragraphNode":Ljavafx/scene/text/Text;
    move-object v9, v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v10

    move v11, v5

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 571
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v7    # "node":Ljavafx/scene/Node;
    .end local v8    # "paragraphNode":Ljavafx/scene/text/Text;
    :cond_2
    goto :goto_2

    .line 579
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    invoke-virtual {v9}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    move v10, v2

    move v11, v2

    move-object v12, v4

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/2addr v11, v12

    invoke-interface {v9, v10, v11}, Ljavafx/collections/ObservableList;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 582
    .end local v2    # "from":I
    .end local v3    # "to":I
    .end local v4    # "removed":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/CharSequence;>;"
    :cond_4
    return-void
.end method

.method private synthetic lambda$new$245(Ljavafx/scene/control/TextArea;Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 585
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "textArea":Ljavafx/scene/control/TextArea;
    move-object v2, p2

    .local v2, "observable":Ljavafx/beans/Observable;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->invalidateMetrics()V

    .line 586
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    invoke-virtual {v3}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/text/Text;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TextArea;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/StringProperty;->getValueSafe()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 587
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->requestLayout()V

    .line 588
    return-void
.end method

.method private synthetic lambda$new$246(Ljavafx/scene/control/TextArea;Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 606
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "textArea":Ljavafx/scene/control/TextArea;
    move-object v2, p2

    .local v2, "observable":Ljavafx/beans/Observable;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->createPromptNode()V

    .line 607
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TextArea;->requestLayout()V

    .line 608
    return-void
.end method

.method private synthetic lambda$new$247(Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    .prologue
    .line 619
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v2, p1

    .local v2, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->pressX:D

    .line 620
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->pressY:D

    .line 621
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->handlePressed:Z

    .line 622
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 623
    return-void
.end method

.method private synthetic lambda$new$248(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 626
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->handlePressed:Z

    .line 627
    return-void
.end method

.method private synthetic lambda$new$249(Ljavafx/scene/input/MouseEvent;)V
    .locals 21

    .prologue
    .line 638
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object/from16 v4, p1

    .local v4, "e":Ljavafx/scene/input/MouseEvent;
    move-object v12, v3

    invoke-direct {v12}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getTextNode()Ljavafx/scene/text/Text;

    move-result-object v12

    move-object v5, v12

    .line 639
    .local v5, "textNode":Ljavafx/scene/text/Text;
    move-object v12, v5

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    invoke-virtual/range {v12 .. v16}, Ljavafx/scene/text/Text;->localToScene(DD)Ljavafx/geometry/Point2D;

    move-result-object v12

    move-object v6, v12

    .line 640
    .local v6, "tp":Ljavafx/geometry/Point2D;
    new-instance v12, Ljavafx/geometry/Point2D;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v4

    invoke-virtual {v14}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v14

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v16

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    add-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->pressX:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v4

    .line 641
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/input/MouseEvent;->getSceneY()D

    move-result-wide v16

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v18

    sub-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->pressY:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    sub-double v16, v16, v18

    invoke-direct/range {v13 .. v17}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v7, v12

    .line 642
    .local v7, "p":Ljavafx/geometry/Point2D;
    move-object v12, v5

    move-object v13, v3

    move-object v14, v7

    invoke-direct {v13, v14}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->translateCaretPosition(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljavafx/scene/text/Text;->impl_hitTestChar(Ljavafx/geometry/Point2D;)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v12

    move-object v8, v12

    .line 643
    .local v8, "hit":Lcom/sun/javafx/scene/text/HitInfo;
    move-object v12, v8

    invoke-virtual {v12}, Lcom/sun/javafx/scene/text/HitInfo;->getCharIndex()I

    move-result v12

    move v9, v12

    .line 644
    .local v9, "pos":I
    move v12, v9

    if-lez v12, :cond_1

    .line 645
    move-object v12, v5

    invoke-virtual {v12}, Ljavafx/scene/text/Text;->getImpl_caretPosition()I

    move-result v12

    move v10, v12

    .line 646
    .local v10, "oldPos":I
    move-object v12, v5

    move v13, v9

    invoke-virtual {v12, v13}, Ljavafx/scene/text/Text;->setImpl_caretPosition(I)V

    .line 647
    move-object v12, v5

    invoke-virtual {v12}, Ljavafx/scene/text/Text;->getImpl_caretShape()[Ljavafx/scene/shape/PathElement;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    move-object v11, v12

    .line 648
    .local v11, "element":Ljavafx/scene/shape/PathElement;
    move-object v12, v11

    instance-of v12, v12, Ljavafx/scene/shape/MoveTo;

    if-eqz v12, :cond_0

    move-object v12, v11

    check-cast v12, Ljavafx/scene/shape/MoveTo;

    invoke-virtual {v12}, Ljavafx/scene/shape/MoveTo;->getY()D

    move-result-wide v12

    move-object v14, v4

    invoke-virtual {v14}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v14

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getTextTranslateY()D

    move-result-wide v16

    sub-double v14, v14, v16

    cmpl-double v12, v12, v14

    if-lez v12, :cond_0

    .line 649
    move-object v12, v8

    move v13, v9

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Lcom/sun/javafx/scene/text/HitInfo;->setCharIndex(I)V

    .line 651
    :cond_0
    move-object v12, v5

    move v13, v10

    invoke-virtual {v12, v13}, Ljavafx/scene/text/Text;->setImpl_caretPosition(I)V

    .line 653
    .end local v10    # "oldPos":I
    .end local v11    # "element":Ljavafx/scene/shape/PathElement;
    :cond_1
    move-object v12, v3

    move-object v13, v8

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->positionCaret(Lcom/sun/javafx/scene/text/HitInfo;ZZ)V

    .line 654
    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 655
    return-void
.end method

.method private synthetic lambda$scrollCharacterToVisible$251(I)V
    .locals 5

    .prologue
    .line 933
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TextArea;

    invoke-virtual {v3}, Ljavafx/scene/control/TextArea;->getLength()I

    move-result v3

    if-nez v3, :cond_0

    .line 934
    .line 938
    :goto_0
    return-void

    .line 936
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getCharacterBounds(I)Ljavafx/geometry/Rectangle2D;

    move-result-object v3

    move-object v2, v3

    .line 937
    .local v2, "characterBounds":Ljavafx/geometry/Rectangle2D;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollBoundsToVisible(Ljavafx/geometry/Rectangle2D;)V

    .line 938
    goto :goto_0
.end method

.method private scrollBoundsToVisible(Ljavafx/geometry/Rectangle2D;)V
    .locals 24

    .prologue
    .line 966
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object/from16 v3, p1

    .local v3, "bounds":Ljavafx/geometry/Rectangle2D;
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/TextArea;

    move-object/from16 v4, v18

    .line 967
    .local v4, "textArea":Ljavafx/scene/control/TextArea;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/ScrollPane;->getViewportBounds()Ljavafx/geometry/Bounds;

    move-result-object v18

    move-object/from16 v5, v18

    .line 969
    .local v5, "viewportBounds":Ljavafx/geometry/Bounds;
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v18

    move-wide/from16 v6, v18

    .line 970
    .local v6, "viewportWidth":D
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 971
    .local v8, "viewportHeight":D
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextArea;->getScrollTop()D

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 972
    .local v10, "scrollTop":D
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextArea;->getScrollLeft()D

    move-result-wide v18

    move-wide/from16 v12, v18

    .line 973
    .local v12, "scrollLeft":D
    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    move-wide/from16 v14, v18

    .line 975
    .local v14, "slop":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Rectangle2D;->getMinY()D

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_4

    .line 976
    move-wide/from16 v18, v10

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMinY()D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 977
    .local v16, "y":D
    move-wide/from16 v18, v16

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedTopInset()D

    move-result-wide v20

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_0

    .line 978
    const-wide/16 v18, 0x0

    move-wide/from16 v16, v18

    .line 980
    :cond_0
    move-object/from16 v18, v4

    move-wide/from16 v19, v16

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/control/TextArea;->setScrollTop(D)V

    .line 981
    .line 990
    .end local v16    # "y":D
    :cond_1
    :goto_0
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_6

    .line 991
    move-wide/from16 v18, v12

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v20, v14

    sub-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 992
    .local v16, "x":D
    move-wide/from16 v18, v16

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedLeftInset()D

    move-result-wide v20

    move-wide/from16 v22, v14

    add-double v20, v20, v22

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_2

    .line 993
    const-wide/16 v18, 0x0

    move-wide/from16 v16, v18

    .line 995
    :cond_2
    move-object/from16 v18, v4

    move-wide/from16 v19, v16

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/control/TextArea;->setScrollLeft(D)V

    .line 996
    .line 1003
    .end local v16    # "x":D
    :cond_3
    :goto_1
    return-void

    .line 981
    :cond_4
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedTopInset()D

    move-result-wide v18

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMaxY()D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v20, v8

    cmpl-double v18, v18, v20

    if-lez v18, :cond_1

    .line 982
    move-wide/from16 v18, v10

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedTopInset()D

    move-result-wide v20

    add-double v18, v18, v20

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMaxY()D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v20, v8

    sub-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 983
    .local v16, "y":D
    move-wide/from16 v18, v16

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getScrollTopMax()D

    move-result-wide v20

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedBottomInset()D

    move-result-wide v22

    sub-double v20, v20, v22

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_5

    .line 984
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getScrollTopMax()D

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 986
    :cond_5
    move-object/from16 v18, v4

    move-wide/from16 v19, v16

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/control/TextArea;->setScrollTop(D)V

    goto/16 :goto_0

    .line 996
    .end local v16    # "y":D
    :cond_6
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedLeftInset()D

    move-result-wide v18

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMaxX()D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v20, v6

    cmpl-double v18, v18, v20

    if-lez v18, :cond_3

    .line 997
    move-wide/from16 v18, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedLeftInset()D

    move-result-wide v20

    add-double v18, v18, v20

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMaxX()D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v20, v6

    sub-double v18, v18, v20

    move-wide/from16 v20, v14

    add-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 998
    .local v16, "x":D
    move-wide/from16 v18, v16

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getScrollLeftMax()D

    move-result-wide v20

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedRightInset()D

    move-result-wide v22

    sub-double v20, v20, v22

    move-wide/from16 v22, v14

    sub-double v20, v20, v22

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_7

    .line 999
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getScrollLeftMax()D

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 1001
    :cond_7
    move-object/from16 v18, v4

    move-wide/from16 v19, v16

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/control/TextArea;->setScrollLeft(D)V

    goto/16 :goto_1
.end method

.method private scrollCaretToVisible()V
    .locals 24

    .prologue
    .line 942
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/TextArea;

    move-object v2, v12

    .line 943
    .local v2, "textArea":Ljavafx/scene/control/TextArea;
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v12}, Ljavafx/scene/shape/Path;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v12

    move-object v3, v12

    .line 944
    .local v3, "bounds":Ljavafx/geometry/Bounds;
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/scene/control/TextArea;->getScrollLeft()D

    move-result-wide v14

    sub-double/2addr v12, v14

    move-wide v4, v12

    .line 945
    .local v4, "x":D
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/scene/control/TextArea;->getScrollTop()D

    move-result-wide v14

    sub-double/2addr v12, v14

    move-wide v6, v12

    .line 946
    .local v6, "y":D
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v12

    move-wide v8, v12

    .line 947
    .local v8, "w":D
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v12

    move-wide v10, v12

    .line 949
    .local v10, "h":D
    sget-boolean v12, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->SHOW_HANDLES:Z

    if-eqz v12, :cond_0

    .line 950
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v12}, Ljavafx/scene/layout/StackPane;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 951
    move-wide v12, v10

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v14}, Ljavafx/scene/layout/StackPane;->getHeight()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v10, v12

    .line 960
    :cond_0
    :goto_0
    move-wide v12, v8

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_1

    move-wide v12, v10

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_1

    .line 961
    move-object v12, v1

    new-instance v13, Ljavafx/geometry/Rectangle2D;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    invoke-direct/range {v14 .. v22}, Ljavafx/geometry/Rectangle2D;-><init>(DDDD)V

    invoke-direct {v12, v13}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollBoundsToVisible(Ljavafx/geometry/Rectangle2D;)V

    .line 963
    :cond_1
    return-void

    .line 952
    :cond_2
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v12}, Ljavafx/scene/layout/StackPane;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v12}, Ljavafx/scene/layout/StackPane;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 953
    move-wide v12, v4

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v14}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    move-wide v4, v12

    .line 954
    move-wide v12, v6

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v14}, Ljavafx/scene/layout/StackPane;->getHeight()D

    move-result-wide v14

    sub-double/2addr v12, v14

    move-wide v6, v12

    .line 955
    move-wide v12, v8

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v14}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    add-double v14, v14, v16

    add-double/2addr v12, v14

    move-wide v8, v12

    .line 956
    move-wide v12, v10

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v14}, Ljavafx/scene/layout/StackPane;->getHeight()D

    move-result-wide v14

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/layout/StackPane;->getHeight()D

    move-result-wide v16

    add-double v14, v14, v16

    add-double/2addr v12, v14

    move-wide v10, v12

    goto/16 :goto_0
.end method

.method private translateCaretPosition(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 3

    .prologue
    .line 1060
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "p":Ljavafx/geometry/Point2D;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-object v0
.end method

.method private updateFontMetrics()V
    .locals 6

    .prologue
    .line 1018
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    invoke-virtual {v3}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/text/Text;

    move-object v2, v3

    .line 1019
    .local v2, "firstParagraph":Ljavafx/scene/text/Text;
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TextArea;

    invoke-virtual {v4}, Ljavafx/scene/control/TextArea;->getFont()Ljavafx/scene/text/Font;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->getBoundsType()Ljavafx/scene/text/TextBoundsType;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/Utils;->getLineHeight(Ljavafx/scene/text/Font;Ljavafx/scene/text/TextBoundsType;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lineHeight:D

    .line 1020
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->fontMetrics:Ljavafx/beans/value/ObservableObjectValue;

    invoke-interface {v4}, Ljavafx/beans/value/ObservableObjectValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/tk/FontMetrics;

    const-string v5, "W"

    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/FontMetrics;->computeStringWidth(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->characterWidth:D

    .line 1021
    return-void
.end method

.method private updatePrefViewportHeight()V
    .locals 8

    .prologue
    .line 1012
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TextArea;

    invoke-virtual {v3}, Ljavafx/scene/control/TextArea;->getPrefRowCount()I

    move-result v3

    move v2, v3

    .line 1013
    .local v2, "rowCount":I
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    move v4, v2

    int-to-double v4, v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lineHeight:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedTopInset()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedBottomInset()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollPane;->setPrefViewportHeight(D)V

    .line 1014
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lineHeight:D

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedTopInset()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedBottomInset()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollPane;->setMinViewportHeight(D)V

    .line 1015
    return-void
.end method

.method private updatePrefViewportWidth()V
    .locals 8

    .prologue
    .line 1006
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TextArea;

    invoke-virtual {v3}, Ljavafx/scene/control/TextArea;->getPrefColumnCount()I

    move-result v3

    move v2, v3

    .line 1007
    .local v2, "columnCount":I
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    move v4, v2

    int-to-double v4, v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->characterWidth:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedLeftInset()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedRightInset()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollPane;->setPrefViewportWidth(D)V

    .line 1008
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->characterWidth:D

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedLeftInset()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedRightInset()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollPane;->setMinViewportWidth(D)V

    .line 1009
    return-void
.end method

.method private updateTextNodeCaretPos(I)V
    .locals 6

    .prologue
    .line 1281
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move v1, p1

    .local v1, "pos":I
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getTextNode()Ljavafx/scene/text/Text;

    move-result-object v3

    move-object v2, v3

    .line 1282
    .local v2, "textNode":Ljavafx/scene/text/Text;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->isForwardBias()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1283
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/text/Text;->setImpl_caretPosition(I)V

    .line 1287
    :goto_0
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/text/Text;->impl_caretBiasProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->isForwardBias()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 1288
    return-void

    .line 1285
    :cond_0
    move-object v3, v2

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/text/Text;->setImpl_caretPosition(I)V

    goto :goto_0
.end method


# virtual methods
.method protected addHighlight(Ljava/util/List;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/Node;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1317
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "nodes":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/Node;>;"
    move v2, p2

    .local v2, "start":I
    const/4 v9, 0x0

    move v3, v9

    .line 1318
    .local v3, "pStart":I
    const/4 v9, 0x0

    move-object v4, v9

    .line 1319
    .local v4, "paragraphNode":Ljavafx/scene/text/Text;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    invoke-virtual {v9}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v9

    :goto_0
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/Node;

    move-object v6, v9

    .line 1320
    .local v6, "node":Ljavafx/scene/Node;
    move-object v9, v6

    check-cast v9, Ljavafx/scene/text/Text;

    move-object v7, v9

    .line 1321
    .local v7, "p":Ljavafx/scene/text/Text;
    move v9, v3

    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/scene/text/Text;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/beans/property/StringProperty;->getValueSafe()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    move v8, v9

    .line 1322
    .local v8, "pEnd":I
    move v9, v8

    move v10, v2

    if-lt v9, v10, :cond_1

    .line 1323
    move-object v9, v7

    move-object v4, v9

    .line 1329
    .end local v6    # "node":Ljavafx/scene/Node;
    .end local v7    # "p":Ljavafx/scene/text/Text;
    .end local v8    # "pEnd":I
    :cond_0
    move-object v9, v4

    if-eqz v9, :cond_2

    .line 1330
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v9

    :goto_1
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/Node;

    move-object v6, v9

    .line 1331
    .restart local v6    # "node":Ljavafx/scene/Node;
    move-object v9, v6

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/text/Text;->getLayoutX()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/Node;->setLayoutX(D)V

    .line 1332
    move-object v9, v6

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/text/Text;->getLayoutY()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/Node;->setLayoutY(D)V

    .line 1333
    goto :goto_1

    .line 1326
    .restart local v7    # "p":Ljavafx/scene/text/Text;
    .restart local v8    # "pEnd":I
    :cond_1
    move v9, v8

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v3, v9

    .line 1327
    goto :goto_0

    .line 1335
    .end local v6    # "node":Ljavafx/scene/Node;
    .end local v7    # "p":Ljavafx/scene/text/Text;
    .end local v8    # "pEnd":I
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v10, v1

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v9

    .line 1336
    return-void
.end method

.method public computeBaselineOffset(DDDD)D
    .locals 15

    .prologue
    .line 762
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-wide/from16 v1, p1

    .local v1, "topInset":D
    move-wide/from16 v3, p3

    .local v3, "rightInset":D
    move-wide/from16 v5, p5

    .local v5, "bottomInset":D
    move-wide/from16 v7, p7

    .local v7, "leftInset":D
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    invoke-virtual {v10}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/text/Text;

    move-object v9, v10

    .line 763
    .local v9, "firstParagraph":Ljavafx/scene/text/Text;
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/TextArea;

    invoke-virtual {v10}, Ljavafx/scene/control/TextArea;->getFont()Ljavafx/scene/text/Font;

    move-result-object v10

    move-object v11, v9

    invoke-virtual {v11}, Ljavafx/scene/text/Text;->getBoundsType()Ljavafx/scene/text/TextBoundsType;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sun/javafx/scene/control/skin/Utils;->getAscent(Ljavafx/scene/text/Font;Ljavafx/scene/text/TextBoundsType;)D

    move-result-wide v10

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    .line 764
    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedTopInset()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->textArea:Ljavafx/scene/control/TextArea;

    invoke-virtual {v12}, Ljavafx/scene/control/TextArea;->snappedTopInset()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v0, v10

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-wide v0
.end method

.method public deleteChar(Z)V
    .locals 4

    .prologue
    .line 1350
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move v1, p1

    .local v1, "previous":Z
    move v3, v1

    if-eqz v3, :cond_2

    move-object v3, v0

    .line 1351
    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TextArea;

    invoke-virtual {v3}, Ljavafx/scene/control/TextArea;->deletePreviousChar()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    .line 1352
    :goto_0
    move v2, v3

    .line 1354
    .local v2, "shouldBeep":Z
    move v3, v2

    if-eqz v3, :cond_0

    .line 1359
    :cond_0
    return-void

    .line 1351
    .end local v2    # "shouldBeep":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    move-object v3, v0

    .line 1352
    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TextArea;

    invoke-virtual {v3}, Ljavafx/scene/control/TextArea;->deleteNextChar()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 757
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method protected downLines(IZZ)V
    .locals 29

    .prologue
    .line 1138
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move/from16 v4, p1

    .local v4, "nLines":I
    move/from16 v5, p2

    .local v5, "select":Z
    move/from16 v6, p3

    .local v6, "extendSelection":Z
    move-object/from16 v20, v3

    invoke-direct/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getTextNode()Ljavafx/scene/text/Text;

    move-result-object v20

    move-object/from16 v7, v20

    .line 1139
    .local v7, "textNode":Ljavafx/scene/text/Text;
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/Path;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v20

    move-object/from16 v8, v20

    .line 1142
    .local v8, "caretBounds":Ljavafx/geometry/Bounds;
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v20

    move-object/from16 v22, v8

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v22

    add-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    move/from16 v22, v4

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lineHeight:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v9, v20

    .line 1143
    .local v9, "targetLineMidY":D
    move-wide/from16 v20, v9

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_0

    .line 1144
    const-wide/16 v20, 0x0

    move-wide/from16 v9, v20

    .line 1149
    :cond_0
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->targetCaretX:D

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_6

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->targetCaretX:D

    move-wide/from16 v20, v0

    :goto_0
    move-wide/from16 v11, v20

    .line 1152
    .local v11, "x":D
    move-object/from16 v20, v7

    move-object/from16 v21, v3

    new-instance v22, Ljavafx/geometry/Point2D;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    move-wide/from16 v24, v11

    move-wide/from16 v26, v9

    invoke-direct/range {v23 .. v27}, Ljavafx/geometry/Point2D;-><init>(DD)V

    invoke-direct/range {v21 .. v22}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->translateCaretPosition(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/text/Text;->impl_hitTestChar(Ljavafx/geometry/Point2D;)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v20

    move-object/from16 v13, v20

    .line 1153
    .local v13, "hit":Lcom/sun/javafx/scene/text/HitInfo;
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/text/HitInfo;->getCharIndex()I

    move-result v20

    move/from16 v14, v20

    .line 1156
    .local v14, "pos":I
    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/text/Text;->getImpl_caretPosition()I

    move-result v20

    move/from16 v15, v20

    .line 1157
    .local v15, "oldPos":I
    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/text/Text;->isImpl_caretBias()Z

    move-result v20

    move/from16 v16, v20

    .line 1158
    .local v16, "oldBias":Z
    move-object/from16 v20, v7

    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/scene/text/HitInfo;->isLeading()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/text/Text;->setImpl_caretBias(Z)V

    .line 1159
    move-object/from16 v20, v7

    move/from16 v21, v14

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/text/Text;->setImpl_caretPosition(I)V

    .line 1160
    sget-object v20, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->tmpCaretPath:Ljavafx/scene/shape/Path;

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljavafx/collections/ObservableList;->clear()V

    .line 1161
    sget-object v20, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->tmpCaretPath:Ljavafx/scene/shape/Path;

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v20

    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/text/Text;->getImpl_caretShape()[Ljavafx/scene/shape/PathElement;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v20

    .line 1162
    sget-object v20, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->tmpCaretPath:Ljavafx/scene/shape/Path;

    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/text/Text;->getLayoutX()D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/shape/Path;->setLayoutX(D)V

    .line 1163
    sget-object v20, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->tmpCaretPath:Ljavafx/scene/shape/Path;

    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/text/Text;->getLayoutY()D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/shape/Path;->setLayoutY(D)V

    .line 1164
    sget-object v20, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->tmpCaretPath:Ljavafx/scene/shape/Path;

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/Path;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v20

    move-object/from16 v17, v20

    .line 1166
    .local v17, "tmpCaretBounds":Ljavafx/geometry/Bounds;
    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v20

    move-object/from16 v22, v17

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v22

    add-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    move-wide/from16 v18, v20

    .line 1167
    .local v18, "foundLineMidY":D
    move-object/from16 v20, v7

    move/from16 v21, v16

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/text/Text;->setImpl_caretBias(Z)V

    .line 1168
    move-object/from16 v20, v7

    move/from16 v21, v15

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/text/Text;->setImpl_caretPosition(I)V

    .line 1170
    move/from16 v20, v14

    if-lez v20, :cond_2

    .line 1171
    move/from16 v20, v4

    if-lez v20, :cond_1

    move-wide/from16 v20, v18

    move-wide/from16 v22, v9

    cmpl-double v20, v20, v22

    if-lez v20, :cond_1

    .line 1173
    move-object/from16 v20, v13

    move/from16 v21, v14

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/scene/text/HitInfo;->setCharIndex(I)V

    .line 1176
    :cond_1
    move/from16 v20, v14

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->textArea:Ljavafx/scene/control/TextArea;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/control/TextArea;->getLength()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_2

    move-object/from16 v20, v3

    move/from16 v21, v14

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getCharacter(I)C

    move-result v20

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 1178
    move-object/from16 v20, v13

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/scene/text/HitInfo;->setLeading(Z)V

    .line 1184
    :cond_2
    move/from16 v20, v4

    if-eqz v20, :cond_4

    move/from16 v20, v4

    if-lez v20, :cond_3

    move-wide/from16 v20, v18

    move-object/from16 v22, v8

    .line 1185
    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v22

    cmpl-double v20, v20, v22

    if-gtz v20, :cond_4

    :cond_3
    move/from16 v20, v4

    if-gez v20, :cond_5

    move-wide/from16 v20, v18

    move-object/from16 v22, v8

    .line 1186
    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v22

    cmpg-double v20, v20, v22

    if-gez v20, :cond_5

    .line 1188
    :cond_4
    move-object/from16 v20, v3

    move-object/from16 v21, v13

    move/from16 v22, v5

    move/from16 v23, v6

    invoke-virtual/range {v20 .. v23}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->positionCaret(Lcom/sun/javafx/scene/text/HitInfo;ZZ)V

    .line 1189
    move-object/from16 v20, v3

    move-wide/from16 v21, v11

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->targetCaretX:D

    .line 1191
    :cond_5
    return-void

    .line 1149
    .end local v11    # "x":D
    .end local v13    # "hit":Lcom/sun/javafx/scene/text/HitInfo;
    .end local v14    # "pos":I
    .end local v15    # "oldPos":I
    .end local v16    # "oldBias":Z
    .end local v17    # "tmpCaretBounds":Ljavafx/geometry/Bounds;
    .end local v18    # "foundLineMidY":D
    :cond_6
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v20

    goto/16 :goto_0
.end method

.method public getCaretBounds()Ljavafx/geometry/Bounds;
    .locals 4

    .prologue
    .line 1372
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TextArea;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v3}, Ljavafx/scene/shape/Path;->getBoundsInLocal()Ljavafx/geometry/Bounds;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Path;->localToScene(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TextArea;->sceneToLocal(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-object v0
.end method

.method public getCharacter(I)C
    .locals 10

    .prologue
    .line 769
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move v1, p1

    .local v1, "index":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    invoke-virtual {v8}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->size()I

    move-result v8

    move v2, v8

    .line 771
    .local v2, "n":I
    const/4 v8, 0x0

    move v3, v8

    .line 772
    .local v3, "paragraphIndex":I
    move v8, v1

    move v4, v8

    .line 774
    .local v4, "offset":I
    const/4 v8, 0x0

    move-object v5, v8

    .line 775
    .local v5, "paragraph":Ljava/lang/String;
    :goto_0
    move v8, v3

    move v9, v2

    if-ge v8, v9, :cond_0

    .line 776
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    invoke-virtual {v8}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    move v9, v3

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/text/Text;

    move-object v6, v8

    .line 777
    .local v6, "paragraphNode":Ljavafx/scene/text/Text;
    move-object v8, v6

    invoke-virtual {v8}, Ljavafx/scene/text/Text;->getText()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 778
    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v7, v8

    .line 780
    .local v7, "count":I
    move v8, v4

    move v9, v7

    if-ge v8, v9, :cond_1

    .line 781
    .line 788
    .end local v6    # "paragraphNode":Ljavafx/scene/text/Text;
    .end local v7    # "count":I
    :cond_0
    move v8, v4

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_2

    const/16 v8, 0xa

    :goto_1
    move v0, v8

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return v0

    .line 784
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    .restart local v6    # "paragraphNode":Ljavafx/scene/text/Text;
    .restart local v7    # "count":I
    :cond_1
    move v8, v4

    move v9, v7

    sub-int/2addr v8, v9

    move v4, v8

    .line 785
    add-int/lit8 v3, v3, 0x1

    .line 786
    goto :goto_0

    .line 788
    .end local v6    # "paragraphNode":Ljavafx/scene/text/Text;
    .end local v7    # "count":I
    :cond_2
    move-object v8, v5

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_1
.end method

.method public getCharacterBounds(I)Ljavafx/geometry/Rectangle2D;
    .locals 31

    .prologue
    .line 886
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move/from16 v4, p1

    .local v4, "index":I
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v20

    check-cast v20, Ljavafx/scene/control/TextArea;

    move-object/from16 v5, v20

    .line 888
    .local v5, "textArea":Ljavafx/scene/control/TextArea;
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljavafx/collections/ObservableList;->size()I

    move-result v20

    move/from16 v6, v20

    .line 889
    .local v6, "paragraphIndex":I
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/TextArea;->getLength()I

    move-result v20

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v7, v20

    .line 891
    .local v7, "paragraphOffset":I
    const/16 v20, 0x0

    move-object/from16 v8, v20

    .line 893
    .local v8, "paragraphNode":Ljavafx/scene/text/Text;
    :cond_0
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v20

    add-int/lit8 v6, v6, -0x1

    move/from16 v21, v6

    invoke-interface/range {v20 .. v21}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/text/Text;

    move-object/from16 v8, v20

    .line 894
    move/from16 v20, v7

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/text/Text;->getText()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    sub-int v20, v20, v21

    move/from16 v7, v20

    .line 895
    move/from16 v20, v4

    move/from16 v21, v7

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    .line 897
    move/from16 v20, v4

    move/from16 v21, v7

    sub-int v20, v20, v21

    move/from16 v9, v20

    .line 898
    .local v9, "characterIndex":I
    const/16 v20, 0x0

    move/from16 v10, v20

    .line 900
    .local v10, "terminator":Z
    move/from16 v20, v9

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/text/Text;->getText()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 901
    add-int/lit8 v9, v9, -0x1

    .line 902
    const/16 v20, 0x1

    move/from16 v10, v20

    .line 905
    :cond_1
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->characterBoundingPath:Ljavafx/scene/shape/Path;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljavafx/collections/ObservableList;->clear()V

    .line 906
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->characterBoundingPath:Ljavafx/scene/shape/Path;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v20

    move-object/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v9

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    invoke-virtual/range {v21 .. v23}, Ljavafx/scene/text/Text;->impl_getRangeShape(II)[Ljavafx/scene/shape/PathElement;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v20

    .line 907
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->characterBoundingPath:Ljavafx/scene/shape/Path;

    move-object/from16 v20, v0

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/text/Text;->getLayoutX()D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/shape/Path;->setLayoutX(D)V

    .line 908
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->characterBoundingPath:Ljavafx/scene/shape/Path;

    move-object/from16 v20, v0

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/text/Text;->getLayoutY()D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/shape/Path;->setLayoutY(D)V

    .line 910
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->characterBoundingPath:Ljavafx/scene/shape/Path;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/Path;->getBoundsInLocal()Ljavafx/geometry/Bounds;

    move-result-object v20

    move-object/from16 v11, v20

    .line 912
    .local v11, "bounds":Ljavafx/geometry/Bounds;
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v20

    move-object/from16 v22, v8

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/text/Text;->getLayoutX()D

    move-result-wide v22

    add-double v20, v20, v22

    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/TextArea;->getScrollLeft()D

    move-result-wide v22

    sub-double v20, v20, v22

    move-wide/from16 v12, v20

    .line 913
    .local v12, "x":D
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v20

    move-object/from16 v22, v8

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/text/Text;->getLayoutY()D

    move-result-wide v22

    add-double v20, v20, v22

    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/TextArea;->getScrollTop()D

    move-result-wide v22

    sub-double v20, v20, v22

    move-wide/from16 v14, v20

    .line 916
    .local v14, "y":D
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_3

    const-wide/16 v20, 0x0

    :goto_0
    move-wide/from16 v16, v20

    .line 917
    .local v16, "width":D
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_4

    const-wide/16 v20, 0x0

    :goto_1
    move-wide/from16 v18, v20

    .line 919
    .local v18, "height":D
    move/from16 v20, v10

    if-eqz v20, :cond_2

    .line 920
    move-wide/from16 v20, v12

    move-wide/from16 v22, v16

    add-double v20, v20, v22

    move-wide/from16 v12, v20

    .line 921
    const-wide/16 v20, 0x0

    move-wide/from16 v16, v20

    .line 924
    :cond_2
    new-instance v20, Ljavafx/geometry/Rectangle2D;

    move-object/from16 v30, v20

    move-object/from16 v20, v30

    move-object/from16 v21, v30

    move-wide/from16 v22, v12

    move-wide/from16 v24, v14

    move-wide/from16 v26, v16

    move-wide/from16 v28, v18

    invoke-direct/range {v21 .. v29}, Ljavafx/geometry/Rectangle2D;-><init>(DDDD)V

    move-object/from16 v3, v20

    .end local v3    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-object v3

    .line 916
    .end local v16    # "width":D
    .end local v18    # "height":D
    .restart local v3    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    :cond_3
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v20

    goto :goto_0

    .line 917
    .restart local v16    # "width":D
    :cond_4
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v20

    goto :goto_1
.end method

.method public getIndex(DD)Lcom/sun/javafx/scene/text/HitInfo;
    .locals 21

    .prologue
    .line 1073
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v12, v1

    invoke-direct {v12}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getTextNode()Ljavafx/scene/text/Text;

    move-result-object v12

    move-object v6, v12

    .line 1074
    .local v6, "textNode":Ljavafx/scene/text/Text;
    new-instance v12, Ljavafx/geometry/Point2D;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-wide v14, v2

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/text/Text;->getLayoutX()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-wide/from16 v16, v4

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getTextTranslateY()D

    move-result-wide v18

    sub-double v16, v16, v18

    invoke-direct/range {v13 .. v17}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v7, v12

    .line 1075
    .local v7, "p":Ljavafx/geometry/Point2D;
    move-object v12, v6

    move-object v13, v1

    move-object v14, v7

    invoke-direct {v13, v14}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->translateCaretPosition(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljavafx/scene/text/Text;->impl_hitTestChar(Ljavafx/geometry/Point2D;)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v12

    move-object v8, v12

    .line 1076
    .local v8, "hit":Lcom/sun/javafx/scene/text/HitInfo;
    move-object v12, v8

    invoke-virtual {v12}, Lcom/sun/javafx/scene/text/HitInfo;->getCharIndex()I

    move-result v12

    move v9, v12

    .line 1077
    .local v9, "pos":I
    move v12, v9

    if-lez v12, :cond_1

    .line 1078
    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/scene/text/Text;->getImpl_caretPosition()I

    move-result v12

    move v10, v12

    .line 1079
    .local v10, "oldPos":I
    move-object v12, v6

    move v13, v9

    invoke-virtual {v12, v13}, Ljavafx/scene/text/Text;->setImpl_caretPosition(I)V

    .line 1080
    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/scene/text/Text;->getImpl_caretShape()[Ljavafx/scene/shape/PathElement;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    move-object v11, v12

    .line 1081
    .local v11, "element":Ljavafx/scene/shape/PathElement;
    move-object v12, v11

    instance-of v12, v12, Ljavafx/scene/shape/MoveTo;

    if-eqz v12, :cond_0

    move-object v12, v11

    check-cast v12, Ljavafx/scene/shape/MoveTo;

    invoke-virtual {v12}, Ljavafx/scene/shape/MoveTo;->getY()D

    move-result-wide v12

    move-wide v14, v4

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getTextTranslateY()D

    move-result-wide v16

    sub-double v14, v14, v16

    cmpl-double v12, v12, v14

    if-lez v12, :cond_0

    .line 1082
    move-object v12, v8

    move v13, v9

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Lcom/sun/javafx/scene/text/HitInfo;->setCharIndex(I)V

    .line 1084
    :cond_0
    move-object v12, v6

    move v13, v10

    invoke-virtual {v12, v13}, Ljavafx/scene/text/Text;->setImpl_caretPosition(I)V

    .line 1086
    .end local v10    # "oldPos":I
    .end local v11    # "element":Ljavafx/scene/shape/PathElement;
    :cond_1
    move-object v12, v8

    move-object v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-object v1
.end method

.method public getInsertionPoint(DD)I
    .locals 25

    .prologue
    .line 793
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-wide/from16 v3, p1

    .local v3, "x":D
    move-wide/from16 v5, p3

    .local v5, "y":D
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v16

    check-cast v16, Ljavafx/scene/control/TextArea;

    move-object/from16 v7, v16

    .line 795
    .local v7, "textArea":Ljavafx/scene/control/TextArea;
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljavafx/collections/ObservableList;->size()I

    move-result v16

    move/from16 v8, v16

    .line 796
    .local v8, "n":I
    const/16 v16, -0x1

    move/from16 v9, v16

    .line 798
    .local v9, "index":I
    move/from16 v16, v8

    if-lez v16, :cond_0

    .line 799
    move-wide/from16 v16, v5

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedTopInset()D

    move-result-wide v18

    cmpg-double v16, v16, v18

    if-gez v16, :cond_1

    .line 801
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljavafx/scene/text/Text;

    move-object/from16 v10, v16

    .line 802
    .local v10, "paragraphNode":Ljavafx/scene/text/Text;
    move-object/from16 v16, v2

    move-object/from16 v17, v10

    move-wide/from16 v18, v3

    const/16 v20, -0x1

    sget-object v21, Ljavafx/geometry/VerticalDirection;->DOWN:Ljavafx/geometry/VerticalDirection;

    invoke-direct/range {v16 .. v21}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getNextInsertionPoint(Ljavafx/scene/text/Text;DILjavafx/geometry/VerticalDirection;)I

    move-result v16

    move/from16 v9, v16

    .line 831
    .end local v10    # "paragraphNode":Ljavafx/scene/text/Text;
    :cond_0
    :goto_0
    move/from16 v16, v9

    move/from16 v2, v16

    .end local v2    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return v2

    .line 803
    .restart local v2    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    :cond_1
    move-wide/from16 v16, v5

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedTopInset()D

    move-result-wide v18

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->getHeight()D

    move-result-wide v20

    add-double v18, v18, v20

    cmpl-double v16, v16, v18

    if-lez v16, :cond_2

    .line 805
    move/from16 v16, v8

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v10, v16

    .line 806
    .local v10, "lastParagraphIndex":I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v16

    move/from16 v17, v10

    invoke-interface/range {v16 .. v17}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljavafx/scene/text/Text;

    move-object/from16 v11, v16

    .line 808
    .local v11, "lastParagraphView":Ljavafx/scene/text/Text;
    move-object/from16 v16, v2

    move-object/from16 v17, v11

    move-wide/from16 v18, v3

    const/16 v20, -0x1

    sget-object v21, Ljavafx/geometry/VerticalDirection;->UP:Ljavafx/geometry/VerticalDirection;

    invoke-direct/range {v16 .. v21}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getNextInsertionPoint(Ljavafx/scene/text/Text;DILjavafx/geometry/VerticalDirection;)I

    move-result v16

    move-object/from16 v17, v7

    .line 809
    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/control/TextArea;->getLength()I

    move-result v17

    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/text/Text;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v17, v17, v18

    add-int v16, v16, v17

    move/from16 v9, v16

    .line 810
    goto :goto_0

    .line 812
    .end local v10    # "lastParagraphIndex":I
    .end local v11    # "lastParagraphView":Ljavafx/scene/text/Text;
    :cond_2
    const/16 v16, 0x0

    move/from16 v10, v16

    .line 813
    .local v10, "paragraphOffset":I
    const/16 v16, 0x0

    move/from16 v11, v16

    .local v11, "i":I
    :goto_1
    move/from16 v16, v11

    move/from16 v17, v8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 814
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v16

    move/from16 v17, v11

    invoke-interface/range {v16 .. v17}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljavafx/scene/text/Text;

    move-object/from16 v12, v16

    .line 816
    .local v12, "paragraphNode":Ljavafx/scene/text/Text;
    move-object/from16 v16, v12

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/text/Text;->getBoundsInLocal()Ljavafx/geometry/Bounds;

    move-result-object v16

    move-object/from16 v13, v16

    .line 817
    .local v13, "bounds":Ljavafx/geometry/Bounds;
    move-object/from16 v16, v12

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/text/Text;->getLayoutY()D

    move-result-wide v16

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v14, v16

    .line 818
    .local v14, "paragraphViewY":D
    move-wide/from16 v16, v5

    move-wide/from16 v18, v14

    cmpl-double v16, v16, v18

    if-ltz v16, :cond_3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v14

    move-object/from16 v20, v12

    .line 819
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/text/Text;->getBoundsInLocal()Ljavafx/geometry/Bounds;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v20

    add-double v18, v18, v20

    cmpg-double v16, v16, v18

    if-gez v16, :cond_3

    .line 820
    move-object/from16 v16, v2

    move-object/from16 v17, v12

    move-wide/from16 v18, v3

    move-object/from16 v20, v12

    .line 821
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/text/Text;->getLayoutX()D

    move-result-wide v20

    sub-double v18, v18, v20

    move-wide/from16 v20, v5

    move-object/from16 v22, v12

    .line 822
    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/text/Text;->getLayoutY()D

    move-result-wide v22

    sub-double v20, v20, v22

    .line 820
    invoke-direct/range {v16 .. v21}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getInsertionPoint(Ljavafx/scene/text/Text;DD)I

    move-result v16

    move/from16 v17, v10

    add-int v16, v16, v17

    move/from16 v9, v16

    .line 823
    goto/16 :goto_0

    .line 826
    :cond_3
    move/from16 v16, v10

    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/text/Text;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    add-int v16, v16, v17

    move/from16 v10, v16

    .line 813
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1
.end method

.method public getMenuPosition()Ljavafx/geometry/Point2D;
    .locals 13

    .prologue
    .line 1362
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->layoutChildren()V

    .line 1363
    move-object v2, v0

    invoke-super {v2}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getMenuPosition()Ljavafx/geometry/Point2D;

    move-result-object v2

    move-object v1, v2

    .line 1364
    .local v1, "p":Ljavafx/geometry/Point2D;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 1365
    new-instance v2, Ljavafx/geometry/Point2D;

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    const-wide/16 v4, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v6

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedLeftInset()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TextArea;

    invoke-virtual {v8}, Ljavafx/scene/control/TextArea;->getScrollLeft()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-object v8, v1

    .line 1366
    invoke-virtual {v8}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedTopInset()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/TextArea;

    invoke-virtual {v10}, Ljavafx/scene/control/TextArea;->getScrollTop()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v2

    .line 1368
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return-object v0
.end method

.method public getNextInsertionPoint(DILjavafx/geometry/VerticalDirection;)I
    .locals 7

    .prologue
    .line 875
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-wide v2, p1

    .local v2, "x":D
    move v4, p3

    .local v4, "from":I
    move-object v5, p4

    .local v5, "scrollDirection":Ljavafx/geometry/VerticalDirection;
    const/4 v6, 0x0

    move v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    return v1
.end method

.method protected getRangeShape(II)[Ljavafx/scene/shape/PathElement;
    .locals 12

    .prologue
    .line 1304
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    const/4 v8, 0x0

    move v3, v8

    .line 1305
    .local v3, "pStart":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    invoke-virtual {v8}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    :goto_0
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/Node;

    move-object v5, v8

    .line 1306
    .local v5, "node":Ljavafx/scene/Node;
    move-object v8, v5

    check-cast v8, Ljavafx/scene/text/Text;

    move-object v6, v8

    .line 1307
    .local v6, "p":Ljavafx/scene/text/Text;
    move v8, v3

    move-object v9, v6

    invoke-virtual {v9}, Ljavafx/scene/text/Text;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/beans/property/StringProperty;->getValueSafe()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    move v7, v8

    .line 1308
    .local v7, "pEnd":I
    move v8, v7

    move v9, v1

    if-lt v8, v9, :cond_0

    .line 1309
    move-object v8, v6

    move v9, v1

    move v10, v3

    sub-int/2addr v9, v10

    move v10, v2

    move v11, v3

    sub-int/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/text/Text;->impl_getRangeShape(II)[Ljavafx/scene/shape/PathElement;

    move-result-object v8

    move-object v0, v8

    .line 1313
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    .end local v5    # "node":Ljavafx/scene/Node;
    .end local v6    # "p":Ljavafx/scene/text/Text;
    .end local v7    # "pEnd":I
    :goto_1
    return-object v0

    .line 1311
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    .restart local v5    # "node":Ljavafx/scene/Node;
    .restart local v6    # "p":Ljavafx/scene/text/Text;
    .restart local v7    # "pEnd":I
    :cond_0
    move v8, v7

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v3, v8

    .line 1312
    goto :goto_0

    .line 1313
    .end local v5    # "node":Ljavafx/scene/Node;
    .end local v6    # "p":Ljavafx/scene/text/Text;
    .end local v7    # "pEnd":I
    :cond_1
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_1
.end method

.method protected getUnderlineShape(II)[Ljavafx/scene/shape/PathElement;
    .locals 12

    .prologue
    .line 1291
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    const/4 v8, 0x0

    move v3, v8

    .line 1292
    .local v3, "pStart":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphNodes:Ljavafx/scene/Group;

    invoke-virtual {v8}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    :goto_0
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/Node;

    move-object v5, v8

    .line 1293
    .local v5, "node":Ljavafx/scene/Node;
    move-object v8, v5

    check-cast v8, Ljavafx/scene/text/Text;

    move-object v6, v8

    .line 1294
    .local v6, "p":Ljavafx/scene/text/Text;
    move v8, v3

    move-object v9, v6

    invoke-virtual {v9}, Ljavafx/scene/text/Text;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/beans/property/StringProperty;->getValueSafe()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    move v7, v8

    .line 1295
    .local v7, "pEnd":I
    move v8, v7

    move v9, v1

    if-lt v8, v9, :cond_0

    .line 1296
    move-object v8, v6

    move v9, v1

    move v10, v3

    sub-int/2addr v9, v10

    move v10, v2

    move v11, v3

    sub-int/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/text/Text;->impl_getUnderlineShape(II)[Ljavafx/scene/shape/PathElement;

    move-result-object v8

    move-object v0, v8

    .line 1300
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    .end local v5    # "node":Ljavafx/scene/Node;
    .end local v6    # "p":Ljavafx/scene/text/Text;
    .end local v7    # "pEnd":I
    :goto_1
    return-object v0

    .line 1298
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    .restart local v5    # "node":Ljavafx/scene/Node;
    .restart local v6    # "p":Ljavafx/scene/text/Text;
    .restart local v7    # "pEnd":I
    :cond_0
    move v8, v7

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v3, v8

    .line 1299
    goto :goto_0

    .line 1300
    .end local v5    # "node":Ljavafx/scene/Node;
    .end local v6    # "p":Ljavafx/scene/text/Text;
    .end local v7    # "pEnd":I
    :cond_1
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_1
.end method

.method protected invalidateMetrics()V
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, v0

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v2, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->computedMinWidth:D

    .line 85
    move-object v1, v0

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v2, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->computedMinHeight:D

    .line 86
    move-object v1, v0

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v2, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->computedPrefWidth:D

    .line 87
    move-object v1, v0

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v2, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->computedPrefHeight:D

    .line 88
    return-void
.end method

.method protected layoutChildren(DDDD)V
    .locals 19

    .prologue
    .line 721
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-wide/from16 v1, p1

    .local v1, "contentX":D
    move-wide/from16 v3, p3

    .local v3, "contentY":D
    move-wide/from16 v5, p5

    .local v5, "contentWidth":D
    move-wide/from16 v7, p7

    .local v7, "contentHeight":D
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    move-wide v10, v1

    move-wide v12, v3

    move-wide v14, v5

    move-wide/from16 v16, v7

    invoke-virtual/range {v9 .. v17}, Ljavafx/scene/control/ScrollPane;->resizeRelocate(DDDD)V

    .line 722
    return-void
.end method

.method public lineEnd(ZZ)V
    .locals 7

    .prologue
    .line 1218
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move v1, p1

    .local v1, "select":Z
    move v2, p2

    .local v2, "extendSelection":Z
    move-object v3, v0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->targetCaretX:D

    .line 1219
    move-object v3, v0

    const/4 v4, 0x0

    move v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->downLines(IZZ)V

    .line 1220
    move-object v3, v0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->targetCaretX:D

    .line 1221
    return-void
.end method

.method public lineStart(ZZ)V
    .locals 7

    .prologue
    .line 1212
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move v1, p1

    .local v1, "select":Z
    move v2, p2

    .local v2, "extendSelection":Z
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->targetCaretX:D

    .line 1213
    move-object v3, v0

    const/4 v4, 0x0

    move v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->downLines(IZZ)V

    .line 1214
    move-object v3, v0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->targetCaretX:D

    .line 1215
    return-void
.end method

.method public nextCharacterVisually(Z)V
    .locals 20

    .prologue
    .line 1095
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move/from16 v2, p1

    .local v2, "moveRight":Z
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->isRTL()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1097
    move v12, v2

    if-nez v12, :cond_5

    const/4 v12, 0x1

    :goto_0
    move v2, v12

    .line 1100
    :cond_0
    move-object v12, v1

    invoke-direct {v12}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getTextNode()Ljavafx/scene/text/Text;

    move-result-object v12

    move-object v3, v12

    .line 1101
    .local v3, "textNode":Ljavafx/scene/text/Text;
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v12}, Ljavafx/scene/shape/Path;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v12

    move-object v4, v12

    .line 1102
    .local v4, "caretBounds":Ljavafx/geometry/Bounds;
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v12}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v12

    invoke-interface {v12}, Ljavafx/collections/ObservableList;->size()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_1

    .line 1107
    new-instance v12, Ljavafx/scene/shape/Path;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x2

    new-array v14, v14, [Ljavafx/scene/shape/PathElement;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljavafx/scene/shape/PathElement;

    aput-object v17, v15, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v17

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljavafx/scene/shape/PathElement;

    aput-object v17, v15, v16

    invoke-direct {v13, v14}, Ljavafx/scene/shape/Path;-><init>([Ljavafx/scene/shape/PathElement;)V

    invoke-virtual {v12}, Ljavafx/scene/shape/Path;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v12

    move-object v4, v12

    .line 1109
    :cond_1
    move v12, v2

    if-eqz v12, :cond_6

    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    :goto_1
    move-wide v5, v12

    .line 1110
    .local v5, "hitX":D
    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v12

    move-object v14, v4

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    move-wide v7, v12

    .line 1111
    .local v7, "hitY":D
    move-object v12, v3

    new-instance v13, Ljavafx/geometry/Point2D;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-wide v15, v5

    move-wide/from16 v17, v7

    invoke-direct/range {v14 .. v18}, Ljavafx/geometry/Point2D;-><init>(DD)V

    invoke-virtual {v12, v13}, Ljavafx/scene/text/Text;->impl_hitTestChar(Ljavafx/geometry/Point2D;)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v12

    move-object v9, v12

    .line 1112
    .local v9, "hit":Lcom/sun/javafx/scene/text/HitInfo;
    new-instance v12, Ljavafx/scene/shape/Path;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v3

    move-object v15, v9

    invoke-virtual {v15}, Lcom/sun/javafx/scene/text/HitInfo;->getCharIndex()I

    move-result v15

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/text/HitInfo;->getCharIndex()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/text/Text;->impl_getRangeShape(II)[Ljavafx/scene/shape/PathElement;

    move-result-object v14

    invoke-direct {v13, v14}, Ljavafx/scene/shape/Path;-><init>([Ljavafx/scene/shape/PathElement;)V

    move-object v10, v12

    .line 1113
    .local v10, "charShape":Ljavafx/scene/shape/Path;
    move v12, v2

    if-eqz v12, :cond_2

    move-object v12, v10

    invoke-virtual {v12}, Ljavafx/scene/shape/Path;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v12

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v4

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v14

    cmpl-double v12, v12, v14

    if-gtz v12, :cond_3

    :cond_2
    move v12, v2

    if-nez v12, :cond_8

    move-object v12, v10

    .line 1114
    invoke-virtual {v12}, Ljavafx/scene/shape/Path;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v12

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v4

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v14

    cmpg-double v12, v12, v14

    if-gez v12, :cond_8

    .line 1115
    :cond_3
    move-object v12, v9

    move-object v13, v9

    invoke-virtual {v13}, Lcom/sun/javafx/scene/text/HitInfo;->isLeading()Z

    move-result v13

    if-nez v13, :cond_7

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v12, v13}, Lcom/sun/javafx/scene/text/HitInfo;->setLeading(Z)V

    .line 1116
    move-object v12, v1

    move-object v13, v9

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->positionCaret(Lcom/sun/javafx/scene/text/HitInfo;ZZ)V

    .line 1132
    :cond_4
    :goto_3
    return-void

    .line 1097
    .end local v3    # "textNode":Ljavafx/scene/text/Text;
    .end local v4    # "caretBounds":Ljavafx/geometry/Bounds;
    .end local v5    # "hitX":D
    .end local v7    # "hitY":D
    .end local v9    # "hit":Lcom/sun/javafx/scene/text/HitInfo;
    .end local v10    # "charShape":Ljavafx/scene/shape/Path;
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1109
    .restart local v3    # "textNode":Ljavafx/scene/text/Text;
    .restart local v4    # "caretBounds":Ljavafx/geometry/Bounds;
    :cond_6
    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    goto/16 :goto_1

    .line 1115
    .restart local v5    # "hitX":D
    .restart local v7    # "hitY":D
    .restart local v9    # "hit":Lcom/sun/javafx/scene/text/HitInfo;
    .restart local v10    # "charShape":Ljavafx/scene/shape/Path;
    :cond_7
    const/4 v13, 0x0

    goto :goto_2

    .line 1119
    :cond_8
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->textArea:Ljavafx/scene/control/TextArea;

    invoke-virtual {v12}, Ljavafx/scene/control/TextArea;->getCaretPosition()I

    move-result v12

    move v11, v12

    .line 1120
    .local v11, "dot":I
    move-object v12, v1

    move v13, v2

    if-eqz v13, :cond_9

    const-wide/16 v13, 0x0

    :goto_4
    iput-wide v13, v12, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->targetCaretX:D

    .line 1122
    move-object v12, v1

    move v13, v2

    if-eqz v13, :cond_a

    const/4 v13, 0x1

    :goto_5
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->downLines(IZZ)V

    .line 1123
    move-object v12, v1

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    iput-wide v13, v12, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->targetCaretX:D

    .line 1124
    move v12, v11

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->textArea:Ljavafx/scene/control/TextArea;

    invoke-virtual {v13}, Ljavafx/scene/control/TextArea;->getCaretPosition()I

    move-result v13

    if-ne v12, v13, :cond_4

    .line 1125
    move v12, v2

    if-eqz v12, :cond_b

    .line 1126
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->textArea:Ljavafx/scene/control/TextArea;

    invoke-virtual {v12}, Ljavafx/scene/control/TextArea;->forward()V

    goto :goto_3

    .line 1120
    :cond_9
    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_4

    .line 1122
    :cond_a
    const/4 v13, -0x1

    goto :goto_5

    .line 1128
    :cond_b
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->textArea:Ljavafx/scene/control/TextArea;

    invoke-virtual {v12}, Ljavafx/scene/control/TextArea;->backward()V

    goto :goto_3
.end method

.method public nextLine(Z)V
    .locals 6

    .prologue
    .line 1198
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move v1, p1

    .local v1, "select":Z
    move-object v2, v0

    const/4 v3, 0x1

    move v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->downLines(IZZ)V

    .line 1199
    return-void
.end method

.method public nextPage(Z)V
    .locals 8

    .prologue
    .line 1207
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move v2, p1

    .local v2, "select":Z
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getViewportBounds()Ljavafx/geometry/Bounds;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lineHeight:D

    div-double/2addr v4, v6

    double-to-int v4, v4

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->downLines(IZZ)V

    .line 1209
    return-void
.end method

.method public paragraphEnd(ZZZ)V
    .locals 11

    .prologue
    .line 1248
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move v1, p1

    .local v1, "goPastInitialNewline":Z
    move v2, p2

    .local v2, "goPastTrailingNewline":Z
    move v3, p3

    .local v3, "select":Z
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TextArea;

    move-object v4, v9

    .line 1249
    .local v4, "textArea":Ljavafx/scene/control/TextArea;
    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/control/TextArea;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/beans/property/StringProperty;->getValueSafe()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 1250
    .local v5, "text":Ljava/lang/String;
    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/control/TextArea;->getCaretPosition()I

    move-result v9

    move v6, v9

    .line 1251
    .local v6, "pos":I
    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v7, v9

    .line 1252
    .local v7, "len":I
    const/4 v9, 0x0

    move v8, v9

    .line 1254
    .local v8, "wentPastInitialNewline":Z
    move v9, v6

    move v10, v7

    if-ge v9, v10, :cond_4

    .line 1255
    move v9, v1

    if-eqz v9, :cond_0

    move-object v9, v5

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_0

    .line 1258
    add-int/lit8 v6, v6, 0x1

    .line 1259
    const/4 v9, 0x1

    move v8, v9

    .line 1261
    :cond_0
    move v9, v2

    if-eqz v9, :cond_1

    move v9, v8

    if-nez v9, :cond_3

    .line 1263
    :cond_1
    :goto_0
    move v9, v6

    move v10, v7

    if-ge v9, v10, :cond_2

    move-object v9, v5

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_2

    .line 1264
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1266
    :cond_2
    move v9, v2

    if-eqz v9, :cond_3

    move v9, v6

    move v10, v7

    if-ge v9, v10, :cond_3

    .line 1269
    add-int/lit8 v6, v6, 0x1

    .line 1272
    :cond_3
    move v9, v3

    if-eqz v9, :cond_5

    .line 1273
    move-object v9, v4

    move v10, v6

    invoke-virtual {v9, v10}, Ljavafx/scene/control/TextArea;->selectPositionCaret(I)V

    .line 1278
    :cond_4
    :goto_1
    return-void

    .line 1275
    :cond_5
    move-object v9, v4

    move v10, v6

    invoke-virtual {v9, v10}, Ljavafx/scene/control/TextArea;->positionCaret(I)V

    goto :goto_1
.end method

.method public paragraphStart(ZZ)V
    .locals 9

    .prologue
    .line 1225
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move v1, p1

    .local v1, "previousIfAtStart":Z
    move v2, p2

    .local v2, "select":Z
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TextArea;

    move-object v3, v6

    .line 1226
    .local v3, "textArea":Ljavafx/scene/control/TextArea;
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/TextArea;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/beans/property/StringProperty;->getValueSafe()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 1227
    .local v4, "text":Ljava/lang/String;
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/TextArea;->getCaretPosition()I

    move-result v6

    move v5, v6

    .line 1229
    .local v5, "pos":I
    move v6, v5

    if-lez v6, :cond_2

    .line 1230
    move v6, v1

    if-eqz v6, :cond_0

    move-object v6, v4

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_0

    .line 1233
    add-int/lit8 v5, v5, -0x1

    .line 1236
    :cond_0
    :goto_0
    move v6, v5

    if-lez v6, :cond_1

    move-object v6, v4

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_1

    .line 1237
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1239
    :cond_1
    move v6, v2

    if-eqz v6, :cond_3

    .line 1240
    move-object v6, v3

    move v7, v5

    invoke-virtual {v6, v7}, Ljavafx/scene/control/TextArea;->selectPositionCaret(I)V

    .line 1245
    :cond_2
    :goto_1
    return-void

    .line 1242
    :cond_3
    move-object v6, v3

    move v7, v5

    invoke-virtual {v6, v7}, Ljavafx/scene/control/TextArea;->positionCaret(I)V

    goto :goto_1
.end method

.method public positionCaret(Lcom/sun/javafx/scene/text/HitInfo;ZZ)V
    .locals 9

    .prologue
    .line 835
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "hit":Lcom/sun/javafx/scene/text/HitInfo;
    move v2, p2

    .local v2, "select":Z
    move v3, p3

    .local v3, "extendSelection":Z
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TextArea;

    invoke-virtual {v7}, Ljavafx/scene/control/TextArea;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sun/javafx/scene/control/skin/Utils;->getHitInsertionIndex(Lcom/sun/javafx/scene/text/HitInfo;Ljava/lang/String;)I

    move-result v6

    move v4, v6

    .line 836
    .local v4, "pos":I
    move v6, v4

    if-lez v6, :cond_1

    move v6, v4

    move-object v7, v0

    .line 838
    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TextArea;

    invoke-virtual {v7}, Ljavafx/scene/control/TextArea;->getLength()I

    move-result v7

    if-gt v6, v7, :cond_1

    move-object v6, v0

    .line 839
    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TextArea;

    invoke-virtual {v6}, Ljavafx/scene/control/TextArea;->getText()Ljava/lang/String;

    move-result-object v6

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_0
    move v5, v6

    .line 842
    .local v5, "isNewLine":Z
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/text/HitInfo;->isLeading()Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v5

    if-eqz v6, :cond_0

    .line 843
    move-object v6, v1

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/text/HitInfo;->setLeading(Z)V

    .line 844
    add-int/lit8 v4, v4, -0x1

    .line 847
    :cond_0
    move v6, v2

    if-eqz v6, :cond_3

    .line 848
    move v6, v3

    if-eqz v6, :cond_2

    .line 849
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TextArea;

    move v7, v4

    invoke-virtual {v6, v7}, Ljavafx/scene/control/TextArea;->extendSelection(I)V

    .line 857
    :goto_1
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/text/HitInfo;->isLeading()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->setForwardBias(Z)V

    .line 858
    return-void

    .line 839
    .end local v5    # "isNewLine":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 851
    .restart local v5    # "isNewLine":Z
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TextArea;

    move v7, v4

    invoke-virtual {v6, v7}, Ljavafx/scene/control/TextArea;->selectPositionCaret(I)V

    goto :goto_1

    .line 854
    :cond_3
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TextArea;

    move v7, v4

    invoke-virtual {v6, v7}, Ljavafx/scene/control/TextArea;->positionCaret(I)V

    goto :goto_1
.end method

.method public previousLine(Z)V
    .locals 6

    .prologue
    .line 1194
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move v1, p1

    .local v1, "select":Z
    move-object v2, v0

    const/4 v3, -0x1

    move v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->downLines(IZZ)V

    .line 1195
    return-void
.end method

.method public previousPage(Z)V
    .locals 8

    .prologue
    .line 1202
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move v2, p1

    .local v2, "select":Z
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollPane:Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getViewportBounds()Ljavafx/geometry/Bounds;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lineHeight:D

    div-double/2addr v4, v6

    double-to-int v4, v4

    neg-int v4, v4

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->downLines(IZZ)V

    .line 1204
    return-void
.end method

.method protected varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 1377
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v4, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$6;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1385
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    :goto_0
    return-object v0

    .line 1383
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    :pswitch_0
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getTextNode()Ljavafx/scene/text/Text;

    move-result-object v4

    move-object v3, v4

    .line 1384
    .local v3, "text":Ljavafx/scene/text/Text;
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/text/Text;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 1377
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected removeHighlight(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1339
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v1, p1

    .local v1, "nodes":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/Node;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->contentView:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    .line 1340
    return-void
.end method

.method public scrollCharacterToVisible(I)V
    .locals 4

    .prologue
    .line 932
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$22;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;I)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 939
    return-void
.end method

.method protected updateHighlightFill()V
    .locals 6

    .prologue
    .line 1025
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHighlightGroup:Ljavafx/scene/Group;

    invoke-virtual {v4}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    move-object v2, v4

    .line 1026
    .local v2, "node":Ljavafx/scene/Node;
    move-object v4, v2

    check-cast v4, Ljavafx/scene/shape/Path;

    move-object v3, v4

    .line 1027
    .local v3, "selectionHighlightPath":Ljavafx/scene/shape/Path;
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->highlightFill:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v5}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/paint/Paint;

    invoke-virtual {v4, v5}, Ljavafx/scene/shape/Path;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 1028
    goto :goto_0

    .line 1029
    .end local v2    # "node":Ljavafx/scene/Node;
    .end local v3    # "selectionHighlightPath":Ljavafx/scene/shape/Path;
    :cond_0
    return-void
.end method

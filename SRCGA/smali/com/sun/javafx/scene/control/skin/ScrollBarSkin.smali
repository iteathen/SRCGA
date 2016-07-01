.class public Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
.super Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.source "ScrollBarSkin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase",
        "<",
        "Ljavafx/scene/control/ScrollBar;",
        "Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_EMBEDDED_SB_BREADTH:D = 8.0

.field public static final DEFAULT_LENGTH:I = 0x64

.field public static final DEFAULT_WIDTH:I = 0x14


# instance fields
.field private decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

.field private dragStart:Ljavafx/geometry/Point2D;

.field private incButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

.field private preDragThumbPos:D

.field private thumb:Ljavafx/scene/layout/StackPane;

.field private thumbLength:D

.field private track:Ljavafx/scene/layout/StackPane;

.field private trackBackground:Ljavafx/scene/layout/StackPane;

.field private trackLength:D

.field private trackPos:D


# direct methods
.method public constructor <init>(Ljavafx/scene/control/ScrollBar;)V
    .locals 8

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-object v1, p1

    .local v1, "scrollbar":Ljavafx/scene/control/ScrollBar;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;-><init>(Ljavafx/scene/control/ScrollBar;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 75
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->initialize()V

    .line 76
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollBar;->requestLayout()V

    .line 78
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollBar;->minProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    const-string v4, "MIN"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 79
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollBar;->maxProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    const-string v4, "MAX"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 80
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollBar;->valueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    const-string v4, "VALUE"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 81
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollBar;->orientationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "ORIENTATION"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 82
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollBar;->visibleAmountProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    const-string v4, "VISIBLE_AMOUNT"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->lambda$initialize$433(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->lambda$initialize$434(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$10(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;Ljavafx/scene/input/ScrollEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->lambda$initialize$443(Ljavafx/scene/input/ScrollEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->lambda$initialize$435(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->lambda$initialize$436(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->lambda$initialize$437(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->lambda$initialize$438(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->lambda$initialize$439(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->lambda$initialize$440(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;Ljavafx/scene/input/ScrollEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->lambda$initialize$441(Ljavafx/scene/input/ScrollEvent;)V

    return-void
.end method

.method static synthetic access$lambda$9(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;Ljavafx/scene/input/ScrollEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->lambda$initialize$442(Ljavafx/scene/input/ScrollEvent;)V

    return-void
.end method

.method private initialize()V
    .locals 8

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/StackPane;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->track:Ljavafx/scene/layout/StackPane;

    .line 92
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->track:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v1}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const-string v5, "track"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 94
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/StackPane;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackBackground:Ljavafx/scene/layout/StackPane;

    .line 95
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackBackground:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v1}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const-string v5, "track-background"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 97
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$1;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    .line 106
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v1}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const-string v5, "thumb"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 107
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    sget-object v2, Ljavafx/scene/AccessibleRole;->THUMB:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/layout/StackPane;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 110
    sget-boolean v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->IS_TOUCH_SUPPORTED:Z

    if-nez v1, :cond_0

    .line 112
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$2;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "increment-button"

    const-string v6, "increment-arrow"

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$2;-><init>(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->incButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    .line 123
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->incButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    sget-object v2, Ljavafx/scene/AccessibleRole;->INCREMENT_BUTTON:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 124
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->incButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;)Ljavafx/event/EventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 133
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->incButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;)Ljavafx/event/EventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->setOnMouseReleased(Ljavafx/event/EventHandler;)V

    .line 143
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$3;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "decrement-button"

    const-string v6, "decrement-arrow"

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$3;-><init>(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    .line 154
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    sget-object v2, Ljavafx/scene/AccessibleRole;->DECREMENT_BUTTON:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 155
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;)Ljavafx/event/EventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 164
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;)Ljavafx/event/EventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->setOnMouseReleased(Ljavafx/event/EventHandler;)V

    .line 176
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->track:Ljavafx/scene/layout/StackPane;

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;)Ljavafx/event/EventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/layout/StackPane;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 192
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->track:Ljavafx/scene/layout/StackPane;

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;)Ljavafx/event/EventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/layout/StackPane;->setOnMouseReleased(Ljavafx/event/EventHandler;)V

    .line 197
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;)Ljavafx/event/EventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/layout/StackPane;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 215
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$$Lambda$8;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;)Ljavafx/event/EventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/layout/StackPane;->setOnMouseDragged(Ljavafx/event/EventHandler;)V

    .line 242
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$$Lambda$9;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;)Ljavafx/event/EventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/layout/StackPane;->setOnScrollStarted(Ljavafx/event/EventHandler;)V

    .line 256
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$$Lambda$10;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;)Ljavafx/event/EventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/layout/StackPane;->setOnScroll(Ljavafx/event/EventHandler;)V

    .line 282
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ScrollBar;

    sget-object v2, Ljavafx/scene/input/ScrollEvent;->SCROLL:Ljavafx/event/EventType;

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$$Lambda$11;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;)Ljavafx/event/EventHandler;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/ScrollBar;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 329
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->clear()V

    .line 330
    sget-boolean v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->IS_TOUCH_SUPPORTED:Z

    if-nez v1, :cond_1

    .line 331
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljavafx/scene/Node;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackBackground:Ljavafx/scene/layout/StackPane;

    aput-object v5, v3, v4

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->incButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    aput-object v5, v3, v4

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    aput-object v5, v3, v4

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->track:Ljavafx/scene/layout/StackPane;

    aput-object v5, v3, v4

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v1

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljavafx/scene/Node;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->track:Ljavafx/scene/layout/StackPane;

    aput-object v5, v3, v4

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private synthetic lambda$initialize$433(Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-object v1, p1

    .local v1, "me":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumbLength:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 129
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->incButtonPressed()V

    .line 131
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 132
    return-void
.end method

.method private synthetic lambda$initialize$434(Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-object v1, p1

    .local v1, "me":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumbLength:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 138
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->incButtonReleased()V

    .line 140
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 141
    return-void
.end method

.method private synthetic lambda$initialize$435(Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-object v1, p1

    .local v1, "me":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumbLength:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 160
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->decButtonPressed()V

    .line 162
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 163
    return-void
.end method

.method private synthetic lambda$initialize$436(Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-object v1, p1

    .local v1, "me":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumbLength:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 169
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->decButtonReleased()V

    .line 171
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 172
    return-void
.end method

.method private synthetic lambda$initialize$437(Ljavafx/scene/input/MouseEvent;)V
    .locals 8

    .prologue
    .line 177
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-object v2, p1

    .local v2, "me":Ljavafx/scene/input/MouseEvent;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->isPressed()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    if-ne v3, v4, :cond_0

    .line 178
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v3, v4, :cond_1

    .line 179
    move-object v3, v1

    iget-wide v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    .line 180
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->trackPress(D)V

    .line 181
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    move-object v3, v1

    iget-wide v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    .line 185
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->trackPress(D)V

    .line 186
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->consume()V

    goto :goto_0
.end method

.method private synthetic lambda$initialize$438(Ljavafx/scene/input/MouseEvent;)V
    .locals 3

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-object v1, p1

    .local v1, "me":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->trackRelease()V

    .line 194
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 195
    return-void
.end method

.method private synthetic lambda$initialize$439(Ljavafx/scene/input/MouseEvent;)V
    .locals 11

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-object v1, p1

    .local v1, "me":Ljavafx/scene/input/MouseEvent;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isSynthesized()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 201
    .line 212
    :goto_0
    return-void

    .line 206
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 207
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Ljavafx/scene/layout/StackPane;->localToParent(DD)Ljavafx/geometry/Point2D;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->dragStart:Ljavafx/geometry/Point2D;

    .line 208
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v6

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v8

    invoke-static/range {v4 .. v9}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v4

    move-wide v2, v4

    .line 209
    .local v2, "clampedValue":D
    move-object v4, v0

    move-wide v5, v2

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v7}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v7

    sub-double/2addr v5, v7

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v7}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v7

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v9}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v9

    sub-double/2addr v7, v9

    div-double/2addr v5, v7

    iput-wide v5, v4, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->preDragThumbPos:D

    .line 210
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 212
    .end local v2    # "clampedValue":D
    :cond_1
    goto/16 :goto_0
.end method

.method private synthetic lambda$initialize$440(Ljavafx/scene/input/MouseEvent;)V
    .locals 15

    .prologue
    .line 216
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-object/from16 v2, p1

    .local v2, "me":Ljavafx/scene/input/MouseEvent;
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->isSynthesized()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 218
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 219
    .line 240
    :goto_0
    return-void

    .line 224
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3

    .line 228
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumbLength:D

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    .line 229
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v7

    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v9

    invoke-virtual {v6, v7, v8, v9, v10}, Ljavafx/scene/layout/StackPane;->localToParent(DD)Ljavafx/geometry/Point2D;

    move-result-object v6

    move-object v3, v6

    .line 230
    .local v3, "cur":Ljavafx/geometry/Point2D;
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->dragStart:Ljavafx/geometry/Point2D;

    if-nez v6, :cond_1

    .line 232
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Ljavafx/scene/layout/StackPane;->localToParent(DD)Ljavafx/geometry/Point2D;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->dragStart:Ljavafx/geometry/Point2D;

    .line 234
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v6

    sget-object v7, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_4

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->dragStart:Ljavafx/geometry/Point2D;

    invoke-virtual {v8}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    :goto_1
    move-wide v4, v6

    .line 235
    .local v4, "dragPos":D
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;

    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->preDragThumbPos:D

    move-wide v9, v4

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-object v13, v1

    iget-wide v13, v13, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumbLength:D

    sub-double/2addr v11, v13

    div-double/2addr v9, v11

    add-double/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->thumbDragged(D)V

    .line 238
    .end local v3    # "cur":Ljavafx/geometry/Point2D;
    .end local v4    # "dragPos":D
    :cond_2
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 240
    :cond_3
    goto/16 :goto_0

    .line 234
    .restart local v3    # "cur":Ljavafx/geometry/Point2D;
    :cond_4
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v6

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->dragStart:Ljavafx/geometry/Point2D;

    invoke-virtual {v8}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    goto :goto_1
.end method

.method private synthetic lambda$initialize$441(Ljavafx/scene/input/ScrollEvent;)V
    .locals 11

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-object v1, p1

    .local v1, "se":Ljavafx/scene/input/ScrollEvent;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 248
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/input/ScrollEvent;->getX()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/ScrollEvent;->getY()D

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Ljavafx/scene/layout/StackPane;->localToParent(DD)Ljavafx/geometry/Point2D;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->dragStart:Ljavafx/geometry/Point2D;

    .line 249
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v6

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v8

    invoke-static/range {v4 .. v9}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v4

    move-wide v2, v4

    .line 250
    .local v2, "clampedValue":D
    move-object v4, v0

    move-wide v5, v2

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v7}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v7

    sub-double/2addr v5, v7

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v7}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v7

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v9}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v9

    sub-double/2addr v7, v9

    div-double/2addr v5, v7

    iput-wide v5, v4, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->preDragThumbPos:D

    .line 251
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->consume()V

    .line 254
    .end local v2    # "clampedValue":D
    :cond_0
    return-void
.end method

.method private synthetic lambda$initialize$442(Ljavafx/scene/input/ScrollEvent;)V
    .locals 15

    .prologue
    .line 257
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-object/from16 v2, p1

    .local v2, "event":Ljavafx/scene/input/ScrollEvent;
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/input/ScrollEvent;->isDirect()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 261
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3

    .line 265
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumbLength:D

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 266
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/input/ScrollEvent;->getX()D

    move-result-wide v7

    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/input/ScrollEvent;->getY()D

    move-result-wide v9

    invoke-virtual {v6, v7, v8, v9, v10}, Ljavafx/scene/layout/StackPane;->localToParent(DD)Ljavafx/geometry/Point2D;

    move-result-object v6

    move-object v3, v6

    .line 267
    .local v3, "cur":Ljavafx/geometry/Point2D;
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->dragStart:Ljavafx/geometry/Point2D;

    if-nez v6, :cond_0

    .line 269
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/input/ScrollEvent;->getX()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/ScrollEvent;->getY()D

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Ljavafx/scene/layout/StackPane;->localToParent(DD)Ljavafx/geometry/Point2D;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->dragStart:Ljavafx/geometry/Point2D;

    .line 271
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v6

    sget-object v7, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_2

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->dragStart:Ljavafx/geometry/Point2D;

    invoke-virtual {v8}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    :goto_0
    move-wide v4, v6

    .line 272
    .local v4, "dragPos":D
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;

    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->preDragThumbPos:D

    move-wide v9, v4

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-object v13, v1

    iget-wide v13, v13, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumbLength:D

    sub-double/2addr v11, v13

    div-double/2addr v9, v11

    add-double/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->thumbDragged(D)V

    .line 275
    .end local v3    # "cur":Ljavafx/geometry/Point2D;
    .end local v4    # "dragPos":D
    :cond_1
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/input/ScrollEvent;->consume()V

    .line 276
    .line 279
    :goto_1
    return-void

    .line 271
    .restart local v3    # "cur":Ljavafx/geometry/Point2D;
    :cond_2
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v6

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->dragStart:Ljavafx/geometry/Point2D;

    invoke-virtual {v8}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    goto :goto_0

    .line 279
    .end local v3    # "cur":Ljavafx/geometry/Point2D;
    :cond_3
    goto :goto_1
.end method

.method private synthetic lambda$initialize$443(Ljavafx/scene/input/ScrollEvent;)V
    .locals 15

    .prologue
    .line 286
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-object/from16 v2, p1

    .local v2, "event":Ljavafx/scene/input/ScrollEvent;
    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumbLength:D

    cmpl-double v10, v10, v12

    if-lez v10, :cond_0

    .line 288
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/ScrollEvent;->getDeltaX()D

    move-result-wide v10

    move-wide v3, v10

    .line 289
    .local v3, "dx":D
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/ScrollEvent;->getDeltaY()D

    move-result-wide v10

    move-wide v5, v10

    .line 295
    .local v5, "dy":D
    move-wide v10, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    move-wide v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1

    move-wide v10, v5

    :goto_0
    move-wide v3, v10

    .line 300
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/ScrollBar;

    move-object v7, v10

    .line 302
    .local v7, "sb":Ljavafx/scene/control/ScrollBar;
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v10

    sget-object v11, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v10, v11, :cond_2

    move-wide v10, v5

    :goto_1
    move-wide v8, v10

    .line 311
    .local v8, "delta":D
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/ScrollEvent;->isDirect()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 312
    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumbLength:D

    cmpl-double v10, v10, v12

    if-lez v10, :cond_0

    .line 313
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;

    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v11

    check-cast v11, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v11}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v11

    sget-object v12, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v11, v12, :cond_3

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/input/ScrollEvent;->getY()D

    move-result-wide v11

    :goto_2
    move-object v13, v1

    iget-wide v13, v13, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    div-double/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->thumbDragged(D)V

    .line 314
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/ScrollEvent;->consume()V

    .line 327
    .end local v3    # "dx":D
    .end local v5    # "dy":D
    .end local v7    # "sb":Ljavafx/scene/control/ScrollBar;
    .end local v8    # "delta":D
    :cond_0
    :goto_3
    return-void

    .line 295
    .restart local v3    # "dx":D
    .restart local v5    # "dy":D
    :cond_1
    move-wide v10, v3

    goto :goto_0

    .line 302
    .restart local v7    # "sb":Ljavafx/scene/control/ScrollBar;
    :cond_2
    move-wide v10, v3

    goto :goto_1

    .line 313
    .restart local v8    # "delta":D
    :cond_3
    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/input/ScrollEvent;->getX()D

    move-result-wide v11

    goto :goto_2

    .line 318
    :cond_4
    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_5

    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v10

    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-lez v10, :cond_5

    .line 319
    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->decrement()V

    .line 320
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/ScrollEvent;->consume()V

    goto :goto_3

    .line 321
    :cond_5
    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_0

    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v10

    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v12

    cmpg-double v10, v10, v12

    if-gez v10, :cond_0

    .line 322
    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->increment()V

    .line 323
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/ScrollEvent;->consume()V

    goto :goto_3
.end method


# virtual methods
.method protected computeMaxHeight(DDDDD)D
    .locals 17

    .prologue
    .line 445
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
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
    move-object v13, v1

    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v13

    check-cast v13, Ljavafx/scene/control/ScrollBar;

    move-object v12, v13

    .line 446
    .local v12, "s":Ljavafx/scene/control/ScrollBar;
    move-object v13, v12

    invoke-virtual {v13}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v13

    sget-object v14, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v13, v14, :cond_0

    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    move-wide v1, v13

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    :cond_0
    move-object v13, v12

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/control/ScrollBar;->prefHeight(D)D

    move-result-wide v13

    goto :goto_0
.end method

.method protected computeMaxWidth(DDDDD)D
    .locals 17

    .prologue
    .line 440
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
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
    move-object v13, v1

    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v13

    check-cast v13, Ljavafx/scene/control/ScrollBar;

    move-object v12, v13

    .line 441
    .local v12, "s":Ljavafx/scene/control/ScrollBar;
    move-object v13, v12

    invoke-virtual {v13}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v13

    sget-object v14, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v13, v14, :cond_0

    move-object v13, v12

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/control/ScrollBar;->prefWidth(D)D

    move-result-wide v13

    :goto_0
    move-wide v1, v13

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    :cond_0
    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_0
.end method

.method protected computeMinHeight(DDDDD)D
    .locals 17

    .prologue
    .line 411
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
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

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v12}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v12

    sget-object v13, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v12, v13, :cond_1

    .line 412
    sget-boolean v12, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->IS_TOUCH_SUPPORTED:Z

    if-nez v12, :cond_0

    .line 413
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->minHeight(D)D

    move-result-wide v12

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->incButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->minHeight(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->minTrackLength()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v4

    add-double/2addr v12, v14

    move-wide v14, v8

    add-double/2addr v12, v14

    move-wide v1, v12

    .line 418
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    :goto_0
    return-wide v1

    .line 415
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->minTrackLength()D

    move-result-wide v12

    move-wide v14, v4

    add-double/2addr v12, v14

    move-wide v14, v8

    add-double/2addr v12, v14

    move-wide v1, v12

    goto :goto_0

    .line 418
    :cond_1
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getBreadth()D

    move-result-wide v12

    move-wide v1, v12

    goto :goto_0
.end method

.method protected computeMinWidth(DDDDD)D
    .locals 17

    .prologue
    .line 399
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
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

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v12}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v12

    sget-object v13, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v12, v13, :cond_0

    .line 400
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getBreadth()D

    move-result-wide v12

    move-wide v1, v12

    .line 405
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    :goto_0
    return-wide v1

    .line 402
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    :cond_0
    sget-boolean v12, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->IS_TOUCH_SUPPORTED:Z

    if-nez v12, :cond_1

    .line 403
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->minWidth(D)D

    move-result-wide v12

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->incButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->minWidth(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->minTrackLength()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v10

    add-double/2addr v12, v14

    move-wide v14, v6

    add-double/2addr v12, v14

    move-wide v1, v12

    goto :goto_0

    .line 405
    :cond_1
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->minTrackLength()D

    move-result-wide v12

    move-wide v14, v10

    add-double/2addr v12, v14

    move-wide v14, v6

    add-double/2addr v12, v14

    move-wide v1, v12

    goto :goto_0
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 17

    .prologue
    .line 435
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
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

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/ScrollBar;

    move-object v11, v12

    .line 436
    .local v11, "s":Ljavafx/scene/control/ScrollBar;
    move-object v12, v11

    invoke-virtual {v12}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v12

    sget-object v13, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v12, v13, :cond_0

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    move-wide v14, v3

    add-double/2addr v12, v14

    move-wide v14, v7

    add-double/2addr v12, v14

    :goto_0
    move-wide v0, v12

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    return-wide v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    :cond_0
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getBreadth()D

    move-result-wide v12

    goto :goto_0
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 17

    .prologue
    .line 430
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
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

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/ScrollBar;

    move-object v11, v12

    .line 431
    .local v11, "s":Ljavafx/scene/control/ScrollBar;
    move-object v12, v11

    invoke-virtual {v12}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v12

    sget-object v13, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v12, v13, :cond_0

    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getBreadth()D

    move-result-wide v12

    :goto_0
    move-wide v0, v12

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    return-wide v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    :cond_0
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    move-wide v14, v9

    add-double/2addr v12, v14

    move-wide v14, v5

    add-double/2addr v12, v14

    goto :goto_0
.end method

.method getBreadth()D
    .locals 7

    .prologue
    .line 368
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    sget-boolean v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->IS_TOUCH_SUPPORTED:Z

    if-nez v2, :cond_1

    .line 369
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v2

    sget-object v3, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v2, v3, :cond_0

    .line 370
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->prefWidth(D)D

    move-result-wide v2

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->incButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->prefWidth(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snappedLeftInset()D

    move-result-wide v4

    add-double/2addr v2, v4

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snappedRightInset()D

    move-result-wide v4

    add-double/2addr v2, v4

    move-wide v1, v2

    .line 379
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    :goto_0
    return-wide v1

    .line 372
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->prefHeight(D)D

    move-result-wide v2

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->incButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->prefHeight(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snappedTopInset()D

    move-result-wide v4

    add-double/2addr v2, v4

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snappedBottomInset()D

    move-result-wide v4

    add-double/2addr v2, v4

    move-wide v1, v2

    goto :goto_0

    .line 376
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v2

    sget-object v3, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v2, v3, :cond_2

    .line 377
    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snappedLeftInset()D

    move-result-wide v4

    add-double/2addr v2, v4

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snappedRightInset()D

    move-result-wide v4

    add-double/2addr v2, v4

    move-wide v1, v2

    goto :goto_0

    .line 379
    :cond_2
    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snappedTopInset()D

    move-result-wide v4

    add-double/2addr v2, v4

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snappedBottomInset()D

    move-result-wide v4

    add-double/2addr v2, v4

    move-wide v1, v2

    goto :goto_0
.end method

.method public getDecButton()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 593
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    return-object v0
.end method

.method public getIncButton()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 589
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->incButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    return-object v0
.end method

.method public getThumb()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 581
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    return-object v0
.end method

.method public getTrack()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 585
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->track:Ljavafx/scene/layout/StackPane;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    return-object v0
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 342
    const-string v2, "ORIENTATION"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollBar;->requestLayout()V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    const-string v2, "MIN"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "MAX"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "VISIBLE_AMOUNT"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 345
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->positionThumb()V

    .line 346
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollBar;->requestLayout()V

    goto :goto_0

    .line 347
    :cond_3
    const-string v2, "VALUE"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->positionThumb()V

    goto :goto_0
.end method

.method protected layoutChildren(DDDD)V
    .locals 33

    .prologue
    .line 472
    move-object/from16 v4, p0

    .local v4, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-wide/from16 v5, p1

    .local v5, "x":D
    move-wide/from16 v7, p3

    .local v7, "y":D
    move-wide/from16 v9, p5

    .local v9, "w":D
    move-wide/from16 v11, p7

    .local v11, "h":D
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v20

    check-cast v20, Ljavafx/scene/control/ScrollBar;

    move-object/from16 v13, v20

    .line 479
    .local v13, "s":Ljavafx/scene/control/ScrollBar;
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v20

    move-object/from16 v22, v13

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v22

    cmpl-double v20, v20, v22

    if-lez v20, :cond_3

    .line 480
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ScrollBar;->getVisibleAmount()D

    move-result-wide v20

    move-object/from16 v22, v13

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v22

    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v24

    sub-double v22, v22, v24

    div-double v20, v20, v22

    move-wide/from16 v14, v20

    .line 486
    .local v14, "visiblePortion":D
    :goto_0
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v20

    sget-object v21, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 487
    sget-boolean v20, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->IS_TOUCH_SUPPORTED:Z

    if-nez v20, :cond_5

    .line 488
    move-object/from16 v20, v4

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object/from16 v21, v0

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->prefHeight(D)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 489
    .local v16, "decHeight":D
    move-object/from16 v20, v4

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->incButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object/from16 v21, v0

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->prefHeight(D)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 491
    .local v18, "incHeight":D
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object/from16 v20, v0

    move-wide/from16 v21, v9

    move-wide/from16 v23, v16

    invoke-virtual/range {v20 .. v24}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->resize(DD)V

    .line 492
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->incButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object/from16 v20, v0

    move-wide/from16 v21, v9

    move-wide/from16 v23, v18

    invoke-virtual/range {v20 .. v24}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->resize(DD)V

    .line 494
    move-object/from16 v20, v4

    move-object/from16 v21, v4

    move-wide/from16 v22, v11

    move-wide/from16 v24, v16

    move-wide/from16 v26, v18

    add-double v24, v24, v26

    sub-double v22, v22, v24

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapSize(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    .line 495
    move-object/from16 v20, v4

    move-object/from16 v21, v4

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->minThumbLength()D

    move-result-wide v22

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-wide/from16 v24, v0

    move-wide/from16 v26, v14

    mul-double v24, v24, v26

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-wide/from16 v26, v0

    invoke-static/range {v22 .. v27}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapSize(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumbLength:D

    .line 497
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackBackground:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-wide/from16 v22, v5

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v21

    move-object/from16 v23, v4

    move-wide/from16 v24, v7

    invoke-virtual/range {v23 .. v25}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v23

    move-wide/from16 v25, v9

    move-object/from16 v27, v4

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-wide/from16 v27, v0

    move-wide/from16 v29, v16

    add-double v27, v27, v29

    move-wide/from16 v29, v18

    add-double v27, v27, v29

    invoke-virtual/range {v20 .. v28}, Ljavafx/scene/layout/StackPane;->resizeRelocate(DDDD)V

    .line 498
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-wide/from16 v22, v5

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v21

    move-object/from16 v23, v4

    move-wide/from16 v24, v7

    invoke-virtual/range {v23 .. v25}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v23

    invoke-virtual/range {v20 .. v24}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->relocate(DD)V

    .line 499
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->incButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-wide/from16 v22, v5

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v21

    move-object/from16 v23, v4

    move-wide/from16 v24, v7

    move-wide/from16 v26, v11

    add-double v24, v24, v26

    move-wide/from16 v26, v18

    sub-double v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v23

    invoke-virtual/range {v20 .. v24}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->relocate(DD)V

    .line 500
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->track:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-wide/from16 v22, v5

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v21

    move-object/from16 v23, v4

    move-wide/from16 v24, v7

    move-wide/from16 v26, v16

    add-double v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v23

    move-wide/from16 v25, v9

    move-object/from16 v27, v4

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-wide/from16 v27, v0

    invoke-virtual/range {v20 .. v28}, Ljavafx/scene/layout/StackPane;->resizeRelocate(DDDD)V

    .line 501
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-wide/from16 v22, v5

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_4

    move-wide/from16 v22, v9

    :goto_1
    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapSize(D)D

    move-result-wide v21

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumbLength:D

    move-wide/from16 v23, v0

    invoke-virtual/range {v20 .. v24}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 502
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->positionThumb()V

    .line 503
    .line 543
    .end local v16    # "decHeight":D
    .end local v18    # "incHeight":D
    :goto_2
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v20

    sget-object v21, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    move-wide/from16 v20, v11

    move-object/from16 v22, v4

    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    move-wide/from16 v25, v7

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v27, v4

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snappedRightInset()D

    move-result-wide v27

    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snappedBottomInset()D

    move-result-wide v29

    move-wide/from16 v31, v5

    move-wide/from16 v0, v31

    double-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v31, v0

    invoke-virtual/range {v22 .. v32}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->computeMinHeight(DDDDD)D

    move-result-wide v22

    move-wide/from16 v24, v7

    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snappedBottomInset()D

    move-result-wide v26

    add-double v24, v24, v26

    sub-double v22, v22, v24

    cmpl-double v20, v20, v22

    if-gez v20, :cond_1

    :cond_0
    move-object/from16 v20, v13

    .line 544
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v20

    sget-object v21, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_b

    move-wide/from16 v20, v9

    move-object/from16 v22, v4

    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    move-wide/from16 v25, v7

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v27, v4

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snappedRightInset()D

    move-result-wide v27

    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snappedBottomInset()D

    move-result-wide v29

    move-wide/from16 v31, v5

    move-wide/from16 v0, v31

    double-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v31, v0

    invoke-virtual/range {v22 .. v32}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->computeMinWidth(DDDDD)D

    move-result-wide v22

    move-wide/from16 v24, v5

    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snappedRightInset()D

    move-result-wide v26

    add-double v24, v24, v26

    sub-double v22, v22, v24

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_b

    .line 545
    :cond_1
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackBackground:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 546
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->track:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 547
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 548
    sget-boolean v20, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->IS_TOUCH_SUPPORTED:Z

    if-nez v20, :cond_2

    .line 549
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->incButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->setVisible(Z)V

    .line 550
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->setVisible(Z)V

    .line 577
    :cond_2
    :goto_3
    return-void

    .line 483
    .end local v14    # "visiblePortion":D
    :cond_3
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v14, v20

    .restart local v14    # "visiblePortion":D
    goto/16 :goto_0

    .line 501
    .restart local v16    # "decHeight":D
    .restart local v18    # "incHeight":D
    :cond_4
    move-wide/from16 v22, v9

    move-wide/from16 v24, v5

    add-double v22, v22, v24

    goto/16 :goto_1

    .line 505
    .end local v16    # "decHeight":D
    .end local v18    # "incHeight":D
    :cond_5
    move-object/from16 v20, v4

    move-object/from16 v21, v4

    move-wide/from16 v22, v11

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapSize(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    .line 506
    move-object/from16 v20, v4

    move-object/from16 v21, v4

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->minThumbLength()D

    move-result-wide v22

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-wide/from16 v24, v0

    move-wide/from16 v26, v14

    mul-double v24, v24, v26

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-wide/from16 v26, v0

    invoke-static/range {v22 .. v27}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapSize(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumbLength:D

    .line 508
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->track:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-wide/from16 v22, v5

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v21

    move-object/from16 v23, v4

    move-wide/from16 v24, v7

    invoke-virtual/range {v23 .. v25}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v23

    move-wide/from16 v25, v9

    move-object/from16 v27, v4

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-wide/from16 v27, v0

    invoke-virtual/range {v20 .. v28}, Ljavafx/scene/layout/StackPane;->resizeRelocate(DDDD)V

    .line 509
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-wide/from16 v22, v5

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_6

    move-wide/from16 v22, v9

    :goto_4
    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapSize(D)D

    move-result-wide v21

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumbLength:D

    move-wide/from16 v23, v0

    invoke-virtual/range {v20 .. v24}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 510
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->positionThumb()V

    goto/16 :goto_2

    .line 509
    :cond_6
    move-wide/from16 v22, v9

    move-wide/from16 v24, v5

    add-double v22, v22, v24

    goto :goto_4

    .line 513
    :cond_7
    sget-boolean v20, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->IS_TOUCH_SUPPORTED:Z

    if-nez v20, :cond_9

    .line 514
    move-object/from16 v20, v4

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object/from16 v21, v0

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->prefWidth(D)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 515
    .local v16, "decWidth":D
    move-object/from16 v20, v4

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->incButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object/from16 v21, v0

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->prefWidth(D)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 517
    .local v18, "incWidth":D
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object/from16 v20, v0

    move-wide/from16 v21, v16

    move-wide/from16 v23, v11

    invoke-virtual/range {v20 .. v24}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->resize(DD)V

    .line 518
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->incButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object/from16 v20, v0

    move-wide/from16 v21, v18

    move-wide/from16 v23, v11

    invoke-virtual/range {v20 .. v24}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->resize(DD)V

    .line 520
    move-object/from16 v20, v4

    move-object/from16 v21, v4

    move-wide/from16 v22, v9

    move-wide/from16 v24, v16

    move-wide/from16 v26, v18

    add-double v24, v24, v26

    sub-double v22, v22, v24

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapSize(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    .line 521
    move-object/from16 v20, v4

    move-object/from16 v21, v4

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->minThumbLength()D

    move-result-wide v22

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-wide/from16 v24, v0

    move-wide/from16 v26, v14

    mul-double v24, v24, v26

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-wide/from16 v26, v0

    invoke-static/range {v22 .. v27}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapSize(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumbLength:D

    .line 523
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackBackground:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-wide/from16 v22, v5

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v21

    move-object/from16 v23, v4

    move-wide/from16 v24, v7

    invoke-virtual/range {v23 .. v25}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v23

    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-wide/from16 v25, v0

    move-wide/from16 v27, v16

    add-double v25, v25, v27

    move-wide/from16 v27, v18

    add-double v25, v25, v27

    move-wide/from16 v27, v11

    invoke-virtual/range {v20 .. v28}, Ljavafx/scene/layout/StackPane;->resizeRelocate(DDDD)V

    .line 524
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-wide/from16 v22, v5

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v21

    move-object/from16 v23, v4

    move-wide/from16 v24, v7

    invoke-virtual/range {v23 .. v25}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v23

    invoke-virtual/range {v20 .. v24}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->relocate(DD)V

    .line 525
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->incButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-wide/from16 v22, v5

    move-wide/from16 v24, v9

    add-double v22, v22, v24

    move-wide/from16 v24, v18

    sub-double v22, v22, v24

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v21

    move-object/from16 v23, v4

    move-wide/from16 v24, v7

    invoke-virtual/range {v23 .. v25}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v23

    invoke-virtual/range {v20 .. v24}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->relocate(DD)V

    .line 526
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->track:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-wide/from16 v22, v5

    move-wide/from16 v24, v16

    add-double v22, v22, v24

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v21

    move-object/from16 v23, v4

    move-wide/from16 v24, v7

    invoke-virtual/range {v23 .. v25}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v23

    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-wide/from16 v25, v0

    move-wide/from16 v27, v11

    invoke-virtual/range {v20 .. v28}, Ljavafx/scene/layout/StackPane;->resizeRelocate(DDDD)V

    .line 527
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumbLength:D

    move-wide/from16 v21, v0

    move-object/from16 v23, v4

    move-wide/from16 v24, v7

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-ltz v24, :cond_8

    move-wide/from16 v24, v11

    :goto_5
    invoke-virtual/range {v23 .. v25}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapSize(D)D

    move-result-wide v23

    invoke-virtual/range {v20 .. v24}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 528
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->positionThumb()V

    .line 529
    .line 539
    .end local v16    # "decWidth":D
    .end local v18    # "incWidth":D
    :goto_6
    move-object/from16 v20, v13

    move-object/from16 v21, v4

    move-object/from16 v22, v13

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/ScrollBar;->getWidth()D

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapSize(D)D

    move-result-wide v21

    move-object/from16 v23, v4

    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/ScrollBar;->getHeight()D

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapSize(D)D

    move-result-wide v23

    invoke-virtual/range {v20 .. v24}, Ljavafx/scene/control/ScrollBar;->resize(DD)V

    goto/16 :goto_2

    .line 527
    .restart local v16    # "decWidth":D
    .restart local v18    # "incWidth":D
    :cond_8
    move-wide/from16 v24, v11

    move-wide/from16 v26, v7

    add-double v24, v24, v26

    goto :goto_5

    .line 531
    .end local v16    # "decWidth":D
    .end local v18    # "incWidth":D
    :cond_9
    move-object/from16 v20, v4

    move-object/from16 v21, v4

    move-wide/from16 v22, v9

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapSize(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    .line 532
    move-object/from16 v20, v4

    move-object/from16 v21, v4

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->minThumbLength()D

    move-result-wide v22

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-wide/from16 v24, v0

    move-wide/from16 v26, v14

    mul-double v24, v24, v26

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-wide/from16 v26, v0

    invoke-static/range {v22 .. v27}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapSize(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumbLength:D

    .line 534
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->track:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-wide/from16 v22, v5

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v21

    move-object/from16 v23, v4

    move-wide/from16 v24, v7

    invoke-virtual/range {v23 .. v25}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v23

    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-wide/from16 v25, v0

    move-wide/from16 v27, v11

    invoke-virtual/range {v20 .. v28}, Ljavafx/scene/layout/StackPane;->resizeRelocate(DDDD)V

    .line 535
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumbLength:D

    move-wide/from16 v21, v0

    move-object/from16 v23, v4

    move-wide/from16 v24, v7

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-ltz v24, :cond_a

    move-wide/from16 v24, v11

    :goto_7
    invoke-virtual/range {v23 .. v25}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapSize(D)D

    move-result-wide v23

    invoke-virtual/range {v20 .. v24}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 536
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->positionThumb()V

    goto/16 :goto_6

    .line 535
    :cond_a
    move-wide/from16 v24, v11

    move-wide/from16 v26, v7

    add-double v24, v24, v26

    goto :goto_7

    .line 554
    :cond_b
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackBackground:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 555
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->track:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 556
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 558
    sget-boolean v20, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->IS_TOUCH_SUPPORTED:Z

    if-nez v20, :cond_2

    .line 563
    move-wide/from16 v20, v11

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object/from16 v22, v0

    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v22 .. v24}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->computeMinWidth(D)D

    move-result-wide v22

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_c

    .line 564
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->setVisible(Z)V

    .line 569
    :goto_8
    move-wide/from16 v20, v11

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->incButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object/from16 v22, v0

    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v22 .. v24}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->computeMinWidth(D)D

    move-result-wide v22

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_d

    .line 570
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->incButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->setVisible(Z)V

    goto/16 :goto_3

    .line 567
    :cond_c
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->setVisible(Z)V

    goto :goto_8

    .line 573
    :cond_d
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->incButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->setVisible(Z)V

    goto/16 :goto_3
.end method

.method minThumbLength()D
    .locals 6

    .prologue
    .line 385
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getBreadth()D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    return-wide v1
.end method

.method minTrackLength()D
    .locals 6

    .prologue
    .line 389
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getBreadth()D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    return-wide v1
.end method

.method positionThumb()V
    .locals 13

    .prologue
    .line 453
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/ScrollBar;

    move-object v2, v5

    .line 454
    .local v2, "s":Ljavafx/scene/control/ScrollBar;
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v5

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v7

    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v9

    invoke-static/range {v5 .. v10}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v5

    move-wide v3, v5

    .line 455
    .local v3, "clampedValue":D
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v8

    sub-double/2addr v6, v8

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackLength:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumbLength:D

    sub-double/2addr v6, v8

    move-wide v8, v3

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v10

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v10

    sub-double/2addr v8, v10

    div-double/2addr v6, v8

    :goto_0
    iput-wide v6, v5, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackPos:D

    .line 457
    sget-boolean v5, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->IS_TOUCH_SUPPORTED:Z

    if-nez v5, :cond_0

    .line 458
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v5

    sget-object v6, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v5, v6, :cond_2

    .line 459
    move-object v5, v1

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackPos:D

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->prefHeight(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackPos:D

    .line 465
    :cond_0
    :goto_1
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v7

    sget-object v8, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v7, v8, :cond_3

    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snappedLeftInset()D

    move-result-wide v7

    :goto_2
    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/StackPane;->setTranslateX(D)V

    .line 466
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->thumb:Ljavafx/scene/layout/StackPane;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v7

    sget-object v8, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v7, v8, :cond_4

    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackPos:D

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snappedTopInset()D

    move-result-wide v9

    add-double/2addr v7, v9

    :goto_3
    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snapPosition(D)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/StackPane;->setTranslateY(D)V

    .line 467
    return-void

    .line 455
    :cond_1
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 461
    :cond_2
    move-object v5, v1

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackPos:D

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->decButton:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->prefWidth(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackPos:D

    goto :goto_1

    .line 465
    :cond_3
    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->trackPos:D

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snappedLeftInset()D

    move-result-wide v9

    add-double/2addr v7, v9

    goto :goto_2

    .line 466
    :cond_4
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->snappedTopInset()D

    move-result-wide v7

    goto :goto_3
.end method

.class public Lcom/sun/javafx/scene/control/skin/PaginationSkin;
.super Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.source "PaginationSkin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;,
        Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;,
        Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase",
        "<",
        "Ljavafx/scene/control/Pagination;",
        "Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ARROW_VISIBLE:Ljava/lang/Boolean;

.field private static final DEFAULT_PAGE_INFORMATION_ALIGNMENT:Ljavafx/geometry/Side;

.field private static final DEFAULT_PAGE_INFORMATION_VISIBLE:Ljava/lang/Boolean;

.field private static final DEFAULT_TOOLTIP_VISIBLE:Ljava/lang/Boolean;

.field private static final DURATION:Ljavafx/util/Duration;

.field private static final SWIPE_THRESHOLD:D = 0.3

.field private static final TOUCH_THRESHOLD:D = 15.0

.field private static final interpolator:Ljavafx/animation/Interpolator;


# instance fields
.field private animate:Z

.field private final arrowButtonGap:Ljavafx/beans/property/DoubleProperty;

.field private arrowsVisible:Ljavafx/beans/property/BooleanProperty;

.field private clampAnimationEndEventHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private clipRect:Ljavafx/scene/shape/Rectangle;

.field private currentAnimatedIndex:I

.field private currentIndex:I

.field private currentStackPane:Ljavafx/scene/layout/StackPane;

.field private direction:I

.field private fromIndex:I

.field private hasPendingAnimation:Z

.field private lastTouchPos:D

.field private lastTouchTime:J

.field private maxPageIndicatorCount:I

.field private navigation:Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;

.field private nextPageReached:Z

.field private nextStackPane:Ljavafx/scene/layout/StackPane;

.field private pageCount:I

.field private pageInformationAlignment:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Side;",
            ">;"
        }
    .end annotation
.end field

.field private pageInformationVisible:Ljavafx/beans/property/BooleanProperty;

.field private pagination:Ljavafx/scene/control/Pagination;

.field private previousIndex:I

.field private setInitialDirection:Z

.field private startTouchPos:D

.field private startTouchTime:J

.field private swipeAnimationEndEventHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private timeline:Ljavafx/animation/Timeline;

.field private toIndex:I

.field private tooltipVisible:Ljavafx/beans/property/BooleanProperty;

.field private touchEventId:I

.field private touchThresholdBroken:Z

.field private touchVelocity:D


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 75
    new-instance v0, Ljavafx/util/Duration;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-wide v2, 0x405f400000000000L    # 125.0

    invoke-direct {v1, v2, v3}, Ljavafx/util/Duration;-><init>(D)V

    sput-object v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DURATION:Ljavafx/util/Duration;

    .line 373
    const-wide v0, 0x3fdee7d566cf41f2L    # 0.4829

    const-wide v2, 0x3fe244d013a92a30L    # 0.5709

    const-wide v4, 0x3fe5c504816f0069L    # 0.6803

    const-wide v6, 0x3fefc504816f0069L    # 0.9928

    invoke-static/range {v0 .. v7}, Ljavafx/animation/Interpolator;->SPLINE(DDDD)Ljavafx/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->interpolator:Ljavafx/animation/Interpolator;

    .line 1288
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DEFAULT_ARROW_VISIBLE:Ljava/lang/Boolean;

    .line 1289
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DEFAULT_PAGE_INFORMATION_VISIBLE:Ljava/lang/Boolean;

    .line 1290
    sget-object v0, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    sput-object v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DEFAULT_PAGE_INFORMATION_ALIGNMENT:Ljavafx/geometry/Side;

    .line 1291
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DEFAULT_TOOLTIP_VISIBLE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/Pagination;)V
    .locals 9

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, p1

    .local v1, "pagination":Ljavafx/scene/control/Pagination;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;-><init>(Ljavafx/scene/control/Pagination;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 93
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->animate:Z

    .line 153
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->touchEventId:I

    .line 154
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextPageReached:Z

    .line 155
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->setInitialDirection:Z

    .line 375
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->hasPendingAnimation:Z

    .line 450
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->swipeAnimationEndEventHandler:Ljavafx/event/EventHandler;

    .line 503
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$2;-><init>(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->clampAnimationEndEventHandler:Ljavafx/event/EventHandler;

    .line 513
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$3;-><init>(Lcom/sun/javafx/scene/control/skin/PaginationSkin;D)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->arrowButtonGap:Ljavafx/beans/property/DoubleProperty;

    .line 99
    move-object v2, v0

    new-instance v3, Ljavafx/scene/shape/Rectangle;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljavafx/scene/shape/Rectangle;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->clipRect:Ljavafx/scene/shape/Rectangle;

    .line 100
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Pagination;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->clipRect:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Pagination;->setClip(Ljavafx/scene/Node;)V

    .line 102
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pagination:Ljavafx/scene/control/Pagination;

    .line 104
    move-object v2, v0

    new-instance v3, Ljavafx/scene/layout/StackPane;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    .line 105
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "page"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 107
    move-object v2, v0

    new-instance v3, Ljavafx/scene/layout/StackPane;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    .line 108
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "page"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 109
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 111
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->resetIndexes(Z)V

    .line 113
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;-><init>(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->navigation:Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;

    .line 115
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljavafx/scene/Node;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->navigation:Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v2

    .line 117
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/Pagination;->maxPageIndicatorCountProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 121
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Pagination;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v3

    const-string v4, "WIDTH"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 122
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Pagination;->heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v3

    const-string v4, "HEIGHT"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 123
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Pagination;->pageCountProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v3

    const-string v4, "PAGE_COUNT"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 124
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Pagination;->pageFactoryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "PAGE_FACTORY"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 126
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->initializeSwipeAndTouchHandlers()V

    .line 127
    return-void
.end method

.method static synthetic access$1400(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->arrowButtonGap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return-object v0
.end method

.method static synthetic access$1500(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/scene/control/Pagination;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pagination:Ljavafx/scene/control/Pagination;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return-object v0
.end method

.method static synthetic access$1600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->fromIndex:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method static synthetic access$1602(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->fromIndex:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method static synthetic access$1700(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->toIndex:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method static synthetic access$1702(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->toIndex:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method static synthetic access$1800(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentIndex:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method static synthetic access$1802(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentIndex:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method static synthetic access$1900(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageCount:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method static synthetic access$1902(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageCount:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)V
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->swapPanes()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->maxPageIndicatorCount:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method static synthetic access$2002(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->maxPageIndicatorCount:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method static synthetic access$2100(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getPageCount()I

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method static synthetic access$2200(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getMaxPageIndicatorCount()I

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method static synthetic access$2300(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->previousIndex:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method static synthetic access$2302(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->previousIndex:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method static synthetic access$2400(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Z
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->animate:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method static synthetic access$2502(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)I
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentAnimatedIndex:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method static synthetic access$2600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;Ljavafx/scene/layout/StackPane;I)Z
    .locals 6

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/layout/StackPane;
    move v2, p2

    .local v2, "x2":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->createPage(Ljavafx/scene/layout/StackPane;I)Z

    move-result v3

    move v0, v3

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method static synthetic access$2700(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getCurrentPageIndex()I

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method static synthetic access$2900()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DEFAULT_ARROW_VISIBLE:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->arrowsVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return-object v0
.end method

.method static synthetic access$302(Lcom/sun/javafx/scene/control/skin/PaginationSkin;Ljavafx/animation/Timeline;)Ljavafx/animation/Timeline;
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, p1

    .local v1, "x1":Ljavafx/animation/Timeline;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->timeline:Ljavafx/animation/Timeline;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return-object v0
.end method

.method static synthetic access$3100()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DEFAULT_PAGE_INFORMATION_VISIBLE:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageInformationVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return-object v0
.end method

.method static synthetic access$3300()Ljavafx/geometry/Side;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DEFAULT_PAGE_INFORMATION_ALIGNMENT:Ljavafx/geometry/Side;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageInformationAlignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return-object v0
.end method

.method static synthetic access$3500()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DEFAULT_TOOLTIP_VISIBLE:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->tooltipVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return-object v0
.end method

.method static synthetic access$3700(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->arrowButtonGapProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return-object v0
.end method

.method static synthetic access$400(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Z
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->hasPendingAnimation:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method static synthetic access$402(Lcom/sun/javafx/scene/control/skin/PaginationSkin;Z)Z
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->hasPendingAnimation:Z

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method static synthetic access$500(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)V
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->animateSwitchPage()V

    return-void
.end method

.method static synthetic access$600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/scene/layout/StackPane;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return-object v0
.end method

.method static synthetic access$700(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/scene/layout/StackPane;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/PaginationSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->lambda$new$413(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/PaginationSkin;Ljavafx/scene/input/TouchEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->lambda$initializeSwipeAndTouchHandlers$414(Ljavafx/scene/input/TouchEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/PaginationSkin;Ljavafx/scene/control/Pagination;Ljavafx/scene/input/TouchEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->lambda$initializeSwipeAndTouchHandlers$415(Ljavafx/scene/control/Pagination;Ljavafx/scene/input/TouchEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/PaginationSkin;Ljavafx/scene/control/Pagination;Ljavafx/scene/input/TouchEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->lambda$initializeSwipeAndTouchHandlers$416(Ljavafx/scene/control/Pagination;Ljavafx/scene/input/TouchEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->lambda$animateSwitchPage$417()V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/scene/control/skin/PaginationSkin;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->lambda$handleControlPropertyChanged$418(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private animateClamping(Z)V
    .locals 17

    .prologue
    .line 478
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move/from16 v1, p1

    .local v1, "rightToLeft":Z
    move v4, v1

    if-eqz v4, :cond_0

    .line 479
    move-object v4, v0

    new-instance v5, Ljavafx/animation/Timeline;

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    invoke-direct {v6}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->timeline:Ljavafx/animation/Timeline;

    .line 480
    new-instance v4, Ljavafx/animation/KeyFrame;

    move-object/from16 v16, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v16

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljavafx/animation/KeyValue;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x0

    new-instance v10, Ljavafx/animation/KeyValue;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    .line 481
    invoke-virtual {v12}, Ljavafx/scene/layout/StackPane;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v13}, Ljavafx/scene/layout/StackPane;->getTranslateX()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    sget-object v14, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->interpolator:Ljavafx/animation/Interpolator;

    invoke-direct {v11, v12, v13, v14}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v10, v8, v9

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x1

    new-instance v10, Ljavafx/animation/KeyValue;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    .line 482
    invoke-virtual {v12}, Ljavafx/scene/layout/StackPane;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v13}, Ljavafx/scene/layout/StackPane;->getTranslateX()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    sget-object v14, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->interpolator:Ljavafx/animation/Interpolator;

    invoke-direct {v11, v12, v13, v14}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    move-object v2, v4

    .line 483
    .local v2, "k1":Ljavafx/animation/KeyFrame;
    new-instance v4, Ljavafx/animation/KeyFrame;

    move-object/from16 v16, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v16

    sget-object v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DURATION:Ljavafx/util/Duration;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->clampAnimationEndEventHandler:Ljavafx/event/EventHandler;

    const/4 v8, 0x2

    new-array v8, v8, [Ljavafx/animation/KeyValue;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const/4 v10, 0x0

    new-instance v11, Ljavafx/animation/KeyValue;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    .line 485
    invoke-virtual {v13}, Ljavafx/scene/layout/StackPane;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget-object v15, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->interpolator:Ljavafx/animation/Interpolator;

    invoke-direct {v12, v13, v14, v15}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v11, v9, v10

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const/4 v10, 0x1

    new-instance v11, Ljavafx/animation/KeyValue;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    .line 486
    invoke-virtual {v13}, Ljavafx/scene/layout/StackPane;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v13

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v14}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    sget-object v15, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->interpolator:Ljavafx/animation/Interpolator;

    invoke-direct {v12, v13, v14, v15}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v11, v9, v10

    invoke-direct {v5, v6, v7, v8}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    move-object v3, v4

    .line 487
    .local v3, "k2":Ljavafx/animation/KeyFrame;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljavafx/animation/KeyFrame;

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    const/4 v7, 0x1

    move-object v8, v3

    aput-object v8, v6, v7

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v4

    .line 488
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->play()V

    .line 489
    .line 501
    :goto_0
    return-void

    .line 490
    .end local v2    # "k1":Ljavafx/animation/KeyFrame;
    .end local v3    # "k2":Ljavafx/animation/KeyFrame;
    :cond_0
    move-object v4, v0

    new-instance v5, Ljavafx/animation/Timeline;

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    invoke-direct {v6}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->timeline:Ljavafx/animation/Timeline;

    .line 491
    new-instance v4, Ljavafx/animation/KeyFrame;

    move-object/from16 v16, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v16

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljavafx/animation/KeyValue;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x0

    new-instance v10, Ljavafx/animation/KeyValue;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    .line 492
    invoke-virtual {v12}, Ljavafx/scene/layout/StackPane;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v13}, Ljavafx/scene/layout/StackPane;->getTranslateX()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    sget-object v14, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->interpolator:Ljavafx/animation/Interpolator;

    invoke-direct {v11, v12, v13, v14}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v10, v8, v9

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x1

    new-instance v10, Ljavafx/animation/KeyValue;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    .line 493
    invoke-virtual {v12}, Ljavafx/scene/layout/StackPane;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v13}, Ljavafx/scene/layout/StackPane;->getTranslateX()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    sget-object v14, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->interpolator:Ljavafx/animation/Interpolator;

    invoke-direct {v11, v12, v13, v14}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    move-object v2, v4

    .line 494
    .restart local v2    # "k1":Ljavafx/animation/KeyFrame;
    new-instance v4, Ljavafx/animation/KeyFrame;

    move-object/from16 v16, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v16

    sget-object v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DURATION:Ljavafx/util/Duration;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->clampAnimationEndEventHandler:Ljavafx/event/EventHandler;

    const/4 v8, 0x2

    new-array v8, v8, [Ljavafx/animation/KeyValue;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const/4 v10, 0x0

    new-instance v11, Ljavafx/animation/KeyValue;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    .line 496
    invoke-virtual {v13}, Ljavafx/scene/layout/StackPane;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget-object v15, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->interpolator:Ljavafx/animation/Interpolator;

    invoke-direct {v12, v13, v14, v15}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v11, v9, v10

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const/4 v10, 0x1

    new-instance v11, Ljavafx/animation/KeyValue;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    .line 497
    invoke-virtual {v13}, Ljavafx/scene/layout/StackPane;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v13

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v14}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v14

    neg-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    sget-object v15, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->interpolator:Ljavafx/animation/Interpolator;

    invoke-direct {v12, v13, v14, v15}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v11, v9, v10

    invoke-direct {v5, v6, v7, v8}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    move-object v3, v4

    .line 498
    .restart local v3    # "k2":Ljavafx/animation/KeyFrame;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljavafx/animation/KeyFrame;

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    const/4 v7, 0x1

    move-object v8, v3

    aput-object v8, v6, v7

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v4

    .line 499
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->play()V

    goto/16 :goto_0
.end method

.method private animateSwitchPage()V
    .locals 4

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->timeline:Ljavafx/animation/Timeline;

    if-eqz v1, :cond_0

    .line 379
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->timeline:Ljavafx/animation/Timeline;

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    invoke-virtual {v1, v2, v3}, Ljavafx/animation/Timeline;->setRate(D)V

    .line 380
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->hasPendingAnimation:Z

    .line 381
    .line 448
    :goto_0
    return-void

    .line 386
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v1}, Ljavafx/scene/layout/StackPane;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 387
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentAnimatedIndex:I

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->createPage(Ljavafx/scene/layout/StackPane;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    goto :goto_0

    .line 393
    :cond_1
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextPageReached:Z

    if-eqz v1, :cond_2

    .line 396
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->swapPanes()V

    .line 397
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextPageReached:Z

    .line 398
    goto :goto_0

    .line 401
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/layout/StackPane;->setCache(Z)V

    .line 402
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/layout/StackPane;->setCache(Z)V

    .line 405
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 448
    goto :goto_0
.end method

.method private arrowButtonGapProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->arrowButtonGap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return-object v0
.end method

.method private createPage(Ljavafx/scene/layout/StackPane;I)Z
    .locals 11

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, p1

    .local v1, "pane":Ljavafx/scene/layout/StackPane;
    move v2, p2

    .local v2, "index":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pagination:Ljavafx/scene/control/Pagination;

    invoke-virtual {v5}, Ljavafx/scene/control/Pagination;->getPageFactory()Ljavafx/util/Callback;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 328
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pagination:Ljavafx/scene/control/Pagination;

    invoke-virtual {v5}, Ljavafx/scene/control/Pagination;->getPageFactory()Ljavafx/util/Callback;

    move-result-object v5

    move v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node;

    move-object v3, v5

    .line 330
    .local v3, "content":Ljavafx/scene/Node;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 331
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljavafx/scene/Node;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 332
    const/4 v5, 0x1

    move v0, v5

    .line 355
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    .end local v3    # "content":Ljavafx/scene/Node;
    :goto_0
    return v0

    .line 336
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    .restart local v3    # "content":Ljavafx/scene/Node;
    :cond_0
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->animate:Z

    move v4, v5

    .line 337
    .local v4, "isAnimate":Z
    move v5, v4

    if-eqz v5, :cond_1

    .line 338
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->animate:Z

    .line 341
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pagination:Ljavafx/scene/control/Pagination;

    invoke-virtual {v5}, Ljavafx/scene/control/Pagination;->getPageFactory()Ljavafx/util/Callback;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->previousIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 342
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pagination:Ljavafx/scene/control/Pagination;

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->previousIndex:I

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Pagination;->setCurrentPageIndex(I)V

    .line 349
    :goto_1
    move v5, v4

    if-eqz v5, :cond_2

    .line 350
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->animate:Z

    .line 352
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 346
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pagination:Ljavafx/scene/control/Pagination;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Pagination;->setCurrentPageIndex(I)V

    goto :goto_1

    .line 355
    .end local v3    # "content":Ljavafx/scene/Node;
    .end local v4    # "isAnimate":Z
    :cond_4
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public static getClassCssMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 1392
    # getter for: Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;->access$3800()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentPageIndex()I
    .locals 2

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Pagination;

    invoke-virtual {v1}, Ljavafx/scene/control/Pagination;->getCurrentPageIndex()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method private getMaxPageIndicatorCount()I
    .locals 2

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Pagination;

    invoke-virtual {v1}, Ljavafx/scene/control/Pagination;->getMaxPageIndicatorCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0
.end method

.method private getPageCount()I
    .locals 3

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Pagination;

    invoke-virtual {v1}, Ljavafx/scene/control/Pagination;->getPageCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 360
    const/4 v1, 0x1

    move v0, v1

    .line 362
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Pagination;

    invoke-virtual {v1}, Ljavafx/scene/control/Pagination;->getPageCount()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method private initializeSwipeAndTouchHandlers()V
    .locals 6

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Pagination;

    move-object v1, v2

    .line 161
    .local v1, "control":Ljavafx/scene/control/Pagination;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Pagination;

    sget-object v3, Ljavafx/scene/input/TouchEvent;->TOUCH_PRESSED:Ljavafx/event/EventType;

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/Pagination;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 174
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Pagination;

    sget-object v3, Ljavafx/scene/input/TouchEvent;->TOUCH_MOVED:Ljavafx/event/EventType;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/PaginationSkin;Ljavafx/scene/control/Pagination;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/Pagination;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 252
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Pagination;

    sget-object v3, Ljavafx/scene/input/TouchEvent;->TOUCH_RELEASED:Ljavafx/event/EventType;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/PaginationSkin;Ljavafx/scene/control/Pagination;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/Pagination;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 289
    return-void
.end method

.method private synthetic lambda$animateSwitchPage$417()V
    .locals 18

    .prologue
    .line 407
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getTranslateX()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v2, v5

    .line 408
    .local v2, "useTranslateX":Z
    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentAnimatedIndex:I

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->previousIndex:I

    if-le v5, v6, :cond_4

    .line 409
    move v5, v2

    if-nez v5, :cond_0

    .line 410
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v6}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/StackPane;->setTranslateX(D)V

    .line 412
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 413
    move-object v5, v1

    new-instance v6, Ljavafx/animation/Timeline;

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    invoke-direct {v7}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->timeline:Ljavafx/animation/Timeline;

    .line 414
    new-instance v5, Ljavafx/animation/KeyFrame;

    move-object/from16 v17, v5

    move-object/from16 v5, v17

    move-object/from16 v6, v17

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljavafx/animation/KeyValue;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/4 v10, 0x0

    new-instance v11, Ljavafx/animation/KeyValue;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    .line 415
    invoke-virtual {v13}, Ljavafx/scene/layout/StackPane;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v13

    move v14, v2

    if-eqz v14, :cond_2

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    .line 416
    invoke-virtual {v14}, Ljavafx/scene/layout/StackPane;->getTranslateX()D

    move-result-wide v14

    :goto_1
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    sget-object v15, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->interpolator:Ljavafx/animation/Interpolator;

    invoke-direct {v12, v13, v14, v15}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/4 v10, 0x1

    new-instance v11, Ljavafx/animation/KeyValue;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    .line 418
    invoke-virtual {v13}, Ljavafx/scene/layout/StackPane;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v13

    move v14, v2

    if-eqz v14, :cond_3

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    .line 420
    invoke-virtual {v14}, Ljavafx/scene/layout/StackPane;->getTranslateX()D

    move-result-wide v14

    .line 419
    :goto_2
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    sget-object v15, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->interpolator:Ljavafx/animation/Interpolator;

    invoke-direct {v12, v13, v14, v15}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v11, v9, v10

    invoke-direct {v6, v7, v8}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    move-object v3, v5

    .line 421
    .local v3, "k1":Ljavafx/animation/KeyFrame;
    new-instance v5, Ljavafx/animation/KeyFrame;

    move-object/from16 v17, v5

    move-object/from16 v5, v17

    move-object/from16 v6, v17

    sget-object v7, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DURATION:Ljavafx/util/Duration;

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->swipeAnimationEndEventHandler:Ljavafx/event/EventHandler;

    const/4 v9, 0x2

    new-array v9, v9, [Ljavafx/animation/KeyValue;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    const/4 v11, 0x0

    new-instance v12, Ljavafx/animation/KeyValue;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    .line 423
    invoke-virtual {v14}, Ljavafx/scene/layout/StackPane;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v14

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v15}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v15

    neg-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    sget-object v16, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->interpolator:Ljavafx/animation/Interpolator;

    invoke-direct/range {v13 .. v16}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v12, v10, v11

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    const/4 v11, 0x1

    new-instance v12, Ljavafx/animation/KeyValue;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    .line 424
    invoke-virtual {v14}, Ljavafx/scene/layout/StackPane;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v16, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->interpolator:Ljavafx/animation/Interpolator;

    invoke-direct/range {v13 .. v16}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v12, v10, v11

    invoke-direct {v6, v7, v8, v9}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    move-object v4, v5

    .line 425
    .local v4, "k2":Ljavafx/animation/KeyFrame;
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v5}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljavafx/animation/KeyFrame;

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    const/4 v8, 0x0

    move-object v9, v3

    aput-object v9, v7, v8

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    const/4 v8, 0x1

    move-object v9, v4

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 426
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v5}, Ljavafx/animation/Timeline;->play()V

    .line 427
    .line 447
    :goto_3
    return-void

    .line 407
    .end local v2    # "useTranslateX":Z
    .end local v3    # "k1":Ljavafx/animation/KeyFrame;
    .end local v4    # "k2":Ljavafx/animation/KeyFrame;
    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 416
    .restart local v2    # "useTranslateX":Z
    :cond_2
    const-wide/16 v14, 0x0

    goto/16 :goto_1

    .line 420
    :cond_3
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v14}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v14

    goto/16 :goto_2

    .line 428
    :cond_4
    move v5, v2

    if-nez v5, :cond_5

    .line 429
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v6}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/StackPane;->setTranslateX(D)V

    .line 431
    :cond_5
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 432
    move-object v5, v1

    new-instance v6, Ljavafx/animation/Timeline;

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    invoke-direct {v7}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->timeline:Ljavafx/animation/Timeline;

    .line 433
    new-instance v5, Ljavafx/animation/KeyFrame;

    move-object/from16 v17, v5

    move-object/from16 v5, v17

    move-object/from16 v6, v17

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljavafx/animation/KeyValue;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/4 v10, 0x0

    new-instance v11, Ljavafx/animation/KeyValue;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    .line 434
    invoke-virtual {v13}, Ljavafx/scene/layout/StackPane;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v13

    move v14, v2

    if-eqz v14, :cond_6

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    .line 435
    invoke-virtual {v14}, Ljavafx/scene/layout/StackPane;->getTranslateX()D

    move-result-wide v14

    :goto_4
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    sget-object v15, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->interpolator:Ljavafx/animation/Interpolator;

    invoke-direct {v12, v13, v14, v15}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/4 v10, 0x1

    new-instance v11, Ljavafx/animation/KeyValue;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    .line 437
    invoke-virtual {v13}, Ljavafx/scene/layout/StackPane;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v13

    move v14, v2

    if-eqz v14, :cond_7

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    .line 438
    invoke-virtual {v14}, Ljavafx/scene/layout/StackPane;->getTranslateX()D

    move-result-wide v14

    :goto_5
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    sget-object v15, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->interpolator:Ljavafx/animation/Interpolator;

    invoke-direct {v12, v13, v14, v15}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v11, v9, v10

    invoke-direct {v6, v7, v8}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    move-object v3, v5

    .line 440
    .restart local v3    # "k1":Ljavafx/animation/KeyFrame;
    new-instance v5, Ljavafx/animation/KeyFrame;

    move-object/from16 v17, v5

    move-object/from16 v5, v17

    move-object/from16 v6, v17

    sget-object v7, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DURATION:Ljavafx/util/Duration;

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->swipeAnimationEndEventHandler:Ljavafx/event/EventHandler;

    const/4 v9, 0x2

    new-array v9, v9, [Ljavafx/animation/KeyValue;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    const/4 v11, 0x0

    new-instance v12, Ljavafx/animation/KeyValue;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    .line 442
    invoke-virtual {v14}, Ljavafx/scene/layout/StackPane;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v14

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v15}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    sget-object v16, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->interpolator:Ljavafx/animation/Interpolator;

    invoke-direct/range {v13 .. v16}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v12, v10, v11

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    const/4 v11, 0x1

    new-instance v12, Ljavafx/animation/KeyValue;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    .line 443
    invoke-virtual {v14}, Ljavafx/scene/layout/StackPane;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v16, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->interpolator:Ljavafx/animation/Interpolator;

    invoke-direct/range {v13 .. v16}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v12, v10, v11

    invoke-direct {v6, v7, v8, v9}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    move-object v4, v5

    .line 444
    .restart local v4    # "k2":Ljavafx/animation/KeyFrame;
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v5}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljavafx/animation/KeyFrame;

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    const/4 v8, 0x0

    move-object v9, v3

    aput-object v9, v7, v8

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    const/4 v8, 0x1

    move-object v9, v4

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 445
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v5}, Ljavafx/animation/Timeline;->play()V

    goto/16 :goto_3

    .line 435
    .end local v3    # "k1":Ljavafx/animation/KeyFrame;
    .end local v4    # "k2":Ljavafx/animation/KeyFrame;
    :cond_6
    const-wide/16 v14, 0x0

    goto/16 :goto_4

    .line 438
    :cond_7
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v14}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v14

    neg-double v14, v14

    goto/16 :goto_5
.end method

.method private synthetic lambda$handleControlPropertyChanged$418(Ljavafx/event/ActionEvent;)V
    .locals 3

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, p1

    .local v1, "arg0":Ljavafx/event/ActionEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->resetIndiciesAndNav()V

    .line 657
    return-void
.end method

.method private synthetic lambda$initializeSwipeAndTouchHandlers$414(Ljavafx/scene/input/TouchEvent;)V
    .locals 12

    .prologue
    .line 162
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v2, p1

    .local v2, "e":Ljavafx/scene/input/TouchEvent;
    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->touchEventId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 163
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/TouchEvent;->getTouchPoint()Ljavafx/scene/input/TouchPoint;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/input/TouchPoint;->getId()I

    move-result v4

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->touchEventId:I

    .line 165
    :cond_0
    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->touchEventId:I

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/TouchEvent;->getTouchPoint()Ljavafx/scene/input/TouchPoint;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/input/TouchPoint;->getId()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 166
    .line 172
    :goto_0
    return-void

    .line 168
    :cond_1
    move-object v3, v1

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/input/TouchEvent;->getTouchPoint()Ljavafx/scene/input/TouchPoint;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/input/TouchPoint;->getX()D

    move-result-wide v5

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->startTouchPos:D

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->lastTouchPos:D

    .line 169
    move-object v3, v1

    move-object v4, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->startTouchTime:J

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->lastTouchTime:J

    .line 170
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->touchThresholdBroken:Z

    .line 171
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/input/TouchEvent;->consume()V

    .line 172
    goto :goto_0
.end method

.method private synthetic lambda$initializeSwipeAndTouchHandlers$415(Ljavafx/scene/control/Pagination;Ljavafx/scene/input/TouchEvent;)V
    .locals 24

    .prologue
    .line 175
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object/from16 v4, p1

    .local v4, "control":Ljavafx/scene/control/Pagination;
    move-object/from16 v5, p2

    .local v5, "e":Ljavafx/scene/input/TouchEvent;
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->touchEventId:I

    move/from16 v18, v0

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/input/TouchEvent;->getTouchPoint()Ljavafx/scene/input/TouchPoint;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/input/TouchPoint;->getId()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 176
    .line 250
    :goto_0
    return-void

    .line 179
    :cond_0
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/TouchEvent;->getTouchPoint()Ljavafx/scene/input/TouchPoint;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/TouchPoint;->getX()D

    move-result-wide v18

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->lastTouchPos:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v6, v18

    .line 180
    .local v6, "drag":D
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->lastTouchTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v8, v18

    .line 181
    .local v8, "time":J
    move-object/from16 v18, v3

    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    move-wide/from16 v0, v21

    long-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->touchVelocity:D

    .line 182
    move-object/from16 v18, v3

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/input/TouchEvent;->getTouchPoint()Ljavafx/scene/input/TouchPoint;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/input/TouchPoint;->getX()D

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->lastTouchPos:D

    .line 183
    move-object/from16 v18, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->lastTouchTime:J

    .line 184
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/TouchEvent;->getTouchPoint()Ljavafx/scene/input/TouchPoint;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/TouchPoint;->getX()D

    move-result-wide v18

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->startTouchPos:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v10, v18

    .line 186
    .local v10, "delta":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->touchThresholdBroken:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    move-wide/from16 v18, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x402e000000000000L    # 15.0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_1

    .line 187
    move-object/from16 v18, v3

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->touchThresholdBroken:Z

    .line 190
    :cond_1
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->touchThresholdBroken:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 191
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/Pagination;->getWidth()D

    move-result-wide v18

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->snappedLeftInset()D

    move-result-wide v20

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->snappedRightInset()D

    move-result-wide v22

    add-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 195
    .local v12, "width":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->setInitialDirection:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 198
    move-object/from16 v18, v3

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->setInitialDirection:Z

    .line 199
    move-object/from16 v18, v3

    move-wide/from16 v19, v10

    const-wide/16 v21, 0x0

    cmpg-double v19, v19, v21

    if-gez v19, :cond_5

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->direction:I

    .line 201
    :cond_2
    move-wide/from16 v18, v10

    const-wide/16 v20, 0x0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_8

    .line 202
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->direction:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 203
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljavafx/collections/ObservableList;->clear()V

    .line 204
    move-object/from16 v18, v3

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->direction:I

    .line 207
    :cond_3
    move-wide/from16 v18, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    move-wide/from16 v20, v12

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_6

    .line 208
    move-wide/from16 v18, v10

    move-wide/from16 v14, v18

    .line 209
    .local v14, "currentPaneX":D
    move-wide/from16 v18, v12

    move-wide/from16 v20, v10

    add-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 210
    .local v16, "nextPaneX":D
    move-object/from16 v18, v3

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextPageReached:Z

    .line 216
    :goto_2
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    move-object/from16 v18, v0

    move-wide/from16 v19, v14

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/layout/StackPane;->setTranslateX(D)V

    .line 217
    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getCurrentPageIndex()I

    move-result v18

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v19}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getPageCount()I

    move-result v19

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 218
    move-object/from16 v18, v3

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentIndex:I

    move/from16 v20, v0

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    invoke-direct/range {v18 .. v20}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->createPage(Ljavafx/scene/layout/StackPane;I)Z

    move-result v18

    .line 219
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 220
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    move-object/from16 v18, v0

    move-wide/from16 v19, v16

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/layout/StackPane;->setTranslateX(D)V

    .line 249
    .end local v12    # "width":D
    .end local v14    # "currentPaneX":D
    .end local v16    # "nextPaneX":D
    :cond_4
    :goto_3
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/TouchEvent;->consume()V

    .line 250
    goto/16 :goto_0

    .line 199
    .restart local v12    # "width":D
    :cond_5
    const/16 v19, -0x1

    goto/16 :goto_1

    .line 212
    :cond_6
    move-wide/from16 v18, v12

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v14, v18

    .line 213
    .restart local v14    # "currentPaneX":D
    const-wide/16 v18, 0x0

    move-wide/from16 v16, v18

    .line 214
    .restart local v16    # "nextPaneX":D
    move-object/from16 v18, v3

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextPageReached:Z

    goto :goto_2

    .line 222
    :cond_7
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/layout/StackPane;->setTranslateX(D)V

    goto :goto_3

    .line 226
    .end local v14    # "currentPaneX":D
    .end local v16    # "nextPaneX":D
    :cond_8
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->direction:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 227
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljavafx/collections/ObservableList;->clear()V

    .line 228
    move-object/from16 v18, v3

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->direction:I

    .line 230
    :cond_9
    move-wide/from16 v18, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    move-wide/from16 v20, v12

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_a

    .line 231
    move-wide/from16 v18, v10

    move-wide/from16 v14, v18

    .line 232
    .restart local v14    # "currentPaneX":D
    move-wide/from16 v18, v12

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v10

    add-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 233
    .restart local v16    # "nextPaneX":D
    move-object/from16 v18, v3

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextPageReached:Z

    .line 239
    :goto_4
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    move-object/from16 v18, v0

    move-wide/from16 v19, v14

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/layout/StackPane;->setTranslateX(D)V

    .line 240
    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getCurrentPageIndex()I

    move-result v18

    if-eqz v18, :cond_b

    .line 241
    move-object/from16 v18, v3

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentIndex:I

    move/from16 v20, v0

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    invoke-direct/range {v18 .. v20}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->createPage(Ljavafx/scene/layout/StackPane;I)Z

    move-result v18

    .line 242
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 243
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    move-object/from16 v18, v0

    move-wide/from16 v19, v16

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/layout/StackPane;->setTranslateX(D)V

    goto/16 :goto_3

    .line 235
    .end local v14    # "currentPaneX":D
    .end local v16    # "nextPaneX":D
    :cond_a
    move-wide/from16 v18, v12

    move-wide/from16 v14, v18

    .line 236
    .restart local v14    # "currentPaneX":D
    const-wide/16 v18, 0x0

    move-wide/from16 v16, v18

    .line 237
    .restart local v16    # "nextPaneX":D
    move-object/from16 v18, v3

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextPageReached:Z

    goto :goto_4

    .line 245
    :cond_b
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/layout/StackPane;->setTranslateX(D)V

    goto/16 :goto_3
.end method

.method private synthetic lambda$initializeSwipeAndTouchHandlers$416(Ljavafx/scene/control/Pagination;Ljavafx/scene/input/TouchEvent;)V
    .locals 26

    .prologue
    .line 253
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object/from16 v3, p1

    .local v3, "control":Ljavafx/scene/control/Pagination;
    move-object/from16 v4, p2

    .local v4, "e":Ljavafx/scene/input/TouchEvent;
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->touchEventId:I

    move/from16 v20, v0

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/input/TouchEvent;->getTouchPoint()Ljavafx/scene/input/TouchPoint;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/input/TouchPoint;->getId()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 254
    .line 288
    :goto_0
    return-void

    .line 256
    :cond_0
    move-object/from16 v20, v2

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->touchEventId:I

    .line 257
    move-object/from16 v20, v2

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->setInitialDirection:Z

    .line 260
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->touchThresholdBroken:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 262
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/input/TouchEvent;->getTouchPoint()Ljavafx/scene/input/TouchPoint;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/input/TouchPoint;->getX()D

    move-result-wide v20

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->startTouchPos:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v5, v20

    .line 264
    .local v5, "drag":D
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->startTouchTime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v7, v20

    .line 266
    .local v7, "time":J
    move-wide/from16 v20, v7

    const-wide/16 v22, 0x12c

    cmp-long v20, v20, v22

    if-gez v20, :cond_3

    const/16 v20, 0x1

    :goto_1
    move/from16 v9, v20

    .line 268
    .local v9, "quick":Z
    move/from16 v20, v9

    if-eqz v20, :cond_4

    move-wide/from16 v20, v5

    move-wide/from16 v22, v7

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    :goto_2
    move-wide/from16 v10, v20

    .line 270
    .local v10, "velocity":D
    move-wide/from16 v20, v10

    const-wide v22, 0x407f400000000000L    # 500.0

    mul-double v20, v20, v22

    move-wide/from16 v12, v20

    .line 271
    .local v12, "distance":D
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/Pagination;->getWidth()D

    move-result-wide v20

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->snappedLeftInset()D

    move-result-wide v22

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->snappedRightInset()D

    move-result-wide v24

    add-double v22, v22, v24

    sub-double v20, v20, v22

    move-wide/from16 v14, v20

    .line 274
    .local v14, "width":D
    move-wide/from16 v20, v12

    move-wide/from16 v22, v14

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 276
    .local v16, "threshold":D
    move-wide/from16 v20, v5

    move-wide/from16 v22, v14

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 277
    .local v18, "delta":D
    move-wide/from16 v20, v16

    const-wide v22, 0x3fd3333333333333L    # 0.3

    cmpl-double v20, v20, v22

    if-gtz v20, :cond_1

    move-wide/from16 v20, v18

    const-wide v22, 0x3fd3333333333333L    # 0.3

    cmpl-double v20, v20, v22

    if-lez v20, :cond_6

    .line 278
    :cond_1
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->startTouchPos:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/input/TouchEvent;->getTouchPoint()Ljavafx/scene/input/TouchPoint;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/input/TouchPoint;->getX()D

    move-result-wide v22

    cmpl-double v20, v20, v22

    if-lez v20, :cond_5

    .line 279
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->selectNext()V

    .line 287
    .end local v5    # "drag":D
    .end local v7    # "time":J
    .end local v9    # "quick":Z
    .end local v10    # "velocity":D
    .end local v12    # "distance":D
    .end local v14    # "width":D
    .end local v16    # "threshold":D
    .end local v18    # "delta":D
    :cond_2
    :goto_3
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/input/TouchEvent;->consume()V

    .line 288
    goto/16 :goto_0

    .line 266
    .restart local v5    # "drag":D
    .restart local v7    # "time":J
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 268
    .restart local v9    # "quick":Z
    :cond_4
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->touchVelocity:D

    move-wide/from16 v20, v0

    goto/16 :goto_2

    .line 281
    .restart local v10    # "velocity":D
    .restart local v12    # "distance":D
    .restart local v14    # "width":D
    .restart local v16    # "threshold":D
    .restart local v18    # "delta":D
    :cond_5
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->selectPrevious()V

    goto :goto_3

    .line 284
    :cond_6
    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->startTouchPos:D

    move-wide/from16 v21, v0

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/input/TouchEvent;->getTouchPoint()Ljavafx/scene/input/TouchPoint;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/input/TouchPoint;->getSceneX()D

    move-result-wide v23

    cmpl-double v21, v21, v23

    if-lez v21, :cond_7

    const/16 v21, 0x1

    :goto_4
    invoke-direct/range {v20 .. v21}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->animateClamping(Z)V

    goto :goto_3

    :cond_7
    const/16 v21, 0x0

    goto :goto_4
.end method

.method private synthetic lambda$new$413(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->resetIndiciesAndNav()V

    .line 119
    return-void
.end method

.method private resetIndexes(Z)V
    .locals 6

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move v1, p1

    .local v1, "usePageIndex":Z
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getMaxPageIndicatorCount()I

    move-result v4

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->maxPageIndicatorCount:I

    .line 294
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getPageCount()I

    move-result v4

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageCount:I

    .line 295
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageCount:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->maxPageIndicatorCount:I

    if-le v3, v4, :cond_0

    .line 296
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->maxPageIndicatorCount:I

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageCount:I

    .line 299
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->fromIndex:I

    .line 300
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->previousIndex:I

    .line 301
    move-object v3, v0

    move v4, v1

    if-eqz v4, :cond_4

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getCurrentPageIndex()I

    move-result v4

    :goto_0
    iput v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentIndex:I

    .line 302
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->toIndex:I

    .line 304
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageCount:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->maxPageIndicatorCount:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1

    .line 306
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->toIndex:I

    .line 309
    :cond_1
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->animate:Z

    move v2, v3

    .line 310
    .local v2, "isAnimate":Z
    move v3, v2

    if-eqz v3, :cond_2

    .line 311
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->animate:Z

    .line 315
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->clear()V

    .line 316
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->clear()V

    .line 318
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pagination:Ljavafx/scene/control/Pagination;

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentIndex:I

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Pagination;->setCurrentPageIndex(I)V

    .line 319
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentIndex:I

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->createPage(Ljavafx/scene/layout/StackPane;I)Z

    move-result v3

    .line 321
    move v3, v2

    if-eqz v3, :cond_3

    .line 322
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->animate:Z

    .line 324
    :cond_3
    return-void

    .line 301
    .end local v2    # "isAnimate":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private swapPanes()V
    .locals 6

    .prologue
    .line 463
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    move-object v2, v3

    .line 464
    .local v2, "temp":Ljavafx/scene/layout/StackPane;
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    .line 465
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    .line 467
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->setTranslateX(D)V

    .line 468
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setCache(Z)V

    .line 470
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->setTranslateX(D)V

    .line 471
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setCache(Z)V

    .line 472
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 473
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->clear()V

    .line 474
    return-void
.end method


# virtual methods
.method public final arrowsVisibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->arrowsVisible:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 533
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DEFAULT_ARROW_VISIBLE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$4;-><init>(Lcom/sun/javafx/scene/control/skin/PaginationSkin;Z)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->arrowsVisible:Ljavafx/beans/property/BooleanProperty;

    .line 555
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->arrowsVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return-object v0
.end method

.method protected computeMinHeight(DDDDD)D
    .locals 19

    .prologue
    .line 678
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
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
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->navigation:Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->navigation:Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;

    move-wide/from16 v16, v2

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->minHeight(D)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->snapSize(D)D

    move-result-wide v14

    :goto_0
    move-wide v12, v14

    .line 679
    .local v12, "navigationHeight":D
    move-wide v14, v4

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    move-wide/from16 v17, v2

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/StackPane;->minHeight(D)D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide/from16 v16, v12

    add-double v14, v14, v16

    move-wide/from16 v16, v8

    add-double v14, v14, v16

    move-wide v1, v14

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return-wide v1

    .line 678
    .end local v12    # "navigationHeight":D
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    :cond_0
    const-wide/16 v14, 0x0

    goto :goto_0
.end method

.method protected computeMinWidth(DDDDD)D
    .locals 21

    .prologue
    .line 673
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
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
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->navigation:Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->navigation:Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;

    move-wide/from16 v16, v2

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->minWidth(D)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->snapSize(D)D

    move-result-wide v14

    :goto_0
    move-wide v12, v14

    .line 674
    .local v12, "navigationWidth":D
    move-wide v14, v10

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    move-wide/from16 v17, v2

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/StackPane;->minWidth(D)D

    move-result-wide v16

    move-wide/from16 v18, v12

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide/from16 v16, v6

    add-double v14, v14, v16

    move-wide v1, v14

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return-wide v1

    .line 673
    .end local v12    # "navigationWidth":D
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    :cond_0
    const-wide/16 v14, 0x0

    goto :goto_0
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 19

    .prologue
    .line 688
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
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
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->navigation:Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->navigation:Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;

    move-wide/from16 v16, v2

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->prefHeight(D)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->snapSize(D)D

    move-result-wide v14

    :goto_0
    move-wide v12, v14

    .line 689
    .local v12, "navigationHeight":D
    move-wide v14, v4

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    move-wide/from16 v17, v2

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide/from16 v16, v12

    add-double v14, v14, v16

    move-wide/from16 v16, v8

    add-double v14, v14, v16

    move-wide v1, v14

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return-wide v1

    .line 688
    .end local v12    # "navigationHeight":D
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    :cond_0
    const-wide/16 v14, 0x0

    goto :goto_0
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 21

    .prologue
    .line 683
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
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
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->navigation:Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->navigation:Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;

    move-wide/from16 v16, v2

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->prefWidth(D)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->snapSize(D)D

    move-result-wide v14

    :goto_0
    move-wide v12, v14

    .line 684
    .local v12, "navigationWidth":D
    move-wide v14, v10

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    move-wide/from16 v17, v2

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v16

    move-wide/from16 v18, v12

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide/from16 v16, v6

    add-double v14, v14, v16

    move-wide v1, v14

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return-wide v1

    .line 683
    .end local v12    # "navigationWidth":D
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    :cond_0
    const-wide/16 v14, 0x0

    goto :goto_0
.end method

.method public getCssMetaData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 1400
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return-object v0
.end method

.method public final getPageInformationAlignment()Ljavafx/geometry/Side;
    .locals 2

    .prologue
    .line 590
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageInformationAlignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DEFAULT_PAGE_INFORMATION_ALIGNMENT:Ljavafx/geometry/Side;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageInformationAlignment:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Side;

    goto :goto_0
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 649
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v2, p1

    .local v2, "p":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 650
    const-string v3, "PAGE_FACTORY"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 651
    move-object v3, v1

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->animate:Z

    if-eqz v3, :cond_0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->timeline:Ljavafx/animation/Timeline;

    if-eqz v3, :cond_0

    .line 654
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->timeline:Ljavafx/animation/Timeline;

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    invoke-virtual {v3, v4, v5}, Ljavafx/animation/Timeline;->setRate(D)V

    .line 655
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->timeline:Ljavafx/animation/Timeline;

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/animation/Timeline;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 658
    .line 670
    :goto_0
    return-void

    .line 660
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->resetIndiciesAndNav()V

    .line 669
    :cond_1
    :goto_1
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Pagination;

    invoke-virtual {v3}, Ljavafx/scene/control/Pagination;->requestLayout()V

    .line 670
    goto :goto_0

    .line 661
    :cond_2
    const-string v3, "PAGE_COUNT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 662
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->resetIndiciesAndNav()V

    goto :goto_1

    .line 663
    :cond_3
    const-string v3, "WIDTH"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 664
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Pagination;

    invoke-virtual {v4}, Ljavafx/scene/control/Pagination;->getWidth()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    goto :goto_1

    .line 665
    :cond_4
    const-string v3, "HEIGHT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 666
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Pagination;

    invoke-virtual {v4}, Ljavafx/scene/control/Pagination;->getHeight()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    goto :goto_1
.end method

.method public final isArrowsVisible()Z
    .locals 2

    .prologue
    .line 530
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->arrowsVisible:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    sget-object v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DEFAULT_ARROW_VISIBLE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->arrowsVisible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isPageInformationVisible()Z
    .locals 2

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageInformationVisible:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    sget-object v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DEFAULT_PAGE_INFORMATION_VISIBLE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageInformationVisible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isTooltipVisible()Z
    .locals 2

    .prologue
    .line 620
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->tooltipVisible:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    sget-object v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DEFAULT_TOOLTIP_VISIBLE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->tooltipVisible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method protected layoutChildren(DDDD)V
    .locals 29

    .prologue
    .line 694
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "w":D
    move-wide/from16 v8, p7

    .local v8, "h":D
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->navigation:Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->navigation:Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->prefHeight(D)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->snapSize(D)D

    move-result-wide v14

    :goto_0
    move-wide v10, v14

    .line 695
    .local v10, "navigationHeight":D
    move-object v14, v1

    move-wide v15, v8

    move-wide/from16 v17, v10

    sub-double v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->snapSize(D)D

    move-result-wide v14

    move-wide v12, v14

    .line 697
    .local v12, "stackPaneHeight":D
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->currentStackPane:Ljavafx/scene/layout/StackPane;

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v12

    const-wide/16 v24, 0x0

    sget-object v26, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v27, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v14 .. v27}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 698
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->nextStackPane:Ljavafx/scene/layout/StackPane;

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v12

    const-wide/16 v24, 0x0

    sget-object v26, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v27, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v14 .. v27}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 699
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->navigation:Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;

    move-wide/from16 v16, v2

    move-wide/from16 v18, v12

    move-wide/from16 v20, v6

    move-wide/from16 v22, v10

    const-wide/16 v24, 0x0

    sget-object v26, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v27, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v14 .. v27}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 700
    return-void

    .line 694
    .end local v10    # "navigationHeight":D
    .end local v12    # "stackPaneHeight":D
    :cond_0
    const-wide/16 v14, 0x0

    goto :goto_0
.end method

.method public final pageInformationAlignmentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Side;",
            ">;"
        }
    .end annotation

    .prologue
    .line 592
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageInformationAlignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 593
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$6;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$6;-><init>(Lcom/sun/javafx/scene/control/skin/PaginationSkin;Ljavafx/geometry/Side;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageInformationAlignment:Ljavafx/beans/property/ObjectProperty;

    .line 615
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageInformationAlignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return-object v0
.end method

.method public final pageInformationVisibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 562
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageInformationVisible:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 563
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$5;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DEFAULT_PAGE_INFORMATION_VISIBLE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$5;-><init>(Lcom/sun/javafx/scene/control/skin/PaginationSkin;Z)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageInformationVisible:Ljavafx/beans/property/BooleanProperty;

    .line 585
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageInformationVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return-object v0
.end method

.method protected varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 704
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$8;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 712
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    :goto_0
    return-object v0

    .line 705
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->navigation:Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->access$1300(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;)Ljavafx/scene/control/ToggleGroup;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/ToggleGroup;->getSelectedToggle()Ljavafx/scene/control/Toggle;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 706
    :pswitch_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->navigation:Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->access$1300(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;)Ljavafx/scene/control/ToggleGroup;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 708
    :pswitch_2
    move-object v4, v2

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/Integer;

    move-object v3, v4

    .line 709
    .local v3, "index":Ljava/lang/Integer;
    move-object v4, v3

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 710
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->navigation:Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->access$1300(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;)Ljavafx/scene/control/ToggleGroup;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 704
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected resetIndiciesAndNav()V
    .locals 3

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->resetIndexes(Z)V

    .line 131
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->navigation:Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->access$000(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;)V

    .line 132
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->navigation:Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;->access$100(Lcom/sun/javafx/scene/control/skin/PaginationSkin$NavigationControl;)V

    .line 133
    return-void
.end method

.method public selectNext()V
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getCurrentPageIndex()I

    move-result v1

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getPageCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 137
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pagination:Ljavafx/scene/control/Pagination;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getCurrentPageIndex()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Pagination;->setCurrentPageIndex(I)V

    .line 139
    :cond_0
    return-void
.end method

.method public selectPrevious()V
    .locals 4

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getCurrentPageIndex()I

    move-result v1

    if-lez v1, :cond_0

    .line 143
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pagination:Ljavafx/scene/control/Pagination;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getCurrentPageIndex()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Pagination;->setCurrentPageIndex(I)V

    .line 145
    :cond_0
    return-void
.end method

.method public final setArrowsVisible(Z)V
    .locals 4

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->arrowsVisibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final setPageInformationAlignment(Ljavafx/geometry/Side;)V
    .locals 4

    .prologue
    .line 589
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Side;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageInformationAlignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPageInformationVisible(Z)V
    .locals 4

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageInformationVisibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final setTooltipVisible(Z)V
    .locals 4

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->tooltipVisibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final tooltipVisibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 622
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->tooltipVisible:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 623
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$7;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DEFAULT_TOOLTIP_VISIBLE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$7;-><init>(Lcom/sun/javafx/scene/control/skin/PaginationSkin;Z)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->tooltipVisible:Ljavafx/beans/property/BooleanProperty;

    .line 645
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->tooltipVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    return-object v0
.end method

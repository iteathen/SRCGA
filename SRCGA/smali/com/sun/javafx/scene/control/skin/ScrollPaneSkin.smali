.class public Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
.super Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.source "ScrollPaneSkin.java"

# interfaces
.implements Lcom/sun/javafx/scene/traversal/TraverseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase",
        "<",
        "Ljavafx/scene/control/ScrollPane;",
        "Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;",
        ">;",
        "Lcom/sun/javafx/scene/traversal/TraverseListener;"
    }
.end annotation


# static fields
.field private static final DEFAULT_EMBEDDED_SB_BREADTH:D = 8.0

.field private static final DEFAULT_MIN_SIZE:D = 36.0

.field private static final DEFAULT_PREF_SIZE:D = 100.0

.field private static final DEFAULT_SB_BREADTH:D = 12.0

.field private static final PAN_THRESHOLD:D = 0.5


# instance fields
.field private final boundsChangeListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljavafx/geometry/Bounds;",
            ">;"
        }
    .end annotation
.end field

.field clipRect:Ljavafx/scene/shape/Rectangle;

.field private contentHeight:D

.field private contentPosX:Ljavafx/beans/property/DoubleProperty;

.field private contentPosY:Ljavafx/beans/property/DoubleProperty;

.field private contentWidth:D

.field contentsToViewKF1:Ljavafx/animation/KeyFrame;

.field contentsToViewKF2:Ljavafx/animation/KeyFrame;

.field contentsToViewKF3:Ljavafx/animation/KeyFrame;

.field contentsToViewTimeline:Ljavafx/animation/Timeline;

.field private corner:Ljavafx/scene/layout/StackPane;

.field private dragDetected:Z

.field protected hsb:Ljavafx/scene/control/ScrollBar;

.field private hsbHeight:D

.field private hsbvis:Z

.field private mouseDown:Z

.field private nodeHeight:D

.field private final nodeListener:Ljavafx/beans/InvalidationListener;

.field private nodeSizeInvalid:Z

.field private nodeWidth:D

.field ohvalue:D

.field ovvalue:D

.field private posX:D

.field private posY:D

.field pressX:D

.field pressY:D

.field private saveCursor:Ljavafx/scene/Cursor;

.field sbTouchKF1:Ljavafx/animation/KeyFrame;

.field sbTouchKF2:Ljavafx/animation/KeyFrame;

.field sbTouchTimeline:Ljavafx/animation/Timeline;

.field private scrollNode:Ljavafx/scene/Node;

.field private tempVisibility:Z

.field private touchDetected:Z

.field private viewContent:Ljavafx/scene/layout/StackPane;

.field private viewRect:Ljavafx/scene/layout/StackPane;

.field protected vsb:Ljavafx/scene/control/ScrollBar;

.field private vsbWidth:D

.field private vsbvis:Z


# direct methods
.method public constructor <init>(Ljavafx/scene/control/ScrollPane;)V
    .locals 8

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, p1

    .local v1, "scrollpane":Ljavafx/scene/control/ScrollPane;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;-><init>(Ljavafx/scene/control/ScrollPane;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 84
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeSizeInvalid:Z

    .line 110
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->saveCursor:Ljavafx/scene/Cursor;

    .line 111
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->dragDetected:Z

    .line 112
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->touchDetected:Z

    .line 113
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->mouseDown:Z

    .line 144
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeListener:Ljavafx/beans/InvalidationListener;

    .line 178
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;-><init>(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->boundsChangeListener:Ljavafx/beans/value/ChangeListener;

    .line 125
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->initialize()V

    .line 127
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->contentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "NODE"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 128
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->fitToWidthProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    const-string v4, "FIT_TO_WIDTH"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 129
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->fitToHeightProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    const-string v4, "FIT_TO_HEIGHT"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 130
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->hbarPolicyProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "HBAR_POLICY"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 131
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->vbarPolicyProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "VBAR_POLICY"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 132
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->hvalueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    const-string v4, "HVALUE"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 133
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->hmaxProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    const-string v4, "HMAX"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 134
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->hminProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    const-string v4, "HMIN"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 135
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->vvalueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    const-string v4, "VVALUE"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 136
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->vmaxProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    const-string v4, "VMAX"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 137
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->vminProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    const-string v4, "VMIN"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 138
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->prefViewportWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    const-string v4, "VIEWPORT_SIZE_HINT"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 139
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->prefViewportHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    const-string v4, "VIEWPORT_SIZE_HINT"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 140
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->minViewportWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    const-string v4, "VIEWPORT_SIZE_HINT"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 141
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->minViewportHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    const-string v4, "VIEWPORT_SIZE_HINT"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Z
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeSizeInvalid:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return v0
.end method

.method static synthetic access$002(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;Z)Z
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeSizeInvalid:Z

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return v0
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-object v0
.end method

.method static synthetic access$1000(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)V
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->updateHorizontalSB()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedTopInset()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v0
.end method

.method static synthetic access$1200(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posY:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v0
.end method

.method static synthetic access$1300(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v0
.end method

.method static synthetic access$1400(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;D)D
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapPosition(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v0
.end method

.method static synthetic access$1500(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedTopInset()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v0
.end method

.method static synthetic access$1600(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;D)D
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapPosition(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v0
.end method

.method static synthetic access$1700(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedLeftInset()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v0
.end method

.method static synthetic access$1800(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posX:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v0
.end method

.method static synthetic access$1900(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Z
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbvis:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return v0
.end method

.method static synthetic access$2000(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;D)D
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapPosition(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v0
.end method

.method static synthetic access$2100(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedLeftInset()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v0
.end method

.method static synthetic access$2200(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;D)D
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapPosition(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v0
.end method

.method static synthetic access$2300(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/scene/layout/StackPane;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewContent:Ljavafx/scene/layout/StackPane;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-object v0
.end method

.method static synthetic access$2400(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;DD)V
    .locals 11

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-wide v1, p1

    .local v1, "x1":D
    move-wide v3, p3

    .local v3, "x2":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->computeScrollNodeSize(DD)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getContentPosX()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v0
.end method

.method static synthetic access$2600(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getContentPosY()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v0
.end method

.method static synthetic access$300(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Z
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->determineVerticalSBVisible()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return v0
.end method

.method static synthetic access$400(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Z
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbvis:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return v0
.end method

.method static synthetic access$500(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Z
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->determineHorizontalSBVisible()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return v0
.end method

.method static synthetic access$600(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeWidth:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v0
.end method

.method static synthetic access$700(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeHeight:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v0
.end method

.method static synthetic access$800(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Z
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->dragDetected:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return v0
.end method

.method static synthetic access$900(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)V
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->updateVerticalSB()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->lambda$initialize$444(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->lambda$initialize$445(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$10(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;Ljavafx/scene/input/ScrollEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->lambda$initialize$454(Ljavafx/scene/input/ScrollEvent;)V

    return-void
.end method

.method static synthetic access$lambda$11(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;Ljavafx/scene/input/TouchEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->lambda$initialize$455(Ljavafx/scene/input/TouchEvent;)V

    return-void
.end method

.method static synthetic access$lambda$12(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;Ljavafx/scene/input/TouchEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->lambda$initialize$456(Ljavafx/scene/input/TouchEvent;)V

    return-void
.end method

.method static synthetic access$lambda$13(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->lambda$startSBReleasedAnimation$457(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$14(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->lambda$startSBReleasedAnimation$458(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$15(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->lambda$startContentsToViewport$459(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->lambda$initialize$446(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->lambda$initialize$447(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->lambda$initialize$448(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->lambda$initialize$449(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->lambda$initialize$450(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$7(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->lambda$initialize$451(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$8(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->lambda$initialize$452(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method static synthetic access$lambda$9(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->lambda$initialize$453(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method private computeHsbSizeHint(Ljavafx/scene/control/ScrollPane;)D
    .locals 6

    .prologue
    .line 780
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, p1

    .local v1, "sp":Ljavafx/scene/control/ScrollPane;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->getHbarPolicy()Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->ALWAYS:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    .line 781
    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->getHbarPolicy()Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->AS_NEEDED:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    if-ne v2, v3, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->getPrefViewportHeight()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->getMinViewportHeight()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 782
    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/ScrollBar;->prefHeight(D)D

    move-result-wide v2

    :goto_0
    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private computeScrollBarSize()V
    .locals 6

    .prologue
    .line 994
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollBar;->prefWidth(D)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbWidth:D

    .line 995
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbWidth:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 997
    sget-boolean v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->IS_TOUCH_SUPPORTED:Z

    if-eqz v1, :cond_2

    .line 998
    move-object v1, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    iput-wide v2, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbWidth:D

    .line 1004
    :cond_0
    :goto_0
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollBar;->prefHeight(D)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbHeight:D

    .line 1005
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbHeight:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    .line 1007
    sget-boolean v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->IS_TOUCH_SUPPORTED:Z

    if-eqz v1, :cond_3

    .line 1008
    move-object v1, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    iput-wide v2, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbHeight:D

    .line 1014
    :cond_1
    :goto_1
    return-void

    .line 1001
    :cond_2
    move-object v1, v0

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    iput-wide v2, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbWidth:D

    goto :goto_0

    .line 1011
    :cond_3
    move-object v1, v0

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    iput-wide v2, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbHeight:D

    goto :goto_1
.end method

.method private computeScrollNodeSize(DD)V
    .locals 17

    .prologue
    .line 924
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-wide/from16 v2, p1

    .local v2, "contentWidth":D
    move-wide/from16 v4, p3

    .local v4, "contentHeight":D
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    if-eqz v8, :cond_0

    .line 925
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    invoke-virtual {v8}, Ljavafx/scene/Node;->isResizable()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 926
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ScrollPane;

    move-object v6, v8

    .line 927
    .local v6, "control":Ljavafx/scene/control/ScrollPane;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    invoke-virtual {v8}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v8

    move-object v7, v8

    .line 928
    .local v7, "bias":Ljavafx/geometry/Orientation;
    move-object v8, v7

    if-nez v8, :cond_3

    .line 929
    move-object v8, v1

    move-object v9, v1

    move-object v10, v6

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollPane;->isFitToWidth()Z

    move-result v10

    if-eqz v10, :cond_1

    move-wide v10, v2

    :goto_0
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    .line 930
    invoke-virtual {v12, v13, v14}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v12

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v14

    .line 929
    invoke-static/range {v10 .. v15}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v9

    iput-wide v9, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeWidth:D

    .line 931
    move-object v8, v1

    move-object v9, v1

    move-object v10, v6

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollPane;->isFitToHeight()Z

    move-result v10

    if-eqz v10, :cond_2

    move-wide v10, v4

    :goto_1
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    .line 932
    invoke-virtual {v12, v13, v14}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v12

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v14

    .line 931
    invoke-static/range {v10 .. v15}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v9

    iput-wide v9, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeHeight:D

    .line 947
    .line 951
    .end local v6    # "control":Ljavafx/scene/control/ScrollPane;
    .end local v7    # "bias":Ljavafx/geometry/Orientation;
    :goto_2
    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeSizeInvalid:Z

    .line 953
    :cond_0
    return-void

    .line 929
    .restart local v6    # "control":Ljavafx/scene/control/ScrollPane;
    .restart local v7    # "bias":Ljavafx/geometry/Orientation;
    :cond_1
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v10

    goto :goto_0

    .line 931
    :cond_2
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v10

    goto :goto_1

    .line 934
    :cond_3
    move-object v8, v7

    sget-object v9, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v8, v9, :cond_6

    .line 935
    move-object v8, v1

    move-object v9, v1

    move-object v10, v6

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollPane;->isFitToWidth()Z

    move-result v10

    if-eqz v10, :cond_4

    move-wide v10, v2

    :goto_3
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    .line 936
    invoke-virtual {v12, v13, v14}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v12

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v14

    .line 935
    invoke-static/range {v10 .. v15}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v9

    iput-wide v9, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeWidth:D

    .line 937
    move-object v8, v1

    move-object v9, v1

    move-object v10, v6

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollPane;->isFitToHeight()Z

    move-result v10

    if-eqz v10, :cond_5

    move-wide v10, v4

    :goto_4
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    move-object v13, v1

    iget-wide v13, v13, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeWidth:D

    .line 938
    invoke-virtual {v12, v13, v14}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v12

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    move-object v15, v1

    iget-wide v15, v15, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeWidth:D

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v14

    .line 937
    invoke-static/range {v10 .. v15}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v9

    iput-wide v9, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeHeight:D

    goto :goto_2

    .line 935
    :cond_4
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v10

    goto :goto_3

    .line 937
    :cond_5
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeWidth:D

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v10

    goto :goto_4

    .line 941
    :cond_6
    move-object v8, v1

    move-object v9, v1

    move-object v10, v6

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollPane;->isFitToHeight()Z

    move-result v10

    if-eqz v10, :cond_7

    move-wide v10, v4

    :goto_5
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    .line 942
    invoke-virtual {v12, v13, v14}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v12

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v14

    .line 941
    invoke-static/range {v10 .. v15}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v9

    iput-wide v9, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeHeight:D

    .line 943
    move-object v8, v1

    move-object v9, v1

    move-object v10, v6

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollPane;->isFitToWidth()Z

    move-result v10

    if-eqz v10, :cond_8

    move-wide v10, v2

    :goto_6
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    move-object v13, v1

    iget-wide v13, v13, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeHeight:D

    .line 944
    invoke-virtual {v12, v13, v14}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v12

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    move-object v15, v1

    iget-wide v15, v15, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeHeight:D

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v14

    .line 943
    invoke-static/range {v10 .. v15}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v9

    iput-wide v9, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeWidth:D

    goto/16 :goto_2

    .line 941
    :cond_7
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v10

    goto :goto_5

    .line 943
    :cond_8
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeHeight:D

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v10

    goto :goto_6

    .line 948
    .end local v6    # "control":Ljavafx/scene/control/ScrollPane;
    .end local v7    # "bias":Ljavafx/geometry/Orientation;
    :cond_9
    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    invoke-virtual {v10}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v9

    iput-wide v9, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeWidth:D

    .line 949
    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    invoke-virtual {v10}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v9

    iput-wide v9, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeHeight:D

    goto/16 :goto_2
.end method

.method private computeVsbSizeHint(Ljavafx/scene/control/ScrollPane;)D
    .locals 6

    .prologue
    .line 790
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, p1

    .local v1, "sp":Ljavafx/scene/control/ScrollPane;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->getVbarPolicy()Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->ALWAYS:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    .line 791
    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->getVbarPolicy()Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->AS_NEEDED:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    if-ne v2, v3, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->getPrefViewportWidth()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    move-object v2, v1

    .line 792
    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->getMinViewportWidth()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 793
    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/ScrollBar;->prefWidth(D)D

    move-result-wide v2

    :goto_0
    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private contentPosXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 1182
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentPosX:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 1183
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$5;-><init>(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentPosX:Ljavafx/beans/property/DoubleProperty;

    .line 1200
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentPosX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-object v0
.end method

.method private contentPosYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 1207
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentPosY:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 1208
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$6;-><init>(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentPosY:Ljavafx/beans/property/DoubleProperty;

    .line 1225
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentPosY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-object v0
.end method

.method private determineHorizontalSBVisible()Z
    .locals 8

    .prologue
    .line 962
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollPane;

    move-object v2, v4

    .line 964
    .local v2, "sp":Ljavafx/scene/control/ScrollPane;
    sget-boolean v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->IS_TOUCH_SUPPORTED:Z

    if-eqz v4, :cond_1

    .line 965
    move-object v4, v1

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->tempVisibility:Z

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeWidth:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v1, v4

    .line 973
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    :goto_1
    return v1

    .line 965
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 969
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getHbarPolicy()Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    move-result-object v4

    move-object v3, v4

    .line 970
    .local v3, "hbarPolicy":Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;
    sget-object v4, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->NEVER:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    move-object v5, v3

    if-ne v4, v5, :cond_2

    const/4 v4, 0x0

    .line 973
    :goto_2
    move v1, v4

    goto :goto_1

    .line 970
    :cond_2
    sget-object v4, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->ALWAYS:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    move-object v5, v3

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    move-object v4, v2

    .line 972
    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->isFitToWidth()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    if-eqz v4, :cond_5

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    invoke-virtual {v4}, Ljavafx/scene/Node;->isResizable()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeWidth:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 973
    invoke-virtual {v4, v5, v6}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeWidth:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private determineVerticalSBVisible()Z
    .locals 8

    .prologue
    .line 978
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollPane;

    move-object v2, v4

    .line 980
    .local v2, "sp":Ljavafx/scene/control/ScrollPane;
    sget-boolean v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->IS_TOUCH_SUPPORTED:Z

    if-eqz v4, :cond_1

    .line 981
    move-object v4, v1

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->tempVisibility:Z

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeHeight:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v1, v4

    .line 989
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    :goto_1
    return v1

    .line 981
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 985
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getVbarPolicy()Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    move-result-object v4

    move-object v3, v4

    .line 986
    .local v3, "vbarPolicy":Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;
    sget-object v4, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->NEVER:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    move-object v5, v3

    if-ne v4, v5, :cond_2

    const/4 v4, 0x0

    .line 989
    :goto_2
    move v1, v4

    goto :goto_1

    .line 986
    :cond_2
    sget-object v4, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->ALWAYS:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    move-object v5, v3

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    move-object v4, v2

    .line 988
    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->isFitToHeight()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    if-eqz v4, :cond_5

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    invoke-virtual {v4}, Ljavafx/scene/Node;->isResizable()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeHeight:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 989
    invoke-virtual {v4, v5, v6}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeHeight:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private getContentPosX()D
    .locals 4

    .prologue
    .line 1180
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentPosX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentPosX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method private getContentPosY()D
    .locals 4

    .prologue
    .line 1205
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentPosY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentPosY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method private initialize()V
    .locals 15

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/ScrollPane;

    move-object v1, v9

    .line 236
    .local v1, "control":Ljavafx/scene/control/ScrollPane;
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollPane;->getContent()Ljavafx/scene/Node;

    move-result-object v10

    iput-object v10, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    .line 238
    new-instance v9, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;-><init>(Ljavafx/scene/Parent;)V

    move-object v2, v9

    .line 239
    .local v2, "traversalEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    move-object v9, v2

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->addTraverseListener(Lcom/sun/javafx/scene/traversal/TraverseListener;)V

    .line 240
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/ScrollPane;

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljavafx/scene/control/ScrollPane;->setImpl_traversalEngine(Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;)V

    .line 242
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    if-eqz v9, :cond_0

    .line 243
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    invoke-virtual {v9}, Ljavafx/scene/Node;->layoutBoundsProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v9, v10}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 244
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    invoke-virtual {v9}, Ljavafx/scene/Node;->layoutBoundsProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->boundsChangeListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v9, v10}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 247
    :cond_0
    move-object v9, v0

    new-instance v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$3;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$3;-><init>(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)V

    iput-object v10, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewRect:Ljavafx/scene/layout/StackPane;

    .line 256
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewRect:Ljavafx/scene/layout/StackPane;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljavafx/scene/layout/StackPane;->setManaged(Z)V

    .line 257
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewRect:Ljavafx/scene/layout/StackPane;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljavafx/scene/layout/StackPane;->setCache(Z)V

    .line 258
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewRect:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v9}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v9

    const-string v10, "viewport"

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 260
    move-object v9, v0

    new-instance v10, Ljavafx/scene/shape/Rectangle;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljavafx/scene/shape/Rectangle;-><init>()V

    iput-object v10, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->clipRect:Ljavafx/scene/shape/Rectangle;

    .line 261
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewRect:Ljavafx/scene/layout/StackPane;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->clipRect:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v9, v10}, Ljavafx/scene/layout/StackPane;->setClip(Ljavafx/scene/Node;)V

    .line 263
    move-object v9, v0

    new-instance v10, Ljavafx/scene/control/ScrollBar;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljavafx/scene/control/ScrollBar;-><init>()V

    iput-object v10, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    .line 265
    move-object v9, v0

    new-instance v10, Ljavafx/scene/control/ScrollBar;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljavafx/scene/control/ScrollBar;-><init>()V

    iput-object v10, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    .line 266
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    sget-object v10, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    invoke-virtual {v9, v10}, Ljavafx/scene/control/ScrollBar;->setOrientation(Ljavafx/geometry/Orientation;)V

    .line 268
    move-object v9, v0

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/event/EventHandler;

    move-result-object v9

    move-object v3, v9

    .line 272
    .local v3, "barHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/input/MouseEvent;>;"
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    sget-object v10, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/ScrollBar;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 273
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    sget-object v10, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/ScrollBar;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 275
    move-object v9, v0

    new-instance v10, Ljavafx/scene/layout/StackPane;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v10, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->corner:Ljavafx/scene/layout/StackPane;

    .line 276
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->corner:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v9}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    const-string v13, "corner"

    aput-object v13, v11, v12

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v9

    .line 278
    move-object v9, v0

    new-instance v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;-><init>(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)V

    iput-object v10, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewContent:Ljavafx/scene/layout/StackPane;

    .line 304
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewRect:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v9}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewContent:Ljavafx/scene/layout/StackPane;

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 306
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    if-eqz v9, :cond_1

    .line 307
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewContent:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v9}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 308
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewRect:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v9}, Ljavafx/scene/layout/StackPane;->nodeOrientationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    invoke-virtual {v10}, Ljavafx/scene/Node;->nodeOrientationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 311
    :cond_1
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->clear()V

    .line 312
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljavafx/scene/Node;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewRect:Ljavafx/scene/layout/StackPane;

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x3

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->corner:Ljavafx/scene/layout/StackPane;

    aput-object v13, v11, v12

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v9

    .line 317
    move-object v9, v0

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v9

    move-object v4, v9

    .line 326
    .local v4, "vsbListener":Ljavafx/beans/InvalidationListener;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v9}, Ljavafx/scene/control/ScrollBar;->valueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 328
    move-object v9, v0

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v9

    move-object v5, v9

    .line 337
    .local v5, "hsbListener":Ljavafx/beans/InvalidationListener;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v9}, Ljavafx/scene/control/ScrollBar;->valueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 339
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewRect:Ljavafx/scene/layout/StackPane;

    move-object v10, v0

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/event/EventHandler;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/scene/layout/StackPane;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 351
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewRect:Ljavafx/scene/layout/StackPane;

    move-object v10, v0

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/event/EventHandler;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/scene/layout/StackPane;->setOnDragDetected(Ljavafx/event/EventHandler;)V

    .line 368
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewRect:Ljavafx/scene/layout/StackPane;

    sget-object v10, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    move-object v11, v0

    invoke-static {v11}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/event/EventHandler;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/layout/StackPane;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 388
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewRect:Ljavafx/scene/layout/StackPane;

    move-object v10, v0

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/event/EventHandler;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/scene/layout/StackPane;->setOnMouseDragged(Ljavafx/event/EventHandler;)V

    .line 456
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$8;->lambdaFactory$()Ljavafx/event/EventDispatcher;

    move-result-object v9

    move-object v6, v9

    .line 458
    .local v6, "blockEventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v9}, Ljavafx/scene/control/ScrollBar;->getEventDispatcher()Ljavafx/event/EventDispatcher;

    move-result-object v9

    move-object v7, v9

    .line 459
    .local v7, "oldHsbEventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object v10, v6

    move-object v11, v7

    invoke-static {v10, v11}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$9;->lambdaFactory$(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatcher;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/scene/control/ScrollBar;->setEventDispatcher(Ljavafx/event/EventDispatcher;)V

    .line 469
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v9}, Ljavafx/scene/control/ScrollBar;->getEventDispatcher()Ljavafx/event/EventDispatcher;

    move-result-object v9

    move-object v8, v9

    .line 470
    .local v8, "oldVsbEventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-object v10, v6

    move-object v11, v8

    invoke-static {v10, v11}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$10;->lambdaFactory$(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatcher;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/scene/control/ScrollBar;->setEventDispatcher(Ljavafx/event/EventDispatcher;)V

    .line 491
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewRect:Ljavafx/scene/layout/StackPane;

    sget-object v10, Ljavafx/scene/input/ScrollEvent;->SCROLL:Ljavafx/event/EventType;

    move-object v11, v0

    invoke-static {v11}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$11;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/event/EventHandler;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/layout/StackPane;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 570
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/ScrollPane;

    sget-object v10, Ljavafx/scene/input/TouchEvent;->TOUCH_PRESSED:Ljavafx/event/EventType;

    move-object v11, v0

    invoke-static {v11}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$12;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/event/EventHandler;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/ScrollPane;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 576
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/ScrollPane;

    sget-object v10, Ljavafx/scene/input/TouchEvent;->TOUCH_RELEASED:Ljavafx/event/EventType;

    move-object v11, v0

    invoke-static {v11}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$13;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/event/EventHandler;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/ScrollPane;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 582
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->consumeMouseEvents(Z)V

    .line 585
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollPane;->getHvalue()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 586
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollPane;->getVvalue()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 587
    return-void
.end method

.method private isReverseNodeOrientation()Z
    .locals 3

    .prologue
    .line 956
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 957
    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollPane;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    .line 958
    invoke-virtual {v2}, Ljavafx/scene/Node;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private synthetic lambda$initialize$444(Ljavafx/scene/input/MouseEvent;)V
    .locals 3

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, p1

    .local v1, "ev":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->requestFocus()V

    .line 270
    return-void
.end method

.method private synthetic lambda$initialize$445(Ljavafx/beans/Observable;)V
    .locals 10

    .prologue
    .line 318
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v2, p1

    .local v2, "valueModel":Ljavafx/beans/Observable;
    sget-boolean v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->IS_TOUCH_SUPPORTED:Z

    if-nez v3, :cond_0

    .line 319
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getVmin()D

    move-result-wide v4

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollPane;->getVmax()D

    move-result-wide v8

    invoke-static/range {v4 .. v9}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posY:D

    .line 324
    :goto_0
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->updatePosY()D

    move-result-wide v3

    .line 325
    return-void

    .line 322
    :cond_0
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posY:D

    goto :goto_0
.end method

.method private synthetic lambda$initialize$446(Ljavafx/beans/Observable;)V
    .locals 10

    .prologue
    .line 329
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v2, p1

    .local v2, "valueModel":Ljavafx/beans/Observable;
    sget-boolean v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->IS_TOUCH_SUPPORTED:Z

    if-nez v3, :cond_0

    .line 330
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getHmin()D

    move-result-wide v4

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollPane;->getHmax()D

    move-result-wide v8

    invoke-static/range {v4 .. v9}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posX:D

    .line 335
    :goto_0
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->updatePosX()D

    move-result-wide v3

    .line 336
    return-void

    .line 333
    :cond_0
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posX:D

    goto :goto_0
.end method

.method private synthetic lambda$initialize$447(Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    .prologue
    .line 340
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v2, p1

    .local v2, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->mouseDown:Z

    .line 341
    sget-boolean v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->IS_TOUCH_SUPPORTED:Z

    if-eqz v3, :cond_0

    .line 342
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->startSBReleasedAnimation()V

    .line 344
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->pressX:D

    .line 345
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->pressY:D

    .line 346
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->ohvalue:D

    .line 347
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->ovvalue:D

    .line 348
    return-void
.end method

.method private synthetic lambda$initialize$448(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    sget-boolean v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->IS_TOUCH_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 353
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->startSBReleasedAnimation()V

    .line 355
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->isPannable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->dragDetected:Z

    .line 357
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->saveCursor:Ljavafx/scene/Cursor;

    if-nez v2, :cond_2

    .line 358
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->getCursor()Ljavafx/scene/Cursor;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->saveCursor:Ljavafx/scene/Cursor;

    .line 359
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->saveCursor:Ljavafx/scene/Cursor;

    if-nez v2, :cond_1

    .line 360
    move-object v2, v0

    sget-object v3, Ljavafx/scene/Cursor;->DEFAULT:Ljavafx/scene/Cursor;

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->saveCursor:Ljavafx/scene/Cursor;

    .line 362
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ScrollPane;

    sget-object v3, Ljavafx/scene/Cursor;->MOVE:Ljavafx/scene/Cursor;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ScrollPane;->setCursor(Ljavafx/scene/Cursor;)V

    .line 363
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->requestLayout()V

    .line 366
    :cond_2
    return-void
.end method

.method private synthetic lambda$initialize$449(Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->mouseDown:Z

    .line 370
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->dragDetected:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 371
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->saveCursor:Ljavafx/scene/Cursor;

    if-eqz v2, :cond_0

    .line 372
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ScrollPane;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->saveCursor:Ljavafx/scene/Cursor;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ScrollPane;->setCursor(Ljavafx/scene/Cursor;)V

    .line 373
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->saveCursor:Ljavafx/scene/Cursor;

    .line 374
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->requestLayout()V

    .line 376
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->dragDetected:Z

    .line 383
    :cond_1
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posY:D

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getVmax()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_2

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posY:D

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getVmin()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_2

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posX:D

    move-object v4, v0

    .line 384
    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getHmax()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_2

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posX:D

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getHmin()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    :cond_2
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->touchDetected:Z

    if-nez v2, :cond_3

    .line 385
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->startContentsToViewport()V

    .line 387
    :cond_3
    return-void
.end method

.method private synthetic lambda$initialize$450(Ljavafx/scene/input/MouseEvent;)V
    .locals 16

    .prologue
    .line 389
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object/from16 v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    sget-boolean v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->IS_TOUCH_SUPPORTED:Z

    if-eqz v8, :cond_0

    .line 390
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->startSBReleasedAnimation()V

    .line 395
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollPane;->isPannable()Z

    move-result v8

    if-nez v8, :cond_1

    sget-boolean v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->IS_TOUCH_SUPPORTED:Z

    if-eqz v8, :cond_6

    .line 396
    :cond_1
    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->pressX:D

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-wide v2, v8

    .line 397
    .local v2, "deltaX":D
    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->pressY:D

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-wide v4, v8

    .line 401
    .local v4, "deltaY":D
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getVisibleAmount()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_4

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getVisibleAmount()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_4

    .line 402
    move-wide v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpl-double v8, v8, v10

    if-lez v8, :cond_4

    .line 403
    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->isReverseNodeOrientation()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 404
    move-wide v8, v2

    neg-double v8, v8

    move-wide v2, v8

    .line 406
    :cond_2
    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->ohvalue:D

    move-wide v10, v2

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeWidth:D

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewRect:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v14}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v14

    sub-double/2addr v12, v14

    div-double/2addr v10, v12

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v12}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v12

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v14}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v14

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v6, v8

    .line 407
    .local v6, "newHVal":D
    sget-boolean v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->IS_TOUCH_SUPPORTED:Z

    if-nez v8, :cond_8

    .line 408
    move-wide v8, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-lez v8, :cond_7

    .line 409
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v8

    move-wide v6, v8

    .line 414
    :cond_3
    :goto_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-wide v9, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 424
    .end local v6    # "newHVal":D
    :cond_4
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getVisibleAmount()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_6

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getVisibleAmount()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_6

    .line 425
    move-wide v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpl-double v8, v8, v10

    if-lez v8, :cond_6

    .line 426
    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->ovvalue:D

    move-wide v10, v4

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeHeight:D

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewRect:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v14}, Ljavafx/scene/layout/StackPane;->getHeight()D

    move-result-wide v14

    sub-double/2addr v12, v14

    div-double/2addr v10, v12

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v12}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v12

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v14}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v14

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v6, v8

    .line 427
    .local v6, "newVVal":D
    sget-boolean v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->IS_TOUCH_SUPPORTED:Z

    if-nez v8, :cond_a

    .line 428
    move-wide v8, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-lez v8, :cond_9

    .line 429
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v8

    move-wide v6, v8

    .line 434
    :cond_5
    :goto_2
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-wide v9, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 446
    .end local v2    # "deltaX":D
    .end local v4    # "deltaY":D
    .end local v6    # "newVVal":D
    :cond_6
    :goto_3
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 447
    return-void

    .line 411
    .restart local v2    # "deltaX":D
    .restart local v4    # "deltaY":D
    .local v6, "newHVal":D
    :cond_7
    move-wide v8, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    .line 412
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v8

    move-wide v6, v8

    goto/16 :goto_0

    .line 417
    :cond_8
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-wide v9, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    goto/16 :goto_1

    .line 431
    .local v6, "newVVal":D
    :cond_9
    move-wide v8, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_5

    .line 432
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v8

    move-wide v6, v8

    goto :goto_2

    .line 437
    :cond_a
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-wide v9, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    goto :goto_3
.end method

.method private static synthetic lambda$initialize$451(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 3

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "event":Ljavafx/event/Event;
    move-object v1, p1

    .local v1, "tail":Ljavafx/event/EventDispatchChain;
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "event":Ljavafx/event/Event;
    return-object v0
.end method

.method private static synthetic lambda$initialize$452(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 7

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "blockEventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v1, p1

    .local v1, "oldHsbEventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v2, p2

    .local v2, "event":Ljavafx/event/Event;
    move-object v3, p3

    .local v3, "tail":Ljavafx/event/EventDispatchChain;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/ScrollEvent;->SCROLL:Ljavafx/event/EventType;

    if-ne v4, v5, :cond_0

    move-object v4, v2

    check-cast v4, Ljavafx/scene/input/ScrollEvent;

    .line 461
    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->isDirect()Z

    move-result v4

    if-nez v4, :cond_0

    .line 462
    move-object v4, v3

    move-object v5, v0

    invoke-interface {v4, v5}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v4

    move-object v3, v4

    .line 463
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v4

    move-object v3, v4

    .line 464
    move-object v4, v3

    move-object v5, v2

    invoke-interface {v4, v5}, Ljavafx/event/EventDispatchChain;->dispatchEvent(Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v4

    move-object v0, v4

    .line 466
    .end local v0    # "blockEventDispatcher":Ljavafx/event/EventDispatcher;
    :goto_0
    return-object v0

    .restart local v0    # "blockEventDispatcher":Ljavafx/event/EventDispatcher;
    :cond_0
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljavafx/event/EventDispatcher;->dispatchEvent(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method private static synthetic lambda$initialize$453(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 7

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "blockEventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v1, p1

    .local v1, "oldVsbEventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v2, p2

    .local v2, "event":Ljavafx/event/Event;
    move-object v3, p3

    .local v3, "tail":Ljavafx/event/EventDispatchChain;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/ScrollEvent;->SCROLL:Ljavafx/event/EventType;

    if-ne v4, v5, :cond_0

    move-object v4, v2

    check-cast v4, Ljavafx/scene/input/ScrollEvent;

    .line 472
    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->isDirect()Z

    move-result v4

    if-nez v4, :cond_0

    .line 473
    move-object v4, v3

    move-object v5, v0

    invoke-interface {v4, v5}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v4

    move-object v3, v4

    .line 474
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v4

    move-object v3, v4

    .line 475
    move-object v4, v3

    move-object v5, v2

    invoke-interface {v4, v5}, Ljavafx/event/EventDispatchChain;->dispatchEvent(Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v4

    move-object v0, v4

    .line 477
    .end local v0    # "blockEventDispatcher":Ljavafx/event/EventDispatcher;
    :goto_0
    return-object v0

    .restart local v0    # "blockEventDispatcher":Ljavafx/event/EventDispatcher;
    :cond_0
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljavafx/event/EventDispatcher;->dispatchEvent(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method private synthetic lambda$initialize$454(Ljavafx/scene/input/ScrollEvent;)V
    .locals 14

    .prologue
    .line 492
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/ScrollEvent;
    sget-boolean v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->IS_TOUCH_SUPPORTED:Z

    if-eqz v8, :cond_0

    .line 493
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->startSBReleasedAnimation()V

    .line 499
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getVisibleAmount()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    .line 500
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollPane;->getVmax()D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollPane;->getVmin()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-wide v2, v8

    .line 502
    .local v2, "vRange":D
    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeHeight:D

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_7

    .line 503
    move-wide v8, v2

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeHeight:D

    div-double/2addr v8, v10

    move-wide v4, v8

    .line 508
    .local v4, "vPixelValue":D
    :goto_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/input/ScrollEvent;->getDeltaY()D

    move-result-wide v10

    neg-double v10, v10

    move-wide v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v6, v8

    .line 509
    .local v6, "newValue":D
    sget-boolean v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->IS_TOUCH_SUPPORTED:Z

    if-nez v8, :cond_8

    .line 510
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/ScrollEvent;->getDeltaY()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_2

    :cond_1
    move-object v8, v1

    .line 511
    invoke-virtual {v8}, Ljavafx/scene/input/ScrollEvent;->getDeltaY()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    .line 512
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-wide v9, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 513
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/ScrollEvent;->consume()V

    .line 531
    .end local v2    # "vRange":D
    .end local v4    # "vPixelValue":D
    .end local v6    # "newValue":D
    :cond_3
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getVisibleAmount()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_6

    .line 532
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollPane;->getHmax()D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollPane;->getHmin()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-wide v2, v8

    .line 534
    .local v2, "hRange":D
    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeWidth:D

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_c

    .line 535
    move-wide v8, v2

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeWidth:D

    div-double/2addr v8, v10

    move-wide v4, v8

    .line 541
    .local v4, "hPixelValue":D
    :goto_2
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/input/ScrollEvent;->getDeltaX()D

    move-result-wide v10

    neg-double v10, v10

    move-wide v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v6, v8

    .line 542
    .restart local v6    # "newValue":D
    sget-boolean v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->IS_TOUCH_SUPPORTED:Z

    if-nez v8, :cond_d

    .line 543
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/ScrollEvent;->getDeltaX()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_4

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_5

    :cond_4
    move-object v8, v1

    .line 544
    invoke-virtual {v8}, Ljavafx/scene/input/ScrollEvent;->getDeltaX()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_6

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_6

    .line 545
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-wide v9, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 546
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/ScrollEvent;->consume()V

    .line 564
    .end local v2    # "hRange":D
    .end local v4    # "hPixelValue":D
    .end local v6    # "newValue":D
    :cond_6
    :goto_3
    return-void

    .line 506
    .local v2, "vRange":D
    :cond_7
    const-wide/16 v8, 0x0

    move-wide v4, v8

    .local v4, "vPixelValue":D
    goto/16 :goto_0

    .line 521
    .restart local v6    # "newValue":D
    :cond_8
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/ScrollEvent;->isInertia()Z

    move-result v8

    if-eqz v8, :cond_9

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/ScrollEvent;->isInertia()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentsToViewTimeline:Ljavafx/animation/Timeline;

    if-eqz v8, :cond_9

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentsToViewTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v8}, Ljavafx/animation/Timeline;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v8

    sget-object v9, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v8, v9, :cond_3

    .line 522
    :cond_9
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-wide v9, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 523
    move-wide v8, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_a

    move-wide v8, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_b

    :cond_a
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->mouseDown:Z

    if-nez v8, :cond_b

    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->touchDetected:Z

    if-nez v8, :cond_b

    .line 524
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->startContentsToViewport()V

    .line 526
    :cond_b
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/ScrollEvent;->consume()V

    goto/16 :goto_1

    .line 538
    .end local v4    # "vPixelValue":D
    .end local v6    # "newValue":D
    .local v2, "hRange":D
    :cond_c
    const-wide/16 v8, 0x0

    move-wide v4, v8

    .local v4, "hPixelValue":D
    goto/16 :goto_2

    .line 554
    .restart local v6    # "newValue":D
    :cond_d
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/ScrollEvent;->isInertia()Z

    move-result v8

    if-eqz v8, :cond_e

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/ScrollEvent;->isInertia()Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentsToViewTimeline:Ljavafx/animation/Timeline;

    if-eqz v8, :cond_e

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentsToViewTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v8}, Ljavafx/animation/Timeline;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v8

    sget-object v9, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v8, v9, :cond_6

    .line 555
    :cond_e
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-wide v9, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 557
    move-wide v8, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_f

    move-wide v8, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_10

    :cond_f
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->mouseDown:Z

    if-nez v8, :cond_10

    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->touchDetected:Z

    if-nez v8, :cond_10

    .line 558
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->startContentsToViewport()V

    .line 560
    :cond_10
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/ScrollEvent;->consume()V

    goto/16 :goto_3
.end method

.method private synthetic lambda$initialize$455(Ljavafx/scene/input/TouchEvent;)V
    .locals 4

    .prologue
    .line 571
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/TouchEvent;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->touchDetected:Z

    .line 572
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->startSBReleasedAnimation()V

    .line 573
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/TouchEvent;->consume()V

    .line 574
    return-void
.end method

.method private synthetic lambda$initialize$456(Ljavafx/scene/input/TouchEvent;)V
    .locals 4

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/TouchEvent;
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->touchDetected:Z

    .line 578
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/TouchEvent;->consume()V

    .line 579
    return-void
.end method

.method private synthetic lambda$startContentsToViewport$459(Ljavafx/event/ActionEvent;)V
    .locals 3

    .prologue
    .line 1163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->requestLayout()V

    .line 1164
    return-void
.end method

.method private synthetic lambda$startSBReleasedAnimation$457(Ljavafx/event/ActionEvent;)V
    .locals 4

    .prologue
    .line 1105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->tempVisibility:Z

    .line 1106
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->touchDetected:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->mouseDown:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1107
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->sbTouchTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v2}, Ljavafx/animation/Timeline;->playFromStart()V

    .line 1109
    :cond_1
    return-void
.end method

.method private synthetic lambda$startSBReleasedAnimation$458(Ljavafx/event/ActionEvent;)V
    .locals 4

    .prologue
    .line 1112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->tempVisibility:Z

    .line 1113
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->requestLayout()V

    .line 1114
    return-void
.end method

.method private resetClip()V
    .locals 5

    .prologue
    .line 1082
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-object v2, v0

    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    .line 1083
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-object v2, v0

    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    .line 1084
    return-void
.end method

.method private setContentPosX(D)V
    .locals 7

    .prologue
    .line 1179
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentPosXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method private setContentPosY(D)V
    .locals 7

    .prologue
    .line 1204
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentPosYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method private updateHorizontalSB()V
    .locals 9

    .prologue
    .line 1017
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeWidth:D

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v5}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v5

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v7}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v7

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    move-wide v1, v3

    .line 1018
    .local v1, "contentRatio":D
    move-wide v3, v1

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    .line 1019
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    move-wide v6, v1

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollBar;->setVisibleAmount(D)V

    .line 1020
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getVisibleAmount()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollBar;->setBlockIncrement(D)V

    .line 1021
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    const-wide v4, 0x3fb999999999999aL    # 0.1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getVisibleAmount()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollBar;->setUnitIncrement(D)V

    .line 1029
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollBar;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1030
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->updatePosX()D

    move-result-wide v3

    .line 1038
    :goto_1
    return-void

    .line 1024
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollBar;->setVisibleAmount(D)V

    .line 1025
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollBar;->setBlockIncrement(D)V

    .line 1026
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollBar;->setUnitIncrement(D)V

    goto :goto_0

    .line 1032
    :cond_1
    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeWidth:D

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    .line 1033
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->updatePosX()D

    move-result-wide v3

    goto :goto_1

    .line 1035
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewContent:Ljavafx/scene/layout/StackPane;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->setLayoutX(D)V

    goto :goto_1
.end method

.method private updatePosX()D
    .locals 13

    .prologue
    .line 1065
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ScrollPane;

    move-object v1, v6

    .line 1066
    .local v1, "sp":Ljavafx/scene/control/ScrollPane;
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->isReverseNodeOrientation()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v6

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posX:D

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v10

    sub-double/2addr v8, v10

    sub-double/2addr v6, v8

    :goto_0
    move-wide v2, v6

    .line 1067
    .local v2, "x":D
    move-wide v6, v2

    neg-double v6, v6

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v10

    sub-double/2addr v8, v10

    div-double/2addr v6, v8

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeWidth:D

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    move-wide v4, v6

    .line 1068
    .local v4, "minX":D
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewContent:Ljavafx/scene/layout/StackPane;

    move-object v7, v0

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapPosition(D)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/layout/StackPane;->setLayoutX(D)V

    .line 1069
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollPane;->hvalueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v1

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/ScrollPane;->getHmin()D

    move-result-wide v7

    move-object v9, v0

    iget-wide v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posX:D

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/control/ScrollPane;->getHmax()D

    move-result-wide v11

    invoke-static/range {v7 .. v12}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/ScrollPane;->setHvalue(D)V

    .line 1070
    :cond_0
    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posX:D

    move-wide v0, v6

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v0

    .line 1066
    .end local v2    # "x":D
    .end local v4    # "minX":D
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    :cond_1
    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posX:D

    goto :goto_0
.end method

.method private updatePosY()D
    .locals 11

    .prologue
    .line 1074
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollPane;

    move-object v1, v4

    .line 1075
    .local v1, "sp":Ljavafx/scene/control/ScrollPane;
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posY:D

    neg-double v4, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v6

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v8

    sub-double/2addr v6, v8

    div-double/2addr v4, v6

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeHeight:D

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    move-wide v2, v4

    .line 1076
    .local v2, "minY":D
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewContent:Ljavafx/scene/layout/StackPane;

    move-object v5, v0

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapPosition(D)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/layout/StackPane;->setLayoutY(D)V

    .line 1077
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->vvalueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/ScrollPane;->getVmin()D

    move-result-wide v5

    move-object v7, v0

    iget-wide v7, v7, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posY:D

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/control/ScrollPane;->getVmax()D

    move-result-wide v9

    invoke-static/range {v5 .. v10}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/ScrollPane;->setVvalue(D)V

    .line 1078
    :cond_0
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posY:D

    move-wide v0, v4

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    return-wide v0
.end method

.method private updateVerticalSB()V
    .locals 9

    .prologue
    .line 1041
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeHeight:D

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v5}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v5

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v7}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v7

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    move-wide v1, v3

    .line 1042
    .local v1, "contentRatio":D
    move-wide v3, v1

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    .line 1043
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    move-wide v6, v1

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollBar;->setVisibleAmount(D)V

    .line 1044
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getVisibleAmount()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollBar;->setBlockIncrement(D)V

    .line 1045
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    const-wide v4, 0x3fb999999999999aL    # 0.1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getVisibleAmount()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollBar;->setUnitIncrement(D)V

    .line 1053
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollBar;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1054
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->updatePosY()D

    move-result-wide v3

    .line 1062
    :goto_1
    return-void

    .line 1048
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollBar;->setVisibleAmount(D)V

    .line 1049
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollBar;->setBlockIncrement(D)V

    .line 1050
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollBar;->setUnitIncrement(D)V

    goto :goto_0

    .line 1056
    :cond_1
    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeHeight:D

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    .line 1057
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->updatePosY()D

    move-result-wide v3

    goto :goto_1

    .line 1059
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewContent:Ljavafx/scene/layout/StackPane;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->setLayoutY(D)V

    goto :goto_1
.end method


# virtual methods
.method protected computeMinHeight(DDDDD)D
    .locals 25

    .prologue
    .line 763
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
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
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v20

    check-cast v20, Ljavafx/scene/control/ScrollPane;

    move-object/from16 v13, v20

    .line 765
    .local v13, "sp":Ljavafx/scene/control/ScrollPane;
    move-object/from16 v20, v2

    move-object/from16 v21, v13

    invoke-direct/range {v20 .. v21}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->computeHsbSizeHint(Ljavafx/scene/control/ScrollPane;)D

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 766
    .local v14, "hsbHeight":D
    move-wide/from16 v20, v14

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedTopInset()D

    move-result-wide v22

    add-double v20, v20, v22

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedBottomInset()D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v16, v20

    .line 768
    .local v16, "minHeight":D
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ScrollPane;->getMinViewportHeight()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_0

    .line 769
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ScrollPane;->getMinViewportHeight()D

    move-result-wide v20

    move-wide/from16 v22, v16

    add-double v20, v20, v22

    move-wide/from16 v2, v20

    .line 772
    .end local v2    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    :goto_0
    return-wide v2

    .line 771
    .restart local v2    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    :cond_0
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->corner:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/layout/StackPane;->minHeight(D)D

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 772
    .local v18, "h":D
    move-wide/from16 v20, v18

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_1

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    move-wide/from16 v22, v18

    mul-double v20, v20, v22

    :goto_1
    move-wide/from16 v2, v20

    goto :goto_0

    :cond_1
    const-wide/high16 v20, 0x4042000000000000L    # 36.0

    goto :goto_1
.end method

.method protected computeMinWidth(DDDDD)D
    .locals 25

    .prologue
    .line 748
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
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
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v20

    check-cast v20, Ljavafx/scene/control/ScrollPane;

    move-object/from16 v13, v20

    .line 750
    .local v13, "sp":Ljavafx/scene/control/ScrollPane;
    move-object/from16 v20, v2

    move-object/from16 v21, v13

    invoke-direct/range {v20 .. v21}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->computeVsbSizeHint(Ljavafx/scene/control/ScrollPane;)D

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 751
    .local v14, "vsbWidth":D
    move-wide/from16 v20, v14

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedLeftInset()D

    move-result-wide v22

    add-double v20, v20, v22

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedRightInset()D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v16, v20

    .line 753
    .local v16, "minWidth":D
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ScrollPane;->getMinViewportWidth()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_0

    .line 754
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ScrollPane;->getMinViewportWidth()D

    move-result-wide v20

    move-wide/from16 v22, v16

    add-double v20, v20, v22

    move-wide/from16 v2, v20

    .line 757
    .end local v2    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    :goto_0
    return-wide v2

    .line 756
    .restart local v2    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    :cond_0
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->corner:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/layout/StackPane;->minWidth(D)D

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 757
    .local v18, "w":D
    move-wide/from16 v20, v18

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_1

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    move-wide/from16 v22, v18

    mul-double v20, v20, v22

    :goto_1
    move-wide/from16 v2, v20

    goto :goto_0

    :cond_1
    const-wide/high16 v20, 0x4042000000000000L    # 36.0

    goto :goto_1
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 21

    .prologue
    .line 731
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-wide/from16 v1, p1

    .local v1, "width":D
    move-wide/from16 v3, p3

    .local v3, "topInset":D
    move-wide/from16 v5, p5

    .local v5, "rightInset":D
    move-wide/from16 v7, p7

    .local v7, "bottomInset":D
    move-wide/from16 v9, p9

    .local v9, "leftInset":D
    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v16

    check-cast v16, Ljavafx/scene/control/ScrollPane;

    move-object/from16 v11, v16

    .line 733
    .local v11, "sp":Ljavafx/scene/control/ScrollPane;
    move-object/from16 v16, v0

    move-object/from16 v17, v11

    invoke-direct/range {v16 .. v17}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->computeHsbSizeHint(Ljavafx/scene/control/ScrollPane;)D

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 734
    .local v12, "hsbHeight":D
    move-wide/from16 v16, v12

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedTopInset()D

    move-result-wide v18

    add-double v16, v16, v18

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedBottomInset()D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v14, v16

    .line 736
    .local v14, "minHeight":D
    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/ScrollPane;->getPrefViewportHeight()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-lez v16, :cond_0

    .line 737
    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/ScrollPane;->getPrefViewportHeight()D

    move-result-wide v16

    move-wide/from16 v18, v14

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    .line 743
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    :goto_0
    return-wide v0

    .line 739
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    :cond_0
    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/ScrollPane;->getContent()Ljavafx/scene/Node;

    move-result-object v16

    if-eqz v16, :cond_1

    .line 740
    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/ScrollPane;->getContent()Ljavafx/scene/Node;

    move-result-object v16

    move-wide/from16 v17, v1

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v16

    move-wide/from16 v18, v14

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    goto :goto_0

    .line 743
    :cond_1
    move-wide/from16 v16, v14

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    goto :goto_0
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 21

    .prologue
    .line 714
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
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
    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v16

    check-cast v16, Ljavafx/scene/control/ScrollPane;

    move-object/from16 v11, v16

    .line 716
    .local v11, "sp":Ljavafx/scene/control/ScrollPane;
    move-object/from16 v16, v0

    move-object/from16 v17, v11

    invoke-direct/range {v16 .. v17}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->computeVsbSizeHint(Ljavafx/scene/control/ScrollPane;)D

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 717
    .local v12, "vsbWidth":D
    move-wide/from16 v16, v12

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedLeftInset()D

    move-result-wide v18

    add-double v16, v16, v18

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedRightInset()D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v14, v16

    .line 719
    .local v14, "minWidth":D
    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/ScrollPane;->getPrefViewportWidth()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-lez v16, :cond_0

    .line 720
    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/ScrollPane;->getPrefViewportWidth()D

    move-result-wide v16

    move-wide/from16 v18, v14

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    .line 726
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    :goto_0
    return-wide v0

    .line 722
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    :cond_0
    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/ScrollPane;->getContent()Ljavafx/scene/Node;

    move-result-object v16

    if-eqz v16, :cond_1

    .line 723
    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/ScrollPane;->getContent()Ljavafx/scene/Node;

    move-result-object v16

    move-wide/from16 v17, v1

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v16

    move-wide/from16 v18, v14

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    goto :goto_0

    .line 726
    :cond_1
    move-wide/from16 v16, v14

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    goto :goto_0
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 591
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v2, p1

    .local v2, "p":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 592
    const-string v3, "NODE"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 593
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getContent()Ljavafx/scene/Node;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 594
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    if-eqz v3, :cond_0

    .line 595
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->layoutBoundsProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 596
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->layoutBoundsProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->boundsChangeListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 597
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewContent:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 599
    :cond_0
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getContent()Ljavafx/scene/Node;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    .line 600
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    if-eqz v3, :cond_1

    .line 601
    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    invoke-virtual {v5}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeWidth:D

    .line 602
    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    invoke-virtual {v5}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeHeight:D

    .line 603
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewContent:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/scene/Node;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 604
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->layoutBoundsProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 605
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->layoutBoundsProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->boundsChangeListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 608
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->requestLayout()V

    .line 631
    :cond_2
    :goto_0
    return-void

    .line 609
    :cond_3
    const-string v3, "FIT_TO_WIDTH"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "FIT_TO_HEIGHT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 610
    :cond_4
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->requestLayout()V

    .line 611
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewRect:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->requestLayout()V

    goto :goto_0

    .line 612
    :cond_5
    const-string v3, "HBAR_POLICY"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "VBAR_POLICY"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 614
    :cond_6
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->requestLayout()V

    goto :goto_0

    .line 615
    :cond_7
    const-string v3, "HVALUE"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 616
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getHvalue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    goto :goto_0

    .line 617
    :cond_8
    const-string v3, "HMAX"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 618
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getHmax()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollBar;->setMax(D)V

    goto :goto_0

    .line 619
    :cond_9
    const-string v3, "HMIN"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 620
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getHmin()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollBar;->setMin(D)V

    goto/16 :goto_0

    .line 621
    :cond_a
    const-string v3, "VVALUE"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 622
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getVvalue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    goto/16 :goto_0

    .line 623
    :cond_b
    const-string v3, "VMAX"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 624
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getVmax()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollBar;->setMax(D)V

    goto/16 :goto_0

    .line 625
    :cond_c
    const-string v3, "VMIN"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 626
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getVmin()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollBar;->setMin(D)V

    goto/16 :goto_0

    .line 627
    :cond_d
    const-string v3, "VIEWPORT_SIZE_HINT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 629
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->requestLayout()V

    goto/16 :goto_0
.end method

.method public hsbDecrement()V
    .locals 2

    .prologue
    .line 679
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollBar;->decrement()V

    .line 680
    :cond_0
    return-void
.end method

.method public hsbIncrement()V
    .locals 2

    .prologue
    .line 676
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollBar;->increment()V

    .line 677
    :cond_0
    return-void
.end method

.method public hsbPageDecrement()V
    .locals 2

    .prologue
    .line 688
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollBar;->decrement()V

    .line 689
    :cond_0
    return-void
.end method

.method public hsbPageIncrement()V
    .locals 2

    .prologue
    .line 684
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollBar;->increment()V

    .line 685
    :cond_0
    return-void
.end method

.method protected layoutChildren(DDDD)V
    .locals 49

    .prologue
    .line 799
    move-object/from16 v4, p0

    .local v4, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-wide/from16 v5, p1

    .local v5, "x":D
    move-wide/from16 v7, p3

    .local v7, "y":D
    move-wide/from16 v9, p5

    .local v9, "w":D
    move-wide/from16 v11, p7

    .local v11, "h":D
    move-object/from16 v35, v4

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v35

    check-cast v35, Ljavafx/scene/control/ScrollPane;

    move-object/from16 v13, v35

    .line 800
    .local v13, "control":Ljavafx/scene/control/ScrollPane;
    move-object/from16 v35, v13

    invoke-virtual/range {v35 .. v35}, Ljavafx/scene/control/ScrollPane;->getPadding()Ljavafx/geometry/Insets;

    move-result-object v35

    move-object/from16 v14, v35

    .line 801
    .local v14, "padding":Ljavafx/geometry/Insets;
    move-object/from16 v35, v4

    move-object/from16 v36, v14

    invoke-virtual/range {v36 .. v36}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v36

    invoke-virtual/range {v35 .. v37}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v35

    move-wide/from16 v15, v35

    .line 802
    .local v15, "rightPadding":D
    move-object/from16 v35, v4

    move-object/from16 v36, v14

    invoke-virtual/range {v36 .. v36}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v36

    invoke-virtual/range {v35 .. v37}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v35

    move-wide/from16 v17, v35

    .line 803
    .local v17, "leftPadding":D
    move-object/from16 v35, v4

    move-object/from16 v36, v14

    invoke-virtual/range {v36 .. v36}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v36

    invoke-virtual/range {v35 .. v37}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v35

    move-wide/from16 v19, v35

    .line 804
    .local v19, "topPadding":D
    move-object/from16 v35, v4

    move-object/from16 v36, v14

    invoke-virtual/range {v36 .. v36}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v36

    invoke-virtual/range {v35 .. v37}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v35

    move-wide/from16 v21, v35

    .line 806
    .local v21, "bottomPadding":D
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v35, v0

    move-object/from16 v36, v13

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/control/ScrollPane;->getVmin()D

    move-result-wide v36

    invoke-virtual/range {v35 .. v37}, Ljavafx/scene/control/ScrollBar;->setMin(D)V

    .line 807
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v35, v0

    move-object/from16 v36, v13

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/control/ScrollPane;->getVmax()D

    move-result-wide v36

    invoke-virtual/range {v35 .. v37}, Ljavafx/scene/control/ScrollBar;->setMax(D)V

    .line 810
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v35, v0

    move-object/from16 v36, v13

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/control/ScrollPane;->getHmin()D

    move-result-wide v36

    invoke-virtual/range {v35 .. v37}, Ljavafx/scene/control/ScrollBar;->setMin(D)V

    .line 811
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v35, v0

    move-object/from16 v36, v13

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/control/ScrollPane;->getHmax()D

    move-result-wide v36

    invoke-virtual/range {v35 .. v37}, Ljavafx/scene/control/ScrollBar;->setMax(D)V

    .line 813
    move-object/from16 v35, v4

    move-wide/from16 v36, v9

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    .line 814
    move-object/from16 v35, v4

    move-wide/from16 v36, v11

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    .line 819
    const-wide/16 v35, 0x0

    move-wide/from16 v23, v35

    .line 820
    .local v23, "hsbWidth":D
    const-wide/16 v35, 0x0

    move-wide/from16 v25, v35

    .line 822
    .local v25, "vsbHeight":D
    move-object/from16 v35, v4

    move-object/from16 v36, v4

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    move-wide/from16 v36, v0

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    move-wide/from16 v38, v0

    invoke-direct/range {v35 .. v39}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->computeScrollNodeSize(DD)V

    .line 823
    move-object/from16 v35, v4

    invoke-direct/range {v35 .. v35}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->computeScrollBarSize()V

    .line 825
    const/16 v35, 0x0

    move/from16 v27, v35

    .local v27, "i":I
    :goto_0
    move/from16 v35, v27

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_4

    .line 826
    move-object/from16 v35, v4

    move-object/from16 v36, v4

    invoke-direct/range {v36 .. v36}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->determineVerticalSBVisible()Z

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbvis:Z

    .line 827
    move-object/from16 v35, v4

    move-object/from16 v36, v4

    invoke-direct/range {v36 .. v36}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->determineHorizontalSBVisible()Z

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbvis:Z

    .line 829
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbvis:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    sget-boolean v35, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->IS_TOUCH_SUPPORTED:Z

    if-nez v35, :cond_0

    .line 830
    move-object/from16 v35, v4

    move-wide/from16 v36, v9

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbWidth:D

    move-wide/from16 v38, v0

    sub-double v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    .line 832
    :cond_0
    move-wide/from16 v35, v9

    move-wide/from16 v37, v17

    add-double v35, v35, v37

    move-wide/from16 v37, v15

    add-double v35, v35, v37

    move-object/from16 v37, v4

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbvis:Z

    move/from16 v37, v0

    if-eqz v37, :cond_2

    move-object/from16 v37, v4

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbWidth:D

    move-wide/from16 v37, v0

    :goto_1
    sub-double v35, v35, v37

    move-wide/from16 v23, v35

    .line 833
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbvis:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1

    sget-boolean v35, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->IS_TOUCH_SUPPORTED:Z

    if-nez v35, :cond_1

    .line 834
    move-object/from16 v35, v4

    move-wide/from16 v36, v11

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbHeight:D

    move-wide/from16 v38, v0

    sub-double v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    .line 836
    :cond_1
    move-wide/from16 v35, v11

    move-wide/from16 v37, v19

    add-double v35, v35, v37

    move-wide/from16 v37, v21

    add-double v35, v35, v37

    move-object/from16 v37, v4

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbvis:Z

    move/from16 v37, v0

    if-eqz v37, :cond_3

    move-object/from16 v37, v4

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbHeight:D

    move-wide/from16 v37, v0

    :goto_2
    sub-double v35, v35, v37

    move-wide/from16 v25, v35

    .line 825
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0

    .line 832
    :cond_2
    const-wide/16 v37, 0x0

    goto :goto_1

    .line 836
    :cond_3
    const-wide/16 v37, 0x0

    goto :goto_2

    .line 840
    :cond_4
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    move-object/from16 v35, v0

    if-eqz v35, :cond_5

    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollNode:Ljavafx/scene/Node;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljavafx/scene/Node;->isResizable()Z

    move-result v35

    if-eqz v35, :cond_5

    .line 842
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbvis:Z

    move/from16 v35, v0

    if-eqz v35, :cond_8

    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbvis:Z

    move/from16 v35, v0

    if-eqz v35, :cond_8

    .line 844
    move-object/from16 v35, v4

    move-object/from16 v36, v4

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    move-wide/from16 v36, v0

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    move-wide/from16 v38, v0

    invoke-direct/range {v35 .. v39}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->computeScrollNodeSize(DD)V

    .line 868
    :cond_5
    :goto_3
    move-object/from16 v35, v4

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedLeftInset()D

    move-result-wide v35

    move-wide/from16 v37, v17

    sub-double v35, v35, v37

    move-wide/from16 v27, v35

    .line 869
    .local v27, "cx":D
    move-object/from16 v35, v4

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedTopInset()D

    move-result-wide v35

    move-wide/from16 v37, v19

    sub-double v35, v35, v37

    move-wide/from16 v29, v35

    .line 871
    .local v29, "cy":D
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v35, v0

    move-object/from16 v36, v4

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbvis:Z

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljavafx/scene/control/ScrollBar;->setVisible(Z)V

    .line 872
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbvis:Z

    move/from16 v35, v0

    if-eqz v35, :cond_6

    .line 885
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v35, v0

    move-object/from16 v36, v4

    invoke-virtual/range {v36 .. v36}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedLeftInset()D

    move-result-wide v36

    move-wide/from16 v38, v9

    add-double v36, v36, v38

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbWidth:D

    move-wide/from16 v38, v0

    sub-double v36, v36, v38

    move-wide/from16 v38, v15

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    cmpg-double v38, v38, v40

    if-gez v38, :cond_a

    const-wide/16 v38, 0x0

    :goto_4
    add-double v36, v36, v38

    move-wide/from16 v38, v29

    move-object/from16 v40, v4

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbWidth:D

    move-wide/from16 v40, v0

    move-wide/from16 v42, v25

    invoke-virtual/range {v35 .. v43}, Ljavafx/scene/control/ScrollBar;->resizeRelocate(DDDD)V

    .line 888
    :cond_6
    move-object/from16 v35, v4

    invoke-direct/range {v35 .. v35}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->updateVerticalSB()V

    .line 890
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v35, v0

    move-object/from16 v36, v4

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbvis:Z

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljavafx/scene/control/ScrollBar;->setVisible(Z)V

    .line 891
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbvis:Z

    move/from16 v35, v0

    if-eqz v35, :cond_7

    .line 904
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v35, v0

    move-wide/from16 v36, v27

    move-object/from16 v38, v4

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedTopInset()D

    move-result-wide v38

    move-wide/from16 v40, v11

    add-double v38, v38, v40

    move-object/from16 v40, v4

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbHeight:D

    move-wide/from16 v40, v0

    sub-double v38, v38, v40

    move-wide/from16 v40, v21

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    cmpg-double v40, v40, v42

    if-gez v40, :cond_b

    const-wide/16 v40, 0x0

    :goto_5
    add-double v38, v38, v40

    move-wide/from16 v40, v23

    move-object/from16 v42, v4

    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbHeight:D

    move-wide/from16 v42, v0

    invoke-virtual/range {v35 .. v43}, Ljavafx/scene/control/ScrollBar;->resizeRelocate(DDDD)V

    .line 907
    :cond_7
    move-object/from16 v35, v4

    invoke-direct/range {v35 .. v35}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->updateHorizontalSB()V

    .line 909
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewRect:Ljavafx/scene/layout/StackPane;

    move-object/from16 v35, v0

    move-object/from16 v36, v4

    invoke-virtual/range {v36 .. v36}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedLeftInset()D

    move-result-wide v36

    move-object/from16 v38, v4

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedTopInset()D

    move-result-wide v38

    move-object/from16 v40, v4

    move-object/from16 v41, v4

    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    move-wide/from16 v41, v0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v40

    move-object/from16 v42, v4

    move-object/from16 v43, v4

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    move-wide/from16 v43, v0

    invoke-virtual/range {v42 .. v44}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v42

    invoke-virtual/range {v35 .. v43}, Ljavafx/scene/layout/StackPane;->resizeRelocate(DDDD)V

    .line 910
    move-object/from16 v35, v4

    invoke-direct/range {v35 .. v35}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->resetClip()V

    .line 912
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbvis:Z

    move/from16 v35, v0

    if-eqz v35, :cond_c

    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbvis:Z

    move/from16 v35, v0

    if-eqz v35, :cond_c

    .line 913
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->corner:Ljavafx/scene/layout/StackPane;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 914
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbWidth:D

    move-wide/from16 v35, v0

    move-wide/from16 v31, v35

    .line 915
    .local v31, "cornerWidth":D
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbHeight:D

    move-wide/from16 v35, v0

    move-wide/from16 v33, v35

    .line 916
    .local v33, "cornerHeight":D
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->corner:Ljavafx/scene/layout/StackPane;

    move-object/from16 v35, v0

    move-object/from16 v36, v4

    move-object/from16 v37, v4

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/control/ScrollBar;->getLayoutX()D

    move-result-wide v37

    invoke-virtual/range {v36 .. v38}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapPosition(D)D

    move-result-wide v36

    move-object/from16 v38, v4

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/control/ScrollBar;->getLayoutY()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapPosition(D)D

    move-result-wide v38

    move-object/from16 v40, v4

    move-wide/from16 v41, v31

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v40

    move-object/from16 v42, v4

    move-wide/from16 v43, v33

    invoke-virtual/range {v42 .. v44}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v42

    invoke-virtual/range {v35 .. v43}, Ljavafx/scene/layout/StackPane;->resizeRelocate(DDDD)V

    .line 917
    .line 920
    .end local v31    # "cornerWidth":D
    .end local v33    # "cornerHeight":D
    :goto_6
    move-object/from16 v35, v13

    new-instance v36, Ljavafx/geometry/BoundingBox;

    move-object/from16 v47, v36

    move-object/from16 v36, v47

    move-object/from16 v37, v47

    move-object/from16 v38, v4

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewContent:Ljavafx/scene/layout/StackPane;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/layout/StackPane;->getLayoutX()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapPosition(D)D

    move-result-wide v38

    move-object/from16 v40, v4

    move-object/from16 v41, v4

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->viewContent:Ljavafx/scene/layout/StackPane;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljavafx/scene/layout/StackPane;->getLayoutY()D

    move-result-wide v41

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapPosition(D)D

    move-result-wide v40

    move-object/from16 v42, v4

    move-object/from16 v43, v4

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    move-wide/from16 v43, v0

    invoke-virtual/range {v42 .. v44}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v42

    move-object/from16 v44, v4

    move-object/from16 v45, v4

    move-object/from16 v0, v45

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    move-wide/from16 v45, v0

    invoke-virtual/range {v44 .. v46}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snapSize(D)D

    move-result-wide v44

    invoke-direct/range {v37 .. v45}, Ljavafx/geometry/BoundingBox;-><init>(DDDD)V

    invoke-virtual/range {v35 .. v36}, Ljavafx/scene/control/ScrollPane;->setViewportBounds(Ljavafx/geometry/Bounds;)V

    .line 921
    return-void

    .line 846
    .end local v29    # "cy":D
    .local v27, "i":I
    :cond_8
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbvis:Z

    move/from16 v35, v0

    if-eqz v35, :cond_9

    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbvis:Z

    move/from16 v35, v0

    if-nez v35, :cond_9

    .line 847
    move-object/from16 v35, v4

    move-object/from16 v36, v4

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    move-wide/from16 v36, v0

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    move-wide/from16 v38, v0

    invoke-direct/range {v35 .. v39}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->computeScrollNodeSize(DD)V

    .line 848
    move-object/from16 v35, v4

    move-object/from16 v36, v4

    invoke-direct/range {v36 .. v36}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->determineVerticalSBVisible()Z

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbvis:Z

    .line 849
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbvis:Z

    move/from16 v35, v0

    if-eqz v35, :cond_5

    .line 851
    move-object/from16 v35, v4

    move-object/from16 v47, v35

    move-object/from16 v35, v47

    move-object/from16 v36, v47

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    move-wide/from16 v36, v0

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbWidth:D

    move-wide/from16 v38, v0

    sub-double v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    .line 852
    move-wide/from16 v35, v23

    move-object/from16 v37, v4

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbWidth:D

    move-wide/from16 v37, v0

    sub-double v35, v35, v37

    move-wide/from16 v23, v35

    .line 853
    move-object/from16 v35, v4

    move-object/from16 v36, v4

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    move-wide/from16 v36, v0

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    move-wide/from16 v38, v0

    invoke-direct/range {v35 .. v39}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->computeScrollNodeSize(DD)V

    goto/16 :goto_3

    .line 855
    :cond_9
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbvis:Z

    move/from16 v35, v0

    if-eqz v35, :cond_5

    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbvis:Z

    move/from16 v35, v0

    if-nez v35, :cond_5

    .line 856
    move-object/from16 v35, v4

    move-object/from16 v36, v4

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    move-wide/from16 v36, v0

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    move-wide/from16 v38, v0

    invoke-direct/range {v35 .. v39}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->computeScrollNodeSize(DD)V

    .line 857
    move-object/from16 v35, v4

    move-object/from16 v36, v4

    invoke-direct/range {v36 .. v36}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->determineHorizontalSBVisible()Z

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbvis:Z

    .line 858
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbvis:Z

    move/from16 v35, v0

    if-eqz v35, :cond_5

    .line 860
    move-object/from16 v35, v4

    move-object/from16 v47, v35

    move-object/from16 v35, v47

    move-object/from16 v36, v47

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    move-wide/from16 v36, v0

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbHeight:D

    move-wide/from16 v38, v0

    sub-double v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    .line 861
    move-wide/from16 v35, v25

    move-object/from16 v37, v4

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbHeight:D

    move-wide/from16 v37, v0

    sub-double v35, v35, v37

    move-wide/from16 v25, v35

    .line 862
    move-object/from16 v35, v4

    move-object/from16 v36, v4

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    move-wide/from16 v36, v0

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    move-wide/from16 v38, v0

    invoke-direct/range {v35 .. v39}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->computeScrollNodeSize(DD)V

    goto/16 :goto_3

    .line 885
    .local v27, "cx":D
    .restart local v29    # "cy":D
    :cond_a
    move-wide/from16 v38, v15

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    sub-double v38, v38, v40

    goto/16 :goto_4

    .line 904
    :cond_b
    move-wide/from16 v40, v21

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    sub-double v40, v40, v42

    goto/16 :goto_5

    .line 918
    :cond_c
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->corner:Ljavafx/scene/layout/StackPane;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    goto/16 :goto_6
.end method

.method public onTraverse(Ljavafx/scene/Node;Ljavafx/geometry/Bounds;)V
    .locals 5

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, p1

    .local v1, "n":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "b":Ljavafx/geometry/Bounds;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->scrollBoundsIntoView(Ljavafx/geometry/Bounds;)V

    .line 673
    return-void
.end method

.method protected varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1230
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$7;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1233
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    :goto_0
    return-object v0

    .line 1231
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-object v0, v3

    goto :goto_0

    .line 1232
    :pswitch_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object v0, v3

    goto :goto_0

    .line 1230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method scrollBoundsIntoView(Ljavafx/geometry/Bounds;)V
    .locals 14

    .prologue
    .line 634
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, p1

    .local v1, "b":Ljavafx/geometry/Bounds;
    const-wide/16 v8, 0x0

    move-wide v2, v8

    .line 635
    .local v2, "dx":D
    const-wide/16 v8, 0x0

    move-wide v4, v8

    .line 636
    .local v4, "dy":D
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    .line 637
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedLeftInset()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-wide v2, v8

    .line 639
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedLeftInset()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    .line 640
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    sub-double/2addr v8, v10

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedLeftInset()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-wide v2, v8

    .line 642
    :cond_1
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedTopInset()D

    move-result-wide v10

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    add-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-lez v8, :cond_2

    .line 643
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedTopInset()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-wide v4, v8

    .line 645
    :cond_2
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedTopInset()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    .line 646
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v8

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    sub-double/2addr v8, v10

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->snappedTopInset()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-wide v4, v8

    .line 651
    :cond_3
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_4

    .line 652
    move-wide v8, v2

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v10

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v12}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v12

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeWidth:D

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentWidth:D

    sub-double/2addr v10, v12

    div-double/2addr v8, v10

    move-wide v6, v8

    .line 654
    .local v6, "sdx":D
    move-wide v8, v6

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    move-wide v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->signum(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v12}, Ljavafx/scene/control/ScrollBar;->getUnitIncrement()D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v6, v8

    .line 655
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v9}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v9

    move-wide v11, v6

    add-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 656
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollPane;->requestLayout()V

    .line 658
    .end local v6    # "sdx":D
    :cond_4
    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_5

    .line 659
    move-wide v8, v4

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v10

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v12}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v12

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->nodeHeight:D

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentHeight:D

    sub-double/2addr v10, v12

    div-double/2addr v8, v10

    move-wide v6, v8

    .line 661
    .local v6, "sdy":D
    move-wide v8, v6

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    move-wide v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->signum(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v12}, Ljavafx/scene/control/ScrollBar;->getUnitIncrement()D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v6, v8

    .line 662
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v9}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v9

    move-wide v11, v6

    add-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 663
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollPane;->requestLayout()V

    .line 666
    .end local v6    # "sdy":D
    :cond_5
    return-void
.end method

.method protected startContentsToViewport()V
    .locals 20

    .prologue
    .line 1123
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posX:D

    move-wide v2, v6

    .line 1124
    .local v2, "newPosX":D
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posY:D

    move-wide v4, v6

    .line 1126
    .local v4, "newPosY":D
    move-object v6, v1

    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posX:D

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->setContentPosX(D)V

    .line 1127
    move-object v6, v1

    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posY:D

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->setContentPosY(D)V

    .line 1129
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posY:D

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollPane;->getVmax()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_4

    .line 1130
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollPane;->getVmax()D

    move-result-wide v6

    move-wide v4, v6

    .line 1137
    :cond_0
    :goto_0
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posX:D

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollPane;->getHmax()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_5

    .line 1138
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollPane;->getHmax()D

    move-result-wide v6

    move-wide v2, v6

    .line 1144
    :cond_1
    :goto_1
    sget-boolean v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->IS_TOUCH_SUPPORTED:Z

    if-nez v6, :cond_2

    .line 1145
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->startSBReleasedAnimation()V

    .line 1151
    :cond_2
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentsToViewTimeline:Ljavafx/animation/Timeline;

    if-eqz v6, :cond_3

    .line 1152
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentsToViewTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v6}, Ljavafx/animation/Timeline;->stop()V

    .line 1154
    :cond_3
    move-object v6, v1

    new-instance v7, Ljavafx/animation/Timeline;

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    invoke-direct {v8}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentsToViewTimeline:Ljavafx/animation/Timeline;

    .line 1158
    move-object v6, v1

    new-instance v7, Ljavafx/animation/KeyFrame;

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    const-wide/high16 v9, 0x4049000000000000L    # 50.0

    invoke-static {v9, v10}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljavafx/animation/KeyValue;

    invoke-direct {v8, v9, v10}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentsToViewKF1:Ljavafx/animation/KeyFrame;

    .line 1162
    move-object v6, v1

    new-instance v7, Ljavafx/animation/KeyFrame;

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    const-wide v9, 0x4062c00000000000L    # 150.0

    invoke-static {v9, v10}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v9

    move-object v10, v1

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$16;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/event/EventHandler;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljavafx/animation/KeyValue;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    const/4 v13, 0x0

    new-instance v14, Ljavafx/animation/KeyValue;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentPosX:Ljavafx/beans/property/DoubleProperty;

    move-object/from16 v16, v0

    move-wide/from16 v17, v2

    .line 1165
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v14, v12, v13

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    const/4 v13, 0x1

    new-instance v14, Ljavafx/animation/KeyValue;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentPosY:Ljavafx/beans/property/DoubleProperty;

    move-object/from16 v16, v0

    move-wide/from16 v17, v4

    .line 1166
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v14, v12, v13

    invoke-direct {v8, v9, v10, v11}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentsToViewKF2:Ljavafx/animation/KeyFrame;

    .line 1172
    move-object v6, v1

    new-instance v7, Ljavafx/animation/KeyFrame;

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    const-wide v9, 0x4097700000000000L    # 1500.0

    invoke-static {v9, v10}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljavafx/animation/KeyValue;

    invoke-direct {v8, v9, v10}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentsToViewKF3:Ljavafx/animation/KeyFrame;

    .line 1173
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentsToViewTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v6}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljavafx/animation/KeyFrame;

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    const/4 v9, 0x0

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentsToViewKF1:Ljavafx/animation/KeyFrame;

    aput-object v10, v8, v9

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    const/4 v9, 0x1

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentsToViewKF2:Ljavafx/animation/KeyFrame;

    aput-object v10, v8, v9

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    const/4 v9, 0x2

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentsToViewKF3:Ljavafx/animation/KeyFrame;

    aput-object v10, v8, v9

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v6

    .line 1174
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentsToViewTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v6}, Ljavafx/animation/Timeline;->playFromStart()V

    .line 1175
    return-void

    .line 1132
    :cond_4
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posY:D

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollPane;->getVmin()D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 1133
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollPane;->getVmin()D

    move-result-wide v6

    move-wide v4, v6

    goto/16 :goto_0

    .line 1140
    :cond_5
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->posX:D

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollPane;->getHmin()D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 1141
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollPane;->getHmin()D

    move-result-wide v6

    move-wide v2, v6

    goto/16 :goto_1
.end method

.method protected startSBReleasedAnimation()V
    .locals 8

    .prologue
    .line 1098
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->sbTouchTimeline:Ljavafx/animation/Timeline;

    if-nez v1, :cond_0

    .line 1103
    move-object v1, v0

    new-instance v2, Ljavafx/animation/Timeline;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->sbTouchTimeline:Ljavafx/animation/Timeline;

    .line 1104
    move-object v1, v0

    new-instance v2, Ljavafx/animation/KeyFrame;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v4

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$14;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/event/EventHandler;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljavafx/animation/KeyValue;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->sbTouchKF1:Ljavafx/animation/KeyFrame;

    .line 1111
    move-object v1, v0

    new-instance v2, Ljavafx/animation/KeyFrame;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-wide v4, 0x408f400000000000L    # 1000.0

    invoke-static {v4, v5}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v4

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$15;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/event/EventHandler;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljavafx/animation/KeyValue;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->sbTouchKF2:Ljavafx/animation/KeyFrame;

    .line 1115
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->sbTouchTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v1}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljavafx/animation/KeyFrame;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->sbTouchKF1:Ljavafx/animation/KeyFrame;

    aput-object v5, v3, v4

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->sbTouchKF2:Ljavafx/animation/KeyFrame;

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v1

    .line 1117
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->sbTouchTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v1}, Ljavafx/animation/Timeline;->playFromStart()V

    .line 1118
    return-void
.end method

.method public vsbDecrement()V
    .locals 2

    .prologue
    .line 695
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollBar;->decrement()V

    .line 696
    :cond_0
    return-void
.end method

.method public vsbIncrement()V
    .locals 2

    .prologue
    .line 692
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollBar;->increment()V

    .line 693
    :cond_0
    return-void
.end method

.method public vsbPageDecrement()V
    .locals 2

    .prologue
    .line 704
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollBar;->decrement()V

    .line 705
    :cond_0
    return-void
.end method

.method public vsbPageIncrement()V
    .locals 2

    .prologue
    .line 700
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollBar;->increment()V

    .line 701
    :cond_0
    return-void
.end method

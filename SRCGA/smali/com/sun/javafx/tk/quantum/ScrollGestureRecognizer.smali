.class Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
.super Ljava/lang/Object;
.source "ScrollGestureRecognizer.java"

# interfaces
.implements Lcom/sun/javafx/tk/quantum/GestureRecognizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;,
        Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$TouchPointTracker;
    }
.end annotation


# static fields
.field private static MAX_INITIAL_VELOCITY:D

.field private static SCROLL_INERTIA_ENABLED:Z

.field private static SCROLL_INERTIA_MILLIS:D

.field private static SCROLL_THRESHOLD:D


# instance fields
.field private centerAbsX:D

.field private centerAbsY:D

.field private centerX:D

.field private centerY:D

.field private currentTouchCount:I

.field private deltaX:D

.field private deltaY:D

.field private direct:Z

.field private factorX:D

.field private factorY:D

.field inertiaLastTime:D

.field private inertiaScrollVelocity:Ljavafx/beans/property/DoubleProperty;

.field private inertiaTimeline:Ljavafx/animation/Timeline;

.field private initialInertiaScrollVelocity:D

.field private lastCenterAbsX:D

.field private lastCenterAbsY:D

.field private lastTouchCount:I

.field private lastTouchEventTime:D

.field private modifiers:I

.field private scene:Lcom/sun/javafx/tk/quantum/ViewScene;

.field private scrollStartTime:D

.field private state:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

.field private totalDeltaX:D

.field private totalDeltaY:D

.field private touchPointsPressed:Z

.field private touchPointsSetChanged:Z

.field private trackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$TouchPointTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    sput-wide v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->SCROLL_THRESHOLD:D

    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->SCROLL_INERTIA_ENABLED:Z

    .line 50
    const-wide v0, 0x408f400000000000L    # 1000.0

    sput-wide v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->MAX_INITIAL_VELOCITY:D

    .line 51
    const-wide v0, 0x40a7700000000000L    # 3000.0

    sput-wide v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->SCROLL_INERTIA_MILLIS:D

    .line 53
    invoke-static {}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$6;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    return-void
.end method

.method constructor <init>(Lcom/sun/javafx/tk/quantum/ViewScene;)V
    .locals 7

    .prologue
    .line 103
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    move-object v2, p1

    .local v2, "scene":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 76
    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;->IDLE:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    .line 77
    move-object v3, v1

    new-instance v4, Ljavafx/animation/Timeline;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->inertiaTimeline:Ljavafx/animation/Timeline;

    .line 78
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->inertiaScrollVelocity:Ljavafx/beans/property/DoubleProperty;

    .line 79
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->initialInertiaScrollVelocity:D

    .line 80
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->scrollStartTime:D

    .line 81
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->lastTouchEventTime:D

    .line 83
    move-object v3, v1

    new-instance v4, Ljava/util/HashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->trackers:Ljava/util/Map;

    .line 89
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->currentTouchCount:I

    .line 101
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->inertiaLastTime:D

    .line 104
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 105
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->inertiaScrollVelocity:Ljavafx/beans/property/DoubleProperty;

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 119
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->lambda$new$423(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->lambda$notifyEndTouchEvent$424(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;IDD)Ljava/lang/Void;
    .locals 12

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-object v6, v0

    move v7, v1

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->lambda$sendScrollStartedEvent$425(IDD)Ljava/lang/Void;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;IDDZ)Ljava/lang/Void;
    .locals 14

    move-object v0, p0

    move v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-object v7, v0

    move v8, v1

    move-wide v9, v2

    move-wide v11, v4

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->lambda$sendScrollEvent$426(IDDZ)Ljava/lang/Void;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;IDD)Ljava/lang/Void;
    .locals 12

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-object v6, v0

    move v7, v1

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->lambda$sendScrollFinishedEvent$427(IDD)Ljava/lang/Void;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method static synthetic access$lambda$5()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->lambda$static$422()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method private calculateCenter()V
    .locals 18

    .prologue
    .line 154
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->currentTouchCount:I

    if-gtz v12, :cond_0

    .line 155
    new-instance v12, Ljava/lang/RuntimeException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const-string v14, "Error in Scroll gesture recognition: touch count is zero!"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 158
    :cond_0
    const-wide/16 v12, 0x0

    move-wide v2, v12

    .line 159
    .local v2, "totalX":D
    const-wide/16 v12, 0x0

    move-wide v4, v12

    .line 160
    .local v4, "totalY":D
    const-wide/16 v12, 0x0

    move-wide v6, v12

    .line 161
    .local v6, "totalAbsX":D
    const-wide/16 v12, 0x0

    move-wide v8, v12

    .line 162
    .local v8, "totalAbsY":D
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->trackers:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v10, v12

    :goto_0
    move-object v12, v10

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v12, v10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$TouchPointTracker;

    move-object v11, v12

    .line 163
    .local v11, "tracker":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$TouchPointTracker;
    move-wide v12, v2

    move-object v14, v11

    invoke-virtual {v14}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$TouchPointTracker;->getX()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v2, v12

    .line 164
    move-wide v12, v4

    move-object v14, v11

    invoke-virtual {v14}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$TouchPointTracker;->getY()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v4, v12

    .line 165
    move-wide v12, v6

    move-object v14, v11

    invoke-virtual {v14}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$TouchPointTracker;->getAbsX()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v6, v12

    .line 166
    move-wide v12, v8

    move-object v14, v11

    invoke-virtual {v14}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$TouchPointTracker;->getAbsY()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v8, v12

    .line 167
    goto :goto_0

    .line 168
    .end local v11    # "tracker":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$TouchPointTracker;
    :cond_1
    move-object v12, v1

    move-wide v13, v2

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->currentTouchCount:I

    int-to-double v15, v15

    div-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerX:D

    .line 169
    move-object v12, v1

    move-wide v13, v4

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->currentTouchCount:I

    int-to-double v15, v15

    div-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerY:D

    .line 170
    move-object v12, v1

    move-wide v13, v6

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->currentTouchCount:I

    int-to-double v15, v15

    div-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsX:D

    .line 171
    move-object v12, v1

    move-wide v13, v8

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->currentTouchCount:I

    int-to-double v15, v15

    div-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsY:D

    .line 172
    return-void
.end method

.method private synthetic lambda$new$423(Ljavafx/beans/Observable;)V
    .locals 16

    .prologue
    .line 106
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    move-object/from16 v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->inertiaTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v8}, Ljavafx/animation/Timeline;->getCurrentTime()Ljavafx/util/Duration;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/util/Duration;->toSeconds()D

    move-result-wide v8

    move-wide v2, v8

    .line 107
    .local v2, "currentTime":D
    move-wide v8, v2

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->inertiaLastTime:D

    sub-double/2addr v8, v10

    move-wide v4, v8

    .line 108
    .local v4, "timePassed":D
    move-object v8, v0

    move-wide v9, v2

    iput-wide v9, v8, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->inertiaLastTime:D

    .line 110
    move-wide v8, v4

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->inertiaScrollVelocity:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v10}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-wide v6, v8

    .line 111
    .local v6, "scrollVectorSize":D
    move-object v8, v0

    move-wide v9, v6

    move-object v11, v0

    iget-wide v11, v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->factorX:D

    mul-double/2addr v9, v11

    iput-wide v9, v8, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->deltaX:D

    .line 112
    move-object v8, v0

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    iget-wide v9, v9, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->totalDeltaX:D

    move-object v11, v0

    iget-wide v11, v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->deltaX:D

    add-double/2addr v9, v11

    iput-wide v9, v8, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->totalDeltaX:D

    .line 113
    move-object v8, v0

    move-wide v9, v6

    move-object v11, v0

    iget-wide v11, v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->factorY:D

    mul-double/2addr v9, v11

    iput-wide v9, v8, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->deltaY:D

    .line 114
    move-object v8, v0

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    iget-wide v9, v9, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->totalDeltaY:D

    move-object v11, v0

    iget-wide v11, v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->deltaY:D

    add-double/2addr v9, v11

    iput-wide v9, v8, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->totalDeltaY:D

    .line 117
    move-object v8, v0

    const/4 v9, 0x1

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsX:D

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsY:D

    move-object v14, v0

    iget v14, v14, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->currentTouchCount:I

    invoke-direct/range {v8 .. v14}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->sendScrollEvent(ZDDI)V

    .line 118
    return-void
.end method

.method private synthetic lambda$notifyEndTouchEvent$424(Ljavafx/event/ActionEvent;)V
    .locals 3

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->reset()V

    .line 204
    return-void
.end method

.method private synthetic lambda$sendScrollEvent$426(IDDZ)Ljava/lang/Void;
    .locals 42

    .prologue
    .line 296
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    move/from16 v3, p1

    .local v3, "touchCount":I
    move-wide/from16 v4, p2

    .local v4, "centerX":D
    move-wide/from16 v6, p4

    .local v6, "centerY":D
    move/from16 v8, p6

    .local v8, "isInertia":Z
    move-object v9, v2

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    if-eqz v9, :cond_0

    .line 297
    move-object v9, v2

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    sget-object v10, Ljavafx/scene/input/ScrollEvent;->SCROLL:Ljavafx/event/EventType;

    move-object v11, v2

    iget-wide v11, v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->deltaX:D

    move-object v13, v2

    iget-wide v13, v13, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->deltaY:D

    move-object v15, v2

    iget-wide v15, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->totalDeltaX:D

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->totalDeltaY:D

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    move/from16 v23, v3

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-wide/from16 v28, v4

    move-wide/from16 v30, v6

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsX:D

    move-wide/from16 v32, v0

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsY:D

    move-wide/from16 v34, v0

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->modifiers:I

    move/from16 v36, v0

    const/16 v37, 0x1

    and-int/lit8 v36, v36, 0x1

    if-eqz v36, :cond_1

    const/16 v36, 0x1

    :goto_0
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->modifiers:I

    move/from16 v37, v0

    const/16 v38, 0x4

    and-int/lit8 v37, v37, 0x4

    if-eqz v37, :cond_2

    const/16 v37, 0x1

    :goto_1
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->modifiers:I

    move/from16 v38, v0

    const/16 v39, 0x8

    and-int/lit8 v38, v38, 0x8

    if-eqz v38, :cond_3

    const/16 v38, 0x1

    :goto_2
    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->modifiers:I

    move/from16 v39, v0

    const/16 v40, 0x10

    and-int/lit8 v39, v39, 0x10

    if-eqz v39, :cond_4

    const/16 v39, 0x1

    :goto_3
    move-object/from16 v40, v2

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->direct:Z

    move/from16 v40, v0

    move/from16 v41, v8

    invoke-interface/range {v9 .. v41}, Lcom/sun/javafx/tk/TKSceneListener;->scrollEvent(Ljavafx/event/EventType;DDDDDDIIIIIDDDDZZZZZZ)V

    .line 311
    :cond_0
    const/4 v9, 0x0

    move-object v2, v9

    .end local v2    # "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    return-object v2

    .line 297
    .restart local v2    # "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    :cond_1
    const/16 v36, 0x0

    goto :goto_0

    :cond_2
    const/16 v37, 0x0

    goto :goto_1

    :cond_3
    const/16 v38, 0x0

    goto :goto_2

    :cond_4
    const/16 v39, 0x0

    goto :goto_3
.end method

.method private synthetic lambda$sendScrollFinishedEvent$427(IDD)Ljava/lang/Void;
    .locals 42

    .prologue
    .line 317
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    move/from16 v3, p1

    .local v3, "touchCount":I
    move-wide/from16 v4, p2

    .local v4, "centerX":D
    move-wide/from16 v6, p4

    .local v6, "centerY":D
    move-object v8, v2

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    if-eqz v8, :cond_0

    .line 318
    move-object v8, v2

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    sget-object v9, Ljavafx/scene/input/ScrollEvent;->SCROLL_FINISHED:Ljavafx/event/EventType;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v14, v2

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->totalDeltaX:D

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->totalDeltaY:D

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move/from16 v22, v3

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-wide/from16 v27, v4

    move-wide/from16 v29, v6

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsX:D

    move-wide/from16 v31, v0

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsY:D

    move-wide/from16 v33, v0

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->modifiers:I

    move/from16 v35, v0

    const/16 v36, 0x1

    and-int/lit8 v35, v35, 0x1

    if-eqz v35, :cond_1

    const/16 v35, 0x1

    :goto_0
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->modifiers:I

    move/from16 v36, v0

    const/16 v37, 0x4

    and-int/lit8 v36, v36, 0x4

    if-eqz v36, :cond_2

    const/16 v36, 0x1

    :goto_1
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->modifiers:I

    move/from16 v37, v0

    const/16 v38, 0x8

    and-int/lit8 v37, v37, 0x8

    if-eqz v37, :cond_3

    const/16 v37, 0x1

    :goto_2
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->modifiers:I

    move/from16 v38, v0

    const/16 v39, 0x10

    and-int/lit8 v38, v38, 0x10

    if-eqz v38, :cond_4

    const/16 v38, 0x1

    :goto_3
    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->direct:Z

    move/from16 v39, v0

    const/16 v40, 0x0

    invoke-interface/range {v8 .. v40}, Lcom/sun/javafx/tk/TKSceneListener;->scrollEvent(Ljavafx/event/EventType;DDDDDDIIIIIDDDDZZZZZZ)V

    .line 332
    :cond_0
    const/4 v8, 0x0

    move-object v2, v8

    .end local v2    # "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    return-object v2

    .line 318
    .restart local v2    # "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    :cond_1
    const/16 v35, 0x0

    goto :goto_0

    :cond_2
    const/16 v36, 0x0

    goto :goto_1

    :cond_3
    const/16 v37, 0x0

    goto :goto_2

    :cond_4
    const/16 v38, 0x0

    goto :goto_3
.end method

.method private synthetic lambda$sendScrollStartedEvent$425(IDD)Ljava/lang/Void;
    .locals 42

    .prologue
    .line 275
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    move/from16 v3, p1

    .local v3, "touchCount":I
    move-wide/from16 v4, p2

    .local v4, "centerX":D
    move-wide/from16 v6, p4

    .local v6, "centerY":D
    move-object v8, v2

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    if-eqz v8, :cond_0

    .line 276
    move-object v8, v2

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    sget-object v9, Ljavafx/scene/input/ScrollEvent;->SCROLL_STARTED:Ljavafx/event/EventType;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move/from16 v22, v3

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-wide/from16 v27, v4

    move-wide/from16 v29, v6

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsX:D

    move-wide/from16 v31, v0

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsY:D

    move-wide/from16 v33, v0

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->modifiers:I

    move/from16 v35, v0

    const/16 v36, 0x1

    and-int/lit8 v35, v35, 0x1

    if-eqz v35, :cond_1

    const/16 v35, 0x1

    :goto_0
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->modifiers:I

    move/from16 v36, v0

    const/16 v37, 0x4

    and-int/lit8 v36, v36, 0x4

    if-eqz v36, :cond_2

    const/16 v36, 0x1

    :goto_1
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->modifiers:I

    move/from16 v37, v0

    const/16 v38, 0x8

    and-int/lit8 v37, v37, 0x8

    if-eqz v37, :cond_3

    const/16 v37, 0x1

    :goto_2
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->modifiers:I

    move/from16 v38, v0

    const/16 v39, 0x10

    and-int/lit8 v38, v38, 0x10

    if-eqz v38, :cond_4

    const/16 v38, 0x1

    :goto_3
    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->direct:Z

    move/from16 v39, v0

    const/16 v40, 0x0

    invoke-interface/range {v8 .. v40}, Lcom/sun/javafx/tk/TKSceneListener;->scrollEvent(Ljavafx/event/EventType;DDDDDDIIIIIDDDDZZZZZZ)V

    .line 290
    :cond_0
    const/4 v8, 0x0

    move-object v2, v8

    .end local v2    # "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    return-object v2

    .line 276
    .restart local v2    # "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    :cond_1
    const/16 v35, 0x0

    goto :goto_0

    :cond_2
    const/16 v36, 0x0

    goto :goto_1

    :cond_3
    const/16 v37, 0x0

    goto :goto_2

    :cond_4
    const/16 v38, 0x0

    goto :goto_3
.end method

.method private static synthetic lambda$static$422()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 54
    const-string v2, "com.sun.javafx.gestures.scroll.threshold"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 55
    .local v1, "s":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 56
    move-object v2, v1

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sput-wide v2, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->SCROLL_THRESHOLD:D

    .line 58
    :cond_0
    const-string v2, "com.sun.javafx.gestures.scroll.inertia"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 59
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 60
    move-object v2, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->SCROLL_INERTIA_ENABLED:Z

    .line 62
    :cond_1
    const-string v2, "com.sun.javafx.gestures.scroll.inertia.time"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 63
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 64
    move-object v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    sput-wide v2, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->SCROLL_INERTIA_MILLIS:D

    .line 66
    :cond_2
    const-string v2, "com.sun.javafx.gestures.scroll.inertia.velocity"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 67
    move-object v2, v1

    if-eqz v2, :cond_3

    .line 68
    move-object v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    sput-wide v2, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->MAX_INITIAL_VELOCITY:D

    .line 70
    :cond_3
    const/4 v2, 0x0

    move-object v1, v2

    .end local v1    # "s":Ljava/lang/String;
    return-object v1
.end method

.method private sendScrollEvent(ZDDI)V
    .locals 14

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    move v1, p1

    .local v1, "isInertia":Z
    move-wide/from16 v2, p2

    .local v2, "centerX":D
    move-wide/from16 v4, p4

    .local v4, "centerY":D
    move/from16 v6, p6

    .local v6, "touchCount":I
    move-object v7, v0

    move v8, v6

    move-wide v9, v2

    move-wide v11, v4

    move v13, v1

    invoke-static/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;IDDZ)Ljava/security/PrivilegedAction;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 312
    invoke-virtual {v8}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v8

    .line 295
    invoke-static {v7, v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v7

    .line 313
    return-void
.end method

.method private sendScrollFinishedEvent(DDI)V
    .locals 13

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    move-wide v1, p1

    .local v1, "centerX":D
    move-wide/from16 v3, p3

    .local v3, "centerY":D
    move/from16 v5, p5

    .local v5, "touchCount":I
    move-object v6, v0

    move v7, v5

    move-wide v8, v1

    move-wide v10, v3

    invoke-static/range {v6 .. v11}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;IDD)Ljava/security/PrivilegedAction;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 333
    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v7

    .line 316
    invoke-static {v6, v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v6

    .line 334
    return-void
.end method

.method private sendScrollStartedEvent(DDI)V
    .locals 13

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    move-wide v1, p1

    .local v1, "centerX":D
    move-wide/from16 v3, p3

    .local v3, "centerY":D
    move/from16 v5, p5

    .local v5, "touchCount":I
    move-object v6, v0

    move v7, v5

    move-wide v8, v1

    move-wide v10, v3

    invoke-static/range {v6 .. v11}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;IDD)Ljava/security/PrivilegedAction;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 291
    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v7

    .line 274
    invoke-static {v6, v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v6

    .line 292
    return-void
.end method


# virtual methods
.method public notifyBeginTouchEvent(JIZI)V
    .locals 11

    .prologue
    .line 124
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    move-wide v2, p1

    .local v2, "time":J
    move v4, p3

    .local v4, "modifiers":I
    move v5, p4

    .local v5, "isDirect":Z
    move/from16 v6, p5

    .local v6, "touchEventCount":I
    move-object v7, v1

    move v8, v4

    move v9, v5

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->params(IZ)V

    .line 125
    move-object v7, v1

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->touchPointsSetChanged:Z

    .line 126
    move-object v7, v1

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->touchPointsPressed:Z

    .line 127
    return-void
.end method

.method public notifyEndTouchEvent(J)V
    .locals 27

    .prologue
    .line 176
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    move-wide/from16 v4, p1

    .local v4, "time":J
    move-object v10, v3

    move-wide v11, v4

    long-to-double v11, v11

    iput-wide v11, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->lastTouchEventTime:D

    .line 177
    move-object v10, v3

    iget v10, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->currentTouchCount:I

    move-object v11, v3

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->trackers:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    if-eq v10, v11, :cond_0

    .line 178
    new-instance v10, Ljava/lang/RuntimeException;

    move-object/from16 v26, v10

    move-object/from16 v10, v26

    move-object/from16 v11, v26

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error in Scroll gesture recognition: touch count is wrong: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v3

    iget v13, v13, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->currentTouchCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 182
    :cond_0
    move-object v10, v3

    iget v10, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->currentTouchCount:I

    const/4 v11, 0x1

    if-ge v10, v11, :cond_5

    .line 183
    move-object v10, v3

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    sget-object v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;->ACTIVE:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    if-ne v10, v11, :cond_2

    .line 184
    move-object v10, v3

    move-object v11, v3

    iget-wide v11, v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->lastCenterAbsX:D

    move-object v13, v3

    iget-wide v13, v13, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->lastCenterAbsY:D

    move-object v15, v3

    iget v15, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->lastTouchCount:I

    invoke-direct/range {v10 .. v15}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->sendScrollFinishedEvent(DDI)V

    .line 186
    sget-boolean v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->SCROLL_INERTIA_ENABLED:Z

    if-eqz v10, :cond_4

    .line 187
    move-wide v10, v4

    long-to-double v10, v10

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->scrollStartTime:D

    sub-double/2addr v10, v12

    const-wide v12, 0x412e848000000000L    # 1000000.0

    div-double/2addr v10, v12

    move-wide v6, v10

    .line 188
    .local v6, "timeFromLastScroll":D
    move-wide v10, v6

    const-wide v12, 0x4072c00000000000L    # 300.0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_3

    .line 189
    move-object v10, v3

    sget-object v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;->INERTIA:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    iput-object v11, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    .line 191
    move-object v10, v3

    const-wide/16 v11, 0x0

    iput-wide v11, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->inertiaLastTime:D

    .line 192
    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->initialInertiaScrollVelocity:D

    sget-wide v12, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->MAX_INITIAL_VELOCITY:D

    cmpl-double v10, v10, v12

    if-lez v10, :cond_1

    .line 193
    move-object v10, v3

    sget-wide v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->MAX_INITIAL_VELOCITY:D

    iput-wide v11, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->initialInertiaScrollVelocity:D

    .line 195
    :cond_1
    move-object v10, v3

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->inertiaTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v10}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljavafx/animation/KeyFrame;

    move-object/from16 v26, v11

    move-object/from16 v11, v26

    move-object/from16 v12, v26

    const/4 v13, 0x0

    new-instance v14, Ljavafx/animation/KeyFrame;

    move-object/from16 v26, v14

    move-object/from16 v14, v26

    move-object/from16 v15, v26

    const-wide/16 v16, 0x0

    .line 197
    invoke-static/range {v16 .. v17}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljavafx/animation/KeyValue;

    move-object/from16 v17, v0

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    const/16 v19, 0x0

    new-instance v20, Ljavafx/animation/KeyValue;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->inertiaScrollVelocity:Ljavafx/beans/property/DoubleProperty;

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->initialInertiaScrollVelocity:D

    move-wide/from16 v23, v0

    .line 198
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    sget-object v24, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    invoke-direct/range {v21 .. v24}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v20, v18, v19

    invoke-direct/range {v15 .. v17}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v14, v12, v13

    move-object/from16 v26, v11

    move-object/from16 v11, v26

    move-object/from16 v12, v26

    const/4 v13, 0x1

    new-instance v14, Ljavafx/animation/KeyFrame;

    move-object/from16 v26, v14

    move-object/from16 v14, v26

    move-object/from16 v15, v26

    sget-wide v16, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->SCROLL_INERTIA_MILLIS:D

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->initialInertiaScrollVelocity:D

    move-wide/from16 v18, v0

    .line 200
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    sget-wide v18, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->MAX_INITIAL_VELOCITY:D

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v16

    move-object/from16 v17, v3

    invoke-static/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;)Ljavafx/event/EventHandler;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljavafx/animation/KeyValue;

    move-object/from16 v18, v0

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    const/16 v20, 0x0

    new-instance v21, Ljavafx/animation/KeyValue;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->inertiaScrollVelocity:Ljavafx/beans/property/DoubleProperty;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 205
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    sget-object v25, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    invoke-direct/range {v22 .. v25}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v21, v19, v20

    invoke-direct/range {v15 .. v18}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    aput-object v14, v12, v13

    .line 195
    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v10

    .line 207
    move-object v10, v3

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->inertiaTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v10}, Ljavafx/animation/Timeline;->playFromStart()V

    .line 211
    .line 271
    .end local v6    # "timeFromLastScroll":D
    :cond_2
    :goto_0
    return-void

    .line 209
    .restart local v6    # "timeFromLastScroll":D
    :cond_3
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->reset()V

    goto :goto_0

    .line 212
    .end local v6    # "timeFromLastScroll":D
    :cond_4
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->reset()V

    goto :goto_0

    .line 217
    :cond_5
    move-object v10, v3

    invoke-direct {v10}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->calculateCenter()V

    .line 219
    move-object v10, v3

    iget-boolean v10, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->touchPointsPressed:Z

    if-eqz v10, :cond_6

    move-object v10, v3

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    sget-object v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;->INERTIA:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    if-ne v10, v11, :cond_6

    .line 221
    move-object v10, v3

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->inertiaTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v10}, Ljavafx/animation/Timeline;->stop()V

    .line 222
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->reset()V

    .line 225
    :cond_6
    move-object v10, v3

    iget-boolean v10, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->touchPointsSetChanged:Z

    if-eqz v10, :cond_9

    .line 226
    move-object v10, v3

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    sget-object v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;->IDLE:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    if-ne v10, v11, :cond_7

    .line 227
    move-object v10, v3

    sget-object v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;->TRACKING:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    iput-object v11, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    .line 229
    :cond_7
    move-object v10, v3

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    sget-object v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;->ACTIVE:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    if-ne v10, v11, :cond_8

    .line 231
    move-object v10, v3

    move-object v11, v3

    iget-wide v11, v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->lastCenterAbsX:D

    move-object v13, v3

    iget-wide v13, v13, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->lastCenterAbsY:D

    move-object v15, v3

    iget v15, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->lastTouchCount:I

    invoke-direct/range {v10 .. v15}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->sendScrollFinishedEvent(DDI)V

    .line 232
    move-object v10, v3

    const-wide/16 v11, 0x0

    iput-wide v11, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->totalDeltaX:D

    .line 233
    move-object v10, v3

    const-wide/16 v11, 0x0

    iput-wide v11, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->totalDeltaY:D

    .line 235
    move-object v10, v3

    move-object v11, v3

    iget-wide v11, v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsX:D

    move-object v13, v3

    iget-wide v13, v13, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsY:D

    move-object v15, v3

    iget v15, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->currentTouchCount:I

    invoke-direct/range {v10 .. v15}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->sendScrollStartedEvent(DDI)V

    .line 237
    :cond_8
    move-object v10, v3

    move-object v11, v3

    iget v11, v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->currentTouchCount:I

    iput v11, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->lastTouchCount:I

    .line 238
    move-object v10, v3

    move-object v11, v3

    iget-wide v11, v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsX:D

    iput-wide v11, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->lastCenterAbsX:D

    .line 239
    move-object v10, v3

    move-object v11, v3

    iget-wide v11, v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsY:D

    iput-wide v11, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->lastCenterAbsY:D

    goto :goto_0

    .line 242
    :cond_9
    move-object v10, v3

    move-object v11, v3

    iget-wide v11, v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsX:D

    move-object v13, v3

    iget-wide v13, v13, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->lastCenterAbsX:D

    sub-double/2addr v11, v13

    iput-wide v11, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->deltaX:D

    .line 243
    move-object v10, v3

    move-object v11, v3

    iget-wide v11, v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsY:D

    move-object v13, v3

    iget-wide v13, v13, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->lastCenterAbsY:D

    sub-double/2addr v11, v13

    iput-wide v11, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->deltaY:D

    .line 244
    move-object v10, v3

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    sget-object v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;->TRACKING:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    if-ne v10, v11, :cond_b

    .line 245
    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->deltaX:D

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    sget-wide v12, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->SCROLL_THRESHOLD:D

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_a

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->deltaY:D

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    sget-wide v12, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->SCROLL_THRESHOLD:D

    cmpl-double v10, v10, v12

    if-lez v10, :cond_b

    .line 246
    :cond_a
    move-object v10, v3

    sget-object v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;->ACTIVE:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    iput-object v11, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    .line 247
    move-object v10, v3

    move-object v11, v3

    iget-wide v11, v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsX:D

    move-object v13, v3

    iget-wide v13, v13, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsY:D

    move-object v15, v3

    iget v15, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->currentTouchCount:I

    invoke-direct/range {v10 .. v15}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->sendScrollStartedEvent(DDI)V

    .line 250
    :cond_b
    move-object v10, v3

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    sget-object v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;->ACTIVE:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    if-ne v10, v11, :cond_2

    .line 251
    move-object v10, v3

    move-object/from16 v26, v10

    move-object/from16 v10, v26

    move-object/from16 v11, v26

    iget-wide v11, v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->totalDeltaX:D

    move-object v13, v3

    iget-wide v13, v13, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->deltaX:D

    add-double/2addr v11, v13

    iput-wide v11, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->totalDeltaX:D

    .line 252
    move-object v10, v3

    move-object/from16 v26, v10

    move-object/from16 v10, v26

    move-object/from16 v11, v26

    iget-wide v11, v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->totalDeltaY:D

    move-object v13, v3

    iget-wide v13, v13, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->deltaY:D

    add-double/2addr v11, v13

    iput-wide v11, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->totalDeltaY:D

    .line 254
    move-object v10, v3

    const/4 v11, 0x0

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsX:D

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsY:D

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->currentTouchCount:I

    move/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->sendScrollEvent(ZDDI)V

    .line 255
    move-wide v10, v4

    long-to-double v10, v10

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->scrollStartTime:D

    sub-double/2addr v10, v12

    const-wide v12, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v10, v12

    move-wide v6, v10

    .line 256
    .local v6, "timePassed":D
    move-wide v10, v6

    const-wide v12, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v10, v10, v12

    if-lez v10, :cond_c

    .line 258
    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->deltaX:D

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->deltaX:D

    mul-double/2addr v10, v12

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->deltaY:D

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->deltaY:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    move-wide v8, v10

    .line 259
    .local v8, "scrollMagnitude":D
    move-object v10, v3

    move-object v11, v3

    iget-wide v11, v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->deltaX:D

    move-wide v13, v8

    div-double/2addr v11, v13

    iput-wide v11, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->factorX:D

    .line 260
    move-object v10, v3

    move-object v11, v3

    iget-wide v11, v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->deltaY:D

    move-wide v13, v8

    div-double/2addr v11, v13

    iput-wide v11, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->factorY:D

    .line 261
    move-object v10, v3

    move-wide v11, v8

    move-wide v13, v6

    div-double/2addr v11, v13

    iput-wide v11, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->initialInertiaScrollVelocity:D

    .line 263
    move-object v10, v3

    move-wide v11, v4

    long-to-double v11, v11

    iput-wide v11, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->scrollStartTime:D

    .line 266
    .end local v8    # "scrollMagnitude":D
    :cond_c
    move-object v10, v3

    move-object v11, v3

    iget-wide v11, v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsX:D

    iput-wide v11, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->lastCenterAbsX:D

    .line 267
    move-object v10, v3

    move-object v11, v3

    iget-wide v11, v11, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->centerAbsY:D

    iput-wide v11, v10, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->lastCenterAbsY:D

    goto/16 :goto_0
.end method

.method public notifyNextTouchEvent(JIJDDDD)V
    .locals 30

    .prologue
    .line 132
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    move-wide/from16 v2, p1

    .local v2, "time":J
    move/from16 v4, p3

    .local v4, "type":I
    move-wide/from16 v5, p4

    .local v5, "touchId":J
    move-wide/from16 v7, p6

    .local v7, "x":D
    move-wide/from16 v9, p8

    .local v9, "y":D
    move-wide/from16 v11, p10

    .local v11, "xAbs":D
    move-wide/from16 v13, p12

    .local v13, "yAbs":D
    move v15, v4

    packed-switch v15, :pswitch_data_0

    .line 148
    new-instance v15, Ljava/lang/RuntimeException;

    move-object/from16 v28, v15

    move-object/from16 v15, v28

    move-object/from16 v16, v28

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v28, v17

    move-object/from16 v17, v28

    move-object/from16 v18, v28

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error in Scroll gesture recognition: unknown touch state: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 134
    :pswitch_0
    move-object v15, v1

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->touchPointsSetChanged:Z

    .line 135
    move-object v15, v1

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->touchPointsPressed:Z

    .line 136
    move-object v15, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, v2

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    move-wide/from16 v26, v13

    invoke-virtual/range {v15 .. v27}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->touchPressed(JJDDDD)V

    .line 137
    .line 151
    :goto_0
    return-void

    .line 139
    :pswitch_1
    goto :goto_0

    .line 141
    :pswitch_2
    move-object v15, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, v2

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    move-wide/from16 v26, v13

    invoke-virtual/range {v15 .. v27}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->touchMoved(JJDDDD)V

    .line 142
    goto :goto_0

    .line 144
    :pswitch_3
    move-object v15, v1

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->touchPointsSetChanged:Z

    .line 145
    move-object v15, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, v2

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    move-wide/from16 v26, v13

    invoke-virtual/range {v15 .. v27}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->touchReleased(JJDDDD)V

    .line 146
    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x32b
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public params(IZ)V
    .locals 5

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    move v1, p1

    .local v1, "modifiers":I
    move v2, p2

    .local v2, "direct":Z
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->modifiers:I

    .line 338
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->direct:Z

    .line 339
    return-void
.end method

.method reset()V
    .locals 4

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;->IDLE:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    .line 379
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->totalDeltaX:D

    .line 380
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->totalDeltaY:D

    .line 381
    return-void
.end method

.method public touchMoved(JJDDDD)V
    .locals 27

    .prologue
    .line 363
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    move-wide/from16 v2, p1

    .local v2, "id":J
    move-wide/from16 v4, p3

    .local v4, "nanos":J
    move-wide/from16 v6, p5

    .local v6, "x":D
    move-wide/from16 v8, p7

    .local v8, "y":D
    move-wide/from16 v10, p9

    .local v10, "xAbs":D
    move-wide/from16 v12, p11

    .local v12, "yAbs":D
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    sget-object v16, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 364
    .line 375
    :goto_0
    return-void

    .line 367
    :cond_0
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->trackers:Ljava/util/Map;

    move-wide/from16 v16, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$TouchPointTracker;

    move-object v14, v15

    .line 368
    .local v14, "tracker":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$TouchPointTracker;
    move-object v15, v14

    if-nez v15, :cond_1

    .line 370
    move-object v15, v1

    sget-object v16, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    .line 371
    new-instance v15, Ljava/lang/RuntimeException;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const-string v17, "Error in scroll gesture recognition: reported unknown touch point"

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 374
    :cond_1
    move-object v15, v14

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    move-wide/from16 v24, v12

    invoke-virtual/range {v15 .. v25}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$TouchPointTracker;->update(JDDDD)V

    .line 375
    goto :goto_0
.end method

.method public touchPressed(JJDDDD)V
    .locals 27

    .prologue
    .line 342
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    move-wide/from16 v2, p1

    .local v2, "id":J
    move-wide/from16 v4, p3

    .local v4, "nanos":J
    move-wide/from16 v6, p5

    .local v6, "x":D
    move-wide/from16 v8, p7

    .local v8, "y":D
    move-wide/from16 v10, p9

    .local v10, "xAbs":D
    move-wide/from16 v12, p11

    .local v12, "yAbs":D
    move-object v15, v1

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->currentTouchCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->currentTouchCount:I

    .line 343
    new-instance v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$TouchPointTracker;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$TouchPointTracker;-><init>(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$1;)V

    move-object v14, v15

    .line 344
    .local v14, "tracker":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$TouchPointTracker;
    move-object v15, v14

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    move-wide/from16 v24, v12

    invoke-virtual/range {v15 .. v25}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$TouchPointTracker;->update(JDDDD)V

    .line 345
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->trackers:Ljava/util/Map;

    move-wide/from16 v16, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v17, v14

    invoke-interface/range {v15 .. v17}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 346
    return-void
.end method

.method public touchReleased(JJDDDD)V
    .locals 19

    .prologue
    .line 349
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;
    move-wide/from16 v2, p1

    .local v2, "id":J
    move-wide/from16 v4, p3

    .local v4, "nanos":J
    move-wide/from16 v6, p5

    .local v6, "x":D
    move-wide/from16 v8, p7

    .local v8, "y":D
    move-wide/from16 v10, p9

    .local v10, "xAbs":D
    move-wide/from16 v12, p11

    .local v12, "yAbs":D
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    sget-object v16, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 350
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->trackers:Ljava/util/Map;

    move-wide/from16 v16, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$TouchPointTracker;

    move-object v14, v15

    .line 351
    .local v14, "tracker":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$TouchPointTracker;
    move-object v15, v14

    if-nez v15, :cond_0

    .line 353
    move-object v15, v1

    sget-object v16, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$ScrollRecognitionState;

    .line 354
    new-instance v15, Ljava/lang/RuntimeException;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    const-string v17, "Error in Scroll gesture recognition: released unknown touch point"

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 357
    :cond_0
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->trackers:Ljava/util/Map;

    move-wide/from16 v16, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 359
    .end local v14    # "tracker":Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$TouchPointTracker;
    :cond_1
    move-object v15, v1

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->currentTouchCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->currentTouchCount:I

    .line 360
    return-void
.end method

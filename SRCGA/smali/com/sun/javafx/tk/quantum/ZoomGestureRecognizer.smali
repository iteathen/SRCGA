.class Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
.super Ljava/lang/Object;
.source "ZoomGestureRecognizer.java"

# interfaces
.implements Lcom/sun/javafx/tk/quantum/GestureRecognizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;,
        Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;
    }
.end annotation


# static fields
.field private static MAX_ZOOMIN_VELOCITY:D

.field private static MAX_ZOOMOUT_VELOCITY:D

.field private static MAX_ZOOM_IN_FACTOR:D

.field private static MAX_ZOOM_OUT_FACTOR:D

.field private static ZOOM_FACTOR_THRESHOLD:D

.field private static ZOOM_INERTIA_ENABLED:Z

.field private static ZOOM_INERTIA_MILLIS:D


# instance fields
.field private centerAbsX:D

.field private centerAbsY:D

.field private centerX:D

.field private centerY:D

.field private currentDistance:D

.field private currentTouchCount:I

.field private direct:Z

.field private distanceReference:D

.field inertiaLastTime:D

.field private inertiaTimeline:Ljavafx/animation/Timeline;

.field private inertiaZoomVelocity:Ljavafx/beans/property/DoubleProperty;

.field private initialInertiaZoomVelocity:D

.field private lastTouchEventTime:D

.field private modifiers:I

.field private scene:Lcom/sun/javafx/tk/quantum/ViewScene;

.field private state:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

.field private totalZoomFactor:D

.field private touchPointsPressed:Z

.field private touchPointsSetChanged:Z

.field private trackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;",
            ">;"
        }
    .end annotation
.end field

.field private zoomFactor:D

.field private zoomStartTime:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-wide v0, 0x3fb999999999999aL    # 0.1

    sput-wide v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->ZOOM_FACTOR_THRESHOLD:D

    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->ZOOM_INERTIA_ENABLED:Z

    .line 50
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    sput-wide v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->MAX_ZOOMIN_VELOCITY:D

    .line 51
    const-wide v0, 0x3fd554c985f06f69L    # 0.3333

    sput-wide v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->MAX_ZOOMOUT_VELOCITY:D

    .line 52
    const-wide v0, 0x407f400000000000L    # 500.0

    sput-wide v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->ZOOM_INERTIA_MILLIS:D

    .line 53
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    sput-wide v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->MAX_ZOOM_IN_FACTOR:D

    .line 54
    const-wide v0, 0x3fb999999999999aL    # 0.1

    sput-wide v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->MAX_ZOOM_OUT_FACTOR:D

    .line 57
    invoke-static {}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$$Lambda$6;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    return-void
.end method

.method constructor <init>(Lcom/sun/javafx/tk/quantum/ViewScene;)V
    .locals 7

    .prologue
    .line 97
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
    move-object v2, p1

    .local v2, "scene":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 71
    move-object v3, v1

    new-instance v4, Ljavafx/animation/Timeline;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->inertiaTimeline:Ljavafx/animation/Timeline;

    .line 72
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->inertiaZoomVelocity:Ljavafx/beans/property/DoubleProperty;

    .line 73
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->initialInertiaZoomVelocity:D

    .line 74
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->zoomStartTime:D

    .line 75
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->lastTouchEventTime:D

    .line 77
    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->IDLE:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    .line 79
    move-object v3, v1

    new-instance v4, Ljava/util/HashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->trackers:Ljava/util/Map;

    .line 85
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->currentTouchCount:I

    .line 93
    move-object v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->zoomFactor:D

    .line 94
    move-object v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->totalZoomFactor:D

    .line 95
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->inertiaLastTime:D

    .line 98
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 99
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->inertiaZoomVelocity:Ljavafx/beans/property/DoubleProperty;

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 110
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->lambda$new$430(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->lambda$notifyEndTouchEvent$431(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->lambda$sendZoomStartedEvent$432()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;Z)Ljava/lang/Void;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->lambda$sendZoomEvent$433(Z)Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->lambda$sendZoomFinishedEvent$434()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$5()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->lambda$static$429()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method private calculateCenter()V
    .locals 18

    .prologue
    .line 145
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->currentTouchCount:I

    if-gtz v12, :cond_0

    .line 146
    new-instance v12, Ljava/lang/RuntimeException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const-string v14, "Error in Zoom gesture recognition: touch count is zero!"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 149
    :cond_0
    const-wide/16 v12, 0x0

    move-wide v2, v12

    .line 150
    .local v2, "totalX":D
    const-wide/16 v12, 0x0

    move-wide v4, v12

    .line 151
    .local v4, "totalY":D
    const-wide/16 v12, 0x0

    move-wide v6, v12

    .line 152
    .local v6, "totalAbsX":D
    const-wide/16 v12, 0x0

    move-wide v8, v12

    .line 153
    .local v8, "totalAbsY":D
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->trackers:Ljava/util/Map;

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

    check-cast v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;

    move-object v11, v12

    .line 154
    .local v11, "tracker":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;
    move-wide v12, v2

    move-object v14, v11

    invoke-virtual {v14}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;->getX()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v2, v12

    .line 155
    move-wide v12, v4

    move-object v14, v11

    invoke-virtual {v14}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;->getY()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v4, v12

    .line 156
    move-wide v12, v6

    move-object v14, v11

    invoke-virtual {v14}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;->getAbsX()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v6, v12

    .line 157
    move-wide v12, v8

    move-object v14, v11

    invoke-virtual {v14}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;->getAbsY()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v8, v12

    .line 158
    goto :goto_0

    .line 159
    .end local v11    # "tracker":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;
    :cond_1
    move-object v12, v1

    move-wide v13, v2

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->currentTouchCount:I

    int-to-double v15, v15

    div-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->centerX:D

    .line 160
    move-object v12, v1

    move-wide v13, v4

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->currentTouchCount:I

    int-to-double v15, v15

    div-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->centerY:D

    .line 161
    move-object v12, v1

    move-wide v13, v6

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->currentTouchCount:I

    int-to-double v15, v15

    div-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->centerAbsX:D

    .line 162
    move-object v12, v1

    move-wide v13, v8

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->currentTouchCount:I

    int-to-double v15, v15

    div-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->centerAbsY:D

    .line 163
    return-void
.end method

.method private calculateMaxDistance()D
    .locals 18

    .prologue
    .line 167
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
    const-wide/16 v12, 0x0

    move-wide v2, v12

    .line 168
    .local v2, "maxSquareDist":D
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->trackers:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v4, v12

    :goto_0
    move-object v12, v4

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v12, v4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;

    move-object v5, v12

    .line 169
    .local v5, "tracker":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;
    move-object v12, v5

    invoke-virtual {v12}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;->getAbsX()D

    move-result-wide v12

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->centerAbsX:D

    sub-double/2addr v12, v14

    move-wide v6, v12

    .line 170
    .local v6, "deltaX":D
    move-object v12, v5

    invoke-virtual {v12}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;->getAbsY()D

    move-result-wide v12

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->centerAbsY:D

    sub-double/2addr v12, v14

    move-wide v8, v12

    .line 172
    .local v8, "deltaY":D
    move-wide v12, v6

    move-wide v14, v6

    mul-double/2addr v12, v14

    move-wide v14, v8

    move-wide/from16 v16, v8

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-wide v10, v12

    .line 173
    .local v10, "squareDist":D
    move-wide v12, v10

    move-wide v14, v2

    cmpl-double v12, v12, v14

    if-lez v12, :cond_0

    .line 174
    move-wide v12, v10

    move-wide v2, v12

    .line 176
    :cond_0
    goto :goto_0

    .line 177
    .end local v5    # "tracker":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;
    .end local v6    # "deltaX":D
    .end local v8    # "deltaY":D
    .end local v10    # "squareDist":D
    :cond_1
    move-wide v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
    return-wide v1
.end method

.method private synthetic lambda$new$430(Ljavafx/beans/Observable;)V
    .locals 17

    .prologue
    .line 100
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
    move-object/from16 v2, p1

    .local v2, "valueModel":Ljavafx/beans/Observable;
    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->inertiaTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v9}, Ljavafx/animation/Timeline;->getCurrentTime()Ljavafx/util/Duration;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/util/Duration;->toSeconds()D

    move-result-wide v9

    move-wide v3, v9

    .line 101
    .local v3, "currentTime":D
    move-wide v9, v3

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->inertiaLastTime:D

    sub-double/2addr v9, v11

    move-wide v5, v9

    .line 102
    .local v5, "timePassed":D
    move-object v9, v1

    move-wide v10, v3

    iput-wide v10, v9, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->inertiaLastTime:D

    .line 103
    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->totalZoomFactor:D

    move-wide v7, v9

    .line 104
    .local v7, "prevTotalZoomFactor":D
    move-object v9, v1

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    iget-wide v10, v10, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->totalZoomFactor:D

    move-wide v12, v5

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->inertiaZoomVelocity:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v14}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->totalZoomFactor:D

    .line 105
    move-object v9, v1

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->totalZoomFactor:D

    move-wide v12, v7

    div-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->zoomFactor:D

    .line 108
    move-object v9, v1

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->sendZoomEvent(Z)V

    .line 109
    return-void
.end method

.method private synthetic lambda$notifyEndTouchEvent$431(Ljavafx/event/ActionEvent;)V
    .locals 3

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->reset()V

    .line 224
    return-void
.end method

.method private synthetic lambda$sendZoomEvent$433(Z)Ljava/lang/Void;
    .locals 24

    .prologue
    .line 313
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
    move/from16 v3, p1

    .local v3, "isInertia":Z
    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    if-eqz v4, :cond_0

    .line 314
    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    sget-object v5, Ljavafx/scene/input/ZoomEvent;->ZOOM:Ljavafx/event/EventType;

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->zoomFactor:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->totalZoomFactor:D

    move-object v10, v2

    iget-wide v10, v10, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->centerX:D

    move-object v12, v2

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->centerY:D

    move-object v14, v2

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->centerAbsX:D

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->centerAbsY:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->modifiers:I

    move/from16 v18, v0

    const/16 v19, 0x1

    and-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_1

    const/16 v18, 0x1

    :goto_0
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->modifiers:I

    move/from16 v19, v0

    const/16 v20, 0x4

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_2

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->modifiers:I

    move/from16 v20, v0

    const/16 v21, 0x8

    and-int/lit8 v20, v20, 0x8

    if-eqz v20, :cond_3

    const/16 v20, 0x1

    :goto_2
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->modifiers:I

    move/from16 v21, v0

    const/16 v22, 0x10

    and-int/lit8 v21, v21, 0x10

    if-eqz v21, :cond_4

    const/16 v21, 0x1

    :goto_3
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->direct:Z

    move/from16 v22, v0

    move/from16 v23, v3

    invoke-interface/range {v4 .. v23}, Lcom/sun/javafx/tk/TKSceneListener;->zoomEvent(Ljavafx/event/EventType;DDDDDDZZZZZZ)V

    .line 324
    :cond_0
    const/4 v4, 0x0

    move-object v2, v4

    .end local v2    # "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
    return-object v2

    .line 314
    .restart local v2    # "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    :cond_2
    const/16 v19, 0x0

    goto :goto_1

    :cond_3
    const/16 v20, 0x0

    goto :goto_2

    :cond_4
    const/16 v21, 0x0

    goto :goto_3
.end method

.method private synthetic lambda$sendZoomFinishedEvent$434()Ljava/lang/Void;
    .locals 22

    .prologue
    .line 330
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    if-eqz v2, :cond_0

    .line 331
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    sget-object v3, Ljavafx/scene/input/ZoomEvent;->ZOOM_FINISHED:Ljavafx/event/EventType;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->totalZoomFactor:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->centerX:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->centerY:D

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->centerAbsX:D

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->centerAbsY:D

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->modifiers:I

    move/from16 v16, v0

    const/16 v17, 0x1

    and-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_1

    const/16 v16, 0x1

    :goto_0
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->modifiers:I

    move/from16 v17, v0

    const/16 v18, 0x4

    and-int/lit8 v17, v17, 0x4

    if-eqz v17, :cond_2

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->modifiers:I

    move/from16 v18, v0

    const/16 v19, 0x8

    and-int/lit8 v18, v18, 0x8

    if-eqz v18, :cond_3

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->modifiers:I

    move/from16 v19, v0

    const/16 v20, 0x10

    and-int/lit8 v19, v19, 0x10

    if-eqz v19, :cond_4

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->direct:Z

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v2 .. v21}, Lcom/sun/javafx/tk/TKSceneListener;->zoomEvent(Ljavafx/event/EventType;DDDDDDZZZZZZ)V

    .line 342
    :cond_0
    const/4 v2, 0x0

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
    return-object v1

    .line 331
    .restart local v1    # "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    :cond_2
    const/16 v17, 0x0

    goto :goto_1

    :cond_3
    const/16 v18, 0x0

    goto :goto_2

    :cond_4
    const/16 v19, 0x0

    goto :goto_3
.end method

.method private synthetic lambda$sendZoomStartedEvent$432()Ljava/lang/Void;
    .locals 22

    .prologue
    .line 295
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    if-eqz v2, :cond_0

    .line 296
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    sget-object v3, Ljavafx/scene/input/ZoomEvent;->ZOOM_STARTED:Ljavafx/event/EventType;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->centerX:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->centerY:D

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->centerAbsX:D

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->centerAbsY:D

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->modifiers:I

    move/from16 v16, v0

    const/16 v17, 0x1

    and-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_1

    const/16 v16, 0x1

    :goto_0
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->modifiers:I

    move/from16 v17, v0

    const/16 v18, 0x4

    and-int/lit8 v17, v17, 0x4

    if-eqz v17, :cond_2

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->modifiers:I

    move/from16 v18, v0

    const/16 v19, 0x8

    and-int/lit8 v18, v18, 0x8

    if-eqz v18, :cond_3

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->modifiers:I

    move/from16 v19, v0

    const/16 v20, 0x10

    and-int/lit8 v19, v19, 0x10

    if-eqz v19, :cond_4

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->direct:Z

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v2 .. v21}, Lcom/sun/javafx/tk/TKSceneListener;->zoomEvent(Ljavafx/event/EventType;DDDDDDZZZZZZ)V

    .line 307
    :cond_0
    const/4 v2, 0x0

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
    return-object v1

    .line 296
    .restart local v1    # "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    :cond_2
    const/16 v17, 0x0

    goto :goto_1

    :cond_3
    const/16 v18, 0x0

    goto :goto_2

    :cond_4
    const/16 v19, 0x0

    goto :goto_3
.end method

.method private static synthetic lambda$static$429()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 58
    const-string v2, "com.sun.javafx.gestures.zoom.threshold"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 59
    .local v1, "s":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 60
    move-object v2, v1

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sput-wide v2, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->ZOOM_FACTOR_THRESHOLD:D

    .line 62
    :cond_0
    const-string v2, "com.sun.javafx.gestures.zoom.inertia"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 63
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 64
    move-object v2, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->ZOOM_INERTIA_ENABLED:Z

    .line 66
    :cond_1
    const/4 v2, 0x0

    move-object v1, v2

    .end local v1    # "s":Ljava/lang/String;
    return-object v1
.end method

.method private sendZoomEvent(Z)V
    .locals 4

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
    move v1, p1

    .local v1, "isInertia":Z
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;Z)Ljava/security/PrivilegedAction;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 325
    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v3

    .line 312
    invoke-static {v2, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    .line 326
    return-void
.end method

.method private sendZoomFinishedEvent()V
    .locals 3

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;)Ljava/security/PrivilegedAction;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 343
    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v2

    .line 329
    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    .line 344
    return-void
.end method

.method private sendZoomStartedEvent()V
    .locals 3

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;)Ljava/security/PrivilegedAction;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 308
    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v2

    .line 294
    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    .line 309
    return-void
.end method


# virtual methods
.method public notifyBeginTouchEvent(JIZI)V
    .locals 11

    .prologue
    .line 115
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
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

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->params(IZ)V

    .line 116
    move-object v7, v1

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->touchPointsSetChanged:Z

    .line 117
    move-object v7, v1

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->touchPointsPressed:Z

    .line 118
    return-void
.end method

.method public notifyEndTouchEvent(J)V
    .locals 29

    .prologue
    .line 182
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
    move-wide/from16 v4, p1

    .local v4, "time":J
    move-object v12, v3

    move-wide v13, v4

    long-to-double v13, v13

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->lastTouchEventTime:D

    .line 183
    move-object v12, v3

    iget v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->currentTouchCount:I

    move-object v13, v3

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->trackers:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    if-eq v12, v13, :cond_0

    .line 184
    new-instance v12, Ljava/lang/RuntimeException;

    move-object/from16 v28, v12

    move-object/from16 v12, v28

    move-object/from16 v13, v28

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v28, v14

    move-object/from16 v14, v28

    move-object/from16 v15, v28

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error in Zoom gesture recognition: touch count is wrong: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v3

    iget v15, v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->currentTouchCount:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 188
    :cond_0
    move-object v12, v3

    iget v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->currentTouchCount:I

    if-nez v12, :cond_8

    .line 189
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    sget-object v13, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->ACTIVE:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    if-ne v12, v13, :cond_1

    .line 190
    move-object v12, v3

    invoke-direct {v12}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->sendZoomFinishedEvent()V

    .line 192
    :cond_1
    sget-boolean v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->ZOOM_INERTIA_ENABLED:Z

    if-eqz v12, :cond_7

    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    sget-object v13, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->PRE_INERTIA:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    if-eq v12, v13, :cond_2

    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    sget-object v13, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->ACTIVE:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    if-ne v12, v13, :cond_7

    .line 193
    :cond_2
    move-wide v12, v4

    long-to-double v12, v12

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->zoomStartTime:D

    sub-double/2addr v12, v14

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v14

    move-wide v6, v12

    .line 194
    .local v6, "timeFromLastZoom":D
    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->initialInertiaZoomVelocity:D

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_6

    move-wide v12, v6

    const-wide/high16 v14, 0x4069000000000000L    # 200.0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_6

    .line 195
    move-object v12, v3

    sget-object v13, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->INERTIA:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    iput-object v13, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    .line 197
    move-object v12, v3

    const-wide/16 v13, 0x0

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->inertiaLastTime:D

    .line 198
    sget-wide v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->ZOOM_INERTIA_MILLIS:D

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v14

    move-wide v8, v12

    .line 199
    .local v8, "duration":D
    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->totalZoomFactor:D

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->initialInertiaZoomVelocity:D

    move-wide/from16 v16, v8

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-wide v10, v12

    .line 200
    .local v10, "newZoom":D
    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->initialInertiaZoomVelocity:D

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_5

    .line 202
    move-wide v12, v10

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->totalZoomFactor:D

    div-double/2addr v12, v14

    sget-wide v14, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->MAX_ZOOM_IN_FACTOR:D

    cmpl-double v12, v12, v14

    if-lez v12, :cond_3

    .line 203
    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->totalZoomFactor:D

    sget-wide v14, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->MAX_ZOOM_IN_FACTOR:D

    mul-double/2addr v12, v14

    move-wide v10, v12

    .line 204
    move-wide v12, v10

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->totalZoomFactor:D

    sub-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->initialInertiaZoomVelocity:D

    div-double/2addr v12, v14

    move-wide v8, v12

    .line 214
    :cond_3
    :goto_0
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->inertiaTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v12}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljavafx/animation/KeyFrame;

    move-object/from16 v28, v13

    move-object/from16 v13, v28

    move-object/from16 v14, v28

    const/4 v15, 0x0

    new-instance v16, Ljavafx/animation/KeyFrame;

    move-object/from16 v28, v16

    move-object/from16 v16, v28

    move-object/from16 v17, v28

    const-wide/16 v18, 0x0

    .line 216
    invoke-static/range {v18 .. v19}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljavafx/animation/KeyValue;

    move-object/from16 v19, v0

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    const/16 v21, 0x0

    new-instance v22, Ljavafx/animation/KeyValue;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->inertiaZoomVelocity:Ljavafx/beans/property/DoubleProperty;

    move-object/from16 v24, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->initialInertiaZoomVelocity:D

    move-wide/from16 v25, v0

    .line 217
    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    sget-object v26, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    invoke-direct/range {v23 .. v26}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v22, v20, v21

    invoke-direct/range {v17 .. v19}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v16, v14, v15

    move-object/from16 v28, v13

    move-object/from16 v13, v28

    move-object/from16 v14, v28

    const/4 v15, 0x1

    new-instance v16, Ljavafx/animation/KeyFrame;

    move-object/from16 v28, v16

    move-object/from16 v16, v28

    move-object/from16 v17, v28

    move-wide/from16 v18, v8

    .line 220
    invoke-static/range {v18 .. v19}, Ljavafx/util/Duration;->seconds(D)Ljavafx/util/Duration;

    move-result-object v18

    move-object/from16 v19, v3

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;)Ljavafx/event/EventHandler;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljavafx/animation/KeyValue;

    move-object/from16 v20, v0

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    const/16 v22, 0x0

    new-instance v23, Ljavafx/animation/KeyValue;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->inertiaZoomVelocity:Ljavafx/beans/property/DoubleProperty;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    .line 225
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    sget-object v27, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    invoke-direct/range {v24 .. v27}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v23, v21, v22

    invoke-direct/range {v17 .. v20}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    aput-object v16, v14, v15

    .line 214
    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v12

    .line 227
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->inertiaTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v12}, Ljavafx/animation/Timeline;->playFromStart()V

    .line 228
    .line 231
    .line 291
    .end local v6    # "timeFromLastZoom":D
    .end local v8    # "duration":D
    .end local v10    # "newZoom":D
    :cond_4
    :goto_1
    return-void

    .line 208
    .restart local v6    # "timeFromLastZoom":D
    .restart local v8    # "duration":D
    .restart local v10    # "newZoom":D
    :cond_5
    move-wide v12, v10

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->totalZoomFactor:D

    div-double/2addr v12, v14

    sget-wide v14, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->MAX_ZOOM_OUT_FACTOR:D

    cmpg-double v12, v12, v14

    if-gez v12, :cond_3

    .line 209
    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->totalZoomFactor:D

    sget-wide v14, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->MAX_ZOOM_OUT_FACTOR:D

    mul-double/2addr v12, v14

    move-wide v10, v12

    .line 210
    move-wide v12, v10

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->totalZoomFactor:D

    sub-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->initialInertiaZoomVelocity:D

    div-double/2addr v12, v14

    move-wide v8, v12

    goto/16 :goto_0

    .line 229
    .end local v8    # "duration":D
    .end local v10    # "newZoom":D
    :cond_6
    move-object v12, v3

    invoke-virtual {v12}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->reset()V

    goto :goto_1

    .line 232
    .end local v6    # "timeFromLastZoom":D
    :cond_7
    move-object v12, v3

    invoke-virtual {v12}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->reset()V

    goto :goto_1

    .line 236
    :cond_8
    move-object v12, v3

    iget-boolean v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->touchPointsPressed:Z

    if-eqz v12, :cond_9

    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    sget-object v13, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->INERTIA:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    if-ne v12, v13, :cond_9

    .line 238
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->inertiaTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v12}, Ljavafx/animation/Timeline;->stop()V

    .line 239
    move-object v12, v3

    invoke-virtual {v12}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->reset()V

    .line 242
    :cond_9
    move-object v12, v3

    iget v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->currentTouchCount:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    .line 243
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    sget-object v13, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->ACTIVE:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    if-ne v12, v13, :cond_4

    .line 244
    move-object v12, v3

    invoke-direct {v12}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->sendZoomFinishedEvent()V

    .line 245
    sget-boolean v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->ZOOM_INERTIA_ENABLED:Z

    if-eqz v12, :cond_a

    .line 247
    move-object v12, v3

    sget-object v13, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->PRE_INERTIA:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    iput-object v13, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    goto :goto_1

    .line 249
    :cond_a
    move-object v12, v3

    invoke-virtual {v12}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->reset()V

    goto :goto_1

    .line 255
    :cond_b
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    sget-object v13, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->IDLE:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    if-ne v12, v13, :cond_c

    .line 256
    move-object v12, v3

    sget-object v13, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->TRACKING:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    iput-object v13, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    .line 257
    move-object v12, v3

    move-wide v13, v4

    long-to-double v13, v13

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->zoomStartTime:D

    .line 260
    :cond_c
    move-object v12, v3

    invoke-direct {v12}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->calculateCenter()V

    .line 261
    move-object v12, v3

    invoke-direct {v12}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->calculateMaxDistance()D

    move-result-wide v12

    move-wide v6, v12

    .line 263
    .local v6, "currentDistance":D
    move-object v12, v3

    iget-boolean v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->touchPointsSetChanged:Z

    if-eqz v12, :cond_d

    .line 266
    move-object v12, v3

    move-wide v13, v6

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->distanceReference:D

    goto/16 :goto_1

    .line 268
    :cond_d
    move-object v12, v3

    move-wide v13, v6

    move-object v15, v3

    iget-wide v15, v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->distanceReference:D

    div-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->zoomFactor:D

    .line 269
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    sget-object v13, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->TRACKING:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    if-ne v12, v13, :cond_e

    .line 270
    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->zoomFactor:D

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    sget-wide v14, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->ZOOM_FACTOR_THRESHOLD:D

    cmpl-double v12, v12, v14

    if-lez v12, :cond_e

    .line 271
    move-object v12, v3

    sget-object v13, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->ACTIVE:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    iput-object v13, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    .line 272
    move-object v12, v3

    invoke-direct {v12}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->sendZoomStartedEvent()V

    .line 275
    :cond_e
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    sget-object v13, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->ACTIVE:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    if-ne v12, v13, :cond_4

    .line 276
    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->totalZoomFactor:D

    move-wide v8, v12

    .line 277
    .local v8, "prevTotalZoomFactor":D
    move-object v12, v3

    move-object/from16 v28, v12

    move-object/from16 v12, v28

    move-object/from16 v13, v28

    iget-wide v13, v13, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->totalZoomFactor:D

    move-object v15, v3

    iget-wide v15, v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->zoomFactor:D

    mul-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->totalZoomFactor:D

    .line 278
    move-object v12, v3

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->sendZoomEvent(Z)V

    .line 279
    move-object v12, v3

    move-wide v13, v6

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->distanceReference:D

    .line 280
    move-wide v12, v4

    long-to-double v12, v12

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->zoomStartTime:D

    sub-double/2addr v12, v14

    const-wide v14, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v12, v14

    move-wide v10, v12

    .line 281
    .local v10, "timePassed":D
    move-wide v12, v10

    const-wide v14, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v12, v12, v14

    if-lez v12, :cond_f

    .line 282
    move-object v12, v3

    move-object v13, v3

    iget-wide v13, v13, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->totalZoomFactor:D

    move-wide v15, v8

    sub-double/2addr v13, v15

    move-wide v15, v10

    div-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->initialInertiaZoomVelocity:D

    .line 283
    move-object v12, v3

    move-wide v13, v4

    long-to-double v13, v13

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->zoomStartTime:D

    goto/16 :goto_1

    .line 285
    :cond_f
    move-object v12, v3

    const-wide/16 v13, 0x0

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->initialInertiaZoomVelocity:D

    goto/16 :goto_1
.end method

.method public notifyNextTouchEvent(JIJDDDD)V
    .locals 30

    .prologue
    .line 123
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
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

    .line 139
    new-instance v15, Ljava/lang/RuntimeException;

    move-object/from16 v28, v15

    move-object/from16 v15, v28

    move-object/from16 v16, v28

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v28, v17

    move-object/from16 v17, v28

    move-object/from16 v18, v28

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error in Zoom gesture recognition: unknown touch state: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 125
    :pswitch_0
    move-object v15, v1

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->touchPointsSetChanged:Z

    .line 126
    move-object v15, v1

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->touchPointsPressed:Z

    .line 127
    move-object v15, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, v2

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    move-wide/from16 v26, v13

    invoke-virtual/range {v15 .. v27}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->touchPressed(JJDDDD)V

    .line 128
    .line 142
    :goto_0
    return-void

    .line 130
    :pswitch_1
    goto :goto_0

    .line 132
    :pswitch_2
    move-object v15, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, v2

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    move-wide/from16 v26, v13

    invoke-virtual/range {v15 .. v27}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->touchMoved(JJDDDD)V

    .line 133
    goto :goto_0

    .line 135
    :pswitch_3
    move-object v15, v1

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->touchPointsSetChanged:Z

    .line 136
    move-object v15, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, v2

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    move-wide/from16 v26, v13

    invoke-virtual/range {v15 .. v27}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->touchReleased(JJDDDD)V

    .line 137
    goto :goto_0

    .line 123
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
    .line 347
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
    move v1, p1

    .local v1, "modifiers":I
    move v2, p2

    .local v2, "direct":Z
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->modifiers:I

    .line 348
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->direct:Z

    .line 349
    return-void
.end method

.method reset()V
    .locals 4

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->IDLE:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    .line 389
    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->zoomFactor:D

    .line 390
    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->totalZoomFactor:D

    .line 391
    return-void
.end method

.method public touchMoved(JJDDDD)V
    .locals 27

    .prologue
    .line 373
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
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

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    sget-object v16, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 374
    .line 385
    :goto_0
    return-void

    .line 377
    :cond_0
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->trackers:Ljava/util/Map;

    move-wide/from16 v16, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;

    move-object v14, v15

    .line 378
    .local v14, "tracker":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;
    move-object v15, v14

    if-nez v15, :cond_1

    .line 380
    move-object v15, v1

    sget-object v16, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    .line 381
    new-instance v15, Ljava/lang/RuntimeException;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const-string v17, "Error in zoom gesture recognition: reported unknown touch point"

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 384
    :cond_1
    move-object v15, v14

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    move-wide/from16 v24, v12

    invoke-virtual/range {v15 .. v25}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;->update(JDDDD)V

    .line 385
    goto :goto_0
.end method

.method public touchPressed(JJDDDD)V
    .locals 27

    .prologue
    .line 352
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
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

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->currentTouchCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->currentTouchCount:I

    .line 353
    new-instance v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;-><init>(Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$1;)V

    move-object v14, v15

    .line 354
    .local v14, "tracker":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;
    move-object v15, v14

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    move-wide/from16 v24, v12

    invoke-virtual/range {v15 .. v25}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;->update(JDDDD)V

    .line 355
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->trackers:Ljava/util/Map;

    move-wide/from16 v16, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v17, v14

    invoke-interface/range {v15 .. v17}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 356
    return-void
.end method

.method public touchReleased(JJDDDD)V
    .locals 19

    .prologue
    .line 359
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
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

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    sget-object v16, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 360
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->trackers:Ljava/util/Map;

    move-wide/from16 v16, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;

    move-object v14, v15

    .line 361
    .local v14, "tracker":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;
    move-object v15, v14

    if-nez v15, :cond_0

    .line 363
    move-object v15, v1

    sget-object v16, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    .line 364
    new-instance v15, Ljava/lang/RuntimeException;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    const-string v17, "Error in Zoom gesture recognition: released unknown touch point"

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 367
    :cond_0
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->trackers:Ljava/util/Map;

    move-wide/from16 v16, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 369
    .end local v14    # "tracker":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$TouchPointTracker;
    :cond_1
    move-object v15, v1

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->currentTouchCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;->currentTouchCount:I

    .line 370
    return-void
.end method

.class Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
.super Ljava/lang/Object;
.source "RotateGestureRecognizer.java"

# interfaces
.implements Lcom/sun/javafx/tk/quantum/GestureRecognizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;,
        Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    }
.end annotation


# static fields
.field private static MAX_INITIAL_VELOCITY:D

.field private static ROTATATION_THRESHOLD:D

.field private static ROTATION_INERTIA_ENABLED:Z

.field private static ROTATION_INERTIA_MILLIS:D


# instance fields
.field angleReference:D

.field centerAbsX:D

.field centerAbsY:D

.field centerX:D

.field centerY:D

.field currentRotation:D

.field private currentTouchCount:I

.field direct:Z

.field inertiaLastTime:D

.field private inertiaRotationVelocity:Ljavafx/beans/property/DoubleProperty;

.field private inertiaTimeline:Ljavafx/animation/Timeline;

.field private initialInertiaRotationVelocity:D

.field private lastTouchEventTime:D

.field modifiers:I

.field private rotationStartTime:D

.field private scene:Lcom/sun/javafx/tk/quantum/ViewScene;

.field private state:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

.field totalRotation:D

.field touchPointID1:J

.field touchPointID2:J

.field touchPointsInEvent:I

.field private touchPointsPressed:Z

.field private touchPointsSetChanged:Z

.field trackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    sput-wide v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->ROTATATION_THRESHOLD:D

    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->ROTATION_INERTIA_ENABLED:Z

    .line 53
    const-wide v0, 0x407f400000000000L    # 500.0

    sput-wide v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->MAX_INITIAL_VELOCITY:D

    .line 54
    const-wide v0, 0x4097700000000000L    # 1500.0

    sput-wide v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->ROTATION_INERTIA_MILLIS:D

    .line 56
    invoke-static {}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$$Lambda$6;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    return-void
.end method

.method constructor <init>(Lcom/sun/javafx/tk/quantum/ViewScene;)V
    .locals 7

    .prologue
    .line 98
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    move-object v2, p1

    .local v2, "scene":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 69
    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->IDLE:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    .line 70
    move-object v3, v1

    new-instance v4, Ljavafx/animation/Timeline;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->inertiaTimeline:Ljavafx/animation/Timeline;

    .line 71
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->inertiaRotationVelocity:Ljavafx/beans/property/DoubleProperty;

    .line 72
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->initialInertiaRotationVelocity:D

    .line 73
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->rotationStartTime:D

    .line 74
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->lastTouchEventTime:D

    .line 77
    move-object v3, v1

    new-instance v4, Ljava/util/HashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->trackers:Ljava/util/Map;

    .line 84
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentTouchCount:I

    .line 88
    move-object v3, v1

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointID1:J

    .line 89
    move-object v3, v1

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointID2:J

    .line 95
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->totalRotation:D

    .line 96
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->inertiaLastTime:D

    .line 99
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 100
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->inertiaRotationVelocity:Ljavafx/beans/property/DoubleProperty;

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 109
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->lambda$new$417(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->lambda$notifyEndTouchEvent$418(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->lambda$sendRotateStartedEvent$419()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;Z)Ljava/lang/Void;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->lambda$sendRotateEvent$420(Z)Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->lambda$sendRotateFinishedEvent$421()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$5()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->lambda$static$416()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method private assignActiveTouchpoints()V
    .locals 8

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    const/4 v4, 0x0

    move v1, v4

    .line 191
    .local v1, "needToReassign":Z
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->trackers:Ljava/util/Map;

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointID1:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 192
    move-object v4, v0

    const-wide/16 v5, -0x1

    iput-wide v5, v4, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointID1:J

    .line 193
    const/4 v4, 0x1

    move v1, v4

    .line 195
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->trackers:Ljava/util/Map;

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointID2:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 196
    move-object v4, v0

    const-wide/16 v5, -0x1

    iput-wide v5, v4, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointID2:J

    .line 197
    const/4 v4, 0x1

    move v1, v4

    .line 200
    :cond_1
    move v4, v1

    if-eqz v4, :cond_5

    .line 201
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->trackers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    move-object v3, v4

    .line 202
    .local v3, "id":Ljava/lang/Long;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointID1:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointID2:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 216
    :cond_2
    :goto_1
    goto :goto_0

    .line 205
    :cond_3
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointID1:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 207
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointID1:J

    goto :goto_1

    .line 208
    :cond_4
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointID2:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 210
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointID2:J

    goto :goto_1

    .line 218
    .end local v3    # "id":Ljava/lang/Long;
    :cond_5
    return-void
.end method

.method private calculateCenter()V
    .locals 18

    .prologue
    .line 146
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentTouchCount:I

    if-gtz v12, :cond_0

    .line 147
    new-instance v12, Ljava/lang/RuntimeException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const-string v14, "Error in Rotate gesture recognition: touch count is zero!"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 150
    :cond_0
    const-wide/16 v12, 0x0

    move-wide v2, v12

    .line 151
    .local v2, "totalX":D
    const-wide/16 v12, 0x0

    move-wide v4, v12

    .line 152
    .local v4, "totalY":D
    const-wide/16 v12, 0x0

    move-wide v6, v12

    .line 153
    .local v6, "totalAbsX":D
    const-wide/16 v12, 0x0

    move-wide v8, v12

    .line 154
    .local v8, "totalAbsY":D
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->trackers:Ljava/util/Map;

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

    check-cast v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;

    move-object v11, v12

    .line 155
    .local v11, "tracker":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    move-wide v12, v2

    move-object v14, v11

    invoke-virtual {v14}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;->getX()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v2, v12

    .line 156
    move-wide v12, v4

    move-object v14, v11

    invoke-virtual {v14}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;->getY()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v4, v12

    .line 157
    move-wide v12, v6

    move-object v14, v11

    invoke-virtual {v14}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;->getAbsX()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v6, v12

    .line 158
    move-wide v12, v8

    move-object v14, v11

    invoke-virtual {v14}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;->getAbsY()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v8, v12

    .line 159
    goto :goto_0

    .line 160
    .end local v11    # "tracker":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    :cond_1
    move-object v12, v1

    move-wide v13, v2

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentTouchCount:I

    int-to-double v15, v15

    div-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->centerX:D

    .line 161
    move-object v12, v1

    move-wide v13, v4

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentTouchCount:I

    int-to-double v15, v15

    div-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->centerY:D

    .line 162
    move-object v12, v1

    move-wide v13, v6

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentTouchCount:I

    int-to-double v15, v15

    div-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->centerAbsX:D

    .line 163
    move-object v12, v1

    move-wide v13, v8

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentTouchCount:I

    int-to-double v15, v15

    div-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->centerAbsY:D

    .line 164
    return-void
.end method

.method private getAngle(Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;)D
    .locals 14

    .prologue
    .line 167
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    move-object v2, p1

    .local v2, "tp1":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    move-object/from16 v3, p2

    .local v3, "tp2":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;->getAbsX()D

    move-result-wide v10

    move-object v12, v2

    invoke-virtual {v12}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;->getAbsX()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-wide v4, v10

    .line 168
    .local v4, "dx":D
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;->getAbsY()D

    move-result-wide v10

    move-object v12, v2

    invoke-virtual {v12}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;->getAbsY()D

    move-result-wide v12

    sub-double/2addr v10, v12

    neg-double v10, v10

    move-wide v6, v10

    .line 169
    .local v6, "dy":D
    move-wide v10, v6

    move-wide v12, v4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    move-wide v8, v10

    .line 170
    .local v8, "newAngle":D
    move-wide v10, v8

    move-wide v1, v10

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    return-wide v1
.end method

.method private getNormalizedDelta(DD)D
    .locals 13

    .prologue
    .line 177
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    move-wide v2, p1

    .local v2, "oldAngle":D
    move-wide/from16 v4, p3

    .local v4, "newAngle":D
    move-wide v8, v4

    move-wide v10, v2

    sub-double/2addr v8, v10

    neg-double v8, v8

    move-wide v6, v8

    .line 181
    .local v6, "delta":D
    move-wide v8, v6

    const-wide v10, 0x4066800000000000L    # 180.0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    .line 182
    move-wide v8, v6

    const-wide v10, 0x4076800000000000L    # 360.0

    sub-double/2addr v8, v10

    move-wide v6, v8

    .line 186
    :cond_0
    :goto_0
    move-wide v8, v6

    move-wide v1, v8

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    return-wide v1

    .line 183
    .restart local v1    # "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    :cond_1
    move-wide v8, v6

    const-wide v10, -0x3f99800000000000L    # -180.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    .line 184
    move-wide v8, v6

    const-wide v10, 0x4076800000000000L    # 360.0

    add-double/2addr v8, v10

    move-wide v6, v8

    goto :goto_0
.end method

.method private synthetic lambda$new$417(Ljavafx/beans/Observable;)V
    .locals 13

    .prologue
    .line 101
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    move-object v2, p1

    .local v2, "valueModel":Ljavafx/beans/Observable;
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->inertiaTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v7}, Ljavafx/animation/Timeline;->getCurrentTime()Ljavafx/util/Duration;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/util/Duration;->toSeconds()D

    move-result-wide v7

    move-wide v3, v7

    .line 102
    .local v3, "currentTime":D
    move-wide v7, v3

    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->inertiaLastTime:D

    sub-double/2addr v7, v9

    move-wide v5, v7

    .line 103
    .local v5, "timePassed":D
    move-object v7, v1

    move-wide v8, v3

    iput-wide v8, v7, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->inertiaLastTime:D

    .line 104
    move-object v7, v1

    move-wide v8, v5

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->inertiaRotationVelocity:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v10}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v10

    mul-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentRotation:D

    .line 105
    move-object v7, v1

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->totalRotation:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentRotation:D

    add-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->totalRotation:D

    .line 107
    move-object v7, v1

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->sendRotateEvent(Z)V

    .line 108
    return-void
.end method

.method private synthetic lambda$notifyEndTouchEvent$418(Ljavafx/event/ActionEvent;)V
    .locals 3

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->reset()V

    .line 252
    return-void
.end method

.method private synthetic lambda$sendRotateEvent$420(Z)Ljava/lang/Void;
    .locals 24

    .prologue
    .line 340
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    move/from16 v3, p1

    .local v3, "isInertia":Z
    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    if-eqz v4, :cond_0

    .line 341
    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    sget-object v5, Ljavafx/scene/input/RotateEvent;->ROTATE:Ljavafx/event/EventType;

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentRotation:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->totalRotation:D

    move-object v10, v2

    iget-wide v10, v10, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->centerX:D

    move-object v12, v2

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->centerY:D

    move-object v14, v2

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->centerAbsX:D

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->centerAbsY:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->modifiers:I

    move/from16 v18, v0

    const/16 v19, 0x1

    and-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_1

    const/16 v18, 0x1

    :goto_0
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->modifiers:I

    move/from16 v19, v0

    const/16 v20, 0x4

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_2

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->modifiers:I

    move/from16 v20, v0

    const/16 v21, 0x8

    and-int/lit8 v20, v20, 0x8

    if-eqz v20, :cond_3

    const/16 v20, 0x1

    :goto_2
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->modifiers:I

    move/from16 v21, v0

    const/16 v22, 0x10

    and-int/lit8 v21, v21, 0x10

    if-eqz v21, :cond_4

    const/16 v21, 0x1

    :goto_3
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->direct:Z

    move/from16 v22, v0

    move/from16 v23, v3

    invoke-interface/range {v4 .. v23}, Lcom/sun/javafx/tk/TKSceneListener;->rotateEvent(Ljavafx/event/EventType;DDDDDDZZZZZZ)V

    .line 351
    :cond_0
    const/4 v4, 0x0

    move-object v2, v4

    .end local v2    # "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    return-object v2

    .line 341
    .restart local v2    # "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
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

.method private synthetic lambda$sendRotateFinishedEvent$421()Ljava/lang/Void;
    .locals 22

    .prologue
    .line 357
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    if-eqz v2, :cond_0

    .line 358
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    sget-object v3, Ljavafx/scene/input/RotateEvent;->ROTATION_FINISHED:Ljavafx/event/EventType;

    const-wide/16 v4, 0x0

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->totalRotation:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->centerX:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->centerY:D

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->centerAbsX:D

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->centerAbsY:D

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->modifiers:I

    move/from16 v16, v0

    const/16 v17, 0x1

    and-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_1

    const/16 v16, 0x1

    :goto_0
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->modifiers:I

    move/from16 v17, v0

    const/16 v18, 0x4

    and-int/lit8 v17, v17, 0x4

    if-eqz v17, :cond_2

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->modifiers:I

    move/from16 v18, v0

    const/16 v19, 0x8

    and-int/lit8 v18, v18, 0x8

    if-eqz v18, :cond_3

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->modifiers:I

    move/from16 v19, v0

    const/16 v20, 0x10

    and-int/lit8 v19, v19, 0x10

    if-eqz v19, :cond_4

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->direct:Z

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v2 .. v21}, Lcom/sun/javafx/tk/TKSceneListener;->rotateEvent(Ljavafx/event/EventType;DDDDDDZZZZZZ)V

    .line 369
    :cond_0
    const/4 v2, 0x0

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    return-object v1

    .line 358
    .restart local v1    # "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
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

.method private synthetic lambda$sendRotateStartedEvent$419()Ljava/lang/Void;
    .locals 22

    .prologue
    .line 322
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    if-eqz v2, :cond_0

    .line 323
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    sget-object v3, Ljavafx/scene/input/RotateEvent;->ROTATION_STARTED:Ljavafx/event/EventType;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->centerX:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->centerY:D

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->centerAbsX:D

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->centerAbsY:D

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->modifiers:I

    move/from16 v16, v0

    const/16 v17, 0x1

    and-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_1

    const/16 v16, 0x1

    :goto_0
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->modifiers:I

    move/from16 v17, v0

    const/16 v18, 0x4

    and-int/lit8 v17, v17, 0x4

    if-eqz v17, :cond_2

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->modifiers:I

    move/from16 v18, v0

    const/16 v19, 0x8

    and-int/lit8 v18, v18, 0x8

    if-eqz v18, :cond_3

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->modifiers:I

    move/from16 v19, v0

    const/16 v20, 0x10

    and-int/lit8 v19, v19, 0x10

    if-eqz v19, :cond_4

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->direct:Z

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v2 .. v21}, Lcom/sun/javafx/tk/TKSceneListener;->rotateEvent(Ljavafx/event/EventType;DDDDDDZZZZZZ)V

    .line 334
    :cond_0
    const/4 v2, 0x0

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    return-object v1

    .line 323
    .restart local v1    # "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
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

.method private static synthetic lambda$static$416()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 57
    const-string v2, "com.sun.javafx.gestures.rotate.threshold"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 58
    .local v1, "s":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 59
    move-object v2, v1

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sput-wide v2, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->ROTATATION_THRESHOLD:D

    .line 61
    :cond_0
    const-string v2, "com.sun.javafx.gestures.rotate.inertia"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 62
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 63
    move-object v2, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->ROTATION_INERTIA_ENABLED:Z

    .line 65
    :cond_1
    const/4 v2, 0x0

    move-object v1, v2

    .end local v1    # "s":Ljava/lang/String;
    return-object v1
.end method

.method private sendRotateEvent(Z)V
    .locals 4

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    move v1, p1

    .local v1, "isInertia":Z
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;Z)Ljava/security/PrivilegedAction;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 352
    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v3

    .line 339
    invoke-static {v2, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    .line 353
    return-void
.end method

.method private sendRotateFinishedEvent()V
    .locals 3

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;)Ljava/security/PrivilegedAction;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 370
    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v2

    .line 356
    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    .line 371
    return-void
.end method

.method private sendRotateStartedEvent()V
    .locals 3

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;)Ljava/security/PrivilegedAction;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 335
    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v2

    .line 321
    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    .line 336
    return-void
.end method


# virtual methods
.method public notifyBeginTouchEvent(JIZI)V
    .locals 11

    .prologue
    .line 114
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
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

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->params(IZ)V

    .line 115
    move-object v7, v1

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointsSetChanged:Z

    .line 116
    move-object v7, v1

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointsPressed:Z

    .line 117
    move-object v7, v1

    const/4 v8, 0x0

    iput v8, v7, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointsInEvent:I

    .line 118
    return-void
.end method

.method public notifyEndTouchEvent(J)V
    .locals 29

    .prologue
    .line 222
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    move-wide/from16 v4, p1

    .local v4, "time":J
    move-object v12, v3

    move-wide v13, v4

    long-to-double v13, v13

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->lastTouchEventTime:D

    .line 223
    move-object v12, v3

    iget v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentTouchCount:I

    move-object v13, v3

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->trackers:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    if-eq v12, v13, :cond_0

    .line 224
    new-instance v12, Ljava/lang/RuntimeException;

    move-object/from16 v28, v12

    move-object/from16 v12, v28

    move-object/from16 v13, v28

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v28, v14

    move-object/from16 v14, v28

    move-object/from16 v15, v28

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error in Rotate gesture recognition: touch count is wrong: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v3

    iget v15, v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentTouchCount:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 228
    :cond_0
    move-object v12, v3

    iget v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentTouchCount:I

    if-nez v12, :cond_7

    .line 229
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    sget-object v13, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->ACTIVE:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    if-ne v12, v13, :cond_1

    .line 230
    move-object v12, v3

    invoke-direct {v12}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->sendRotateFinishedEvent()V

    .line 232
    :cond_1
    sget-boolean v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->ROTATION_INERTIA_ENABLED:Z

    if-eqz v12, :cond_4

    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    sget-object v13, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->PRE_INERTIA:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    if-eq v12, v13, :cond_2

    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    sget-object v13, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->ACTIVE:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    if-ne v12, v13, :cond_4

    .line 233
    :cond_2
    move-wide v12, v4

    long-to-double v12, v12

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->rotationStartTime:D

    sub-double/2addr v12, v14

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v14

    move-wide v6, v12

    .line 234
    .local v6, "timeFromLastRotation":D
    move-wide v12, v6

    const-wide v14, 0x4072c00000000000L    # 300.0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_6

    .line 235
    move-object v12, v3

    sget-object v13, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->INERTIA:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    iput-object v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    .line 237
    move-object v12, v3

    const-wide/16 v13, 0x0

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->inertiaLastTime:D

    .line 238
    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->initialInertiaRotationVelocity:D

    sget-wide v14, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->MAX_INITIAL_VELOCITY:D

    cmpl-double v12, v12, v14

    if-lez v12, :cond_5

    .line 239
    move-object v12, v3

    sget-wide v13, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->MAX_INITIAL_VELOCITY:D

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->initialInertiaRotationVelocity:D

    .line 243
    :cond_3
    :goto_0
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->inertiaTimeline:Ljavafx/animation/Timeline;

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

    .line 245
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

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->inertiaRotationVelocity:Ljavafx/beans/property/DoubleProperty;

    move-object/from16 v24, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->initialInertiaRotationVelocity:D

    move-wide/from16 v25, v0

    .line 246
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

    sget-wide v18, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->ROTATION_INERTIA_MILLIS:D

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->initialInertiaRotationVelocity:D

    move-wide/from16 v20, v0

    .line 248
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    sget-wide v20, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->MAX_INITIAL_VELOCITY:D

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v18

    move-object/from16 v19, v3

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;)Ljavafx/event/EventHandler;

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

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->inertiaRotationVelocity:Ljavafx/beans/property/DoubleProperty;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    .line 253
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    sget-object v27, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    invoke-direct/range {v24 .. v27}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v23, v21, v22

    invoke-direct/range {v17 .. v20}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    aput-object v16, v14, v15

    .line 243
    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v12

    .line 255
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->inertiaTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v12}, Ljavafx/animation/Timeline;->playFromStart()V

    .line 259
    .line 318
    .end local v6    # "timeFromLastRotation":D
    :cond_4
    :goto_1
    return-void

    .line 240
    .restart local v6    # "timeFromLastRotation":D
    :cond_5
    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->initialInertiaRotationVelocity:D

    sget-wide v14, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->MAX_INITIAL_VELOCITY:D

    neg-double v14, v14

    cmpg-double v12, v12, v14

    if-gez v12, :cond_3

    .line 241
    move-object v12, v3

    sget-wide v13, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->MAX_INITIAL_VELOCITY:D

    neg-double v13, v13

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->initialInertiaRotationVelocity:D

    goto/16 :goto_0

    .line 257
    :cond_6
    move-object v12, v3

    invoke-virtual {v12}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->reset()V

    goto :goto_1

    .line 262
    .end local v6    # "timeFromLastRotation":D
    :cond_7
    move-object v12, v3

    iget-boolean v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointsPressed:Z

    if-eqz v12, :cond_8

    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    sget-object v13, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->INERTIA:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    if-ne v12, v13, :cond_8

    .line 264
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->inertiaTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v12}, Ljavafx/animation/Timeline;->stop()V

    .line 265
    move-object v12, v3

    invoke-virtual {v12}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->reset()V

    .line 267
    :cond_8
    move-object v12, v3

    iget v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentTouchCount:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    .line 268
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    sget-object v13, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->ACTIVE:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    if-ne v12, v13, :cond_4

    .line 269
    move-object v12, v3

    invoke-direct {v12}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->sendRotateFinishedEvent()V

    .line 270
    sget-boolean v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->ROTATION_INERTIA_ENABLED:Z

    if-eqz v12, :cond_9

    .line 272
    move-object v12, v3

    sget-object v13, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->PRE_INERTIA:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    iput-object v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    goto :goto_1

    .line 274
    :cond_9
    move-object v12, v3

    invoke-virtual {v12}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->reset()V

    goto :goto_1

    .line 279
    :cond_a
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    sget-object v13, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->IDLE:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    if-ne v12, v13, :cond_b

    .line 280
    move-object v12, v3

    sget-object v13, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->TRACKING:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    iput-object v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    .line 281
    move-object v12, v3

    invoke-direct {v12}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->assignActiveTouchpoints()V

    .line 284
    :cond_b
    move-object v12, v3

    invoke-direct {v12}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->calculateCenter()V

    .line 286
    move-object v12, v3

    iget-boolean v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointsSetChanged:Z

    if-eqz v12, :cond_c

    .line 287
    move-object v12, v3

    invoke-direct {v12}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->assignActiveTouchpoints()V

    .line 289
    :cond_c
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->trackers:Ljava/util/Map;

    move-object v13, v3

    iget-wide v13, v13, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointID1:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;

    move-object v6, v12

    .line 290
    .local v6, "tp1":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->trackers:Ljava/util/Map;

    move-object v13, v3

    iget-wide v13, v13, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointID2:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;

    move-object v7, v12

    .line 291
    .local v7, "tp2":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    move-object v12, v3

    move-object v13, v6

    move-object v14, v7

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->getAngle(Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;)D

    move-result-wide v12

    move-wide v8, v12

    .line 293
    .local v8, "newAngle":D
    move-object v12, v3

    iget-boolean v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointsSetChanged:Z

    if-eqz v12, :cond_d

    .line 295
    move-object v12, v3

    move-wide v13, v8

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->angleReference:D

    goto/16 :goto_1

    .line 297
    :cond_d
    move-object v12, v3

    move-object v13, v3

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->angleReference:D

    move-wide/from16 v16, v8

    invoke-direct/range {v13 .. v17}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->getNormalizedDelta(DD)D

    move-result-wide v13

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentRotation:D

    .line 298
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    sget-object v13, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->TRACKING:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    if-ne v12, v13, :cond_e

    .line 299
    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentRotation:D

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    sget-wide v14, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->ROTATATION_THRESHOLD:D

    cmpl-double v12, v12, v14

    if-lez v12, :cond_e

    .line 300
    move-object v12, v3

    sget-object v13, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->ACTIVE:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    iput-object v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    .line 301
    move-object v12, v3

    invoke-direct {v12}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->sendRotateStartedEvent()V

    .line 305
    :cond_e
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    sget-object v13, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->ACTIVE:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    if-ne v12, v13, :cond_4

    .line 306
    move-object v12, v3

    move-object/from16 v28, v12

    move-object/from16 v12, v28

    move-object/from16 v13, v28

    iget-wide v13, v13, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->totalRotation:D

    move-object v15, v3

    iget-wide v15, v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentRotation:D

    add-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->totalRotation:D

    .line 307
    move-object v12, v3

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->sendRotateEvent(Z)V

    .line 308
    move-object v12, v3

    move-wide v13, v8

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->angleReference:D

    .line 309
    move-wide v12, v4

    long-to-double v12, v12

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->rotationStartTime:D

    sub-double/2addr v12, v14

    const-wide v14, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v12, v14

    move-wide v10, v12

    .line 310
    .local v10, "timePassed":D
    move-wide v12, v10

    const-wide v14, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v12, v12, v14

    if-lez v12, :cond_4

    .line 311
    move-object v12, v3

    move-object v13, v3

    iget-wide v13, v13, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentRotation:D

    move-wide v15, v10

    div-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->initialInertiaRotationVelocity:D

    .line 312
    move-object v12, v3

    move-wide v13, v4

    long-to-double v13, v13

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->rotationStartTime:D

    goto/16 :goto_1
.end method

.method public notifyNextTouchEvent(JIJDDDD)V
    .locals 30

    .prologue
    .line 123
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
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
    move-object v15, v1

    move-object/from16 v28, v15

    move-object/from16 v15, v28

    move-object/from16 v16, v28

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointsInEvent:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointsInEvent:I

    .line 124
    move v15, v4

    packed-switch v15, :pswitch_data_0

    .line 140
    new-instance v15, Ljava/lang/RuntimeException;

    move-object/from16 v28, v15

    move-object/from16 v15, v28

    move-object/from16 v16, v28

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v28, v17

    move-object/from16 v17, v28

    move-object/from16 v18, v28

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error in Rotate gesture recognition: unknown touch state: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 126
    :pswitch_0
    move-object v15, v1

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointsSetChanged:Z

    .line 127
    move-object v15, v1

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointsPressed:Z

    .line 128
    move-object v15, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, v2

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    move-wide/from16 v26, v13

    invoke-virtual/range {v15 .. v27}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPressed(JJDDDD)V

    .line 129
    .line 143
    :goto_0
    return-void

    .line 131
    :pswitch_1
    goto :goto_0

    .line 133
    :pswitch_2
    move-object v15, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, v2

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    move-wide/from16 v26, v13

    invoke-virtual/range {v15 .. v27}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchMoved(JJDDDD)V

    .line 134
    goto :goto_0

    .line 136
    :pswitch_3
    move-object v15, v1

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointsSetChanged:Z

    .line 137
    move-object v15, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, v2

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    move-wide/from16 v26, v13

    invoke-virtual/range {v15 .. v27}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchReleased(JJDDDD)V

    .line 138
    goto :goto_0

    .line 124
    nop

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
    .line 374
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    move v1, p1

    .local v1, "modifiers":I
    move v2, p2

    .local v2, "direct":Z
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->modifiers:I

    .line 375
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->direct:Z

    .line 376
    return-void
.end method

.method reset()V
    .locals 4

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->IDLE:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    .line 416
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointID1:J

    .line 417
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->touchPointID2:J

    .line 418
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentRotation:D

    .line 419
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->totalRotation:D

    .line 420
    return-void
.end method

.method public touchMoved(JJDDDD)V
    .locals 27

    .prologue
    .line 400
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
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

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    sget-object v16, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 401
    .line 412
    :goto_0
    return-void

    .line 404
    :cond_0
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->trackers:Ljava/util/Map;

    move-wide/from16 v16, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;

    move-object v14, v15

    .line 405
    .local v14, "tracker":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    move-object v15, v14

    if-nez v15, :cond_1

    .line 407
    move-object v15, v1

    sget-object v16, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    .line 408
    new-instance v15, Ljava/lang/RuntimeException;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const-string v17, "Error in rotate gesture recognition: reported unknown touch point"

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 411
    :cond_1
    move-object v15, v14

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    move-wide/from16 v24, v12

    invoke-virtual/range {v15 .. v25}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;->update(JDDDD)V

    .line 412
    goto :goto_0
.end method

.method public touchPressed(JJDDDD)V
    .locals 27

    .prologue
    .line 379
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
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

    iget v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentTouchCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentTouchCount:I

    .line 380
    new-instance v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;-><init>(Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$1;)V

    move-object v14, v15

    .line 381
    .local v14, "tracker":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    move-object v15, v14

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    move-wide/from16 v24, v12

    invoke-virtual/range {v15 .. v25}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;->update(JDDDD)V

    .line 382
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->trackers:Ljava/util/Map;

    move-wide/from16 v16, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v17, v14

    invoke-interface/range {v15 .. v17}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 383
    return-void
.end method

.method public touchReleased(JJDDDD)V
    .locals 19

    .prologue
    .line 386
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
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

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    sget-object v16, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 387
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->trackers:Ljava/util/Map;

    move-wide/from16 v16, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;

    move-object v14, v15

    .line 388
    .local v14, "tracker":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    move-object v15, v14

    if-nez v15, :cond_0

    .line 390
    move-object v15, v1

    sget-object v16, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    .line 391
    new-instance v15, Ljava/lang/RuntimeException;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    const-string v17, "Error in Rotate gesture recognition: released unknown touch point"

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 394
    :cond_0
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->trackers:Ljava/util/Map;

    move-wide/from16 v16, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 396
    .end local v14    # "tracker":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    :cond_1
    move-object v15, v1

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentTouchCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;->currentTouchCount:I

    .line 397
    return-void
.end method

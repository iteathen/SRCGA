.class Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;
.super Ljava/lang/Object;
.source "SwipeGestureRecognizer.java"

# interfaces
.implements Lcom/sun/javafx/tk/quantum/GestureRecognizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;,
        Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;,
        Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;,
        Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;
    }
.end annotation


# static fields
.field private static final BACKWARD_DISTANCE_THRASHOLD:D = 5.0

.field private static final DISTANCE_THRESHOLD:D = 10.0

.field private static final TANGENT_30_DEGREES:D = 0.577

.field private static final TANGENT_45_DEGREES:D = 1.0

.field private static final VERBOSE:Z


# instance fields
.field private scene:Lcom/sun/javafx/tk/quantum/ViewScene;

.field private state:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

.field tracker:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;


# direct methods
.method constructor <init>(Lcom/sun/javafx/tk/quantum/ViewScene;)V
    .locals 8

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;
    move-object v1, p1

    .local v1, "scene":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 52
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->IDLE:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    .line 53
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;-><init>(Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$1;)V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;->tracker:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;

    .line 57
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 58
    return-void
.end method

.method static synthetic access$300(Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;)Ljavafx/event/EventType;
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;->calcSwipeType(Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;)Ljavafx/event/EventType;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;
    return-object v0
.end method

.method static synthetic access$400(Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;Ljavafx/event/EventType;Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;IIZ)V
    .locals 12

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;
    move v3, p3

    .local v3, "x3":I
    move/from16 v4, p4

    .local v4, "x4":I
    move/from16 v5, p5

    .local v5, "x5":Z
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;->handleSwipeType(Ljavafx/event/EventType;Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;IIZ)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;Ljavafx/event/EventType;ILcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;IZ)Ljava/lang/Void;
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;->lambda$handleSwipeType$428(Ljavafx/event/EventType;ILcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;IZ)Ljava/lang/Void;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method private calcSwipeType(Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;)Ljavafx/event/EventType;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;",
            ")",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;
    move-object/from16 v3, p1

    .local v3, "tracker":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;
    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->getDistanceX()D

    move-result-wide v26

    move-wide/from16 v4, v26

    .line 95
    .local v4, "distanceX":D
    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->getDistanceY()D

    move-result-wide v26

    move-wide/from16 v6, v26

    .line 96
    .local v6, "distanceY":D
    move-wide/from16 v26, v4

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    move-wide/from16 v8, v26

    .line 97
    .local v8, "absDistanceX":D
    move-wide/from16 v26, v6

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    move-wide/from16 v10, v26

    .line 99
    .local v10, "absDistanceY":D
    move-wide/from16 v26, v8

    move-wide/from16 v28, v10

    cmpl-double v26, v26, v28

    if-lez v26, :cond_0

    const/16 v26, 0x1

    :goto_0
    move/from16 v12, v26

    .line 101
    .local v12, "horizontal":Z
    move/from16 v26, v12

    if-eqz v26, :cond_1

    move-wide/from16 v26, v4

    :goto_1
    move-wide/from16 v13, v26

    .line 102
    .local v13, "primaryDistance":D
    move/from16 v26, v12

    if-eqz v26, :cond_2

    move-wide/from16 v26, v8

    :goto_2
    move-wide/from16 v15, v26

    .line 103
    .local v15, "absPrimaryDistance":D
    move/from16 v26, v12

    if-eqz v26, :cond_3

    move-wide/from16 v26, v10

    :goto_3
    move-wide/from16 v17, v26

    .line 104
    .local v17, "absSecondaryDistance":D
    move/from16 v26, v12

    if-eqz v26, :cond_4

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lengthX:D

    move-wide/from16 v26, v0

    :goto_4
    move-wide/from16 v19, v26

    .line 106
    .local v19, "absPrimaryLength":D
    move/from16 v26, v12

    if-eqz v26, :cond_5

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->maxDeviationY:D

    move-wide/from16 v26, v0

    :goto_5
    move-wide/from16 v21, v26

    .line 108
    .local v21, "maxSecondaryDeviation":D
    move/from16 v26, v12

    if-eqz v26, :cond_6

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lastXMovement:D

    move-wide/from16 v26, v0

    :goto_6
    move-wide/from16 v23, v26

    .line 111
    .local v23, "lastPrimaryMovement":D
    move-wide/from16 v26, v15

    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    cmpg-double v26, v26, v28

    if-gtz v26, :cond_7

    .line 113
    const/16 v26, 0x0

    move-object/from16 v2, v26

    .line 146
    .end local v2    # "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;
    :goto_7
    return-object v2

    .line 99
    .end local v12    # "horizontal":Z
    .end local v13    # "primaryDistance":D
    .end local v15    # "absPrimaryDistance":D
    .end local v17    # "absSecondaryDistance":D
    .end local v19    # "absPrimaryLength":D
    .end local v21    # "maxSecondaryDeviation":D
    .end local v23    # "lastPrimaryMovement":D
    .restart local v2    # "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;
    :cond_0
    const/16 v26, 0x0

    goto :goto_0

    .line 101
    .restart local v12    # "horizontal":Z
    :cond_1
    move-wide/from16 v26, v6

    goto :goto_1

    .line 102
    .restart local v13    # "primaryDistance":D
    :cond_2
    move-wide/from16 v26, v10

    goto :goto_2

    .line 103
    .restart local v15    # "absPrimaryDistance":D
    :cond_3
    move-wide/from16 v26, v8

    goto :goto_3

    .line 104
    .restart local v17    # "absSecondaryDistance":D
    :cond_4
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lengthY:D

    move-wide/from16 v26, v0

    goto :goto_4

    .line 106
    .restart local v19    # "absPrimaryLength":D
    :cond_5
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->maxDeviationX:D

    move-wide/from16 v26, v0

    goto :goto_5

    .line 108
    .restart local v21    # "maxSecondaryDeviation":D
    :cond_6
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lastYMovement:D

    move-wide/from16 v26, v0

    goto :goto_6

    .line 116
    .restart local v23    # "lastPrimaryMovement":D
    :cond_7
    move-wide/from16 v26, v17

    move-wide/from16 v28, v15

    const-wide v30, 0x3fe276c8b4395810L    # 0.577

    mul-double v28, v28, v30

    cmpl-double v26, v26, v28

    if-lez v26, :cond_8

    .line 118
    const/16 v26, 0x0

    move-object/from16 v2, v26

    goto :goto_7

    .line 121
    :cond_8
    move-wide/from16 v26, v21

    move-wide/from16 v28, v15

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    mul-double v28, v28, v30

    cmpl-double v26, v26, v28

    if-lez v26, :cond_9

    .line 123
    const/16 v26, 0x0

    move-object/from16 v2, v26

    goto :goto_7

    .line 126
    :cond_9
    const-string v26, "com.sun.javafx.gestures.swipe.maxduration"

    const/16 v27, 0x12c

    invoke-static/range {v26 .. v27}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v25, v26

    .line 127
    .local v25, "swipeMaxDuration":I
    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->getDuration()J

    move-result-wide v26

    move/from16 v28, v25

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-lez v26, :cond_a

    .line 128
    const/16 v26, 0x0

    move-object/from16 v2, v26

    goto :goto_7

    .line 131
    :cond_a
    move-wide/from16 v26, v19

    move-wide/from16 v28, v15

    const-wide/high16 v30, 0x3ff8000000000000L    # 1.5

    mul-double v28, v28, v30

    cmpl-double v26, v26, v28

    if-lez v26, :cond_b

    .line 133
    const/16 v26, 0x0

    move-object/from16 v2, v26

    goto/16 :goto_7

    .line 136
    :cond_b
    move-wide/from16 v26, v13

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->signum(D)D

    move-result-wide v26

    move-wide/from16 v28, v23

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->signum(D)D

    move-result-wide v28

    cmpl-double v26, v26, v28

    if-eqz v26, :cond_c

    move-wide/from16 v26, v23

    .line 137
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    const-wide/high16 v28, 0x4014000000000000L    # 5.0

    cmpl-double v26, v26, v28

    if-lez v26, :cond_c

    .line 139
    const/16 v26, 0x0

    move-object/from16 v2, v26

    goto/16 :goto_7

    .line 142
    :cond_c
    move/from16 v26, v12

    if-eqz v26, :cond_e

    .line 143
    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->getDistanceX()D

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmpg-double v26, v26, v28

    if-gez v26, :cond_d

    sget-object v26, Ljavafx/scene/input/SwipeEvent;->SWIPE_LEFT:Ljavafx/event/EventType;

    :goto_8
    move-object/from16 v2, v26

    goto/16 :goto_7

    :cond_d
    sget-object v26, Ljavafx/scene/input/SwipeEvent;->SWIPE_RIGHT:Ljavafx/event/EventType;

    goto :goto_8

    .line 146
    :cond_e
    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->getDistanceY()D

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmpg-double v26, v26, v28

    if-gez v26, :cond_f

    sget-object v26, Ljavafx/scene/input/SwipeEvent;->SWIPE_UP:Ljavafx/event/EventType;

    :goto_9
    move-object/from16 v2, v26

    goto/16 :goto_7

    :cond_f
    sget-object v26, Ljavafx/scene/input/SwipeEvent;->SWIPE_DOWN:Ljavafx/event/EventType;

    goto :goto_9
.end method

.method private handleSwipeType(Ljavafx/event/EventType;Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;IIZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;",
            "Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;",
            "IIZ)V"
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;
    move-object v1, p1

    .local v1, "swipeType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/SwipeEvent;>;"
    move-object v2, p2

    .local v2, "cc":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;
    move v3, p3

    .local v3, "touchCount":I
    move/from16 v4, p4

    .local v4, "modifiers":I
    move/from16 v5, p5

    .local v5, "isDirect":Z
    move-object v6, v1

    if-nez v6, :cond_0

    .line 155
    .line 174
    :goto_0
    return-void

    .line 161
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move v8, v3

    move-object v9, v2

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;Ljavafx/event/EventType;ILcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;IZ)Ljava/security/PrivilegedAction;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 173
    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/ViewScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v7

    .line 161
    invoke-static {v6, v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v6

    .line 174
    goto :goto_0
.end method

.method private synthetic lambda$handleSwipeType$428(Ljavafx/event/EventType;ILcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;IZ)Ljava/lang/Void;
    .locals 23

    .prologue
    .line 162
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;
    move-object/from16 v2, p1

    .local v2, "swipeType":Ljavafx/event/EventType;
    move/from16 v3, p2

    .local v3, "touchCount":I
    move-object/from16 v4, p3

    .local v4, "cc":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;
    move/from16 v5, p4

    .local v5, "modifiers":I
    move/from16 v6, p5

    .local v6, "isDirect":Z
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    if-eqz v7, :cond_0

    .line 163
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;->scene:Lcom/sun/javafx/tk/quantum/ViewScene;

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object v8, v2

    move v9, v3

    move-object v10, v4

    .line 164
    invoke-virtual {v10}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->getX()D

    move-result-wide v10

    move-object v12, v4

    invoke-virtual {v12}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->getY()D

    move-result-wide v12

    move-object v14, v4

    .line 165
    invoke-virtual {v14}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->getAbsX()D

    move-result-wide v14

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->getAbsY()D

    move-result-wide v16

    move/from16 v18, v5

    const/16 v19, 0x1

    and-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_1

    const/16 v18, 0x1

    :goto_0
    move/from16 v19, v5

    const/16 v20, 0x4

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_2

    const/16 v19, 0x1

    :goto_1
    move/from16 v20, v5

    const/16 v21, 0x8

    and-int/lit8 v20, v20, 0x8

    if-eqz v20, :cond_3

    const/16 v20, 0x1

    :goto_2
    move/from16 v21, v5

    const/16 v22, 0x10

    and-int/lit8 v21, v21, 0x10

    if-eqz v21, :cond_4

    const/16 v21, 0x1

    :goto_3
    move/from16 v22, v6

    .line 163
    invoke-interface/range {v7 .. v22}, Lcom/sun/javafx/tk/TKSceneListener;->swipeEvent(Ljavafx/event/EventType;IDDDDZZZZZ)V

    .line 172
    :cond_0
    const/4 v7, 0x0

    move-object v1, v7

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;
    return-object v1

    .line 165
    .restart local v1    # "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;
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


# virtual methods
.method public notifyBeginTouchEvent(JIZI)V
    .locals 11

    .prologue
    .line 63
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;
    move-wide v2, p1

    .local v2, "time":J
    move v4, p3

    .local v4, "modifiers":I
    move v5, p4

    .local v5, "isDirect":Z
    move/from16 v6, p5

    .local v6, "touchEventCount":I
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;->tracker:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;

    move v8, v4

    move v9, v5

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->params(IZ)V

    .line 64
    return-void
.end method

.method public notifyEndTouchEvent(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 90
    return-void
.end method

.method public notifyNextTouchEvent(JIJDDDD)V
    .locals 30

    .prologue
    .line 69
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;
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

    .line 82
    new-instance v15, Ljava/lang/RuntimeException;

    move-object/from16 v28, v15

    move-object/from16 v15, v28

    move-object/from16 v16, v28

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v28, v17

    move-object/from16 v17, v28

    move-object/from16 v18, v28

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error in swipe gesture recognition: unknown touch state: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;->state:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 71
    :pswitch_0
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;->tracker:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;

    move-wide/from16 v16, v5

    move-wide/from16 v18, v2

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    move-wide/from16 v26, v13

    invoke-virtual/range {v15 .. v27}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->pressed(JJDDDD)V

    .line 72
    .line 85
    :goto_0
    return-void

    .line 76
    :pswitch_1
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;->tracker:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;

    move-wide/from16 v16, v5

    move-wide/from16 v18, v2

    move-wide/from16 v20, v11

    move-wide/from16 v22, v13

    invoke-virtual/range {v15 .. v23}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->progress(JJDD)V

    .line 77
    goto :goto_0

    .line 79
    :pswitch_2
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;->tracker:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;

    move-wide/from16 v16, v5

    move-wide/from16 v18, v2

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    move-wide/from16 v26, v13

    invoke-virtual/range {v15 .. v27}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$MultiTouchTracker;->released(JJDDDD)V

    .line 80
    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x32b
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

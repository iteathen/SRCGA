.class Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;
.super Ljava/lang/Object;
.source "SwipeGestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchPointTracker"
.end annotation


# instance fields
.field beginAbsX:D

.field beginAbsY:D

.field beginTime:J

.field beginX:D

.field beginY:D

.field endAbsX:D

.field endAbsY:D

.field endTime:J

.field endX:D

.field endY:D

.field lastX:D

.field lastXMovement:D

.field lastY:D

.field lastYMovement:D

.field lengthX:D

.field lengthY:D

.field maxDeviationX:D

.field maxDeviationY:D


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$1;)V
    .locals 3

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public end(JDDDD)V
    .locals 19

    .prologue
    .line 351
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;
    move-wide/from16 v1, p1

    .local v1, "nanos":J
    move-wide/from16 v3, p3

    .local v3, "x":D
    move-wide/from16 v5, p5

    .local v5, "y":D
    move-wide/from16 v7, p7

    .local v7, "absX":D
    move-wide/from16 v9, p9

    .local v9, "absY":D
    move-object v11, v0

    move-wide v12, v1

    move-wide v14, v7

    move-wide/from16 v16, v9

    invoke-virtual/range {v11 .. v17}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->progress(JDD)V

    .line 352
    move-object v11, v0

    move-wide v12, v3

    iput-wide v12, v11, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->endX:D

    .line 353
    move-object v11, v0

    move-wide v12, v5

    iput-wide v12, v11, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->endY:D

    .line 354
    move-object v11, v0

    move-wide v12, v7

    iput-wide v12, v11, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->endAbsX:D

    .line 355
    move-object v11, v0

    move-wide v12, v9

    iput-wide v12, v11, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->endAbsY:D

    .line 356
    move-object v11, v0

    move-wide v12, v1

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    iput-wide v12, v11, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->endTime:J

    .line 357
    return-void
.end method

.method public getDistanceX()D
    .locals 6

    .prologue
    .line 388
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->endX:D

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->beginX:D

    sub-double/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;
    return-wide v1
.end method

.method public getDistanceY()D
    .locals 6

    .prologue
    .line 392
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->endY:D

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->beginY:D

    sub-double/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;
    return-wide v1
.end method

.method public getDuration()J
    .locals 6

    .prologue
    .line 396
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->endTime:J

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->beginTime:J

    sub-long/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;
    return-wide v1
.end method

.method public progress(JDD)V
    .locals 25

    .prologue
    .line 360
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;
    move-wide/from16 v4, p1

    .local v4, "nanos":J
    move-wide/from16 v6, p3

    .local v6, "x":D
    move-wide/from16 v8, p5

    .local v8, "y":D
    move-wide/from16 v18, v6

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lastX:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v10, v18

    .line 361
    .local v10, "deltaX":D
    move-wide/from16 v18, v8

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lastY:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 363
    .local v12, "deltaY":D
    move-object/from16 v18, v3

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lengthX:D

    move-wide/from16 v19, v0

    move-wide/from16 v21, v10

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lengthX:D

    .line 364
    move-object/from16 v18, v3

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lengthY:D

    move-wide/from16 v19, v0

    move-wide/from16 v21, v12

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lengthY:D

    .line 365
    move-object/from16 v18, v3

    move-wide/from16 v19, v6

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lastX:D

    .line 366
    move-object/from16 v18, v3

    move-wide/from16 v19, v8

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lastY:D

    .line 368
    move-wide/from16 v18, v6

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->beginAbsX:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 369
    .local v14, "devX":D
    move-wide/from16 v18, v14

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->maxDeviationX:D

    move-wide/from16 v20, v0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_0

    move-object/from16 v18, v3

    move-wide/from16 v19, v14

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->maxDeviationX:D

    .line 371
    :cond_0
    move-wide/from16 v18, v8

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->beginAbsY:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 372
    .local v16, "devY":D
    move-wide/from16 v18, v16

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->maxDeviationY:D

    move-wide/from16 v20, v0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_1

    move-object/from16 v18, v3

    move-wide/from16 v19, v16

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->maxDeviationY:D

    .line 374
    :cond_1
    move-wide/from16 v18, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->signum(D)D

    move-result-wide v18

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lastXMovement:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->signum(D)D

    move-result-wide v20

    cmpl-double v18, v18, v20

    if-nez v18, :cond_2

    .line 375
    move-object/from16 v18, v3

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lastXMovement:D

    move-wide/from16 v19, v0

    move-wide/from16 v21, v10

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lastXMovement:D

    .line 380
    :goto_0
    move-wide/from16 v18, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->signum(D)D

    move-result-wide v18

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lastYMovement:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->signum(D)D

    move-result-wide v20

    cmpl-double v18, v18, v20

    if-nez v18, :cond_3

    .line 381
    move-object/from16 v18, v3

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lastYMovement:D

    move-wide/from16 v19, v0

    move-wide/from16 v21, v12

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lastYMovement:D

    .line 385
    :goto_1
    return-void

    .line 377
    :cond_2
    move-object/from16 v18, v3

    move-wide/from16 v19, v10

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lastXMovement:D

    goto :goto_0

    .line 383
    :cond_3
    move-object/from16 v18, v3

    move-wide/from16 v19, v12

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lastYMovement:D

    goto :goto_1
.end method

.method public start(JDDDD)V
    .locals 17

    .prologue
    .line 341
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;
    move-wide/from16 v1, p1

    .local v1, "nanos":J
    move-wide/from16 v3, p3

    .local v3, "x":D
    move-wide/from16 v5, p5

    .local v5, "y":D
    move-wide/from16 v7, p7

    .local v7, "absX":D
    move-wide/from16 v9, p9

    .local v9, "absY":D
    move-object v11, v0

    move-wide v12, v3

    iput-wide v12, v11, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->beginX:D

    .line 342
    move-object v11, v0

    move-wide v12, v5

    iput-wide v12, v11, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->beginY:D

    .line 343
    move-object v11, v0

    move-wide v12, v7

    iput-wide v12, v11, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->beginAbsX:D

    .line 344
    move-object v11, v0

    move-wide v12, v9

    iput-wide v12, v11, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->beginAbsY:D

    .line 345
    move-object v11, v0

    move-wide v12, v7

    iput-wide v12, v11, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lastX:D

    .line 346
    move-object v11, v0

    move-wide v12, v9

    iput-wide v12, v11, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->lastY:D

    .line 347
    move-object v11, v0

    move-wide v12, v1

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    iput-wide v12, v11, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$TouchPointTracker;->beginTime:J

    .line 348
    return-void
.end method

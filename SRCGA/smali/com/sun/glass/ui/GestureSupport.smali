.class public final Lcom/sun/glass/ui/GestureSupport;
.super Ljava/lang/Object;
.source "GestureSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/GestureSupport$GestureState;
    }
.end annotation


# static fields
.field private static final THRESHOLD_EXPANSION:D = 0.01

.field private static final THRESHOLD_ROTATE:D

.field private static final THRESHOLD_SCALE:D = 0.01

.field private static final THRESHOLD_SCROLL:D = 1.0


# instance fields
.field private multiplierX:D

.field private multiplierY:D

.field private final rotating:Lcom/sun/glass/ui/GestureSupport$GestureState;

.field private final scrolling:Lcom/sun/glass/ui/GestureSupport$GestureState;

.field private final swiping:Lcom/sun/glass/ui/GestureSupport$GestureState;

.field private totalExpansion:D

.field private totalRotation:D

.field private totalScale:D

.field private totalScrollX:D

.field private totalScrollY:D

.field private zoomWithExpansion:Z

.field private final zooming:Lcom/sun/glass/ui/GestureSupport$GestureState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    sput-wide v0, Lcom/sun/glass/ui/GestureSupport;->THRESHOLD_ROTATE:D

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 8

    .prologue
    .line 90
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/GestureSupport;
    move v2, p1

    .local v2, "zoomWithExpansion":Z
    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 75
    move-object v3, v1

    new-instance v4, Lcom/sun/glass/ui/GestureSupport$GestureState;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/sun/glass/ui/GestureSupport$GestureState;-><init>(Lcom/sun/glass/ui/GestureSupport$1;)V

    iput-object v4, v3, Lcom/sun/glass/ui/GestureSupport;->scrolling:Lcom/sun/glass/ui/GestureSupport$GestureState;

    .line 76
    move-object v3, v1

    new-instance v4, Lcom/sun/glass/ui/GestureSupport$GestureState;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/sun/glass/ui/GestureSupport$GestureState;-><init>(Lcom/sun/glass/ui/GestureSupport$1;)V

    iput-object v4, v3, Lcom/sun/glass/ui/GestureSupport;->rotating:Lcom/sun/glass/ui/GestureSupport$GestureState;

    .line 77
    move-object v3, v1

    new-instance v4, Lcom/sun/glass/ui/GestureSupport$GestureState;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/sun/glass/ui/GestureSupport$GestureState;-><init>(Lcom/sun/glass/ui/GestureSupport$1;)V

    iput-object v4, v3, Lcom/sun/glass/ui/GestureSupport;->zooming:Lcom/sun/glass/ui/GestureSupport$GestureState;

    .line 78
    move-object v3, v1

    new-instance v4, Lcom/sun/glass/ui/GestureSupport$GestureState;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/sun/glass/ui/GestureSupport$GestureState;-><init>(Lcom/sun/glass/ui/GestureSupport$1;)V

    iput-object v4, v3, Lcom/sun/glass/ui/GestureSupport;->swiping:Lcom/sun/glass/ui/GestureSupport$GestureState;

    .line 80
    move-object v3, v1

    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    iput-wide v4, v3, Lcom/sun/glass/ui/GestureSupport;->totalScrollX:D

    .line 81
    move-object v3, v1

    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    iput-wide v4, v3, Lcom/sun/glass/ui/GestureSupport;->totalScrollY:D

    .line 82
    move-object v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v3, Lcom/sun/glass/ui/GestureSupport;->totalScale:D

    .line 83
    move-object v3, v1

    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    iput-wide v4, v3, Lcom/sun/glass/ui/GestureSupport;->totalExpansion:D

    .line 84
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/glass/ui/GestureSupport;->totalRotation:D

    .line 85
    move-object v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v3, Lcom/sun/glass/ui/GestureSupport;->multiplierX:D

    .line 86
    move-object v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v3, Lcom/sun/glass/ui/GestureSupport;->multiplierY:D

    .line 91
    move-object v3, v1

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/glass/ui/GestureSupport;->zoomWithExpansion:Z

    .line 92
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/glass/ui/GestureSupport;Lcom/sun/glass/ui/TouchInputSupport;Lcom/sun/glass/ui/View;IZ)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/GestureSupport;->lambda$createTouchCountListener$41(Lcom/sun/glass/ui/TouchInputSupport;Lcom/sun/glass/ui/View;IZ)V

    return-void
.end method

.method public static handleScrollingPerformed(Lcom/sun/glass/ui/View;IZZIIIIIDDDD)V
    .locals 41

    .prologue
    .line 368
    move-object/from16 v1, p0

    .local v1, "view":Lcom/sun/glass/ui/View;
    move/from16 v2, p1

    .local v2, "modifiers":I
    move/from16 v3, p2

    .local v3, "isDirect":Z
    move/from16 v4, p3

    .local v4, "isInertia":Z
    move/from16 v5, p4

    .local v5, "touchCount":I
    move/from16 v6, p5

    .local v6, "x":I
    move/from16 v7, p6

    .local v7, "y":I
    move/from16 v8, p7

    .local v8, "xAbs":I
    move/from16 v9, p8

    .local v9, "yAbs":I
    move-wide/from16 v10, p9

    .local v10, "dx":D
    move-wide/from16 v12, p11

    .local v12, "dy":D
    move-wide/from16 v14, p13

    .local v14, "multiplierX":D
    move-wide/from16 v16, p15

    .local v16, "multiplierY":D
    move-object/from16 v18, v1

    const/16 v19, 0x2

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v9

    move-wide/from16 v28, v10

    move-wide/from16 v30, v12

    move-wide/from16 v32, v10

    move-wide/from16 v34, v12

    move-wide/from16 v36, v14

    move-wide/from16 v38, v16

    invoke-virtual/range {v18 .. v39}, Lcom/sun/glass/ui/View;->notifyScrollGestureEvent(IIZZIIIIIDDDDDD)V

    .line 371
    return-void
.end method

.method public static handleSwipePerformed(Lcom/sun/glass/ui/View;IZZIIIIII)V
    .locals 21

    .prologue
    .line 356
    move-object/from16 v0, p0

    .local v0, "view":Lcom/sun/glass/ui/View;
    move/from16 v1, p1

    .local v1, "modifiers":I
    move/from16 v2, p2

    .local v2, "isDirect":Z
    move/from16 v3, p3

    .local v3, "isInertia":Z
    move/from16 v4, p4

    .local v4, "touchCount":I
    move/from16 v5, p5

    .local v5, "dir":I
    move/from16 v6, p6

    .local v6, "x":I
    move/from16 v7, p7

    .local v7, "y":I
    move/from16 v8, p8

    .local v8, "xAbs":I
    move/from16 v9, p9

    .local v9, "yAbs":I
    move-object v10, v0

    const/4 v11, 0x2

    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-virtual/range {v10 .. v20}, Lcom/sun/glass/ui/View;->notifySwipeGestureEvent(IIZZIIIIII)V

    .line 359
    return-void
.end method

.method private synthetic lambda$createTouchCountListener$41(Lcom/sun/glass/ui/TouchInputSupport;Lcom/sun/glass/ui/View;IZ)V
    .locals 16

    .prologue
    .line 376
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/GestureSupport;
    move-object/from16 v1, p1

    .local v1, "sender":Lcom/sun/glass/ui/TouchInputSupport;
    move-object/from16 v2, p2

    .local v2, "view":Lcom/sun/glass/ui/View;
    move/from16 v3, p3

    .local v3, "modifiers":I
    move/from16 v4, p4

    .local v4, "isDirect":Z
    const/4 v6, 0x0

    move v5, v6

    .line 378
    .local v5, "isInertia":Z
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/glass/ui/GestureSupport;->isScrolling()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 379
    move-object v6, v0

    move-object v7, v2

    move v8, v3

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/glass/ui/TouchInputSupport;->getTouchCount()I

    move-result v9

    move v10, v4

    const/4 v11, 0x0

    const v12, 0x7fffffff

    const v13, 0x7fffffff

    const v14, 0x7fffffff

    const v15, 0x7fffffff

    invoke-virtual/range {v6 .. v15}, Lcom/sun/glass/ui/GestureSupport;->handleScrollingEnd(Lcom/sun/glass/ui/View;IIZZIIII)V

    .line 387
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/glass/ui/GestureSupport;->isRotating()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 388
    move-object v6, v0

    move-object v7, v2

    move v8, v3

    move v9, v4

    const/4 v10, 0x0

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    const v13, 0x7fffffff

    const v14, 0x7fffffff

    invoke-virtual/range {v6 .. v14}, Lcom/sun/glass/ui/GestureSupport;->handleRotationEnd(Lcom/sun/glass/ui/View;IZZIIII)V

    .line 395
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/glass/ui/GestureSupport;->isZooming()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 396
    move-object v6, v0

    move-object v7, v2

    move v8, v3

    move v9, v4

    const/4 v10, 0x0

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    const v13, 0x7fffffff

    const v14, 0x7fffffff

    invoke-virtual/range {v6 .. v14}, Lcom/sun/glass/ui/GestureSupport;->handleZoomingEnd(Lcom/sun/glass/ui/View;IZZIIII)V

    .line 402
    :cond_2
    return-void
.end method

.method private static multiplicativeDelta(DD)D
    .locals 8

    .prologue
    .line 95
    move-wide v0, p0

    .local v0, "from":D
    move-wide v2, p2

    .local v2, "to":D
    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 96
    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    move-wide v0, v4

    .line 98
    .end local v0    # "from":D
    :goto_0
    return-wide v0

    .restart local v0    # "from":D
    :cond_0
    move-wide v4, v2

    move-wide v6, v0

    div-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0
.end method

.method private setRotating(Z)I
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/GestureSupport;
    move v1, p1

    .local v1, "isInertia":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/GestureSupport;->rotating:Lcom/sun/glass/ui/GestureSupport$GestureState;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/GestureSupport$GestureState;->updateProgress(Z)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/GestureSupport;
    return v0
.end method

.method private setScrolling(Z)I
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/GestureSupport;
    move v1, p1

    .local v1, "isInertia":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/GestureSupport;->scrolling:Lcom/sun/glass/ui/GestureSupport$GestureState;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/GestureSupport$GestureState;->updateProgress(Z)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/GestureSupport;
    return v0
.end method

.method private setSwiping(Z)I
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/GestureSupport;
    move v1, p1

    .local v1, "isInertia":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/GestureSupport;->swiping:Lcom/sun/glass/ui/GestureSupport$GestureState;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/GestureSupport$GestureState;->updateProgress(Z)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/GestureSupport;
    return v0
.end method

.method private setZooming(Z)I
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/GestureSupport;
    move v1, p1

    .local v1, "isInertia":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/GestureSupport;->zooming:Lcom/sun/glass/ui/GestureSupport$GestureState;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/GestureSupport$GestureState;->updateProgress(Z)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/GestureSupport;
    return v0
.end method


# virtual methods
.method public createTouchCountListener()Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;
    .locals 2

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/GestureSupport;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 375
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/glass/ui/GestureSupport$$Lambda$1;->lambdaFactory$(Lcom/sun/glass/ui/GestureSupport;)Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/GestureSupport;
    return-object v0
.end method

.method public handleDeltaRotation(Lcom/sun/glass/ui/View;IZZIIIID)V
    .locals 31

    .prologue
    .line 306
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/glass/ui/GestureSupport;
    move-object/from16 v4, p1

    .local v4, "view":Lcom/sun/glass/ui/View;
    move/from16 v5, p2

    .local v5, "modifiers":I
    move/from16 v6, p3

    .local v6, "isDirect":Z
    move/from16 v7, p4

    .local v7, "isInertia":Z
    move/from16 v8, p5

    .local v8, "x":I
    move/from16 v9, p6

    .local v9, "y":I
    move/from16 v10, p7

    .local v10, "xAbs":I
    move/from16 v11, p8

    .local v11, "yAbs":I
    move-wide/from16 v12, p9

    .local v12, "rotation":D
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalRotation:D

    move-wide/from16 v17, v0

    move-wide/from16 v14, v17

    .line 307
    .local v14, "baseRotation":D
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/glass/ui/GestureSupport;->rotating:Lcom/sun/glass/ui/GestureSupport$GestureState;

    move-object/from16 v17, v0

    move/from16 v18, v7

    invoke-virtual/range {v17 .. v18}, Lcom/sun/glass/ui/GestureSupport$GestureState;->doesGestureStart(Z)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 308
    const-wide/16 v17, 0x0

    move-wide/from16 v14, v17

    .line 311
    :cond_0
    move-object/from16 v17, v3

    move-wide/from16 v18, v14

    move-wide/from16 v20, v12

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->totalRotation:D

    .line 312
    move-object/from16 v17, v3

    move/from16 v18, v7

    invoke-direct/range {v17 .. v18}, Lcom/sun/glass/ui/GestureSupport;->setRotating(Z)I

    move-result v17

    move/from16 v16, v17

    .line 314
    .local v16, "eventID":I
    move-object/from16 v17, v4

    move/from16 v18, v16

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move-wide/from16 v26, v12

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalRotation:D

    move-wide/from16 v28, v0

    invoke-virtual/range {v17 .. v29}, Lcom/sun/glass/ui/View;->notifyRotateGestureEvent(IIZZIIIIDD)V

    .line 316
    return-void
.end method

.method public handleDeltaScrolling(Lcom/sun/glass/ui/View;IZZIIIIIDDDD)V
    .locals 50

    .prologue
    .line 323
    move-object/from16 v4, p0

    .local v4, "this":Lcom/sun/glass/ui/GestureSupport;
    move-object/from16 v5, p1

    .local v5, "view":Lcom/sun/glass/ui/View;
    move/from16 v6, p2

    .local v6, "modifiers":I
    move/from16 v7, p3

    .local v7, "isDirect":Z
    move/from16 v8, p4

    .local v8, "isInertia":Z
    move/from16 v9, p5

    .local v9, "touchCount":I
    move/from16 v10, p6

    .local v10, "x":I
    move/from16 v11, p7

    .local v11, "y":I
    move/from16 v12, p8

    .local v12, "xAbs":I
    move/from16 v13, p9

    .local v13, "yAbs":I
    move-wide/from16 v14, p10

    .local v14, "dx":D
    move-wide/from16 v16, p12

    .local v16, "dy":D
    move-wide/from16 v18, p14

    .local v18, "multiplierX":D
    move-wide/from16 v20, p16

    .local v20, "multiplierY":D
    move-object/from16 v27, v4

    move-wide/from16 v28, v18

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->multiplierX:D

    .line 324
    move-object/from16 v27, v4

    move-wide/from16 v28, v20

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->multiplierY:D

    .line 326
    move-object/from16 v27, v4

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollX:D

    move-wide/from16 v27, v0

    move-wide/from16 v22, v27

    .line 327
    .local v22, "baseScrollX":D
    move-object/from16 v27, v4

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollY:D

    move-wide/from16 v27, v0

    move-wide/from16 v24, v27

    .line 328
    .local v24, "baseScrollY":D
    move-object/from16 v27, v4

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/glass/ui/GestureSupport;->scrolling:Lcom/sun/glass/ui/GestureSupport$GestureState;

    move-object/from16 v27, v0

    move/from16 v28, v8

    invoke-virtual/range {v27 .. v28}, Lcom/sun/glass/ui/GestureSupport$GestureState;->doesGestureStart(Z)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 329
    const-wide/16 v27, 0x0

    move-wide/from16 v22, v27

    .line 330
    const-wide/16 v27, 0x0

    move-wide/from16 v24, v27

    .line 333
    :cond_0
    move-object/from16 v27, v4

    move-wide/from16 v28, v22

    move-wide/from16 v30, v14

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->totalScrollX:D

    .line 334
    move-object/from16 v27, v4

    move-wide/from16 v28, v24

    move-wide/from16 v30, v16

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->totalScrollY:D

    .line 336
    move-object/from16 v27, v4

    move/from16 v28, v8

    invoke-direct/range {v27 .. v28}, Lcom/sun/glass/ui/GestureSupport;->setScrolling(Z)I

    move-result v27

    move/from16 v26, v27

    .line 338
    .local v26, "eventID":I
    move-object/from16 v27, v5

    move/from16 v28, v26

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v9

    move/from16 v33, v10

    move/from16 v34, v11

    move/from16 v35, v12

    move/from16 v36, v13

    move-wide/from16 v37, v14

    move-wide/from16 v39, v16

    move-object/from16 v41, v4

    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollX:D

    move-wide/from16 v41, v0

    move-object/from16 v43, v4

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollY:D

    move-wide/from16 v43, v0

    move-wide/from16 v45, v18

    move-wide/from16 v47, v20

    invoke-virtual/range {v27 .. v48}, Lcom/sun/glass/ui/View;->notifyScrollGestureEvent(IIZZIIIIIDDDDDD)V

    .line 342
    return-void
.end method

.method public handleDeltaZooming(Lcom/sun/glass/ui/View;IZZIIIIDD)V
    .locals 39

    .prologue
    .line 274
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/glass/ui/GestureSupport;
    move-object/from16 v4, p1

    .local v4, "view":Lcom/sun/glass/ui/View;
    move/from16 v5, p2

    .local v5, "modifiers":I
    move/from16 v6, p3

    .local v6, "isDirect":Z
    move/from16 v7, p4

    .local v7, "isInertia":Z
    move/from16 v8, p5

    .local v8, "x":I
    move/from16 v9, p6

    .local v9, "y":I
    move/from16 v10, p7

    .local v10, "xAbs":I
    move/from16 v11, p8

    .local v11, "yAbs":I
    move-wide/from16 v12, p9

    .local v12, "scale":D
    move-wide/from16 v14, p11

    .local v14, "expansion":D
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScale:D

    move-wide/from16 v21, v0

    move-wide/from16 v16, v21

    .line 275
    .local v16, "baseScale":D
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalExpansion:D

    move-wide/from16 v21, v0

    move-wide/from16 v18, v21

    .line 276
    .local v18, "baseExpansion":D
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/glass/ui/GestureSupport;->zooming:Lcom/sun/glass/ui/GestureSupport$GestureState;

    move-object/from16 v21, v0

    move/from16 v22, v7

    invoke-virtual/range {v21 .. v22}, Lcom/sun/glass/ui/GestureSupport$GestureState;->doesGestureStart(Z)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 277
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v16, v21

    .line 278
    const-wide/16 v21, 0x0

    move-wide/from16 v18, v21

    .line 287
    :cond_0
    move-object/from16 v21, v3

    move-wide/from16 v22, v16

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v12

    add-double v24, v24, v26

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->totalScale:D

    .line 288
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/sun/glass/ui/GestureSupport;->zoomWithExpansion:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 289
    move-object/from16 v21, v3

    move-wide/from16 v22, v18

    move-wide/from16 v24, v14

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->totalExpansion:D

    .line 294
    :goto_0
    move-object/from16 v21, v3

    move/from16 v22, v7

    invoke-direct/range {v21 .. v22}, Lcom/sun/glass/ui/GestureSupport;->setZooming(Z)I

    move-result v21

    move/from16 v20, v21

    .line 296
    .local v20, "eventID":I
    move-object/from16 v21, v4

    move/from16 v22, v20

    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move-wide/from16 v30, v16

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScale:D

    move-wide/from16 v32, v0

    .line 298
    invoke-static/range {v30 .. v33}, Lcom/sun/glass/ui/GestureSupport;->multiplicativeDelta(DD)D

    move-result-wide v30

    move-wide/from16 v32, v14

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScale:D

    move-wide/from16 v34, v0

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalExpansion:D

    move-wide/from16 v36, v0

    .line 296
    invoke-virtual/range {v21 .. v37}, Lcom/sun/glass/ui/View;->notifyZoomGestureEvent(IIZZIIIIDDDD)V

    .line 300
    return-void

    .line 291
    .end local v20    # "eventID":I
    :cond_1
    move-object/from16 v21, v3

    const-wide/high16 v22, 0x7ff8000000000000L    # NaN

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->totalExpansion:D

    goto :goto_0
.end method

.method public handleRotationEnd(Lcom/sun/glass/ui/View;IZZIIII)V
    .locals 24

    .prologue
    .line 150
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/glass/ui/GestureSupport;
    move-object/from16 v3, p1

    .local v3, "view":Lcom/sun/glass/ui/View;
    move/from16 v4, p2

    .local v4, "modifiers":I
    move/from16 v5, p3

    .local v5, "isDirect":Z
    move/from16 v6, p4

    .local v6, "isInertia":Z
    move/from16 v7, p5

    .local v7, "x":I
    move/from16 v8, p6

    .local v8, "y":I
    move/from16 v9, p7

    .local v9, "xAbs":I
    move/from16 v10, p8

    .local v10, "yAbs":I
    move-object v11, v2

    iget-object v11, v11, Lcom/sun/glass/ui/GestureSupport;->rotating:Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-virtual {v11}, Lcom/sun/glass/ui/GestureSupport$GestureState;->setIdle()V

    .line 151
    move v11, v6

    if-eqz v11, :cond_0

    .line 152
    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    move-object v11, v3

    const/4 v12, 0x3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    const-wide/16 v20, 0x0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalRotation:D

    move-wide/from16 v22, v0

    invoke-virtual/range {v11 .. v23}, Lcom/sun/glass/ui/View;->notifyRotateGestureEvent(IIZZIIIIDD)V

    .line 157
    goto :goto_0
.end method

.method public handleScrollingEnd(Lcom/sun/glass/ui/View;IIZZIIII)V
    .locals 34

    .prologue
    .line 136
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/glass/ui/GestureSupport;
    move-object/from16 v3, p1

    .local v3, "view":Lcom/sun/glass/ui/View;
    move/from16 v4, p2

    .local v4, "modifiers":I
    move/from16 v5, p3

    .local v5, "touchCount":I
    move/from16 v6, p4

    .local v6, "isDirect":Z
    move/from16 v7, p5

    .local v7, "isInertia":Z
    move/from16 v8, p6

    .local v8, "x":I
    move/from16 v9, p7

    .local v9, "y":I
    move/from16 v10, p8

    .local v10, "xAbs":I
    move/from16 v11, p9

    .local v11, "yAbs":I
    move-object v12, v2

    iget-object v12, v12, Lcom/sun/glass/ui/GestureSupport;->scrolling:Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-virtual {v12}, Lcom/sun/glass/ui/GestureSupport$GestureState;->setIdle()V

    .line 137
    move v12, v7

    if-eqz v12, :cond_0

    .line 138
    .line 145
    :goto_0
    return-void

    .line 140
    :cond_0
    move-object v12, v3

    const/4 v13, 0x3

    move v14, v4

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v5

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v11

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollX:D

    move-wide/from16 v26, v0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollY:D

    move-wide/from16 v28, v0

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->multiplierX:D

    move-wide/from16 v30, v0

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->multiplierY:D

    move-wide/from16 v32, v0

    invoke-virtual/range {v12 .. v33}, Lcom/sun/glass/ui/View;->notifyScrollGestureEvent(IIZZIIIIIDDDDDD)V

    .line 145
    goto :goto_0
.end method

.method public handleSwipe(Lcom/sun/glass/ui/View;IZZIIIIII)V
    .locals 23

    .prologue
    .line 347
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/GestureSupport;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move/from16 v2, p2

    .local v2, "modifiers":I
    move/from16 v3, p3

    .local v3, "isDirect":Z
    move/from16 v4, p4

    .local v4, "isInertia":Z
    move/from16 v5, p5

    .local v5, "touchCount":I
    move/from16 v6, p6

    .local v6, "dir":I
    move/from16 v7, p7

    .local v7, "x":I
    move/from16 v8, p8

    .local v8, "y":I
    move/from16 v9, p9

    .local v9, "xAbs":I
    move/from16 v10, p10

    .local v10, "yAbs":I
    move-object v12, v0

    move v13, v4

    invoke-direct {v12, v13}, Lcom/sun/glass/ui/GestureSupport;->setSwiping(Z)I

    move-result v12

    move v11, v12

    .line 348
    .local v11, "eventID":I
    move-object v12, v1

    move v13, v11

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    invoke-virtual/range {v12 .. v22}, Lcom/sun/glass/ui/View;->notifySwipeGestureEvent(IIZZIIIIII)V

    .line 350
    return-void
.end method

.method public handleSwipeEnd(Lcom/sun/glass/ui/View;IZZIIII)V
    .locals 20

    .prologue
    .line 175
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/GestureSupport;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move/from16 v2, p2

    .local v2, "modifiers":I
    move/from16 v3, p3

    .local v3, "isDirect":Z
    move/from16 v4, p4

    .local v4, "isInertia":Z
    move/from16 v5, p5

    .local v5, "x":I
    move/from16 v6, p6

    .local v6, "y":I
    move/from16 v7, p7

    .local v7, "xAbs":I
    move/from16 v8, p8

    .local v8, "yAbs":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/glass/ui/GestureSupport;->swiping:Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-virtual {v9}, Lcom/sun/glass/ui/GestureSupport$GestureState;->setIdle()V

    .line 176
    move v9, v4

    if-eqz v9, :cond_0

    .line 177
    .line 182
    :goto_0
    return-void

    .line 179
    :cond_0
    move-object v9, v1

    const/4 v10, 0x3

    move v11, v2

    move v12, v3

    move v13, v4

    const v14, 0x7fffffff

    const v15, 0x7fffffff

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    invoke-virtual/range {v9 .. v19}, Lcom/sun/glass/ui/View;->notifySwipeGestureEvent(IIZZIIIIII)V

    .line 182
    goto :goto_0
.end method

.method public handleTotalRotation(Lcom/sun/glass/ui/View;IZZIIIID)V
    .locals 31

    .prologue
    .line 222
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/glass/ui/GestureSupport;
    move-object/from16 v4, p1

    .local v4, "view":Lcom/sun/glass/ui/View;
    move/from16 v5, p2

    .local v5, "modifiers":I
    move/from16 v6, p3

    .local v6, "isDirect":Z
    move/from16 v7, p4

    .local v7, "isInertia":Z
    move/from16 v8, p5

    .local v8, "x":I
    move/from16 v9, p6

    .local v9, "y":I
    move/from16 v10, p7

    .local v10, "xAbs":I
    move/from16 v11, p8

    .local v11, "yAbs":I
    move-wide/from16 v12, p9

    .local v12, "rotation":D
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalRotation:D

    move-wide/from16 v17, v0

    move-wide/from16 v14, v17

    .line 223
    .local v14, "baseRotation":D
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/glass/ui/GestureSupport;->rotating:Lcom/sun/glass/ui/GestureSupport$GestureState;

    move-object/from16 v17, v0

    move/from16 v18, v7

    invoke-virtual/range {v17 .. v18}, Lcom/sun/glass/ui/GestureSupport$GestureState;->doesGestureStart(Z)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 224
    const-wide/16 v17, 0x0

    move-wide/from16 v14, v17

    .line 227
    :cond_0
    move-wide/from16 v17, v12

    move-wide/from16 v19, v14

    sub-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    sget-wide v19, Lcom/sun/glass/ui/GestureSupport;->THRESHOLD_ROTATE:D

    cmpg-double v17, v17, v19

    if-gez v17, :cond_1

    .line 228
    .line 237
    :goto_0
    return-void

    .line 231
    :cond_1
    move-object/from16 v17, v3

    move-wide/from16 v18, v12

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->totalRotation:D

    .line 232
    move-object/from16 v17, v3

    move/from16 v18, v7

    invoke-direct/range {v17 .. v18}, Lcom/sun/glass/ui/GestureSupport;->setRotating(Z)I

    move-result v17

    move/from16 v16, v17

    .line 234
    .local v16, "eventID":I
    move-object/from16 v17, v4

    move/from16 v18, v16

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move-wide/from16 v26, v12

    move-wide/from16 v28, v14

    sub-double v26, v26, v28

    move-wide/from16 v28, v12

    invoke-virtual/range {v17 .. v29}, Lcom/sun/glass/ui/View;->notifyRotateGestureEvent(IIZZIIIIDD)V

    .line 237
    goto :goto_0
.end method

.method public handleTotalScrolling(Lcom/sun/glass/ui/View;IZZIIIIIDDDD)V
    .locals 48

    .prologue
    .line 244
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/glass/ui/GestureSupport;
    move-object/from16 v4, p1

    .local v4, "view":Lcom/sun/glass/ui/View;
    move/from16 v5, p2

    .local v5, "modifiers":I
    move/from16 v6, p3

    .local v6, "isDirect":Z
    move/from16 v7, p4

    .local v7, "isInertia":Z
    move/from16 v8, p5

    .local v8, "touchCount":I
    move/from16 v9, p6

    .local v9, "x":I
    move/from16 v10, p7

    .local v10, "y":I
    move/from16 v11, p8

    .local v11, "xAbs":I
    move/from16 v12, p9

    .local v12, "yAbs":I
    move-wide/from16 v13, p10

    .local v13, "dx":D
    move-wide/from16 v15, p12

    .local v15, "dy":D
    move-wide/from16 v17, p14

    .local v17, "multiplierX":D
    move-wide/from16 v19, p16

    .local v19, "multiplierY":D
    move-object/from16 v26, v3

    move-wide/from16 v27, v17

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->multiplierX:D

    .line 245
    move-object/from16 v26, v3

    move-wide/from16 v27, v19

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->multiplierY:D

    .line 247
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollX:D

    move-wide/from16 v26, v0

    move-wide/from16 v21, v26

    .line 248
    .local v21, "baseScrollX":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollY:D

    move-wide/from16 v26, v0

    move-wide/from16 v23, v26

    .line 249
    .local v23, "baseScrollY":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/glass/ui/GestureSupport;->scrolling:Lcom/sun/glass/ui/GestureSupport$GestureState;

    move-object/from16 v26, v0

    move/from16 v27, v7

    invoke-virtual/range {v26 .. v27}, Lcom/sun/glass/ui/GestureSupport$GestureState;->doesGestureStart(Z)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 250
    const-wide/16 v26, 0x0

    move-wide/from16 v21, v26

    .line 251
    const-wide/16 v26, 0x0

    move-wide/from16 v23, v26

    .line 254
    :cond_0
    move-wide/from16 v26, v13

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollX:D

    move-wide/from16 v28, v0

    sub-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpg-double v26, v26, v28

    if-gez v26, :cond_1

    move-wide/from16 v26, v15

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollY:D

    move-wide/from16 v28, v0

    sub-double v26, v26, v28

    .line 255
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpg-double v26, v26, v28

    if-gez v26, :cond_1

    .line 256
    .line 268
    :goto_0
    return-void

    .line 259
    :cond_1
    move-object/from16 v26, v3

    move-wide/from16 v27, v13

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->totalScrollX:D

    .line 260
    move-object/from16 v26, v3

    move-wide/from16 v27, v15

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->totalScrollY:D

    .line 261
    move-object/from16 v26, v3

    move/from16 v27, v7

    invoke-direct/range {v26 .. v27}, Lcom/sun/glass/ui/GestureSupport;->setScrolling(Z)I

    move-result v26

    move/from16 v25, v26

    .line 263
    .local v25, "eventID":I
    move-object/from16 v26, v4

    move/from16 v27, v25

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v9

    move/from16 v33, v10

    move/from16 v34, v11

    move/from16 v35, v12

    move-wide/from16 v36, v13

    move-wide/from16 v38, v21

    sub-double v36, v36, v38

    move-wide/from16 v38, v15

    move-wide/from16 v40, v23

    sub-double v38, v38, v40

    move-wide/from16 v40, v13

    move-wide/from16 v42, v15

    move-wide/from16 v44, v17

    move-wide/from16 v46, v19

    invoke-virtual/range {v26 .. v47}, Lcom/sun/glass/ui/View;->notifyScrollGestureEvent(IIZZIIIIIDDDDDD)V

    .line 268
    goto :goto_0
.end method

.method public handleTotalZooming(Lcom/sun/glass/ui/View;IZZIIIIDD)V
    .locals 41

    .prologue
    .line 188
    move-object/from16 v4, p0

    .local v4, "this":Lcom/sun/glass/ui/GestureSupport;
    move-object/from16 v5, p1

    .local v5, "view":Lcom/sun/glass/ui/View;
    move/from16 v6, p2

    .local v6, "modifiers":I
    move/from16 v7, p3

    .local v7, "isDirect":Z
    move/from16 v8, p4

    .local v8, "isInertia":Z
    move/from16 v9, p5

    .local v9, "x":I
    move/from16 v10, p6

    .local v10, "y":I
    move/from16 v11, p7

    .local v11, "xAbs":I
    move/from16 v12, p8

    .local v12, "yAbs":I
    move-wide/from16 v13, p9

    .local v13, "scale":D
    move-wide/from16 v15, p11

    .local v15, "expansion":D
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScale:D

    move-wide/from16 v24, v0

    move-wide/from16 v17, v24

    .line 189
    .local v17, "baseScale":D
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalExpansion:D

    move-wide/from16 v24, v0

    move-wide/from16 v19, v24

    .line 190
    .local v19, "baseExpansion":D
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/glass/ui/GestureSupport;->zooming:Lcom/sun/glass/ui/GestureSupport$GestureState;

    move-object/from16 v24, v0

    move/from16 v25, v8

    invoke-virtual/range {v24 .. v25}, Lcom/sun/glass/ui/GestureSupport$GestureState;->doesGestureStart(Z)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 191
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v17, v24

    .line 192
    const-wide/16 v24, 0x0

    move-wide/from16 v19, v24

    .line 195
    :cond_0
    move-wide/from16 v24, v13

    move-wide/from16 v26, v17

    sub-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    const-wide v26, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v24, v24, v26

    if-gez v24, :cond_2

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sun/glass/ui/GestureSupport;->zoomWithExpansion:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    move-wide/from16 v24, v15

    move-wide/from16 v26, v19

    sub-double v24, v24, v26

    .line 197
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    const-wide v26, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v24, v24, v26

    if-gez v24, :cond_2

    .line 198
    .line 216
    :cond_1
    :goto_0
    return-void

    .line 201
    :cond_2
    const-wide/high16 v24, 0x7ff8000000000000L    # NaN

    move-wide/from16 v21, v24

    .line 202
    .local v21, "deltaExpansion":D
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sun/glass/ui/GestureSupport;->zoomWithExpansion:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 203
    move-wide/from16 v24, v15

    move-wide/from16 v26, v19

    sub-double v24, v24, v26

    move-wide/from16 v21, v24

    .line 208
    :goto_1
    move-object/from16 v24, v4

    move-wide/from16 v25, v13

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->totalScale:D

    .line 209
    move-object/from16 v24, v4

    move-wide/from16 v25, v15

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->totalExpansion:D

    .line 210
    move-object/from16 v24, v4

    move/from16 v25, v8

    invoke-direct/range {v24 .. v25}, Lcom/sun/glass/ui/GestureSupport;->setZooming(Z)I

    move-result v24

    move/from16 v23, v24

    .line 212
    .local v23, "eventID":I
    move-object/from16 v24, v5

    move/from16 v25, v23

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v32, v12

    move-wide/from16 v33, v17

    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScale:D

    move-wide/from16 v35, v0

    .line 214
    invoke-static/range {v33 .. v36}, Lcom/sun/glass/ui/GestureSupport;->multiplicativeDelta(DD)D

    move-result-wide v33

    move-wide/from16 v35, v21

    move-wide/from16 v37, v13

    move-wide/from16 v39, v15

    .line 212
    invoke-virtual/range {v24 .. v40}, Lcom/sun/glass/ui/View;->notifyZoomGestureEvent(IIZZIIIIDDDD)V

    .line 216
    goto :goto_0

    .line 205
    .end local v23    # "eventID":I
    :cond_3
    const-wide/high16 v24, 0x7ff8000000000000L    # NaN

    move-wide/from16 v15, v24

    goto :goto_1
.end method

.method public handleZoomingEnd(Lcom/sun/glass/ui/View;IZZIIII)V
    .locals 28

    .prologue
    .line 162
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/glass/ui/GestureSupport;
    move-object/from16 v3, p1

    .local v3, "view":Lcom/sun/glass/ui/View;
    move/from16 v4, p2

    .local v4, "modifiers":I
    move/from16 v5, p3

    .local v5, "isDirect":Z
    move/from16 v6, p4

    .local v6, "isInertia":Z
    move/from16 v7, p5

    .local v7, "x":I
    move/from16 v8, p6

    .local v8, "y":I
    move/from16 v9, p7

    .local v9, "xAbs":I
    move/from16 v10, p8

    .local v10, "yAbs":I
    move-object v11, v2

    iget-object v11, v11, Lcom/sun/glass/ui/GestureSupport;->zooming:Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-virtual {v11}, Lcom/sun/glass/ui/GestureSupport$GestureState;->setIdle()V

    .line 163
    move v11, v6

    if-eqz v11, :cond_0

    .line 164
    .line 170
    :goto_0
    return-void

    .line 166
    :cond_0
    move-object v11, v3

    const/4 v12, 0x3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    const-wide/high16 v20, 0x7ff8000000000000L    # NaN

    const-wide/16 v22, 0x0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScale:D

    move-wide/from16 v24, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalExpansion:D

    move-wide/from16 v26, v0

    invoke-virtual/range {v11 .. v27}, Lcom/sun/glass/ui/View;->notifyZoomGestureEvent(IIZZIIIIDDDD)V

    .line 170
    goto :goto_0
.end method

.method public isRotating()Z
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/GestureSupport;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/GestureSupport;->rotating:Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-virtual {v1}, Lcom/sun/glass/ui/GestureSupport$GestureState;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/GestureSupport;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/GestureSupport;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/GestureSupport;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/GestureSupport;->scrolling:Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-virtual {v1}, Lcom/sun/glass/ui/GestureSupport$GestureState;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/GestureSupport;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/GestureSupport;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSwiping()Z
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/GestureSupport;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/GestureSupport;->swiping:Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-virtual {v1}, Lcom/sun/glass/ui/GestureSupport$GestureState;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/GestureSupport;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/GestureSupport;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isZooming()Z
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/GestureSupport;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/GestureSupport;->zooming:Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-virtual {v1}, Lcom/sun/glass/ui/GestureSupport$GestureState;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/GestureSupport;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/GestureSupport;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.class Ljavafx/animation/PathTransition$Segment;
.super Ljava/lang/Object;
.source "PathTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/PathTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Segment"
.end annotation


# static fields
.field private static final zeroSegment:Ljavafx/animation/PathTransition$Segment;


# instance fields
.field accumLength:D

.field isMoveTo:Z

.field length:D

.field nextSeg:Ljavafx/animation/PathTransition$Segment;

.field prevSeg:Ljavafx/animation/PathTransition$Segment;

.field rotateAngle:D

.field toX:D

.field toY:D


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    .line 456
    new-instance v1, Ljavafx/animation/PathTransition$Segment;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v2 .. v13}, Ljavafx/animation/PathTransition$Segment;-><init>(ZDDDDD)V

    sput-object v1, Ljavafx/animation/PathTransition$Segment;->zeroSegment:Ljavafx/animation/PathTransition$Segment;

    return-void
.end method

.method private constructor <init>(ZDDDDD)V
    .locals 18

    .prologue
    .line 470
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/animation/PathTransition$Segment;
    move/from16 v2, p1

    .local v2, "isMoveTo":Z
    move-wide/from16 v3, p2

    .local v3, "toX":D
    move-wide/from16 v5, p4

    .local v5, "toY":D
    move-wide/from16 v7, p6

    .local v7, "length":D
    move-wide/from16 v9, p8

    .local v9, "lengthBefore":D
    move-wide/from16 v11, p10

    .local v11, "rotateAngle":D
    move-object v13, v1

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 471
    move-object v13, v1

    move v14, v2

    iput-boolean v14, v13, Ljavafx/animation/PathTransition$Segment;->isMoveTo:Z

    .line 472
    move-object v13, v1

    move-wide v14, v3

    iput-wide v14, v13, Ljavafx/animation/PathTransition$Segment;->toX:D

    .line 473
    move-object v13, v1

    move-wide v14, v5

    iput-wide v14, v13, Ljavafx/animation/PathTransition$Segment;->toY:D

    .line 474
    move-object v13, v1

    move-wide v14, v7

    iput-wide v14, v13, Ljavafx/animation/PathTransition$Segment;->length:D

    .line 475
    move-object v13, v1

    move-wide v14, v9

    move-wide/from16 v16, v7

    add-double v14, v14, v16

    iput-wide v14, v13, Ljavafx/animation/PathTransition$Segment;->accumLength:D

    .line 476
    move-object v13, v1

    move-wide v14, v11

    iput-wide v14, v13, Ljavafx/animation/PathTransition$Segment;->rotateAngle:D

    .line 477
    return-void
.end method

.method public static getZeroSegment()Ljavafx/animation/PathTransition$Segment;
    .locals 1

    .prologue
    .line 480
    sget-object v0, Ljavafx/animation/PathTransition$Segment;->zeroSegment:Ljavafx/animation/PathTransition$Segment;

    return-object v0
.end method

.method public static newClosePath(Ljavafx/animation/PathTransition$Segment;Ljavafx/animation/PathTransition$Segment;)Ljavafx/animation/PathTransition$Segment;
    .locals 8

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "fromSeg":Ljavafx/animation/PathTransition$Segment;
    move-object v1, p1

    .local v1, "moveToSeg":Ljavafx/animation/PathTransition$Segment;
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/animation/PathTransition$Segment;->toX:D

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/animation/PathTransition$Segment;->toY:D

    invoke-static {v3, v4, v5, v6, v7}, Ljavafx/animation/PathTransition$Segment;->newLineTo(Ljavafx/animation/PathTransition$Segment;DD)Ljavafx/animation/PathTransition$Segment;

    move-result-object v3

    move-object v2, v3

    .line 507
    .local v2, "newSeg":Ljavafx/animation/PathTransition$Segment;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 508
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/animation/PathTransition$Segment;->convertToClosePath(Ljavafx/animation/PathTransition$Segment;)V

    .line 510
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "fromSeg":Ljavafx/animation/PathTransition$Segment;
    return-object v0
.end method

.method public static newLineTo(Ljavafx/animation/PathTransition$Segment;DD)Ljavafx/animation/PathTransition$Segment;
    .locals 33

    .prologue
    .line 489
    move-object/from16 v2, p0

    .local v2, "fromSeg":Ljavafx/animation/PathTransition$Segment;
    move-wide/from16 v3, p1

    .local v3, "toX":D
    move-wide/from16 v5, p3

    .local v5, "toY":D
    move-wide/from16 v18, v3

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Ljavafx/animation/PathTransition$Segment;->toX:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v7, v18

    .line 490
    .local v7, "deltaX":D
    move-wide/from16 v18, v5

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Ljavafx/animation/PathTransition$Segment;->toY:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v9, v18

    .line 491
    .local v9, "deltaY":D
    move-wide/from16 v18, v7

    move-wide/from16 v20, v7

    mul-double v18, v18, v20

    move-wide/from16 v20, v9

    move-wide/from16 v22, v9

    mul-double v20, v20, v22

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v11, v18

    .line 492
    .local v11, "length":D
    move-wide/from16 v18, v11

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpl-double v18, v18, v20

    if-gez v18, :cond_0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Ljavafx/animation/PathTransition$Segment;->isMoveTo:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 493
    :cond_0
    move-wide/from16 v18, v9

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_1

    move-wide/from16 v18, v7

    :goto_0
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->signum(D)D

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 494
    .local v13, "sign":D
    move-wide/from16 v18, v13

    move-wide/from16 v20, v7

    move-wide/from16 v22, v11

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->acos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-wide/from16 v15, v18

    .line 495
    .local v15, "angle":D
    move-wide/from16 v18, v15

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    div-double v18, v18, v20

    const-wide v20, 0x4066800000000000L    # 180.0

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljavafx/animation/PathTransition;->access$000(D)D

    move-result-wide v18

    move-wide/from16 v15, v18

    .line 496
    new-instance v18, Ljavafx/animation/PathTransition$Segment;

    move-object/from16 v31, v18

    move-object/from16 v18, v31

    move-object/from16 v19, v31

    const/16 v20, 0x0

    move-wide/from16 v21, v3

    move-wide/from16 v23, v5

    move-wide/from16 v25, v11

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-wide v0, v0, Ljavafx/animation/PathTransition$Segment;->accumLength:D

    move-wide/from16 v27, v0

    move-wide/from16 v29, v15

    invoke-direct/range {v19 .. v30}, Ljavafx/animation/PathTransition$Segment;-><init>(ZDDDDD)V

    move-object/from16 v17, v18

    .line 498
    .local v17, "newSeg":Ljavafx/animation/PathTransition$Segment;
    move-object/from16 v18, v2

    move-object/from16 v19, v17

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavafx/animation/PathTransition$Segment;->nextSeg:Ljavafx/animation/PathTransition$Segment;

    .line 499
    move-object/from16 v18, v17

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavafx/animation/PathTransition$Segment;->prevSeg:Ljavafx/animation/PathTransition$Segment;

    .line 500
    move-object/from16 v18, v17

    move-object/from16 v2, v18

    .line 502
    .end local v2    # "fromSeg":Ljavafx/animation/PathTransition$Segment;
    .end local v13    # "sign":D
    .end local v15    # "angle":D
    .end local v17    # "newSeg":Ljavafx/animation/PathTransition$Segment;
    :goto_1
    return-object v2

    .line 493
    .restart local v2    # "fromSeg":Ljavafx/animation/PathTransition$Segment;
    :cond_1
    move-wide/from16 v18, v9

    goto :goto_0

    .line 502
    :cond_2
    const/16 v18, 0x0

    move-object/from16 v2, v18

    goto :goto_1
.end method

.method public static newMoveTo(DDD)Ljavafx/animation/PathTransition$Segment;
    .locals 22

    .prologue
    .line 485
    move-wide/from16 v1, p0

    .local v1, "toX":D
    move-wide/from16 v3, p2

    .local v3, "toY":D
    move-wide/from16 v5, p4

    .local v5, "accumLength":D
    new-instance v7, Ljavafx/animation/PathTransition$Segment;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    move-wide v10, v1

    move-wide v12, v3

    const-wide/16 v14, 0x0

    move-wide/from16 v16, v5

    const-wide/16 v18, 0x0

    invoke-direct/range {v8 .. v19}, Ljavafx/animation/PathTransition$Segment;-><init>(ZDDDDD)V

    move-object v1, v7

    .end local v1    # "toX":D
    return-object v1
.end method


# virtual methods
.method public convertToClosePath(Ljavafx/animation/PathTransition$Segment;)V
    .locals 5

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PathTransition$Segment;
    move-object v1, p1

    .local v1, "moveToSeg":Ljavafx/animation/PathTransition$Segment;
    move-object v3, v1

    iget-object v3, v3, Ljavafx/animation/PathTransition$Segment;->nextSeg:Ljavafx/animation/PathTransition$Segment;

    move-object v2, v3

    .line 515
    .local v2, "firstLineToSeg":Ljavafx/animation/PathTransition$Segment;
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/animation/PathTransition$Segment;->nextSeg:Ljavafx/animation/PathTransition$Segment;

    .line 516
    move-object v3, v2

    move-object v4, v0

    iput-object v4, v3, Ljavafx/animation/PathTransition$Segment;->prevSeg:Ljavafx/animation/PathTransition$Segment;

    .line 517
    return-void
.end method

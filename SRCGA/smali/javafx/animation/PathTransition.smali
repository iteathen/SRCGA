.class public final Ljavafx/animation/PathTransition;
.super Ljavafx/animation/Transition;
.source "PathTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/animation/PathTransition$Segment;,
        Ljavafx/animation/PathTransition$OrientationType;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:Ljavafx/util/Duration;

.field private static final DEFAULT_NODE:Ljavafx/scene/Node;

.field private static final DEFAULT_ORIENTATION:Ljavafx/animation/PathTransition$OrientationType;

.field private static final DEFAULT_PATH:Ljavafx/scene/shape/Shape;

.field private static final SMOOTH_ZONE:I = 0xa


# instance fields
.field private cachedIsNormalRequired:Z

.field private cachedNode:Ljavafx/scene/Node;

.field private duration:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private node:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private orientation:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/animation/PathTransition$OrientationType;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/Shape;",
            ">;"
        }
    .end annotation
.end field

.field private final segments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavafx/animation/PathTransition$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private totalLength:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x0

    sput-object v0, Ljavafx/animation/PathTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    .line 144
    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    invoke-static {v0, v1}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v0

    sput-object v0, Ljavafx/animation/PathTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    .line 198
    const/4 v0, 0x0

    sput-object v0, Ljavafx/animation/PathTransition;->DEFAULT_PATH:Ljavafx/scene/shape/Shape;

    .line 248
    sget-object v0, Ljavafx/animation/PathTransition$OrientationType;->NONE:Ljavafx/animation/PathTransition$OrientationType;

    sput-object v0, Ljavafx/animation/PathTransition;->DEFAULT_ORIENTATION:Ljavafx/animation/PathTransition$OrientationType;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PathTransition;
    move-object v1, v0

    sget-object v2, Ljavafx/animation/PathTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljavafx/animation/PathTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/shape/Shape;Ljavafx/scene/Node;)V

    .line 303
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;Ljavafx/scene/shape/Shape;)V
    .locals 7

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PathTransition;
    move-object v1, p1

    .local v1, "duration":Ljavafx/util/Duration;
    move-object v2, p2

    .local v2, "path":Ljavafx/scene/shape/Shape;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/animation/PathTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/shape/Shape;Ljavafx/scene/Node;)V

    .line 296
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;Ljavafx/scene/shape/Shape;Ljavafx/scene/Node;)V
    .locals 9

    .prologue
    .line 279
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/PathTransition;
    move-object v2, p1

    .local v2, "duration":Ljavafx/util/Duration;
    move-object v3, p2

    .local v3, "path":Ljavafx/scene/shape/Shape;
    move-object v4, p3

    .local v4, "node":Ljavafx/scene/Node;
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/animation/Transition;-><init>()V

    .line 100
    move-object v5, v1

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Ljavafx/animation/PathTransition;->totalLength:D

    .line 101
    move-object v5, v1

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Ljavafx/animation/PathTransition;->segments:Ljava/util/ArrayList;

    .line 280
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljavafx/animation/PathTransition;->setDuration(Ljavafx/util/Duration;)V

    .line 281
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljavafx/animation/PathTransition;->setPath(Ljavafx/scene/shape/Shape;)V

    .line 282
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/animation/PathTransition;->setNode(Ljavafx/scene/Node;)V

    .line 283
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljavafx/animation/PathTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 284
    return-void
.end method

.method static synthetic access$000(D)D
    .locals 4

    .prologue
    .line 89
    move-wide v0, p0

    .local v0, "x0":D
    move-wide v2, v0

    invoke-static {v2, v3}, Ljavafx/animation/PathTransition;->normalize(D)D

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "x0":D
    return-wide v0
.end method

.method private findSegment(IID)I
    .locals 13

    .prologue
    .line 417
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/PathTransition;
    move v2, p1

    .local v2, "begin":I
    move v3, p2

    .local v3, "end":I
    move-wide/from16 v4, p3

    .local v4, "length":D
    move v7, v2

    move v8, v3

    if-ne v7, v8, :cond_1

    .line 419
    move-object v7, v1

    iget-object v7, v7, Ljavafx/animation/PathTransition;->segments:Ljava/util/ArrayList;

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/animation/PathTransition$Segment;

    iget-boolean v7, v7, Ljavafx/animation/PathTransition$Segment;->isMoveTo:Z

    if-eqz v7, :cond_0

    move v7, v2

    if-lez v7, :cond_0

    move-object v7, v1

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move-wide v10, v4

    .line 420
    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/animation/PathTransition;->findSegment(IID)I

    move-result v7

    :goto_0
    move v1, v7

    .line 427
    .end local v1    # "this":Ljavafx/animation/PathTransition;
    :goto_1
    return v1

    .line 420
    .restart local v1    # "this":Ljavafx/animation/PathTransition;
    :cond_0
    move v7, v2

    goto :goto_0

    .line 424
    :cond_1
    move v7, v2

    move v8, v3

    move v9, v2

    sub-int/2addr v8, v9

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    move v6, v7

    .line 425
    .local v6, "middle":I
    move-object v7, v1

    iget-object v7, v7, Ljavafx/animation/PathTransition;->segments:Ljava/util/ArrayList;

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/animation/PathTransition$Segment;

    iget-wide v7, v7, Ljavafx/animation/PathTransition$Segment;->accumLength:D

    move-wide v9, v4

    cmpl-double v7, v7, v9

    if-lez v7, :cond_2

    move-object v7, v1

    move v8, v2

    move v9, v6

    move-wide v10, v4

    .line 426
    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/animation/PathTransition;->findSegment(IID)I

    move-result v7

    .line 427
    :goto_2
    move v1, v7

    goto :goto_1

    .line 426
    :cond_2
    move-object v7, v1

    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v3

    move-wide v10, v4

    .line 427
    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/animation/PathTransition;->findSegment(IID)I

    move-result v7

    goto :goto_2
.end method

.method private getTargetNode()Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PathTransition;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/PathTransition;->getNode()Ljavafx/scene/Node;

    move-result-object v2

    move-object v1, v2

    .line 353
    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/PathTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/PathTransition;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/PathTransition;->getParentTargetNode()Ljavafx/scene/Node;

    move-result-object v2

    goto :goto_0
.end method

.method private static interpolate(DDD)D
    .locals 16

    .prologue
    .line 435
    move-wide/from16 v0, p0

    .local v0, "fromAngle":D
    move-wide/from16 v2, p2

    .local v2, "toAngle":D
    move-wide/from16 v4, p4

    .local v4, "ratio":D
    move-wide v8, v2

    move-wide v10, v0

    sub-double/2addr v8, v10

    move-wide v6, v8

    .line 436
    .local v6, "delta":D
    move-wide v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x4066800000000000L    # 180.0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    .line 437
    move-wide v8, v2

    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_1

    const-wide v10, -0x3f89800000000000L    # -360.0

    :goto_0
    add-double/2addr v8, v10

    move-wide v2, v8

    .line 439
    :cond_0
    move-wide v8, v0

    move-wide v10, v4

    move-wide v12, v2

    move-wide v14, v0

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljavafx/animation/PathTransition;->normalize(D)D

    move-result-wide v8

    move-wide v0, v8

    .end local v0    # "fromAngle":D
    return-wide v0

    .line 437
    .restart local v0    # "fromAngle":D
    :cond_1
    const-wide v10, 0x4076800000000000L    # 360.0

    goto :goto_0
.end method

.method private static normalize(D)D
    .locals 6

    .prologue
    .line 445
    move-wide v0, p0

    .local v0, "angle":D
    :goto_0
    move-wide v2, v0

    const-wide v4, 0x4076800000000000L    # 360.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 446
    move-wide v2, v0

    const-wide v4, 0x4076800000000000L    # 360.0

    sub-double/2addr v2, v4

    move-wide v0, v2

    goto :goto_0

    .line 448
    :cond_0
    :goto_1
    move-wide v2, v0

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 449
    move-wide v2, v0

    const-wide v4, 0x4076800000000000L    # 360.0

    add-double/2addr v2, v4

    move-wide v0, v2

    goto :goto_1

    .line 451
    :cond_1
    move-wide v2, v0

    move-wide v0, v2

    .end local v0    # "angle":D
    return-wide v0
.end method

.method private recomputeSegments()V
    .locals 20

    .prologue
    .line 374
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/animation/PathTransition;
    move-object v14, v2

    iget-object v14, v14, Ljavafx/animation/PathTransition;->segments:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 375
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/animation/PathTransition;->getPath()Ljavafx/scene/shape/Shape;

    move-result-object v14

    move-object v3, v14

    .line 376
    .local v3, "p":Ljavafx/scene/shape/Shape;
    invoke-static {}, Ljavafx/animation/PathTransition$Segment;->getZeroSegment()Ljavafx/animation/PathTransition$Segment;

    move-result-object v14

    move-object v4, v14

    .line 377
    .local v4, "moveToSeg":Ljavafx/animation/PathTransition$Segment;
    invoke-static {}, Ljavafx/animation/PathTransition$Segment;->getZeroSegment()Ljavafx/animation/PathTransition$Segment;

    move-result-object v14

    move-object v5, v14

    .line 379
    .local v5, "lastSeg":Ljavafx/animation/PathTransition$Segment;
    const/4 v14, 0x6

    new-array v14, v14, [F

    move-object v6, v14

    .line 380
    .local v6, "coords":[F
    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/scene/shape/Shape;->impl_configShape()Lcom/sun/javafx/geom/Shape;

    move-result-object v14

    move-object v15, v3

    invoke-virtual {v15}, Ljavafx/scene/shape/Shape;->impl_getLeafTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v15

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;F)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v14

    move-object v7, v14

    .local v7, "i":Lcom/sun/javafx/geom/PathIterator;
    :goto_0
    move-object v14, v7

    invoke-interface {v14}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v14

    if-nez v14, :cond_2

    .line 381
    const/4 v14, 0x0

    move-object v8, v14

    .line 382
    .local v8, "newSeg":Ljavafx/animation/PathTransition$Segment;
    move-object v14, v7

    move-object v15, v6

    invoke-interface {v14, v15}, Lcom/sun/javafx/geom/PathIterator;->currentSegment([F)I

    move-result v14

    move v9, v14

    .line 383
    .local v9, "segType":I
    move-object v14, v6

    const/4 v15, 0x0

    aget v14, v14, v15

    float-to-double v14, v14

    move-wide v10, v14

    .line 384
    .local v10, "x":D
    move-object v14, v6

    const/4 v15, 0x1

    aget v14, v14, v15

    float-to-double v14, v14

    move-wide v12, v14

    .line 386
    .local v12, "y":D
    move v14, v9

    packed-switch v14, :pswitch_data_0

    .line 403
    :cond_0
    :goto_1
    :pswitch_0
    move-object v14, v8

    if-eqz v14, :cond_1

    .line 404
    move-object v14, v2

    iget-object v14, v14, Ljavafx/animation/PathTransition;->segments:Ljava/util/ArrayList;

    move-object v15, v8

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 405
    move-object v14, v8

    move-object v5, v14

    .line 380
    :cond_1
    move-object v14, v7

    invoke-interface {v14}, Lcom/sun/javafx/geom/PathIterator;->next()V

    goto :goto_0

    .line 388
    :pswitch_1
    move-wide v14, v10

    move-wide/from16 v16, v12

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/animation/PathTransition$Segment;->accumLength:D

    move-wide/from16 v18, v0

    invoke-static/range {v14 .. v19}, Ljavafx/animation/PathTransition$Segment;->newMoveTo(DDD)Ljavafx/animation/PathTransition$Segment;

    move-result-object v14

    move-object v4, v14

    .line 389
    move-object v14, v4

    move-object v8, v14

    .line 390
    goto :goto_1

    .line 392
    :pswitch_2
    move-object v14, v5

    move-object v15, v4

    invoke-static {v14, v15}, Ljavafx/animation/PathTransition$Segment;->newClosePath(Ljavafx/animation/PathTransition$Segment;Ljavafx/animation/PathTransition$Segment;)Ljavafx/animation/PathTransition$Segment;

    move-result-object v14

    move-object v8, v14

    .line 393
    move-object v14, v8

    if-nez v14, :cond_0

    .line 395
    move-object v14, v5

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljavafx/animation/PathTransition$Segment;->convertToClosePath(Ljavafx/animation/PathTransition$Segment;)V

    goto :goto_1

    .line 399
    :pswitch_3
    move-object v14, v5

    move-wide v15, v10

    move-wide/from16 v17, v12

    invoke-static/range {v14 .. v18}, Ljavafx/animation/PathTransition$Segment;->newLineTo(Ljavafx/animation/PathTransition$Segment;DD)Ljavafx/animation/PathTransition$Segment;

    move-result-object v14

    move-object v8, v14

    goto :goto_1

    .line 408
    .end local v8    # "newSeg":Ljavafx/animation/PathTransition$Segment;
    .end local v9    # "segType":I
    .end local v10    # "x":D
    .end local v12    # "y":D
    :cond_2
    move-object v14, v2

    move-object v15, v5

    iget-wide v15, v15, Ljavafx/animation/PathTransition$Segment;->accumLength:D

    iput-wide v15, v14, Ljavafx/animation/PathTransition;->totalLength:D

    .line 409
    return-void

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final durationProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PathTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/PathTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 158
    move-object v1, v0

    new-instance v2, Ljavafx/animation/PathTransition$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/animation/PathTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-direct {v3, v4, v5}, Ljavafx/animation/PathTransition$1;-><init>(Ljavafx/animation/PathTransition;Ljavafx/util/Duration;)V

    iput-object v2, v1, Ljavafx/animation/PathTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    .line 184
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/PathTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/PathTransition;
    return-object v0
.end method

.method public final getDuration()Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PathTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/PathTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/PathTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/PathTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/PathTransition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/PathTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Duration;

    goto :goto_0
.end method

.method public final getNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PathTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/PathTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/PathTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/PathTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/PathTransition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/PathTransition;->node:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public final getOrientation()Ljavafx/animation/PathTransition$OrientationType;
    .locals 2

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PathTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/PathTransition;->orientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/PathTransition$OrientationType;->NONE:Ljavafx/animation/PathTransition$OrientationType;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/PathTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/PathTransition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/PathTransition;->orientation:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/animation/PathTransition$OrientationType;

    goto :goto_0
.end method

.method public final getPath()Ljavafx/scene/shape/Shape;
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PathTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/PathTransition;->path:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/PathTransition;->DEFAULT_PATH:Ljavafx/scene/shape/Shape;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/PathTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/PathTransition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/PathTransition;->path:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/shape/Shape;

    goto :goto_0
.end method

.method impl_startable(Z)Z
    .locals 4

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PathTransition;
    move v1, p1

    .local v1, "forceSync":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/animation/Transition;->impl_startable(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 359
    invoke-direct {v2}, Ljavafx/animation/PathTransition;->getTargetNode()Ljavafx/scene/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/PathTransition;->getPath()Ljavafx/scene/shape/Shape;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/PathTransition;->getPath()Ljavafx/scene/shape/Shape;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/shape/Shape;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/geometry/Bounds;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v1

    if-nez v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/PathTransition;->cachedNode:Ljavafx/scene/Node;

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/animation/PathTransition;
    return v0

    .restart local v0    # "this":Ljavafx/animation/PathTransition;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method impl_sync(Z)V
    .locals 5

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PathTransition;
    move v1, p1

    .local v1, "forceSync":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/animation/Transition;->impl_sync(Z)V

    .line 366
    move v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/PathTransition;->cachedNode:Ljavafx/scene/Node;

    if-nez v2, :cond_1

    .line 367
    :cond_0
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/animation/PathTransition;->getTargetNode()Ljavafx/scene/Node;

    move-result-object v3

    iput-object v3, v2, Ljavafx/animation/PathTransition;->cachedNode:Ljavafx/scene/Node;

    .line 368
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/animation/PathTransition;->recomputeSegments()V

    .line 369
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/animation/PathTransition;->getOrientation()Ljavafx/animation/PathTransition$OrientationType;

    move-result-object v3

    sget-object v4, Ljavafx/animation/PathTransition$OrientationType;->ORTHOGONAL_TO_TANGENT:Ljavafx/animation/PathTransition$OrientationType;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Ljavafx/animation/PathTransition;->cachedIsNormalRequired:Z

    .line 371
    :cond_1
    return-void

    .line 369
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public interpolate(D)V
    .locals 37

    .prologue
    .line 310
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/animation/PathTransition;
    move-wide/from16 v4, p1

    .local v4, "frac":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Ljavafx/animation/PathTransition;->totalLength:D

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    const-wide/16 v32, 0x0

    move-wide/from16 v34, v4

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->max(DD)D

    move-result-wide v32

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->min(DD)D

    move-result-wide v30

    mul-double v28, v28, v30

    move-wide/from16 v6, v28

    .line 311
    .local v6, "part":D
    move-object/from16 v28, v3

    const/16 v29, 0x0

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Ljavafx/animation/PathTransition;->segments:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    move-wide/from16 v31, v6

    invoke-direct/range {v28 .. v32}, Ljavafx/animation/PathTransition;->findSegment(IID)I

    move-result v28

    move/from16 v8, v28

    .line 312
    .local v8, "segIdx":I
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/animation/PathTransition;->segments:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move/from16 v29, v8

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/animation/PathTransition$Segment;

    move-object/from16 v9, v28

    .line 314
    .local v9, "seg":Ljavafx/animation/PathTransition$Segment;
    move-object/from16 v28, v9

    move-object/from16 v0, v28

    iget-wide v0, v0, Ljavafx/animation/PathTransition$Segment;->accumLength:D

    move-wide/from16 v28, v0

    move-object/from16 v30, v9

    move-object/from16 v0, v30

    iget-wide v0, v0, Ljavafx/animation/PathTransition$Segment;->length:D

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    move-wide/from16 v10, v28

    .line 316
    .local v10, "lengthBefore":D
    move-wide/from16 v28, v6

    move-wide/from16 v30, v10

    sub-double v28, v28, v30

    move-wide/from16 v12, v28

    .line 318
    .local v12, "partLength":D
    move-wide/from16 v28, v12

    move-object/from16 v30, v9

    move-object/from16 v0, v30

    iget-wide v0, v0, Ljavafx/animation/PathTransition$Segment;->length:D

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    move-wide/from16 v14, v28

    .line 319
    .local v14, "ratio":D
    move-object/from16 v28, v9

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/animation/PathTransition$Segment;->prevSeg:Ljavafx/animation/PathTransition$Segment;

    move-object/from16 v28, v0

    move-object/from16 v16, v28

    .line 320
    .local v16, "prevSeg":Ljavafx/animation/PathTransition$Segment;
    move-object/from16 v28, v16

    move-object/from16 v0, v28

    iget-wide v0, v0, Ljavafx/animation/PathTransition$Segment;->toX:D

    move-wide/from16 v28, v0

    move-object/from16 v30, v9

    move-object/from16 v0, v30

    iget-wide v0, v0, Ljavafx/animation/PathTransition$Segment;->toX:D

    move-wide/from16 v30, v0

    move-object/from16 v32, v16

    move-object/from16 v0, v32

    iget-wide v0, v0, Ljavafx/animation/PathTransition$Segment;->toX:D

    move-wide/from16 v32, v0

    sub-double v30, v30, v32

    move-wide/from16 v32, v14

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v17, v28

    .line 321
    .local v17, "x":D
    move-object/from16 v28, v16

    move-object/from16 v0, v28

    iget-wide v0, v0, Ljavafx/animation/PathTransition$Segment;->toY:D

    move-wide/from16 v28, v0

    move-object/from16 v30, v9

    move-object/from16 v0, v30

    iget-wide v0, v0, Ljavafx/animation/PathTransition$Segment;->toY:D

    move-wide/from16 v30, v0

    move-object/from16 v32, v16

    move-object/from16 v0, v32

    iget-wide v0, v0, Ljavafx/animation/PathTransition$Segment;->toY:D

    move-wide/from16 v32, v0

    sub-double v30, v30, v32

    move-wide/from16 v32, v14

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v19, v28

    .line 322
    .local v19, "y":D
    move-object/from16 v28, v9

    move-object/from16 v0, v28

    iget-wide v0, v0, Ljavafx/animation/PathTransition$Segment;->rotateAngle:D

    move-wide/from16 v28, v0

    move-wide/from16 v21, v28

    .line 325
    .local v21, "rotateAngle":D
    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    move-object/from16 v30, v9

    move-object/from16 v0, v30

    iget-wide v0, v0, Ljavafx/animation/PathTransition$Segment;->length:D

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v23, v28

    .line 326
    .local v23, "z":D
    move-wide/from16 v28, v12

    move-wide/from16 v30, v23

    cmpg-double v28, v28, v30

    if-gez v28, :cond_2

    move-object/from16 v28, v16

    move-object/from16 v0, v28

    iget-boolean v0, v0, Ljavafx/animation/PathTransition$Segment;->isMoveTo:Z

    move/from16 v28, v0

    if-nez v28, :cond_2

    .line 328
    move-object/from16 v28, v16

    move-object/from16 v0, v28

    iget-wide v0, v0, Ljavafx/animation/PathTransition$Segment;->rotateAngle:D

    move-wide/from16 v28, v0

    move-object/from16 v30, v9

    move-object/from16 v0, v30

    iget-wide v0, v0, Ljavafx/animation/PathTransition$Segment;->rotateAngle:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v12

    move-wide/from16 v34, v23

    div-double v32, v32, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v32, v32, v34

    const-wide/high16 v34, 0x3fe0000000000000L    # 0.5

    add-double v32, v32, v34

    invoke-static/range {v28 .. v33}, Ljavafx/animation/PathTransition;->interpolate(DDD)D

    move-result-wide v28

    move-wide/from16 v21, v28

    .line 343
    :cond_0
    :goto_0
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/animation/PathTransition;->cachedNode:Ljavafx/scene/Node;

    move-object/from16 v28, v0

    move-wide/from16 v29, v17

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Ljavafx/animation/PathTransition;->cachedNode:Ljavafx/scene/Node;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljavafx/scene/Node;->impl_getPivotX()D

    move-result-wide v31

    sub-double v29, v29, v31

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/Node;->setTranslateX(D)V

    .line 344
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/animation/PathTransition;->cachedNode:Ljavafx/scene/Node;

    move-object/from16 v28, v0

    move-wide/from16 v29, v19

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Ljavafx/animation/PathTransition;->cachedNode:Ljavafx/scene/Node;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljavafx/scene/Node;->impl_getPivotY()D

    move-result-wide v31

    sub-double v29, v29, v31

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/Node;->setTranslateY(D)V

    .line 346
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-boolean v0, v0, Ljavafx/animation/PathTransition;->cachedIsNormalRequired:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 347
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/animation/PathTransition;->cachedNode:Ljavafx/scene/Node;

    move-object/from16 v28, v0

    move-wide/from16 v29, v21

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/Node;->setRotate(D)V

    .line 349
    :cond_1
    return-void

    .line 332
    :cond_2
    move-object/from16 v28, v9

    move-object/from16 v0, v28

    iget-wide v0, v0, Ljavafx/animation/PathTransition$Segment;->length:D

    move-wide/from16 v28, v0

    move-wide/from16 v30, v12

    sub-double v28, v28, v30

    move-wide/from16 v25, v28

    .line 333
    .local v25, "dist":D
    move-object/from16 v28, v9

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/animation/PathTransition$Segment;->nextSeg:Ljavafx/animation/PathTransition$Segment;

    move-object/from16 v28, v0

    move-object/from16 v27, v28

    .line 334
    .local v27, "nextSeg":Ljavafx/animation/PathTransition$Segment;
    move-wide/from16 v28, v25

    move-wide/from16 v30, v23

    cmpg-double v28, v28, v30

    if-gez v28, :cond_0

    move-object/from16 v28, v27

    if-eqz v28, :cond_0

    .line 336
    move-object/from16 v28, v27

    move-object/from16 v0, v28

    iget-boolean v0, v0, Ljavafx/animation/PathTransition$Segment;->isMoveTo:Z

    move/from16 v28, v0

    if-nez v28, :cond_0

    .line 337
    move-object/from16 v28, v9

    move-object/from16 v0, v28

    iget-wide v0, v0, Ljavafx/animation/PathTransition$Segment;->rotateAngle:D

    move-wide/from16 v28, v0

    move-object/from16 v30, v27

    move-object/from16 v0, v30

    iget-wide v0, v0, Ljavafx/animation/PathTransition$Segment;->rotateAngle:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v23

    move-wide/from16 v34, v25

    sub-double v32, v32, v34

    move-wide/from16 v34, v23

    div-double v32, v32, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v32, v32, v34

    invoke-static/range {v28 .. v33}, Ljavafx/animation/PathTransition;->interpolate(DDD)D

    move-result-wide v28

    move-wide/from16 v21, v28

    goto/16 :goto_0
.end method

.method public final nodeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PathTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/PathTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 118
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "node"

    sget-object v6, Ljavafx/animation/PathTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/animation/PathTransition;->node:Ljavafx/beans/property/ObjectProperty;

    .line 120
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/PathTransition;->node:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/PathTransition;
    return-object v0
.end method

.method public final orientationProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/animation/PathTransition$OrientationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PathTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/PathTransition;->orientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 262
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "orientation"

    sget-object v6, Ljavafx/animation/PathTransition;->DEFAULT_ORIENTATION:Ljavafx/animation/PathTransition$OrientationType;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/animation/PathTransition;->orientation:Ljavafx/beans/property/ObjectProperty;

    .line 264
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/PathTransition;->orientation:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/PathTransition;
    return-object v0
.end method

.method public final pathProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/Shape;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PathTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/PathTransition;->path:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 212
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "path"

    sget-object v6, Ljavafx/animation/PathTransition;->DEFAULT_PATH:Ljavafx/scene/shape/Shape;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/animation/PathTransition;->path:Ljavafx/beans/property/ObjectProperty;

    .line 214
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/PathTransition;->path:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/PathTransition;
    return-object v0
.end method

.method public final setDuration(Ljavafx/util/Duration;)V
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PathTransition;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Duration;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/PathTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/animation/PathTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/PathTransition;->durationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 150
    :cond_1
    return-void
.end method

.method public final setNode(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PathTransition;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/PathTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/PathTransition;->nodeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 110
    :cond_1
    return-void
.end method

.method public final setOrientation(Ljavafx/animation/PathTransition$OrientationType;)V
    .locals 4

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PathTransition;
    move-object v1, p1

    .local v1, "value":Ljavafx/animation/PathTransition$OrientationType;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/PathTransition;->orientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/animation/PathTransition;->DEFAULT_ORIENTATION:Ljavafx/animation/PathTransition$OrientationType;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/animation/PathTransition$OrientationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 252
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/PathTransition;->orientationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 254
    :cond_1
    return-void
.end method

.method public final setPath(Ljavafx/scene/shape/Shape;)V
    .locals 4

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PathTransition;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/shape/Shape;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/PathTransition;->path:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_1

    .line 202
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/PathTransition;->pathProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 204
    :cond_1
    return-void
.end method

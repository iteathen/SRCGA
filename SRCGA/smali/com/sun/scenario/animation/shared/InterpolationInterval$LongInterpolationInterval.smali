.class Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;
.super Lcom/sun/scenario/animation/shared/InterpolationInterval;
.source "InterpolationInterval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/scenario/animation/shared/InterpolationInterval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongInterpolationInterval"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private leftValue:J

.field private final rightValue:J

.field private final target:Ljavafx/beans/value/WritableLongValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 445
    const-class v0, Lcom/sun/scenario/animation/shared/InterpolationInterval;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavafx/animation/KeyValue;J)V
    .locals 10

    .prologue
    .line 464
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;
    move-object v2, p1

    .local v2, "keyValue":Ljavafx/animation/KeyValue;
    move-wide v3, p2

    .local v3, "ticks":J
    move-object v5, v1

    move-wide v6, v3

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/animation/KeyValue;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/scenario/animation/shared/InterpolationInterval;-><init>(JLjavafx/animation/Interpolator;)V

    .line 465
    sget-boolean v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v5

    instance-of v5, v5, Ljavafx/beans/value/WritableLongValue;

    if-eqz v5, :cond_0

    move-object v5, v2

    .line 466
    invoke-virtual {v5}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Number;

    if-nez v5, :cond_1

    .line 465
    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 467
    :cond_1
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v6

    check-cast v6, Ljavafx/beans/value/WritableLongValue;

    iput-object v6, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;->target:Ljavafx/beans/value/WritableLongValue;

    .line 468
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;->rightValue:J

    .line 469
    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;->target:Ljavafx/beans/value/WritableLongValue;

    invoke-interface {v6}, Ljavafx/beans/value/WritableLongValue;->get()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;->leftValue:J

    .line 470
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V
    .locals 10

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;
    move-object v1, p1

    .local v1, "x0":Ljavafx/animation/KeyValue;
    move-wide v2, p2

    .local v2, "x1":J
    move-object v4, p4

    .local v4, "x2":Lcom/sun/scenario/animation/shared/InterpolationInterval$1;
    move-object v5, v0

    move-object v6, v1

    move-wide v7, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;J)V

    return-void
.end method

.method private constructor <init>(Ljavafx/animation/KeyValue;JLjava/lang/Object;)V
    .locals 10

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;
    move-object v1, p1

    .local v1, "keyValue":Ljavafx/animation/KeyValue;
    move-wide v2, p2

    .local v2, "ticks":J
    move-object v4, p4

    .local v4, "leftValue":Ljava/lang/Object;
    move-object v5, v0

    move-wide v6, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/animation/KeyValue;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/scenario/animation/shared/InterpolationInterval;-><init>(JLjavafx/animation/Interpolator;)V

    .line 455
    sget-boolean v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v5

    instance-of v5, v5, Ljavafx/beans/value/WritableLongValue;

    if-eqz v5, :cond_0

    move-object v5, v1

    .line 456
    invoke-virtual {v5}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Number;

    if-eqz v5, :cond_0

    move-object v5, v4

    instance-of v5, v5, Ljava/lang/Number;

    if-nez v5, :cond_1

    .line 455
    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 458
    :cond_1
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v6

    check-cast v6, Ljavafx/beans/value/WritableLongValue;

    iput-object v6, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;->target:Ljavafx/beans/value/WritableLongValue;

    .line 459
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;->rightValue:J

    .line 460
    move-object v5, v0

    move-object v6, v4

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;->leftValue:J

    .line 461
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/animation/KeyValue;JLjava/lang/Object;Lcom/sun/scenario/animation/shared/InterpolationInterval$1;)V
    .locals 12

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;
    move-object v1, p1

    .local v1, "x0":Ljavafx/animation/KeyValue;
    move-wide v2, p2

    .local v2, "x1":J
    move-object/from16 v4, p4

    .local v4, "x2":Ljava/lang/Object;
    move-object/from16 v5, p5

    .local v5, "x3":Lcom/sun/scenario/animation/shared/InterpolationInterval$1;
    move-object v6, v0

    move-object v7, v1

    move-wide v8, v2

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public interpolate(D)V
    .locals 13

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;
    move-wide v1, p1

    .local v1, "frac":D
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;->rightInterpolator:Ljavafx/animation/Interpolator;

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;->leftValue:J

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;->rightValue:J

    move-wide v10, v1

    invoke-virtual/range {v5 .. v11}, Ljavafx/animation/Interpolator;->interpolate(JJD)J

    move-result-wide v5

    move-wide v3, v5

    .line 476
    .local v3, "value":J
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;->target:Ljavafx/beans/value/WritableLongValue;

    move-wide v6, v3

    invoke-interface {v5, v6, v7}, Ljavafx/beans/value/WritableLongValue;->set(J)V

    .line 477
    return-void
.end method

.method public recalculateStartValue()V
    .locals 4

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;->target:Ljavafx/beans/value/WritableLongValue;

    invoke-interface {v2}, Ljavafx/beans/value/WritableLongValue;->get()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;->leftValue:J

    .line 482
    return-void
.end method

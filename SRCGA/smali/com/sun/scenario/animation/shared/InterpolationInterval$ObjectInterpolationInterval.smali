.class Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;
.super Lcom/sun/scenario/animation/shared/InterpolationInterval;
.source "InterpolationInterval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/scenario/animation/shared/InterpolationInterval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObjectInterpolationInterval"
.end annotation


# instance fields
.field private leftValue:Ljava/lang/Object;

.field private final rightValue:Ljava/lang/Object;

.field private final target:Ljavafx/beans/value/WritableValue;


# direct methods
.method private constructor <init>(Ljavafx/animation/KeyValue;J)V
    .locals 8

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;
    move-object v1, p1

    .local v1, "keyValue":Ljavafx/animation/KeyValue;
    move-wide v2, p2

    .local v2, "ticks":J
    move-object v4, v0

    move-wide v5, v2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/animation/KeyValue;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/scenario/animation/shared/InterpolationInterval;-><init>(JLjavafx/animation/Interpolator;)V

    .line 534
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;->target:Ljavafx/beans/value/WritableValue;

    .line 535
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;->rightValue:Ljava/lang/Object;

    .line 536
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;->target:Ljavafx/beans/value/WritableValue;

    invoke-interface {v5}, Ljavafx/beans/value/WritableValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;->leftValue:Ljava/lang/Object;

    .line 537
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V
    .locals 10

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;
    move-object v1, p1

    .local v1, "x0":Ljavafx/animation/KeyValue;
    move-wide v2, p2

    .local v2, "x1":J
    move-object v4, p4

    .local v4, "x2":Lcom/sun/scenario/animation/shared/InterpolationInterval$1;
    move-object v5, v0

    move-object v6, v1

    move-wide v7, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;J)V

    return-void
.end method

.method private constructor <init>(Ljavafx/animation/KeyValue;JLjava/lang/Object;)V
    .locals 10

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;
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

    .line 527
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;->target:Ljavafx/beans/value/WritableValue;

    .line 528
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;->rightValue:Ljava/lang/Object;

    .line 529
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;->leftValue:Ljava/lang/Object;

    .line 530
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/animation/KeyValue;JLjava/lang/Object;Lcom/sun/scenario/animation/shared/InterpolationInterval$1;)V
    .locals 12

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;
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

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public interpolate(D)V
    .locals 11

    .prologue
    .line 542
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;
    move-wide v2, p1

    .local v2, "frac":D
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;->rightInterpolator:Ljavafx/animation/Interpolator;

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;->leftValue:Ljava/lang/Object;

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;->rightValue:Ljava/lang/Object;

    move-wide v8, v2

    invoke-virtual {v5, v6, v7, v8, v9}, Ljavafx/animation/Interpolator;->interpolate(Ljava/lang/Object;Ljava/lang/Object;D)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 544
    .local v4, "value":Ljava/lang/Object;
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;->target:Ljavafx/beans/value/WritableValue;

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/beans/value/WritableValue;->setValue(Ljava/lang/Object;)V

    .line 545
    return-void
.end method

.method public recalculateStartValue()V
    .locals 3

    .prologue
    .line 549
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;->target:Ljavafx/beans/value/WritableValue;

    invoke-interface {v2}, Ljavafx/beans/value/WritableValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;->leftValue:Ljava/lang/Object;

    .line 550
    return-void
.end method

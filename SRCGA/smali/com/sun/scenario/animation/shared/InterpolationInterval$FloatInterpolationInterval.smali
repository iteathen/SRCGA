.class Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;
.super Lcom/sun/scenario/animation/shared/InterpolationInterval;
.source "InterpolationInterval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/scenario/animation/shared/InterpolationInterval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatInterpolationInterval"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private leftValue:F

.field private final rightValue:F

.field private final target:Ljavafx/beans/value/WritableFloatValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 303
    const-class v0, Lcom/sun/scenario/animation/shared/InterpolationInterval;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavafx/animation/KeyValue;J)V
    .locals 10

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;
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

    .line 323
    sget-boolean v4, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v4

    instance-of v4, v4, Ljavafx/beans/value/WritableFloatValue;

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 324
    invoke-virtual {v4}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Number;

    if-nez v4, :cond_1

    .line 323
    :cond_0
    new-instance v4, Ljava/lang/AssertionError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 325
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v5

    check-cast v5, Ljavafx/beans/value/WritableFloatValue;

    iput-object v5, v4, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;->target:Ljavafx/beans/value/WritableFloatValue;

    .line 326
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    iput v5, v4, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;->rightValue:F

    .line 327
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;->target:Ljavafx/beans/value/WritableFloatValue;

    invoke-interface {v5}, Ljavafx/beans/value/WritableFloatValue;->get()F

    move-result v5

    iput v5, v4, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;->leftValue:F

    .line 328
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V
    .locals 10

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;
    move-object v1, p1

    .local v1, "x0":Ljavafx/animation/KeyValue;
    move-wide v2, p2

    .local v2, "x1":J
    move-object v4, p4

    .local v4, "x2":Lcom/sun/scenario/animation/shared/InterpolationInterval$1;
    move-object v5, v0

    move-object v6, v1

    move-wide v7, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;J)V

    return-void
.end method

.method private constructor <init>(Ljavafx/animation/KeyValue;JLjava/lang/Object;)V
    .locals 10

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;
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

    .line 313
    sget-boolean v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v5

    instance-of v5, v5, Ljavafx/beans/value/WritableFloatValue;

    if-eqz v5, :cond_0

    move-object v5, v1

    .line 314
    invoke-virtual {v5}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Number;

    if-eqz v5, :cond_0

    move-object v5, v4

    instance-of v5, v5, Ljava/lang/Number;

    if-nez v5, :cond_1

    .line 313
    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 316
    :cond_1
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v6

    check-cast v6, Ljavafx/beans/value/WritableFloatValue;

    iput-object v6, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;->target:Ljavafx/beans/value/WritableFloatValue;

    .line 317
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    iput v6, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;->rightValue:F

    .line 318
    move-object v5, v0

    move-object v6, v4

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    iput v6, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;->leftValue:F

    .line 319
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/animation/KeyValue;JLjava/lang/Object;Lcom/sun/scenario/animation/shared/InterpolationInterval$1;)V
    .locals 12

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;
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

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public interpolate(D)V
    .locals 13

    .prologue
    .line 332
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;
    move-wide v2, p1

    .local v2, "frac":D
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;->rightInterpolator:Ljavafx/animation/Interpolator;

    move-object v6, v1

    iget v6, v6, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;->leftValue:F

    float-to-double v6, v6

    move-object v8, v1

    iget v8, v8, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;->rightValue:F

    float-to-double v8, v8

    move-wide v10, v2

    invoke-virtual/range {v5 .. v11}, Ljavafx/animation/Interpolator;->interpolate(DDD)D

    move-result-wide v5

    double-to-float v5, v5

    move v4, v5

    .line 334
    .local v4, "value":F
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;->target:Ljavafx/beans/value/WritableFloatValue;

    move v6, v4

    invoke-interface {v5, v6}, Ljavafx/beans/value/WritableFloatValue;->set(F)V

    .line 335
    return-void
.end method

.method public recalculateStartValue()V
    .locals 3

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;->target:Ljavafx/beans/value/WritableFloatValue;

    invoke-interface {v2}, Ljavafx/beans/value/WritableFloatValue;->get()F

    move-result v2

    iput v2, v1, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;->leftValue:F

    .line 340
    return-void
.end method

.class Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;
.super Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;
.source "InterpolationInterval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/scenario/animation/shared/InterpolationInterval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TangentDoubleInterpolationInterval"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final target:Ljavafx/beans/value/WritableDoubleValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 272
    const-class v0, Lcom/sun/scenario/animation/shared/InterpolationInterval;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavafx/animation/KeyValue;J)V
    .locals 10

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;
    move-object v1, p1

    .local v1, "rightKeyValue":Ljavafx/animation/KeyValue;
    move-wide v2, p2

    .local v2, "ticks":J
    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    .line 287
    sget-boolean v4, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v4

    instance-of v4, v4, Ljavafx/beans/value/WritableDoubleValue;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 288
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v5

    check-cast v5, Ljavafx/beans/value/WritableDoubleValue;

    iput-object v5, v4, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;->target:Ljavafx/beans/value/WritableDoubleValue;

    .line 289
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;->target:Ljavafx/beans/value/WritableDoubleValue;

    invoke-interface {v5}, Ljavafx/beans/value/WritableDoubleValue;->get()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;->recalculateStartValue(D)V

    .line 290
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V
    .locals 10

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;
    move-object v1, p1

    .local v1, "x0":Ljavafx/animation/KeyValue;
    move-wide v2, p2

    .local v2, "x1":J
    move-object v4, p4

    .local v4, "x2":Lcom/sun/scenario/animation/shared/InterpolationInterval$1;
    move-object v5, v0

    move-object v6, v1

    move-wide v7, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;J)V

    return-void
.end method

.method private constructor <init>(Ljavafx/animation/KeyValue;JLjavafx/animation/KeyValue;J)V
    .locals 16

    .prologue
    .line 279
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;
    move-object/from16 v1, p1

    .local v1, "rightKeyValue":Ljavafx/animation/KeyValue;
    move-wide/from16 v2, p2

    .local v2, "ticks":J
    move-object/from16 v4, p4

    .local v4, "leftKeyValue":Ljavafx/animation/KeyValue;
    move-wide/from16 v5, p5

    .local v5, "duration":J
    move-object v7, v0

    move-object v8, v1

    move-wide v9, v2

    move-object v11, v4

    move-wide v12, v5

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLjavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    .line 280
    sget-boolean v7, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v7

    instance-of v7, v7, Ljavafx/beans/value/WritableDoubleValue;

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 281
    :cond_0
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v8

    check-cast v8, Ljavafx/beans/value/WritableDoubleValue;

    iput-object v8, v7, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;->target:Ljavafx/beans/value/WritableDoubleValue;

    .line 282
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/animation/KeyValue;JLjavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V
    .locals 15

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;
    move-object/from16 v1, p1

    .local v1, "x0":Ljavafx/animation/KeyValue;
    move-wide/from16 v2, p2

    .local v2, "x1":J
    move-object/from16 v4, p4

    .local v4, "x2":Ljavafx/animation/KeyValue;
    move-wide/from16 v5, p5

    .local v5, "x3":J
    move-object/from16 v7, p7

    .local v7, "x4":Lcom/sun/scenario/animation/shared/InterpolationInterval$1;
    move-object v8, v0

    move-object v9, v1

    move-wide v10, v2

    move-object v12, v4

    move-wide v13, v5

    invoke-direct/range {v8 .. v14}, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLjavafx/animation/KeyValue;J)V

    return-void
.end method


# virtual methods
.method public interpolate(D)V
    .locals 9

    .prologue
    .line 294
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;
    move-wide v2, p1

    .local v2, "frac":D
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;->target:Ljavafx/beans/value/WritableDoubleValue;

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;->calculate(D)D

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Ljavafx/beans/value/WritableDoubleValue;->set(D)V

    .line 295
    return-void
.end method

.method public recalculateStartValue()V
    .locals 4

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;->target:Ljavafx/beans/value/WritableDoubleValue;

    invoke-interface {v2}, Ljavafx/beans/value/WritableDoubleValue;->get()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;->recalculateStartValue(D)V

    .line 300
    return-void
.end method

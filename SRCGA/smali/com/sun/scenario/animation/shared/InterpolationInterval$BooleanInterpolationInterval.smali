.class Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;
.super Lcom/sun/scenario/animation/shared/InterpolationInterval;
.source "InterpolationInterval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/scenario/animation/shared/InterpolationInterval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BooleanInterpolationInterval"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private leftValue:Z

.field private final rightValue:Z

.field private final target:Ljavafx/beans/value/WritableBooleanValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    const-class v0, Lcom/sun/scenario/animation/shared/InterpolationInterval;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavafx/animation/KeyValue;J)V
    .locals 10

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;
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

    .line 212
    sget-boolean v4, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v4

    instance-of v4, v4, Ljavafx/beans/value/WritableBooleanValue;

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 213
    invoke-virtual {v4}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Boolean;

    if-nez v4, :cond_1

    .line 212
    :cond_0
    new-instance v4, Ljava/lang/AssertionError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 214
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v5

    check-cast v5, Ljavafx/beans/value/WritableBooleanValue;

    iput-object v5, v4, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;->target:Ljavafx/beans/value/WritableBooleanValue;

    .line 215
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v4, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;->rightValue:Z

    .line 216
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;->target:Ljavafx/beans/value/WritableBooleanValue;

    invoke-interface {v5}, Ljavafx/beans/value/WritableBooleanValue;->get()Z

    move-result v5

    iput-boolean v5, v4, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;->leftValue:Z

    .line 217
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V
    .locals 10

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;
    move-object v1, p1

    .local v1, "x0":Ljavafx/animation/KeyValue;
    move-wide v2, p2

    .local v2, "x1":J
    move-object v4, p4

    .local v4, "x2":Lcom/sun/scenario/animation/shared/InterpolationInterval$1;
    move-object v5, v0

    move-object v6, v1

    move-wide v7, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;J)V

    return-void
.end method

.method private constructor <init>(Ljavafx/animation/KeyValue;JLjava/lang/Object;)V
    .locals 10

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;
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

    .line 202
    sget-boolean v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v5

    instance-of v5, v5, Ljavafx/beans/value/WritableBooleanValue;

    if-eqz v5, :cond_0

    move-object v5, v1

    .line 203
    invoke-virtual {v5}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    move-object v5, v4

    instance-of v5, v5, Ljava/lang/Boolean;

    if-nez v5, :cond_1

    .line 202
    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 205
    :cond_1
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v6

    check-cast v6, Ljavafx/beans/value/WritableBooleanValue;

    iput-object v6, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;->target:Ljavafx/beans/value/WritableBooleanValue;

    .line 206
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;->rightValue:Z

    .line 207
    move-object v5, v0

    move-object v6, v4

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;->leftValue:Z

    .line 208
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/animation/KeyValue;JLjava/lang/Object;Lcom/sun/scenario/animation/shared/InterpolationInterval$1;)V
    .locals 12

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;
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

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public interpolate(D)V
    .locals 11

    .prologue
    .line 221
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;
    move-wide v2, p1

    .local v2, "frac":D
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;->rightInterpolator:Ljavafx/animation/Interpolator;

    move-object v6, v1

    iget-boolean v6, v6, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;->leftValue:Z

    move-object v7, v1

    iget-boolean v7, v7, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;->rightValue:Z

    move-wide v8, v2

    invoke-virtual {v5, v6, v7, v8, v9}, Ljavafx/animation/Interpolator;->interpolate(ZZD)Z

    move-result v5

    move v4, v5

    .line 223
    .local v4, "value":Z
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;->target:Ljavafx/beans/value/WritableBooleanValue;

    move v6, v4

    invoke-interface {v5, v6}, Ljavafx/beans/value/WritableBooleanValue;->set(Z)V

    .line 224
    return-void
.end method

.method public recalculateStartValue()V
    .locals 3

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;->target:Ljavafx/beans/value/WritableBooleanValue;

    invoke-interface {v2}, Ljavafx/beans/value/WritableBooleanValue;->get()Z

    move-result v2

    iput-boolean v2, v1, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;->leftValue:Z

    .line 229
    return-void
.end method

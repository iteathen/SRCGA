.class public abstract Lcom/sun/scenario/animation/shared/ClipEnvelope;
.super Ljava/lang/Object;
.source "ClipEnvelope.java"


# static fields
.field protected static final EPSILON:D = 1.0E-12

.field protected static final INDEFINITE:J = 0x7fffffffffffffffL


# instance fields
.field protected aborted:Z

.field protected animation:Ljavafx/animation/Animation;

.field protected currentRate:D

.field protected cycleTicks:J

.field protected deltaTicks:J

.field protected inTimePulse:Z

.field protected rate:D

.field protected ticks:J


# direct methods
.method protected constructor <init>(Ljavafx/animation/Animation;)V
    .locals 6

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/ClipEnvelope;
    move-object v1, p1

    .local v1, "animation":Ljavafx/animation/Animation;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v3, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v3, Lcom/sun/scenario/animation/shared/ClipEnvelope;->rate:D

    .line 54
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/scenario/animation/shared/ClipEnvelope;->cycleTicks:J

    .line 57
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/scenario/animation/shared/ClipEnvelope;->deltaTicks:J

    .line 58
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/scenario/animation/shared/ClipEnvelope;->ticks:J

    .line 59
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/scenario/animation/shared/ClipEnvelope;->rate:D

    iput-wide v4, v3, Lcom/sun/scenario/animation/shared/ClipEnvelope;->currentRate:D

    .line 60
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/scenario/animation/shared/ClipEnvelope;->inTimePulse:Z

    .line 61
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/scenario/animation/shared/ClipEnvelope;->aborted:Z

    .line 64
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/scenario/animation/shared/ClipEnvelope;->animation:Ljavafx/animation/Animation;

    .line 65
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 66
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/animation/Animation;->getCycleDuration()Ljavafx/util/Duration;

    move-result-object v3

    move-object v2, v3

    .line 67
    .local v2, "cycleDuration":Ljavafx/util/Duration;
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/scenario/animation/shared/ClipEnvelope;->cycleTicks:J

    .line 68
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/scenario/animation/shared/ClipEnvelope;->rate:D

    .line 70
    .end local v2    # "cycleDuration":Ljavafx/util/Duration;
    :cond_0
    return-void
.end method

.method protected static checkBounds(JJ)J
    .locals 10

    .prologue
    .line 119
    move-wide v0, p0

    .local v0, "value":J
    move-wide v2, p2

    .local v2, "max":J
    const-wide/16 v4, 0x0

    move-wide v6, v0

    move-wide v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-wide v0, v4

    .end local v0    # "value":J
    return-wide v0
.end method

.method public static create(Ljavafx/animation/Animation;)Lcom/sun/scenario/animation/shared/ClipEnvelope;
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "animation":Ljavafx/animation/Animation;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/animation/Animation;->getCycleCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/animation/Animation;->getCycleDuration()Ljavafx/util/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/util/Duration;->isIndefinite()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    new-instance v1, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;-><init>(Ljavafx/animation/Animation;)V

    move-object v0, v1

    .line 78
    .end local v0    # "animation":Ljavafx/animation/Animation;
    :goto_0
    return-object v0

    .line 75
    .restart local v0    # "animation":Ljavafx/animation/Animation;
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/animation/Animation;->getCycleCount()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 76
    new-instance v1, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;-><init>(Ljavafx/animation/Animation;)V

    move-object v0, v1

    goto :goto_0

    .line 78
    :cond_2
    new-instance v1, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;-><init>(Ljavafx/animation/Animation;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortCurrentPulse()V
    .locals 3

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/ClipEnvelope;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/scenario/animation/shared/ClipEnvelope;->inTimePulse:Z

    if-eqz v1, :cond_0

    .line 106
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/scenario/animation/shared/ClipEnvelope;->aborted:Z

    .line 107
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/scenario/animation/shared/ClipEnvelope;->inTimePulse:Z

    .line 109
    :cond_0
    return-void
.end method

.method protected abstract calculateCurrentRate()D
.end method

.method public getCurrentRate()D
    .locals 3

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/ClipEnvelope;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/scenario/animation/shared/ClipEnvelope;->currentRate:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/shared/ClipEnvelope;
    return-wide v0
.end method

.method public abstract jumpTo(J)V
.end method

.method public abstract setAutoReverse(Z)V
.end method

.method protected setCurrentRate(D)V
    .locals 9

    .prologue
    .line 114
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/ClipEnvelope;
    move-wide v2, p1

    .local v2, "currentRate":D
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Lcom/sun/scenario/animation/shared/ClipEnvelope;->currentRate:D

    .line 115
    invoke-static {}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->getDefault()Lcom/sun/scenario/animation/shared/AnimationAccessor;

    move-result-object v4

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/animation/shared/ClipEnvelope;->animation:Ljavafx/animation/Animation;

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->setCurrentRate(Ljavafx/animation/Animation;D)V

    .line 116
    return-void
.end method

.method public abstract setCycleCount(I)Lcom/sun/scenario/animation/shared/ClipEnvelope;
.end method

.method public abstract setCycleDuration(Ljavafx/util/Duration;)Lcom/sun/scenario/animation/shared/ClipEnvelope;
.end method

.method public abstract setRate(D)V
.end method

.method public start()V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/ClipEnvelope;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->calculateCurrentRate()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->setCurrentRate(D)V

    .line 97
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/scenario/animation/shared/ClipEnvelope;->ticks:J

    iput-wide v2, v1, Lcom/sun/scenario/animation/shared/ClipEnvelope;->deltaTicks:J

    .line 98
    return-void
.end method

.method public abstract timePulse(J)V
.end method

.method protected updateCycleTicks(Ljavafx/util/Duration;)V
    .locals 6

    .prologue
    .line 88
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/ClipEnvelope;
    move-object v2, p1

    .local v2, "cycleDuration":Ljavafx/util/Duration;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v4}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/scenario/animation/shared/ClipEnvelope;->cycleTicks:J

    .line 89
    return-void
.end method

.method public wasSynched()Z
    .locals 6

    .prologue
    .line 92
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/ClipEnvelope;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/scenario/animation/shared/ClipEnvelope;->cycleTicks:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lcom/sun/scenario/animation/shared/ClipEnvelope;
    return v1

    .restart local v1    # "this":Lcom/sun/scenario/animation/shared/ClipEnvelope;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

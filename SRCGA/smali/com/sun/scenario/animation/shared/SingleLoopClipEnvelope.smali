.class public Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;
.super Lcom/sun/scenario/animation/shared/ClipEnvelope;
.source "SingleLoopClipEnvelope.java"


# instance fields
.field private cycleCount:I


# direct methods
.method protected constructor <init>(Ljavafx/animation/Animation;)V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;
    move-object v1, p1

    .local v1, "animation":Ljavafx/animation/Animation;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/scenario/animation/shared/ClipEnvelope;-><init>(Ljavafx/animation/Animation;)V

    .line 61
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 62
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/animation/Animation;->getCycleCount()I

    move-result v3

    iput v3, v2, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->cycleCount:I

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method protected calculateCurrentRate()D
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->rate:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;
    return-wide v0
.end method

.method public jumpTo(J)V
    .locals 15

    .prologue
    .line 112
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;
    move-wide/from16 v2, p1

    .local v2, "ticks":J
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->cycleTicks:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 113
    .line 122
    :goto_0
    return-void

    .line 115
    :cond_0
    move-wide v6, v2

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->cycleTicks:J

    invoke-static {v6, v7, v8, v9}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->checkBounds(JJ)J

    move-result-wide v6

    move-wide v4, v6

    .line 116
    .local v4, "newTicks":J
    move-object v6, v1

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    iget-wide v7, v7, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->deltaTicks:J

    move-wide v9, v4

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->ticks:J

    sub-long/2addr v9, v11

    add-long/2addr v7, v9

    iput-wide v7, v6, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->deltaTicks:J

    .line 117
    move-object v6, v1

    move-wide v7, v4

    iput-wide v7, v6, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->ticks:J

    .line 119
    invoke-static {}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->getDefault()Lcom/sun/scenario/animation/shared/AnimationAccessor;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->animation:Ljavafx/animation/Animation;

    move-wide v8, v4

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->cycleTicks:J

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->jumpTo(Ljavafx/animation/Animation;JJZ)V

    .line 121
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->abortCurrentPulse()V

    .line 122
    goto :goto_0
.end method

.method public setAutoReverse(Z)V
    .locals 0
    .param p1, "autoReverse"    # Z

    .prologue
    .line 52
    return-void
.end method

.method public setCycleCount(I)Lcom/sun/scenario/animation/shared/ClipEnvelope;
    .locals 6

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;
    move v1, p1

    .local v1, "cycleCount":I
    move v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->cycleTicks:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 83
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->animation:Ljavafx/animation/Animation;

    invoke-static {v2}, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->create(Ljavafx/animation/Animation;)Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-result-object v2

    move-object v0, v2

    .line 86
    .end local v0    # "this":Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;
    :goto_0
    return-object v0

    .line 85
    .restart local v0    # "this":Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->cycleCount:I

    .line 86
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public setCycleDuration(Ljavafx/util/Duration;)Lcom/sun/scenario/animation/shared/ClipEnvelope;
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;
    move-object v1, p1

    .local v1, "cycleDuration":Ljavafx/util/Duration;
    move-object v2, v0

    iget v2, v2, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->cycleCount:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/util/Duration;->isIndefinite()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->animation:Ljavafx/animation/Animation;

    invoke-static {v2}, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->create(Ljavafx/animation/Animation;)Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-result-object v2

    move-object v0, v2

    .line 77
    .end local v0    # "this":Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;
    :goto_0
    return-object v0

    .line 76
    .restart local v0    # "this":Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->updateCycleTicks(Ljavafx/util/Duration;)V

    .line 77
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public setRate(D)V
    .locals 13

    .prologue
    .line 38
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;
    move-wide v2, p1

    .local v2, "rate":D
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->animation:Ljavafx/animation/Animation;

    invoke-virtual {v5}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v5

    move-object v4, v5

    .line 39
    .local v4, "status":Ljavafx/animation/Animation$Status;
    move-object v5, v4

    sget-object v6, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-eq v5, v6, :cond_1

    .line 40
    move-object v5, v4

    sget-object v6, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v5, v6, :cond_0

    .line 41
    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->currentRate:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->rate:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    move-wide v6, v2

    :goto_0
    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->setCurrentRate(D)V

    .line 43
    :cond_0
    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->ticks:J

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->ticks:J

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->deltaTicks:J

    sub-long/2addr v8, v10

    long-to-double v8, v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->rate:D

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->deltaTicks:J

    .line 44
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->abortCurrentPulse()V

    .line 46
    :cond_1
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->rate:D

    .line 47
    return-void

    .line 41
    :cond_2
    move-wide v6, v2

    neg-double v6, v6

    goto :goto_0
.end method

.method public timePulse(J)V
    .locals 13

    .prologue
    .line 91
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;
    move-wide v2, p1

    .local v2, "currentTick":J
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->cycleTicks:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 92
    .line 108
    :goto_0
    return-void

    .line 94
    :cond_0
    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->aborted:Z

    .line 95
    move-object v6, v1

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->inTimePulse:Z

    .line 98
    move-object v6, v1

    move-object v7, v1

    :try_start_0
    iget-wide v7, v7, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->deltaTicks:J

    move-wide v9, v2

    long-to-double v9, v9

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->currentRate:D

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    add-long/2addr v7, v9

    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->cycleTicks:J

    invoke-static {v7, v8, v9, v10}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->checkBounds(JJ)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->ticks:J

    .line 99
    invoke-static {}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->getDefault()Lcom/sun/scenario/animation/shared/AnimationAccessor;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->animation:Ljavafx/animation/Animation;

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->ticks:J

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->cycleTicks:J

    invoke-virtual/range {v6 .. v11}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->playTo(Ljavafx/animation/Animation;JJ)V

    .line 101
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->currentRate:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->ticks:J

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->cycleTicks:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v4, v6

    .line 102
    .local v4, "reachedEnd":Z
    move v6, v4

    if-eqz v6, :cond_1

    move-object v6, v1

    iget-boolean v6, v6, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->aborted:Z

    if-nez v6, :cond_1

    .line 103
    invoke-static {}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->getDefault()Lcom/sun/scenario/animation/shared/AnimationAccessor;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->animation:Ljavafx/animation/Animation;

    invoke-virtual {v6, v7}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->finished(Ljavafx/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_1
    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->inTimePulse:Z

    .line 107
    .line 108
    goto :goto_0

    .line 101
    .end local v4    # "reachedEnd":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    move-object v6, v1

    :try_start_1
    iget-wide v6, v6, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->ticks:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 106
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->inTimePulse:Z

    move-object v6, v5

    throw v6
.end method

.method public wasSynched()Z
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->wasSynched()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;->cycleCount:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/animation/shared/SingleLoopClipEnvelope;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

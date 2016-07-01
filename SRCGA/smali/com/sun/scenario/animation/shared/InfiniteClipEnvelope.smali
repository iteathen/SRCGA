.class public Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;
.super Lcom/sun/scenario/animation/shared/ClipEnvelope;
.source "InfiniteClipEnvelope.java"


# instance fields
.field private autoReverse:Z

.field private pos:J


# direct methods
.method protected constructor <init>(Ljavafx/animation/Animation;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;
    move-object v1, p1

    .local v1, "animation":Ljavafx/animation/Animation;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/scenario/animation/shared/ClipEnvelope;-><init>(Ljavafx/animation/Animation;)V

    .line 39
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 40
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/animation/Animation;->isAutoReverse()Z

    move-result v3

    iput-boolean v3, v2, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->autoReverse:Z

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method protected calculateCurrentRate()D
    .locals 8

    .prologue
    .line 51
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;
    move-object v2, v1

    iget-boolean v2, v2, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->autoReverse:Z

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->rate:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->ticks:J

    const-wide/16 v4, 0x2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->cycleTicks:J

    mul-long/2addr v4, v6

    rem-long/2addr v2, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->cycleTicks:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->rate:D

    goto :goto_0

    :cond_1
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->rate:D

    neg-double v2, v2

    goto :goto_0
.end method

.method public jumpTo(J)V
    .locals 15

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;
    move-wide/from16 v1, p1

    .local v1, "newTicks":J
    move-object v7, v0

    iget-wide v7, v7, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->cycleTicks:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 137
    .line 165
    :goto_0
    return-void

    .line 139
    :cond_0
    move-object v7, v0

    iget-wide v7, v7, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->ticks:J

    move-wide v3, v7

    .line 140
    .local v3, "oldTicks":J
    move-object v7, v0

    const-wide/16 v8, 0x0

    move-wide v10, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    const-wide/16 v10, 0x2

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->cycleTicks:J

    mul-long/2addr v10, v12

    rem-long/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->ticks:J

    .line 141
    move-object v7, v0

    iget-wide v7, v7, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->ticks:J

    move-wide v9, v3

    sub-long/2addr v7, v9

    move-wide v5, v7

    .line 142
    .local v5, "delta":J
    move-wide v7, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    .line 143
    move-object v7, v0

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget-wide v8, v8, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->deltaTicks:J

    move-wide v10, v5

    add-long/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->deltaTicks:J

    .line 144
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->autoReverse:Z

    if-eqz v7, :cond_4

    .line 145
    move-object v7, v0

    iget-wide v7, v7, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->ticks:J

    move-object v9, v0

    iget-wide v9, v9, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->cycleTicks:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    .line 146
    move-object v7, v0

    const-wide/16 v8, 0x2

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->cycleTicks:J

    mul-long/2addr v8, v10

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->ticks:J

    sub-long/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->pos:J

    .line 147
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->animation:Ljavafx/animation/Animation;

    invoke-virtual {v7}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v7

    sget-object v8, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v7, v8, :cond_1

    .line 148
    move-object v7, v0

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->rate:D

    neg-double v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->setCurrentRate(D)V

    .line 162
    :cond_1
    :goto_1
    invoke-static {}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->getDefault()Lcom/sun/scenario/animation/shared/AnimationAccessor;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->animation:Ljavafx/animation/Animation;

    move-object v9, v0

    iget-wide v9, v9, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->pos:J

    move-object v11, v0

    iget-wide v11, v11, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->cycleTicks:J

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->jumpTo(Ljavafx/animation/Animation;JJZ)V

    .line 163
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->abortCurrentPulse()V

    .line 165
    :cond_2
    goto :goto_0

    .line 151
    :cond_3
    move-object v7, v0

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->ticks:J

    iput-wide v8, v7, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->pos:J

    .line 152
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->animation:Ljavafx/animation/Animation;

    invoke-virtual {v7}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v7

    sget-object v8, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v7, v8, :cond_1

    .line 153
    move-object v7, v0

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->rate:D

    invoke-virtual {v7, v8, v9}, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->setCurrentRate(D)V

    goto :goto_1

    .line 157
    :cond_4
    move-object v7, v0

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->ticks:J

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->cycleTicks:J

    rem-long/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->pos:J

    .line 158
    move-object v7, v0

    iget-wide v7, v7, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->pos:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 159
    move-object v7, v0

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->ticks:J

    iput-wide v8, v7, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->pos:J

    goto :goto_1
.end method

.method public setAutoReverse(Z)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;
    move v1, p1

    .local v1, "autoReverse":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->autoReverse:Z

    .line 47
    return-void
.end method

.method public setCycleCount(I)Lcom/sun/scenario/animation/shared/ClipEnvelope;
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;
    move v1, p1

    .local v1, "cycleCount":I
    move v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->animation:Ljavafx/animation/Animation;

    invoke-static {v2}, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->create(Ljavafx/animation/Animation;)Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;
    return-object v0

    .restart local v0    # "this":Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;
    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method public setCycleDuration(Ljavafx/util/Duration;)Lcom/sun/scenario/animation/shared/ClipEnvelope;
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;
    move-object v1, p1

    .local v1, "cycleDuration":Ljavafx/util/Duration;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/util/Duration;->isIndefinite()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->animation:Ljavafx/animation/Animation;

    invoke-static {v2}, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->create(Ljavafx/animation/Animation;)Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-result-object v2

    move-object v0, v2

    .line 61
    .end local v0    # "this":Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;
    :goto_0
    return-object v0

    .line 60
    .restart local v0    # "this":Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->updateCycleTicks(Ljavafx/util/Duration;)V

    .line 61
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public setRate(D)V
    .locals 17

    .prologue
    .line 71
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;
    move-wide/from16 v2, p1

    .local v2, "rate":D
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->animation:Ljavafx/animation/Animation;

    invoke-virtual {v7}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v7

    move-object v4, v7

    .line 72
    .local v4, "status":Ljavafx/animation/Animation$Status;
    move-object v7, v4

    sget-object v8, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-eq v7, v8, :cond_2

    .line 73
    move-object v7, v4

    sget-object v8, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v7, v8, :cond_0

    .line 74
    move-object v7, v1

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->currentRate:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->rate:D

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    move-wide v8, v2

    :goto_0
    invoke-virtual {v7, v8, v9}, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->setCurrentRate(D)V

    .line 76
    :cond_0
    move-object v7, v1

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->ticks:J

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->ticks:J

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->deltaTicks:J

    sub-long/2addr v10, v12

    long-to-double v10, v10

    move-wide v12, v2

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->rate:D

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    sub-long/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->deltaTicks:J

    .line 77
    move-wide v7, v2

    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->rate:D

    mul-double/2addr v7, v9

    const-wide/16 v9, 0x0

    cmpg-double v7, v7, v9

    if-gez v7, :cond_1

    .line 78
    const-wide/16 v7, 0x2

    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->cycleTicks:J

    mul-long/2addr v7, v9

    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->pos:J

    sub-long/2addr v7, v9

    move-wide v5, v7

    .line 79
    .local v5, "delta":J
    move-object v7, v1

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    iget-wide v8, v8, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->deltaTicks:J

    move-wide v10, v5

    add-long/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->deltaTicks:J

    .line 80
    move-object v7, v1

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    iget-wide v8, v8, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->ticks:J

    move-wide v10, v5

    add-long/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->ticks:J

    .line 82
    .end local v5    # "delta":J
    :cond_1
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->abortCurrentPulse()V

    .line 84
    :cond_2
    move-object v7, v1

    move-wide v8, v2

    iput-wide v8, v7, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->rate:D

    .line 85
    return-void

    .line 74
    :cond_3
    move-wide v8, v2

    neg-double v8, v8

    goto :goto_0
.end method

.method public timePulse(J)V
    .locals 23

    .prologue
    .line 89
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;
    move-wide/from16 v4, p1

    .local v4, "currentTick":J
    move-object v13, v3

    iget-wide v13, v13, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->cycleTicks:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_0

    .line 90
    .line 132
    :goto_0
    return-void

    .line 92
    :cond_0
    move-object v13, v3

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->aborted:Z

    .line 93
    move-object v13, v3

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->inTimePulse:Z

    .line 96
    move-object v13, v3

    :try_start_0
    iget-wide v13, v13, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->ticks:J

    move-wide v6, v13

    .line 97
    .local v6, "oldTicks":J
    move-object v13, v3

    const-wide/16 v14, 0x0

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->deltaTicks:J

    move-wide/from16 v16, v0

    move-wide/from16 v18, v4

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->rate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    add-long v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    iput-wide v14, v13, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->ticks:J

    .line 99
    move-object v13, v3

    iget-wide v13, v13, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->ticks:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v15, v6

    sub-long/2addr v13, v15

    move-wide v8, v13

    .line 100
    .local v8, "overallDelta":J
    move-wide v13, v8

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_1

    .line 130
    move-object v13, v3

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->inTimePulse:Z

    .line 101
    goto :goto_0

    .line 104
    :cond_1
    move-object v13, v3

    :try_start_1
    iget-wide v13, v13, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->currentRate:D

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-lez v13, :cond_2

    move-object v13, v3

    iget-wide v13, v13, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->cycleTicks:J

    move-object v15, v3

    iget-wide v15, v15, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->pos:J

    sub-long/2addr v13, v15

    :goto_1
    move-wide v10, v13

    .line 106
    .local v10, "cycleDelta":J
    :goto_2
    move-wide v13, v8

    move-wide v15, v10

    cmp-long v13, v13, v15

    if-ltz v13, :cond_7

    .line 107
    move-wide v13, v10

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_4

    .line 108
    move-object v13, v3

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->currentRate:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_3

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->cycleTicks:J

    :goto_3
    iput-wide v14, v13, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->pos:J

    .line 109
    move-wide v13, v8

    move-wide v15, v10

    sub-long/2addr v13, v15

    move-wide v8, v13

    .line 110
    invoke-static {}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->getDefault()Lcom/sun/scenario/animation/shared/AnimationAccessor;

    move-result-object v13

    move-object v14, v3

    iget-object v14, v14, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->animation:Ljavafx/animation/Animation;

    move-object v15, v3

    iget-wide v15, v15, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->pos:J

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->cycleTicks:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v13 .. v18}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->playTo(Ljavafx/animation/Animation;JJ)V

    .line 111
    move-object v13, v3

    iget-boolean v13, v13, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->aborted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_4

    .line 130
    move-object v13, v3

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->inTimePulse:Z

    .line 112
    goto/16 :goto_0

    .line 104
    .end local v10    # "cycleDelta":J
    :cond_2
    move-object v13, v3

    :try_start_2
    iget-wide v13, v13, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->pos:J

    goto :goto_1

    .line 108
    .restart local v10    # "cycleDelta":J
    :cond_3
    const-wide/16 v14, 0x0

    goto :goto_3

    .line 115
    :cond_4
    move-object v13, v3

    iget-boolean v13, v13, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->autoReverse:Z

    if-eqz v13, :cond_5

    .line 116
    move-object v13, v3

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->currentRate:D

    neg-double v14, v14

    invoke-virtual {v13, v14, v15}, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->setCurrentRate(D)V

    .line 121
    :goto_4
    move-object v13, v3

    iget-wide v13, v13, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->cycleTicks:J

    move-wide v10, v13

    goto :goto_2

    .line 118
    :cond_5
    move-object v13, v3

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->currentRate:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_6

    const-wide/16 v14, 0x0

    :goto_5
    iput-wide v14, v13, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->pos:J

    .line 119
    invoke-static {}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->getDefault()Lcom/sun/scenario/animation/shared/AnimationAccessor;

    move-result-object v13

    move-object v14, v3

    iget-object v14, v14, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->animation:Ljavafx/animation/Animation;

    move-object v15, v3

    iget-wide v15, v15, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->pos:J

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->cycleTicks:J

    move-wide/from16 v17, v0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->jumpTo(Ljavafx/animation/Animation;JJZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 130
    .end local v6    # "oldTicks":J
    .end local v8    # "overallDelta":J
    .end local v10    # "cycleDelta":J
    :catchall_0
    move-exception v13

    move-object v12, v13

    move-object v13, v3

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->inTimePulse:Z

    move-object v13, v12

    throw v13

    .line 118
    .restart local v6    # "oldTicks":J
    .restart local v8    # "overallDelta":J
    .restart local v10    # "cycleDelta":J
    :cond_6
    move-object v14, v3

    :try_start_3
    iget-wide v14, v14, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->cycleTicks:J

    goto :goto_5

    .line 124
    :cond_7
    move-wide v13, v8

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_8

    .line 125
    move-object v13, v3

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    iget-wide v14, v14, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->pos:J

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->currentRate:D

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-lez v16, :cond_9

    move-wide/from16 v16, v8

    :goto_6
    add-long v14, v14, v16

    iput-wide v14, v13, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->pos:J

    .line 126
    invoke-static {}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->getDefault()Lcom/sun/scenario/animation/shared/AnimationAccessor;

    move-result-object v13

    move-object v14, v3

    iget-object v14, v14, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->animation:Ljavafx/animation/Animation;

    move-object v15, v3

    iget-wide v15, v15, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->pos:J

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->cycleTicks:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v13 .. v18}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->playTo(Ljavafx/animation/Animation;JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    :cond_8
    move-object v13, v3

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/sun/scenario/animation/shared/InfiniteClipEnvelope;->inTimePulse:Z

    .line 131
    .line 132
    goto/16 :goto_0

    .line 125
    :cond_9
    move-wide/from16 v16, v8

    move-wide/from16 v0, v16

    neg-long v0, v0

    move-wide/from16 v16, v0

    goto :goto_6
.end method

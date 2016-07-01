.class public Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;
.super Lcom/sun/scenario/animation/shared/ClipEnvelope;
.source "FiniteClipEnvelope.java"


# instance fields
.field private autoReverse:Z

.field private cycleCount:I

.field private pos:J

.field private totalTicks:J


# direct methods
.method protected constructor <init>(Ljavafx/animation/Animation;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;
    move-object v1, p1

    .local v1, "animation":Ljavafx/animation/Animation;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/scenario/animation/shared/ClipEnvelope;-><init>(Ljavafx/animation/Animation;)V

    .line 41
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 42
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/animation/Animation;->isAutoReverse()Z

    move-result v3

    iput-boolean v3, v2, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->autoReverse:Z

    .line 43
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/animation/Animation;->getCycleCount()I

    move-result v3

    iput v3, v2, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleCount:I

    .line 45
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->updateTotalTicks()V

    .line 46
    return-void
.end method

.method private updateTotalTicks()V
    .locals 6

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleCount:I

    int-to-long v2, v2

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleTicks:J

    mul-long/2addr v2, v4

    iput-wide v2, v1, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->totalTicks:J

    .line 97
    return-void
.end method


# virtual methods
.method protected calculateCurrentRate()D
    .locals 8

    .prologue
    .line 55
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;
    move-object v2, v1

    iget-boolean v2, v2, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->autoReverse:Z

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->rate:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->ticks:J

    const-wide/16 v4, 0x2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleTicks:J

    mul-long/2addr v4, v6

    rem-long/2addr v2, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleTicks:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object v3, v1

    iget-wide v3, v3, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->rate:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    if-ne v2, v3, :cond_3

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->rate:D

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->rate:D

    neg-double v2, v2

    goto :goto_0
.end method

.method public jumpTo(J)V
    .locals 17

    .prologue
    .line 157
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;
    move-wide/from16 v2, p1

    .local v2, "newTicks":J
    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleTicks:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    .line 158
    .line 195
    :goto_0
    return-void

    .line 161
    :cond_0
    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->ticks:J

    move-wide v4, v9

    .line 162
    .local v4, "oldTicks":J
    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->rate:D

    const-wide/16 v11, 0x0

    cmpg-double v9, v9, v11

    if-gez v9, :cond_1

    .line 163
    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->totalTicks:J

    move-wide v11, v2

    sub-long/2addr v9, v11

    move-wide v2, v9

    .line 165
    :cond_1
    move-object v9, v1

    move-wide v10, v2

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->totalTicks:J

    invoke-static {v10, v11, v12, v13}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->checkBounds(JJ)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->ticks:J

    .line 166
    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->ticks:J

    move-wide v11, v4

    sub-long/2addr v9, v11

    move-wide v6, v9

    .line 167
    .local v6, "delta":J
    move-wide v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_3

    .line 168
    move-object v9, v1

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->deltaTicks:J

    move-wide v12, v6

    add-long/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->deltaTicks:J

    .line 169
    move-object v9, v1

    iget-boolean v9, v9, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->autoReverse:Z

    if-eqz v9, :cond_7

    .line 170
    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->ticks:J

    const-wide/16 v11, 0x2

    move-object v13, v1

    iget-wide v13, v13, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleTicks:J

    mul-long/2addr v11, v13

    rem-long/2addr v9, v11

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleTicks:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_4

    const/4 v9, 0x1

    :goto_1
    move v8, v9

    .line 171
    .local v8, "forward":Z
    move v9, v8

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->rate:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_5

    const/4 v10, 0x1

    :goto_2
    if-ne v9, v10, :cond_6

    .line 172
    move-object v9, v1

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->ticks:J

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleTicks:J

    rem-long/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->pos:J

    .line 173
    move-object v9, v1

    iget-object v9, v9, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->animation:Ljavafx/animation/Animation;

    invoke-virtual {v9}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v9

    sget-object v10, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v9, v10, :cond_2

    .line 174
    move-object v9, v1

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->rate:D

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->setCurrentRate(D)V

    .line 182
    .line 192
    .end local v8    # "forward":Z
    :cond_2
    :goto_3
    invoke-static {}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->getDefault()Lcom/sun/scenario/animation/shared/AnimationAccessor;

    move-result-object v9

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->animation:Ljavafx/animation/Animation;

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->pos:J

    move-object v13, v1

    iget-wide v13, v13, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleTicks:J

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->jumpTo(Ljavafx/animation/Animation;JJZ)V

    .line 193
    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->abortCurrentPulse()V

    .line 195
    :cond_3
    goto/16 :goto_0

    .line 170
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 171
    .restart local v8    # "forward":Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 177
    :cond_6
    move-object v9, v1

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleTicks:J

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->ticks:J

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleTicks:J

    rem-long/2addr v12, v14

    sub-long/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->pos:J

    .line 178
    move-object v9, v1

    iget-object v9, v9, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->animation:Ljavafx/animation/Animation;

    invoke-virtual {v9}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v9

    sget-object v10, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v9, v10, :cond_2

    .line 179
    move-object v9, v1

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->rate:D

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    neg-double v10, v10

    invoke-virtual {v9, v10, v11}, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->setCurrentRate(D)V

    goto :goto_3

    .line 183
    .end local v8    # "forward":Z
    :cond_7
    move-object v9, v1

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->ticks:J

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleTicks:J

    rem-long/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->pos:J

    .line 184
    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->rate:D

    const-wide/16 v11, 0x0

    cmpg-double v9, v9, v11

    if-gez v9, :cond_8

    .line 185
    move-object v9, v1

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleTicks:J

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->pos:J

    sub-long/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->pos:J

    .line 187
    :cond_8
    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->pos:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->ticks:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    .line 188
    move-object v9, v1

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleTicks:J

    iput-wide v10, v9, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->pos:J

    goto :goto_3
.end method

.method public setAutoReverse(Z)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;
    move v1, p1

    .local v1, "autoReverse":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->autoReverse:Z

    .line 51
    return-void
.end method

.method public setCycleCount(I)Lcom/sun/scenario/animation/shared/ClipEnvelope;
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;
    move v1, p1

    .local v1, "cycleCount":I
    move v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 72
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->animation:Ljavafx/animation/Animation;

    invoke-static {v2}, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->create(Ljavafx/animation/Animation;)Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-result-object v2

    move-object v0, v2

    .line 76
    .end local v0    # "this":Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;
    :goto_0
    return-object v0

    .line 74
    .restart local v0    # "this":Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleCount:I

    .line 75
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->updateTotalTicks()V

    .line 76
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public setCycleDuration(Ljavafx/util/Duration;)Lcom/sun/scenario/animation/shared/ClipEnvelope;
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;
    move-object v1, p1

    .local v1, "cycleDuration":Ljavafx/util/Duration;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/util/Duration;->isIndefinite()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->animation:Ljavafx/animation/Animation;

    invoke-static {v2}, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->create(Ljavafx/animation/Animation;)Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-result-object v2

    move-object v0, v2

    .line 66
    .end local v0    # "this":Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;
    :goto_0
    return-object v0

    .line 64
    .restart local v0    # "this":Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->updateCycleTicks(Ljavafx/util/Duration;)V

    .line 65
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->updateTotalTicks()V

    .line 66
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public setRate(D)V
    .locals 17

    .prologue
    .line 81
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;
    move-wide/from16 v1, p1

    .local v1, "rate":D
    move-wide v7, v1

    move-object v9, v0

    iget-wide v9, v9, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->rate:D

    mul-double/2addr v7, v9

    const-wide/16 v9, 0x0

    cmpg-double v7, v7, v9

    if-gez v7, :cond_2

    const/4 v7, 0x1

    :goto_0
    move v3, v7

    .line 82
    .local v3, "toggled":Z
    move v7, v3

    if-eqz v7, :cond_3

    move-object v7, v0

    iget-wide v7, v7, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->totalTicks:J

    move-object v9, v0

    iget-wide v9, v9, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->ticks:J

    sub-long/2addr v7, v9

    :goto_1
    move-wide v4, v7

    .line 83
    .local v4, "newTicks":J
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->animation:Ljavafx/animation/Animation;

    invoke-virtual {v7}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v7

    move-object v6, v7

    .line 84
    .local v6, "status":Ljavafx/animation/Animation$Status;
    move-object v7, v6

    sget-object v8, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-eq v7, v8, :cond_1

    .line 85
    move-object v7, v6

    sget-object v8, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v7, v8, :cond_0

    .line 86
    move-object v7, v0

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->currentRate:D

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->rate:D

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v8, v8, v10

    if-gez v8, :cond_4

    move-wide v8, v1

    :goto_2
    invoke-virtual {v7, v8, v9}, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->setCurrentRate(D)V

    .line 88
    :cond_0
    move-object v7, v0

    move-wide v8, v4

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->ticks:J

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->deltaTicks:J

    sub-long/2addr v10, v12

    long-to-double v10, v10

    move-wide v12, v1

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->rate:D

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    sub-long/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->deltaTicks:J

    .line 89
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->abortCurrentPulse()V

    .line 91
    :cond_1
    move-object v7, v0

    move-wide v8, v4

    iput-wide v8, v7, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->ticks:J

    .line 92
    move-object v7, v0

    move-wide v8, v1

    iput-wide v8, v7, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->rate:D

    .line 93
    return-void

    .line 81
    .end local v3    # "toggled":Z
    .end local v4    # "newTicks":J
    .end local v6    # "status":Ljavafx/animation/Animation$Status;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 82
    .restart local v3    # "toggled":Z
    :cond_3
    move-object v7, v0

    iget-wide v7, v7, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->ticks:J

    goto :goto_1

    .line 86
    .restart local v4    # "newTicks":J
    .restart local v6    # "status":Ljavafx/animation/Animation$Status;
    :cond_4
    move-wide v8, v1

    neg-double v8, v8

    goto :goto_2
.end method

.method public timePulse(J)V
    .locals 23

    .prologue
    .line 101
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;
    move-wide/from16 v4, p1

    .local v4, "currentTick":J
    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleTicks:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_0

    .line 102
    .line 153
    :goto_0
    return-void

    .line 104
    :cond_0
    move-object v14, v3

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->aborted:Z

    .line 105
    move-object v14, v3

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->inTimePulse:Z

    .line 108
    move-object v14, v3

    :try_start_0
    iget-wide v14, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->ticks:J

    move-wide v6, v14

    .line 109
    .local v6, "oldTicks":J
    move-object v14, v3

    move-object v15, v3

    iget-wide v15, v15, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->deltaTicks:J

    move-wide/from16 v17, v4

    move-wide/from16 v0, v17

    long-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->rate:D

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v17

    add-long v15, v15, v17

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->totalTicks:J

    move-wide/from16 v17, v0

    invoke-static/range {v15 .. v18}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->checkBounds(JJ)J

    move-result-wide v15

    iput-wide v15, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->ticks:J

    .line 111
    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->ticks:J

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->totalTicks:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_1

    const/4 v14, 0x1

    :goto_1
    move v8, v14

    .line 113
    .local v8, "reachedEnd":Z
    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->ticks:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide/from16 v16, v6

    sub-long v14, v14, v16

    move-wide v9, v14

    .line 114
    .local v9, "overallDelta":J
    move-wide v14, v9

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_2

    .line 151
    move-object v14, v3

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->inTimePulse:Z

    .line 115
    goto :goto_0

    .line 111
    .end local v8    # "reachedEnd":Z
    .end local v9    # "overallDelta":J
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 118
    .restart local v8    # "reachedEnd":Z
    .restart local v9    # "overallDelta":J
    :cond_2
    move-object v14, v3

    :try_start_1
    iget-wide v14, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->currentRate:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_3

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleTicks:J

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->pos:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    :goto_2
    move-wide v11, v14

    .line 120
    .local v11, "cycleDelta":J
    :goto_3
    move-wide v14, v9

    move-wide/from16 v16, v11

    cmp-long v14, v14, v16

    if-ltz v14, :cond_a

    .line 121
    move-wide v14, v11

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_5

    .line 122
    move-object v14, v3

    move-object v15, v3

    iget-wide v15, v15, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->currentRate:D

    const-wide/16 v17, 0x0

    cmpl-double v15, v15, v17

    if-lez v15, :cond_4

    move-object v15, v3

    iget-wide v15, v15, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleTicks:J

    :goto_4
    iput-wide v15, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->pos:J

    .line 123
    move-wide v14, v9

    move-wide/from16 v16, v11

    sub-long v14, v14, v16

    move-wide v9, v14

    .line 124
    invoke-static {}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->getDefault()Lcom/sun/scenario/animation/shared/AnimationAccessor;

    move-result-object v14

    move-object v15, v3

    iget-object v15, v15, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->animation:Ljavafx/animation/Animation;

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->pos:J

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleTicks:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v14 .. v19}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->playTo(Ljavafx/animation/Animation;JJ)V

    .line 125
    move-object v14, v3

    iget-boolean v14, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->aborted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_5

    .line 151
    move-object v14, v3

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->inTimePulse:Z

    .line 126
    goto/16 :goto_0

    .line 118
    .end local v11    # "cycleDelta":J
    :cond_3
    move-object v14, v3

    :try_start_2
    iget-wide v14, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->pos:J

    goto :goto_2

    .line 122
    .restart local v11    # "cycleDelta":J
    :cond_4
    const-wide/16 v15, 0x0

    goto :goto_4

    .line 130
    :cond_5
    move v14, v8

    if-eqz v14, :cond_6

    move-wide v14, v9

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_7

    .line 131
    :cond_6
    move-object v14, v3

    iget-boolean v14, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->autoReverse:Z

    if-eqz v14, :cond_8

    .line 132
    move-object v14, v3

    move-object v15, v3

    iget-wide v15, v15, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->currentRate:D

    neg-double v15, v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->setCurrentRate(D)V

    .line 138
    :cond_7
    :goto_5
    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleTicks:J

    move-wide v11, v14

    goto :goto_3

    .line 134
    :cond_8
    move-object v14, v3

    move-object v15, v3

    iget-wide v15, v15, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->currentRate:D

    const-wide/16 v17, 0x0

    cmpl-double v15, v15, v17

    if-lez v15, :cond_9

    const-wide/16 v15, 0x0

    :goto_6
    iput-wide v15, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->pos:J

    .line 135
    invoke-static {}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->getDefault()Lcom/sun/scenario/animation/shared/AnimationAccessor;

    move-result-object v14

    move-object v15, v3

    iget-object v15, v15, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->animation:Ljavafx/animation/Animation;

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->pos:J

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleTicks:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->jumpTo(Ljavafx/animation/Animation;JJZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 151
    .end local v6    # "oldTicks":J
    .end local v8    # "reachedEnd":Z
    .end local v9    # "overallDelta":J
    .end local v11    # "cycleDelta":J
    :catchall_0
    move-exception v14

    move-object v13, v14

    move-object v14, v3

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->inTimePulse:Z

    move-object v14, v13

    throw v14

    .line 134
    .restart local v6    # "oldTicks":J
    .restart local v8    # "reachedEnd":Z
    .restart local v9    # "overallDelta":J
    .restart local v11    # "cycleDelta":J
    :cond_9
    move-object v15, v3

    :try_start_3
    iget-wide v15, v15, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleTicks:J

    goto :goto_6

    .line 141
    :cond_a
    move-wide v14, v9

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_b

    move v14, v8

    if-nez v14, :cond_b

    .line 142
    move-object v14, v3

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    iget-wide v15, v15, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->pos:J

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->currentRate:D

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-lez v17, :cond_d

    move-wide/from16 v17, v9

    :goto_7
    add-long v15, v15, v17

    iput-wide v15, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->pos:J

    .line 143
    invoke-static {}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->getDefault()Lcom/sun/scenario/animation/shared/AnimationAccessor;

    move-result-object v14

    move-object v15, v3

    iget-object v15, v15, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->animation:Ljavafx/animation/Animation;

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->pos:J

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->cycleTicks:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v14 .. v19}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->playTo(Ljavafx/animation/Animation;JJ)V

    .line 146
    :cond_b
    move v14, v8

    if-eqz v14, :cond_c

    move-object v14, v3

    iget-boolean v14, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->aborted:Z

    if-nez v14, :cond_c

    .line 147
    invoke-static {}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->getDefault()Lcom/sun/scenario/animation/shared/AnimationAccessor;

    move-result-object v14

    move-object v15, v3

    iget-object v15, v15, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->animation:Ljavafx/animation/Animation;

    invoke-virtual {v14, v15}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->finished(Ljavafx/animation/Animation;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    :cond_c
    move-object v14, v3

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/sun/scenario/animation/shared/FiniteClipEnvelope;->inTimePulse:Z

    .line 152
    .line 153
    goto/16 :goto_0

    .line 142
    :cond_d
    move-wide/from16 v17, v9

    move-wide/from16 v0, v17

    neg-long v0, v0

    move-wide/from16 v17, v0

    goto :goto_7
.end method

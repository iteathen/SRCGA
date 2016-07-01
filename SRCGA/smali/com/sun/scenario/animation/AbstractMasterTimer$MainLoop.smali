.class final Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;
.super Ljava/lang/Object;
.source "AbstractMasterTimer.java"

# interfaces
.implements Lcom/sun/scenario/DelayedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/scenario/animation/AbstractMasterTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainLoop"
.end annotation


# instance fields
.field private inactive:Z

.field private lastPulseDuration:J

.field private nextPulseTime:J

.field final synthetic this$0:Lcom/sun/scenario/animation/AbstractMasterTimer;


# direct methods
.method private constructor <init>(Lcom/sun/scenario/animation/AbstractMasterTimer;)V
    .locals 6

    .prologue
    .line 253
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;
    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->this$0:Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 255
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->inactive:Z

    .line 257
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->this$0:Lcom/sun/scenario/animation/AbstractMasterTimer;

    invoke-virtual {v4}, Lcom/sun/scenario/animation/AbstractMasterTimer;->nanos()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->nextPulseTime:J

    .line 258
    move-object v3, v1

    const-wide/32 v4, -0x80000000

    iput-wide v4, v3, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->lastPulseDuration:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/scenario/animation/AbstractMasterTimer;Lcom/sun/scenario/animation/AbstractMasterTimer$1;)V
    .locals 5

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/scenario/animation/AbstractMasterTimer$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;-><init>(Lcom/sun/scenario/animation/AbstractMasterTimer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;)V
    .locals 2

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "x0":Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->updateAnimationRunnable()V

    return-void
.end method

.method private updateAnimationRunnable()V
    .locals 5

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->this$0:Lcom/sun/scenario/animation/AbstractMasterTimer;

    invoke-static {v3}, Lcom/sun/scenario/animation/AbstractMasterTimer;->access$600(Lcom/sun/scenario/animation/AbstractMasterTimer;)I

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->this$0:Lcom/sun/scenario/animation/AbstractMasterTimer;

    invoke-static {v3}, Lcom/sun/scenario/animation/AbstractMasterTimer;->access$700(Lcom/sun/scenario/animation/AbstractMasterTimer;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v1, v3

    .line 321
    .local v1, "newInactive":Z
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->inactive:Z

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 322
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->inactive:Z

    .line 323
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->inactive:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    move-object v2, v3

    .line 324
    .local v2, "animationRunnable":Lcom/sun/scenario/DelayedRunnable;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->this$0:Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/scenario/animation/AbstractMasterTimer;->postUpdateAnimationRunnable(Lcom/sun/scenario/DelayedRunnable;)V

    .line 326
    .end local v2    # "animationRunnable":Lcom/sun/scenario/DelayedRunnable;
    :cond_0
    return-void

    .line 320
    .end local v1    # "newInactive":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 323
    .restart local v1    # "newInactive":Z
    :cond_2
    move-object v3, v0

    goto :goto_1
.end method

.method private updateNextPulseTime(J)V
    .locals 15

    .prologue
    .line 282
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;
    move-wide/from16 v2, p1

    .local v2, "pulseStarted":J
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->this$0:Lcom/sun/scenario/animation/AbstractMasterTimer;

    invoke-virtual {v8}, Lcom/sun/scenario/animation/AbstractMasterTimer;->nanos()J

    move-result-wide v8

    move-wide v4, v8

    .line 283
    .local v4, "now":J
    # getter for: Lcom/sun/scenario/animation/AbstractMasterTimer;->fullspeed:Z
    invoke-static {}, Lcom/sun/scenario/animation/AbstractMasterTimer;->access$300()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 284
    move-object v8, v1

    move-wide v9, v4

    iput-wide v9, v8, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->nextPulseTime:J

    .line 317
    :goto_0
    return-void

    .line 286
    :cond_0
    # getter for: Lcom/sun/scenario/animation/AbstractMasterTimer;->useAdaptivePulse:Z
    invoke-static {}, Lcom/sun/scenario/animation/AbstractMasterTimer;->access$400()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 291
    move-object v8, v1

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget-wide v9, v9, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->nextPulseTime:J

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->this$0:Lcom/sun/scenario/animation/AbstractMasterTimer;

    invoke-static {v11}, Lcom/sun/scenario/animation/AbstractMasterTimer;->access$500(Lcom/sun/scenario/animation/AbstractMasterTimer;)I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v9, v11

    iput-wide v9, v8, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->nextPulseTime:J

    .line 292
    move-wide v8, v4

    move-wide v10, v2

    sub-long/2addr v8, v10

    move-wide v6, v8

    .line 299
    .local v6, "pulseDuration":J
    move-wide v8, v6

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->lastPulseDuration:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x7a120

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 300
    move-wide v8, v6

    const-wide/16 v10, 0x2

    div-long/2addr v8, v10

    move-wide v6, v8

    .line 302
    :cond_1
    move-wide v8, v6

    const-wide/32 v10, 0x1e8480

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    .line 303
    const-wide/32 v8, 0x1e8480

    move-wide v6, v8

    .line 307
    :cond_2
    move-wide v8, v6

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->this$0:Lcom/sun/scenario/animation/AbstractMasterTimer;

    invoke-static {v10}, Lcom/sun/scenario/animation/AbstractMasterTimer;->access$500(Lcom/sun/scenario/animation/AbstractMasterTimer;)I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_3

    .line 308
    const/4 v8, 0x3

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->this$0:Lcom/sun/scenario/animation/AbstractMasterTimer;

    invoke-static {v9}, Lcom/sun/scenario/animation/AbstractMasterTimer;->access$500(Lcom/sun/scenario/animation/AbstractMasterTimer;)I

    move-result v9

    mul-int/2addr v8, v9

    const/4 v9, 0x4

    div-int/lit8 v8, v8, 0x4

    int-to-long v8, v8

    move-wide v6, v8

    .line 310
    :cond_3
    move-object v8, v1

    move-wide v9, v6

    iput-wide v9, v8, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->lastPulseDuration:J

    .line 311
    move-object v8, v1

    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->nextPulseTime:J

    move-wide v11, v6

    sub-long/2addr v9, v11

    iput-wide v9, v8, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->nextPulseTime:J

    .line 312
    goto :goto_0

    .line 313
    .end local v6    # "pulseDuration":J
    :cond_4
    move-object v8, v1

    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->nextPulseTime:J

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->this$0:Lcom/sun/scenario/animation/AbstractMasterTimer;

    invoke-static {v11}, Lcom/sun/scenario/animation/AbstractMasterTimer;->access$500(Lcom/sun/scenario/animation/AbstractMasterTimer;)I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v9, v11

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->this$0:Lcom/sun/scenario/animation/AbstractMasterTimer;

    invoke-static {v11}, Lcom/sun/scenario/animation/AbstractMasterTimer;->access$500(Lcom/sun/scenario/animation/AbstractMasterTimer;)I

    move-result v11

    int-to-long v11, v11

    div-long/2addr v9, v11

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->this$0:Lcom/sun/scenario/animation/AbstractMasterTimer;

    .line 314
    invoke-static {v11}, Lcom/sun/scenario/animation/AbstractMasterTimer;->access$500(Lcom/sun/scenario/animation/AbstractMasterTimer;)I

    move-result v11

    int-to-long v11, v11

    mul-long/2addr v9, v11

    iput-wide v9, v8, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->nextPulseTime:J

    goto/16 :goto_0
.end method


# virtual methods
.method public getDelay()J
    .locals 10

    .prologue
    .line 276
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->this$0:Lcom/sun/scenario/animation/AbstractMasterTimer;

    invoke-virtual {v6}, Lcom/sun/scenario/animation/AbstractMasterTimer;->nanos()J

    move-result-wide v6

    move-wide v2, v6

    .line 277
    .local v2, "now":J
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->nextPulseTime:J

    move-wide v8, v2

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    move-wide v4, v6

    .line 278
    .local v4, "timeUntilPulse":J
    const-wide/16 v6, 0x0

    move-wide v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;
    return-wide v1
.end method

.method public run()V
    .locals 8

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->this$0:Lcom/sun/scenario/animation/AbstractMasterTimer;

    invoke-static {v3}, Lcom/sun/scenario/animation/AbstractMasterTimer;->access$200(Lcom/sun/scenario/animation/AbstractMasterTimer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    .line 272
    :goto_0
    return-void

    .line 265
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->this$0:Lcom/sun/scenario/animation/AbstractMasterTimer;

    invoke-virtual {v3}, Lcom/sun/scenario/animation/AbstractMasterTimer;->nanos()J

    move-result-wide v3

    move-wide v1, v3

    .line 266
    .local v1, "now":J
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->this$0:Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->nextPulseTime:J

    move-wide v6, v1

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/animation/AbstractMasterTimer;->recordStart(J)V

    .line 267
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->this$0:Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/animation/AbstractMasterTimer;->timePulseImpl(J)V

    .line 268
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->this$0:Lcom/sun/scenario/animation/AbstractMasterTimer;

    invoke-virtual {v3}, Lcom/sun/scenario/animation/AbstractMasterTimer;->recordEnd()V

    .line 269
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->updateNextPulseTime(J)V

    .line 271
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->updateAnimationRunnable()V

    .line 272
    goto :goto_0
.end method

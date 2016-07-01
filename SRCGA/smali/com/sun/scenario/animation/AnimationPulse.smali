.class public Lcom/sun/scenario/animation/AnimationPulse;
.super Ljava/lang/Object;
.source "AnimationPulse.java"

# interfaces
.implements Lcom/sun/scenario/animation/AnimationPulseMBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/scenario/animation/AnimationPulse$PulseData;,
        Lcom/sun/scenario/animation/AnimationPulse$AnimationPulseHolder;
    }
.end annotation


# instance fields
.field private final animationDurationAv:Ljava/util/concurrent/atomic/AtomicLong;

.field private final animationDurationMax:Ljava/util/concurrent/atomic/AtomicLong;

.field private final animationDurationSum:Ljava/util/concurrent/atomic/AtomicLong;

.field private final endAv:Ljava/util/concurrent/atomic/AtomicLong;

.field private final endMax:Ljava/util/concurrent/atomic/AtomicLong;

.field private final endSum:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile isEnabled:Z

.field private final maxAndAv:[Ljava/util/concurrent/atomic/AtomicLong;

.field private final maxAndAvAccessors:[Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

.field private final paintingDurationAv:Ljava/util/concurrent/atomic/AtomicLong;

.field private final paintingDurationMax:Ljava/util/concurrent/atomic/AtomicLong;

.field private final paintingDurationSum:Ljava/util/concurrent/atomic/AtomicLong;

.field private final pulseCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private pulseData:Lcom/sun/scenario/animation/AnimationPulse$PulseData;

.field private final pulseDataQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/sun/scenario/animation/AnimationPulse$PulseData;",
            ">;"
        }
    .end annotation
.end field

.field private final pulseDurationAv:Ljava/util/concurrent/atomic/AtomicLong;

.field private final pulseDurationMax:Ljava/util/concurrent/atomic/AtomicLong;

.field private final pulseDurationSum:Ljava/util/concurrent/atomic/AtomicLong;

.field private skipPulses:I

.field private final skippedPulses:Ljava/util/concurrent/atomic/AtomicLong;

.field private final startAv:Ljava/util/concurrent/atomic/AtomicLong;

.field private final startMax:Ljava/util/concurrent/atomic/AtomicLong;

.field private final startSum:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 151
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->pulseDataQueue:Ljava/util/Queue;

    .line 154
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->pulseData:Lcom/sun/scenario/animation/AnimationPulse$PulseData;

    .line 158
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->isEnabled:Z

    .line 212
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->pulseCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 214
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->startMax:Ljava/util/concurrent/atomic/AtomicLong;

    .line 215
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->startSum:Ljava/util/concurrent/atomic/AtomicLong;

    .line 216
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->startAv:Ljava/util/concurrent/atomic/AtomicLong;

    .line 218
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->endMax:Ljava/util/concurrent/atomic/AtomicLong;

    .line 219
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->endSum:Ljava/util/concurrent/atomic/AtomicLong;

    .line 220
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->endAv:Ljava/util/concurrent/atomic/AtomicLong;

    .line 222
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->animationDurationMax:Ljava/util/concurrent/atomic/AtomicLong;

    .line 223
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->animationDurationSum:Ljava/util/concurrent/atomic/AtomicLong;

    .line 224
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->animationDurationAv:Ljava/util/concurrent/atomic/AtomicLong;

    .line 226
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->paintingDurationMax:Ljava/util/concurrent/atomic/AtomicLong;

    .line 227
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->paintingDurationSum:Ljava/util/concurrent/atomic/AtomicLong;

    .line 228
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->paintingDurationAv:Ljava/util/concurrent/atomic/AtomicLong;

    .line 230
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->pulseDurationMax:Ljava/util/concurrent/atomic/AtomicLong;

    .line 231
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->pulseDurationSum:Ljava/util/concurrent/atomic/AtomicLong;

    .line 232
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->pulseDurationAv:Ljava/util/concurrent/atomic/AtomicLong;

    .line 234
    move-object v1, v0

    const/16 v2, 0xf

    new-array v2, v2, [Ljava/util/concurrent/atomic/AtomicLong;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/AnimationPulse;->startMax:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/AnimationPulse;->startSum:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/AnimationPulse;->startAv:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/AnimationPulse;->endMax:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/AnimationPulse;->endSum:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/AnimationPulse;->endAv:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/AnimationPulse;->animationDurationMax:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/AnimationPulse;->animationDurationSum:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x8

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/AnimationPulse;->animationDurationAv:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x9

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/AnimationPulse;->paintingDurationMax:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xa

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/AnimationPulse;->paintingDurationSum:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xb

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/AnimationPulse;->paintingDurationAv:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xc

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/AnimationPulse;->pulseDurationMax:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xd

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/AnimationPulse;->pulseDurationSum:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xe

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/AnimationPulse;->pulseDurationAv:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v5, v3, v4

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->maxAndAv:[Ljava/util/concurrent/atomic/AtomicLong;

    .line 241
    move-object v1, v0

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    sget-object v5, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->PulseStartAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    sget-object v5, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->PulseEndAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    sget-object v5, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->AnimationDurationAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    sget-object v5, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->PaintingDurationAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    sget-object v5, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->PulseDurationAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    aput-object v5, v3, v4

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->maxAndAvAccessors:[Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    .line 260
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->skippedPulses:Ljava/util/concurrent/atomic/AtomicLong;

    .line 262
    move-object v1, v0

    const/16 v2, 0x64

    iput v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->skipPulses:I

    return-void
.end method

.method private getAv(Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;JLjava/util/concurrent/TimeUnit;)J
    .locals 18

    .prologue
    .line 287
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object/from16 v2, p1

    .local v2, "accessor":Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;
    move-wide/from16 v3, p2

    .local v3, "timeOut":J
    move-object/from16 v5, p4

    .local v5, "unit":Ljava/util/concurrent/TimeUnit;
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/scenario/animation/AnimationPulse;->getEnabled()Z

    move-result v12

    if-nez v12, :cond_0

    .line 288
    const-wide/16 v12, 0x0

    move-wide v1, v12

    .line 298
    .end local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    :goto_0
    return-wide v1

    .line 290
    .restart local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    :cond_0
    const-wide/16 v12, 0x0

    move-wide v6, v12

    .line 291
    .local v6, "time":J
    const-wide/16 v12, 0x0

    move-wide v8, v12

    .line 292
    .local v8, "items":J
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/scenario/animation/AnimationPulse;->pulseDataQueue:Ljava/util/Queue;

    invoke-interface {v12}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v10, v12

    :goto_1
    move-object v12, v10

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v12, v10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/scenario/animation/AnimationPulse$PulseData;

    move-object v11, v12

    .line 293
    .local v11, "currentPulseData":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v12, v11

    move-object v13, v5

    invoke-virtual {v12, v13}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->getPulseStartFromNow(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v12

    move-wide v14, v3

    cmp-long v12, v12, v14

    if-gtz v12, :cond_1

    .line 294
    move-wide v12, v6

    move-object v14, v2

    move-object v15, v11

    move-object/from16 v16, v5

    invoke-interface/range {v14 .. v16}, Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;->get(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v14

    add-long/2addr v12, v14

    move-wide v6, v12

    .line 295
    move-wide v12, v8

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    move-wide v8, v12

    .line 297
    :cond_1
    goto :goto_1

    .line 298
    .end local v11    # "currentPulseData":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    :cond_2
    move-wide v12, v8

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_3

    const-wide/16 v12, 0x0

    :goto_2
    move-wide v1, v12

    goto :goto_0

    :cond_3
    move-wide v12, v6

    move-wide v14, v8

    div-long/2addr v12, v14

    goto :goto_2
.end method

.method public static getDefaultBean()Lcom/sun/scenario/animation/AnimationPulse;
    .locals 1

    .prologue
    .line 39
    # getter for: Lcom/sun/scenario/animation/AnimationPulse$AnimationPulseHolder;->holder:Lcom/sun/scenario/animation/AnimationPulse;
    invoke-static {}, Lcom/sun/scenario/animation/AnimationPulse$AnimationPulseHolder;->access$000()Lcom/sun/scenario/animation/AnimationPulse;

    move-result-object v0

    return-object v0
.end method

.method private getMax(Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;JLjava/util/concurrent/TimeUnit;)J
    .locals 14

    .prologue
    .line 302
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v2, p1

    .local v2, "accessor":Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;
    move-wide/from16 v3, p2

    .local v3, "timeOut":J
    move-object/from16 v5, p4

    .local v5, "unit":Ljava/util/concurrent/TimeUnit;
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/scenario/animation/AnimationPulse;->getEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    .line 303
    const-wide/16 v10, 0x0

    move-wide v1, v10

    .line 311
    .end local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    :goto_0
    return-wide v1

    .line 305
    .restart local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    :cond_0
    const-wide/16 v10, 0x0

    move-wide v6, v10

    .line 306
    .local v6, "max":J
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/scenario/animation/AnimationPulse;->pulseDataQueue:Ljava/util/Queue;

    invoke-interface {v10}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v8, v10

    :goto_1
    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/scenario/animation/AnimationPulse$PulseData;

    move-object v9, v10

    .line 307
    .local v9, "currentPulseData":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v10, v9

    move-object v11, v5

    invoke-virtual {v10, v11}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->getPulseStartFromNow(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    move-wide v12, v3

    cmp-long v10, v10, v12

    if-gtz v10, :cond_1

    .line 308
    move-object v10, v2

    move-object v11, v9

    move-object v12, v5

    invoke-interface {v10, v11, v12}, Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;->get(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    move-wide v12, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    move-wide v6, v10

    .line 310
    :cond_1
    goto :goto_1

    .line 311
    .end local v9    # "currentPulseData":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    :cond_2
    move-wide v10, v6

    move-wide v1, v10

    goto :goto_0
.end method

.method private purgeOldPulseData()V
    .locals 6

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/animation/AnimationPulse;->pulseDataQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    .line 206
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/scenario/animation/AnimationPulse$PulseData;>;"
    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 207
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/scenario/animation/AnimationPulse$PulseData;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->getPulseStartFromNow(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 208
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 210
    :cond_0
    return-void
.end method

.method private updateMaxAndAv()V
    .locals 12

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/animation/AnimationPulse;->pulseCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v7

    move-wide v1, v7

    .line 251
    .local v1, "pulseCounterLong":J
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    :goto_0
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/animation/AnimationPulse;->maxAndAvAccessors:[Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    array-length v8, v8

    if-ge v7, v8, :cond_0

    .line 252
    move v7, v3

    const/4 v8, 0x3

    mul-int/lit8 v7, v7, 0x3

    move v4, v7

    .line 253
    .local v4, "j":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/animation/AnimationPulse;->maxAndAvAccessors:[Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    move v8, v3

    aget-object v7, v7, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/animation/AnimationPulse;->pulseData:Lcom/sun/scenario/animation/AnimationPulse$PulseData;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v8, v9}, Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;->get(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    move-wide v5, v7

    .line 254
    .local v5, "tmpLong":J
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/animation/AnimationPulse;->maxAndAv:[Ljava/util/concurrent/atomic/AtomicLong;

    move v8, v4

    aget-object v7, v7, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/animation/AnimationPulse;->maxAndAv:[Ljava/util/concurrent/atomic/AtomicLong;

    move v9, v4

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    move-wide v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 255
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/animation/AnimationPulse;->maxAndAv:[Ljava/util/concurrent/atomic/AtomicLong;

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    move-wide v8, v5

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v7

    .line 256
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/animation/AnimationPulse;->maxAndAv:[Ljava/util/concurrent/atomic/AtomicLong;

    move v8, v4

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    aget-object v7, v7, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/animation/AnimationPulse;->maxAndAv:[Ljava/util/concurrent/atomic/AtomicLong;

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    move-wide v10, v1

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 251
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    .end local v4    # "j":I
    .end local v5    # "tmpLong":J
    :cond_0
    return-void
.end method


# virtual methods
.method public getAnimationDurationAv()J
    .locals 3

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/animation/AnimationPulse;->animationDurationAv:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v0
.end method

.method public getAnimationDurationAvIn100Millis()J
    .locals 7

    .prologue
    .line 377
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v2, v1

    sget-object v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->AnimationDurationAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    const-wide/16 v4, 0x64

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/scenario/animation/AnimationPulse;->getAv(Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v1
.end method

.method public getAnimationDurationMax()J
    .locals 3

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/animation/AnimationPulse;->animationDurationMax:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v0
.end method

.method public getAnimationMaxIn1Sec()J
    .locals 7

    .prologue
    .line 367
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v2, v1

    sget-object v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->AnimationDurationAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/scenario/animation/AnimationPulse;->getMax(Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v1
.end method

.method public getEnabled()Z
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/scenario/animation/AnimationPulse;->isEnabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return v0
.end method

.method public getEndAv()J
    .locals 3

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/animation/AnimationPulse;->endAv:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v0
.end method

.method public getEndAvIn100Millis()J
    .locals 7

    .prologue
    .line 351
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v2, v1

    sget-object v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->PulseEndAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    const-wide/16 v4, 0x64

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/scenario/animation/AnimationPulse;->getAv(Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v1
.end method

.method public getEndMax()J
    .locals 3

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/animation/AnimationPulse;->endMax:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v0
.end method

.method public getEndMaxIn1Sec()J
    .locals 7

    .prologue
    .line 341
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v2, v1

    sget-object v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->PulseEndAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/scenario/animation/AnimationPulse;->getMax(Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v1
.end method

.method public getPULSE_DURATION()J
    .locals 3

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/tk/Toolkit;->getMasterTimer()Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/sun/scenario/animation/AbstractMasterTimer;->getPulseDuration(I)I

    move-result v1

    int-to-long v1, v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v0
.end method

.method public getPaintingDurationAv()J
    .locals 3

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/animation/AnimationPulse;->paintingDurationAv:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v0
.end method

.method public getPaintingDurationAvIn100Millis()J
    .locals 7

    .prologue
    .line 397
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v2, v1

    sget-object v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->PaintingDurationAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    const-wide/16 v4, 0x64

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/scenario/animation/AnimationPulse;->getAv(Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v1
.end method

.method public getPaintingDurationMax()J
    .locals 3

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/animation/AnimationPulse;->paintingDurationMax:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v0
.end method

.method public getPaintingDurationMaxIn1Sec()J
    .locals 7

    .prologue
    .line 387
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v2, v1

    sget-object v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->PaintingDurationAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/scenario/animation/AnimationPulse;->getMax(Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v1
.end method

.method public getPaintingFinalizationDurationMaxIn1Sec()J
    .locals 7

    .prologue
    .line 432
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v2, v1

    sget-object v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->PaintingFinalizationDuration:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/scenario/animation/AnimationPulse;->getMax(Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v1
.end method

.method public getPaintingPreparationDurationMaxIn1Sec()J
    .locals 7

    .prologue
    .line 427
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v2, v1

    sget-object v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->PaintingPreparationDuration:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/scenario/animation/AnimationPulse;->getMax(Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v1
.end method

.method public getPulseDurationAv()J
    .locals 3

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/animation/AnimationPulse;->pulseDurationAv:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v0
.end method

.method public getPulseDurationAvIn100Millis()J
    .locals 7

    .prologue
    .line 422
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v2, v1

    sget-object v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->PulseDurationAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    const-wide/16 v4, 0x64

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/scenario/animation/AnimationPulse;->getAv(Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v1
.end method

.method public getPulseDurationMax()J
    .locals 3

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/animation/AnimationPulse;->pulseDurationMax:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v0
.end method

.method public getPulseDurationMaxIn1Sec()J
    .locals 7

    .prologue
    .line 412
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v2, v1

    sget-object v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->PulseDurationAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/scenario/animation/AnimationPulse;->getMax(Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v1
.end method

.method public getScenePaintingDurationMaxIn1Sec()J
    .locals 7

    .prologue
    .line 402
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v2, v1

    sget-object v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->ScenePaintingDurationAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/scenario/animation/AnimationPulse;->getMax(Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v1
.end method

.method public getSkippedPulses()J
    .locals 3

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/animation/AnimationPulse;->skippedPulses:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v0
.end method

.method public getSkippedPulsesIn1Sec()J
    .locals 10

    .prologue
    .line 186
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse;
    const-wide/16 v6, 0x0

    move-wide v2, v6

    .line 187
    .local v2, "rv":J
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/scenario/animation/AnimationPulse;->pulseDataQueue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/scenario/animation/AnimationPulse$PulseData;

    move-object v5, v6

    .line 188
    .local v5, "pulseData":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v6, v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->getPulseStartFromNow(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 189
    move-wide v6, v2

    move-object v8, v5

    invoke-virtual {v8}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->getSkippedPulses()J

    move-result-wide v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 191
    :cond_0
    goto :goto_0

    .line 192
    .end local v5    # "pulseData":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    :cond_1
    move-wide v6, v2

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v1
.end method

.method public getStartAv()J
    .locals 3

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/animation/AnimationPulse;->startAv:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v0
.end method

.method public getStartAvIn100Millis()J
    .locals 7

    .prologue
    .line 331
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v2, v1

    sget-object v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->PulseStartAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    const-wide/16 v4, 0x64

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/scenario/animation/AnimationPulse;->getAv(Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v1
.end method

.method public getStartMax()J
    .locals 3

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/animation/AnimationPulse;->startMax:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v0
.end method

.method public getStartMaxIn1Sec()J
    .locals 7

    .prologue
    .line 326
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v2, v1

    sget-object v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->PulseStartAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/scenario/animation/AnimationPulse;->getMax(Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse;
    return-wide v1
.end method

.method public recordAnimationEnd()V
    .locals 2

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/animation/AnimationPulse;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/animation/AnimationPulse;->pulseData:Lcom/sun/scenario/animation/AnimationPulse$PulseData;

    if-eqz v1, :cond_0

    .line 356
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/animation/AnimationPulse;->pulseData:Lcom/sun/scenario/animation/AnimationPulse$PulseData;

    invoke-virtual {v1}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->recordAnimationEnd()V

    .line 358
    :cond_0
    return-void
.end method

.method public recordEnd()V
    .locals 5

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/animation/AnimationPulse;->getEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    .line 280
    :goto_0
    return-void

    .line 267
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/animation/AnimationPulse;->skipPulses:I

    if-lez v1, :cond_1

    .line 270
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/scenario/animation/AnimationPulse;->skipPulses:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->skipPulses:I

    .line 271
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->pulseData:Lcom/sun/scenario/animation/AnimationPulse$PulseData;

    .line 272
    goto :goto_0

    .line 274
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/animation/AnimationPulse;->pulseData:Lcom/sun/scenario/animation/AnimationPulse$PulseData;

    invoke-virtual {v1}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->recordEnd()V

    .line 275
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/animation/AnimationPulse;->purgeOldPulseData()V

    .line 276
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/animation/AnimationPulse;->updateMaxAndAv()V

    .line 277
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/animation/AnimationPulse;->skippedPulses:Ljava/util/concurrent/atomic/AtomicLong;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/animation/AnimationPulse;->pulseData:Lcom/sun/scenario/animation/AnimationPulse$PulseData;

    invoke-virtual {v2}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->getSkippedPulses()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v1

    .line 278
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/animation/AnimationPulse;->pulseDataQueue:Ljava/util/Queue;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/animation/AnimationPulse;->pulseData:Lcom/sun/scenario/animation/AnimationPulse$PulseData;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 279
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/scenario/animation/AnimationPulse;->pulseData:Lcom/sun/scenario/animation/AnimationPulse$PulseData;

    .line 280
    goto :goto_0
.end method

.method public recordStart(J)V
    .locals 11

    .prologue
    .line 197
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move-wide v2, p1

    .local v2, "shiftMillis":J
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/scenario/animation/AnimationPulse;->getEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 198
    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    move-object v4, v1

    new-instance v5, Lcom/sun/scenario/animation/AnimationPulse$PulseData;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;-><init>(J)V

    iput-object v5, v4, Lcom/sun/scenario/animation/AnimationPulse;->pulseData:Lcom/sun/scenario/animation/AnimationPulse$PulseData;

    .line 201
    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse;
    move v1, p1

    .local v1, "enabled":Z
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/scenario/animation/AnimationPulse;->isEnabled:Z

    if-ne v2, v3, :cond_0

    .line 167
    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/scenario/animation/AnimationPulse;->isEnabled:Z

    .line 171
    goto :goto_0
.end method

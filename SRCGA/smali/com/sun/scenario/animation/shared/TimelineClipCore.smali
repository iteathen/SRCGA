.class public Lcom/sun/scenario/animation/shared/TimelineClipCore;
.super Ljava/lang/Object;
.source "TimelineClipCore.java"


# static fields
.field private static final KEY_FRAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljavafx/animation/KeyFrame;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNDEFINED_KEYFRAME:I = -0x1


# instance fields
.field private aborted:Z

.field private canSkipFrames:Z

.field private clipInterpolator:Lcom/sun/scenario/animation/shared/ClipInterpolator;

.field private curTicks:J

.field private keyFrameTicks:[J

.field private keyFrames:[Ljavafx/animation/KeyFrame;

.field private lastKF:I

.field timeline:Ljavafx/animation/Timeline;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/sun/scenario/animation/shared/TimelineClipCore$$Lambda$1;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/sun/scenario/animation/shared/TimelineClipCore;->KEY_FRAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljavafx/animation/Timeline;)V
    .locals 6

    .prologue
    .line 79
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/TimelineClipCore;
    move-object v2, p1

    .local v2, "timeline":Ljavafx/animation/Timeline;
    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 71
    move-object v3, v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljavafx/animation/KeyFrame;

    iput-object v4, v3, Lcom/sun/scenario/animation/shared/TimelineClipCore;->keyFrames:[Ljavafx/animation/KeyFrame;

    .line 72
    move-object v3, v1

    const/4 v4, 0x0

    new-array v4, v4, [J

    iput-object v4, v3, Lcom/sun/scenario/animation/shared/TimelineClipCore;->keyFrameTicks:[J

    .line 75
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/scenario/animation/shared/TimelineClipCore;->canSkipFrames:Z

    .line 124
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/scenario/animation/shared/TimelineClipCore;->aborted:Z

    .line 127
    move-object v3, v1

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/scenario/animation/shared/TimelineClipCore;->lastKF:I

    .line 130
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/scenario/animation/shared/TimelineClipCore;->curTicks:J

    .line 80
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/scenario/animation/shared/TimelineClipCore;->timeline:Ljavafx/animation/Timeline;

    .line 81
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/scenario/animation/shared/TimelineClipCore;->keyFrames:[Ljavafx/animation/KeyFrame;

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/animation/shared/TimelineClipCore;->keyFrameTicks:[J

    invoke-static {v4, v5}, Lcom/sun/scenario/animation/shared/ClipInterpolator;->create([Ljavafx/animation/KeyFrame;[J)Lcom/sun/scenario/animation/shared/ClipInterpolator;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/scenario/animation/shared/TimelineClipCore;->clipInterpolator:Lcom/sun/scenario/animation/shared/ClipInterpolator;

    .line 82
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/animation/KeyFrame;Ljavafx/animation/KeyFrame;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/scenario/animation/shared/TimelineClipCore;->lambda$static$33(Ljavafx/animation/KeyFrame;Ljavafx/animation/KeyFrame;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method private clearLastKeyFrame()V
    .locals 3

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/TimelineClipCore;
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/sun/scenario/animation/shared/TimelineClipCore;->lastKF:I

    .line 134
    return-void
.end method

.method private static synthetic lambda$static$33(Ljavafx/animation/KeyFrame;Ljavafx/animation/KeyFrame;)I
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "kf1":Ljavafx/animation/KeyFrame;
    move-object v1, p1

    .local v1, "kf2":Ljavafx/animation/KeyFrame;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/KeyFrame;->getTime()Ljavafx/util/Duration;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/animation/KeyFrame;->getTime()Ljavafx/util/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/util/Duration;->compareTo(Ljavafx/util/Duration;)I

    move-result v2

    move v0, v2

    .end local v0    # "kf1":Ljavafx/animation/KeyFrame;
    return v0
.end method

.method private setTime(J)V
    .locals 9

    .prologue
    .line 214
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/TimelineClipCore;
    move-wide v2, p1

    .local v2, "ticks":J
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Lcom/sun/scenario/animation/shared/TimelineClipCore;->curTicks:J

    .line 215
    invoke-static {}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->getDefault()Lcom/sun/scenario/animation/shared/AnimationAccessor;

    move-result-object v4

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/animation/shared/TimelineClipCore;->timeline:Ljavafx/animation/Timeline;

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/scenario/animation/shared/AnimationAccessor;->setCurrentTicks(Ljavafx/animation/Animation;J)V

    .line 216
    return-void
.end method

.method private visitKeyFrame(IJ)V
    .locals 14

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/TimelineClipCore;
    move v1, p1

    .local v1, "kfIndex":I
    move-wide/from16 v2, p2

    .local v2, "kfTicks":J
    move v7, v1

    move-object v8, v0

    iget v8, v8, Lcom/sun/scenario/animation/shared/TimelineClipCore;->lastKF:I

    if-eq v7, v8, :cond_0

    .line 229
    move-object v7, v0

    move v8, v1

    iput v8, v7, Lcom/sun/scenario/animation/shared/TimelineClipCore;->lastKF:I

    .line 231
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/animation/shared/TimelineClipCore;->keyFrames:[Ljavafx/animation/KeyFrame;

    move v8, v1

    aget-object v7, v7, v8

    move-object v4, v7

    .line 232
    .local v4, "kf":Ljavafx/animation/KeyFrame;
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/animation/KeyFrame;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v7

    move-object v5, v7

    .line 234
    .local v5, "onFinished":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 236
    move-object v7, v0

    move-wide v8, v2

    invoke-direct {v7, v8, v9}, Lcom/sun/scenario/animation/shared/TimelineClipCore;->setTime(J)V

    .line 237
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/animation/shared/TimelineClipCore;->clipInterpolator:Lcom/sun/scenario/animation/shared/ClipInterpolator;

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Lcom/sun/scenario/animation/shared/ClipInterpolator;->interpolate(J)V

    .line 239
    move-object v7, v5

    :try_start_0
    new-instance v8, Ljavafx/event/ActionEvent;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v4

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface {v7, v8}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .line 245
    .end local v4    # "kf":Ljavafx/animation/KeyFrame;
    .end local v5    # "onFinished":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    :cond_0
    :goto_0
    return-void

    .line 240
    .restart local v4    # "kf":Ljavafx/animation/KeyFrame;
    .restart local v5    # "onFinished":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 241
    .local v6, "ex":Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    move-object v9, v6

    invoke-interface {v7, v8, v9}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/TimelineClipCore;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/scenario/animation/shared/TimelineClipCore;->aborted:Z

    .line 122
    return-void
.end method

.method public jumpTo(JZ)V
    .locals 9

    .prologue
    .line 137
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/TimelineClipCore;
    move-wide v2, p1

    .local v2, "ticks":J
    move v4, p3

    .local v4, "forceJump":Z
    move-object v5, v1

    const/4 v6, -0x1

    iput v6, v5, Lcom/sun/scenario/animation/shared/TimelineClipCore;->lastKF:I

    .line 138
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Lcom/sun/scenario/animation/shared/TimelineClipCore;->curTicks:J

    .line 139
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/animation/shared/TimelineClipCore;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v5}, Ljavafx/animation/Timeline;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v5

    sget-object v6, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v5, v6, :cond_0

    move v5, v4

    if-eqz v5, :cond_2

    .line 140
    :cond_0
    move v5, v4

    if-eqz v5, :cond_1

    .line 141
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/animation/shared/TimelineClipCore;->clipInterpolator:Lcom/sun/scenario/animation/shared/ClipInterpolator;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/scenario/animation/shared/ClipInterpolator;->validate(Z)V

    .line 143
    :cond_1
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/animation/shared/TimelineClipCore;->clipInterpolator:Lcom/sun/scenario/animation/shared/ClipInterpolator;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/animation/shared/ClipInterpolator;->interpolate(J)V

    .line 145
    :cond_2
    return-void
.end method

.method public notifyCurrentRateChanged()V
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/TimelineClipCore;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/animation/shared/TimelineClipCore;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v1}, Ljavafx/animation/Timeline;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v1

    sget-object v2, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-eq v1, v2, :cond_0

    .line 111
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/animation/shared/TimelineClipCore;->clearLastKeyFrame()V

    .line 113
    :cond_0
    return-void
.end method

.method public playTo(J)V
    .locals 15

    .prologue
    .line 159
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/TimelineClipCore;
    move-wide/from16 v2, p1

    .local v2, "ticks":J
    move-object v10, v1

    iget-boolean v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->canSkipFrames:Z

    if-eqz v10, :cond_0

    .line 160
    move-object v10, v1

    invoke-direct {v10}, Lcom/sun/scenario/animation/shared/TimelineClipCore;->clearLastKeyFrame()V

    .line 161
    move-object v10, v1

    move-wide v11, v2

    invoke-direct {v10, v11, v12}, Lcom/sun/scenario/animation/shared/TimelineClipCore;->setTime(J)V

    .line 162
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->clipInterpolator:Lcom/sun/scenario/animation/shared/ClipInterpolator;

    move-wide v11, v2

    invoke-virtual {v10, v11, v12}, Lcom/sun/scenario/animation/shared/ClipInterpolator;->interpolate(J)V

    .line 163
    .line 211
    :goto_0
    return-void

    .line 165
    :cond_0
    move-object v10, v1

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->aborted:Z

    .line 166
    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->curTicks:J

    move-wide v12, v2

    cmp-long v10, v10, v12

    if-gtz v10, :cond_4

    const/4 v10, 0x1

    :goto_1
    move v4, v10

    .line 168
    .local v4, "forward":Z
    move v10, v4

    if-eqz v10, :cond_9

    .line 169
    move-object v10, v1

    iget v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->lastKF:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_5

    const/4 v10, 0x0

    :goto_2
    move v5, v10

    .line 172
    .local v5, "fromKF":I
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->keyFrames:[Ljavafx/animation/KeyFrame;

    array-length v10, v10

    move v6, v10

    .line 173
    .local v6, "toKF":I
    move v10, v5

    move v7, v10

    .local v7, "fi":I
    :goto_3
    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_1

    .line 174
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->keyFrameTicks:[J

    move v11, v7

    aget-wide v10, v10, v11

    move-wide v8, v10

    .line 175
    .local v8, "kfTicks":J
    move-wide v10, v8

    move-wide v12, v2

    cmp-long v10, v10, v12

    if-lez v10, :cond_7

    .line 176
    move-object v10, v1

    move v11, v7

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->lastKF:I

    .line 177
    .line 186
    .line 204
    .end local v6    # "toKF":I
    .end local v7    # "fi":I
    .end local v8    # "kfTicks":J
    :cond_1
    :goto_4
    move-object v10, v1

    iget-boolean v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->aborted:Z

    if-nez v10, :cond_3

    move-object v10, v1

    iget v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->lastKF:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->keyFrameTicks:[J

    move-object v11, v1

    iget v11, v11, Lcom/sun/scenario/animation/shared/TimelineClipCore;->lastKF:I

    aget-wide v10, v10, v11

    move-wide v12, v2

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->keyFrames:[Ljavafx/animation/KeyFrame;

    move-object v11, v1

    iget v11, v11, Lcom/sun/scenario/animation/shared/TimelineClipCore;->lastKF:I

    aget-object v10, v10, v11

    .line 207
    invoke-virtual {v10}, Ljavafx/animation/KeyFrame;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v10

    if-nez v10, :cond_3

    .line 208
    :cond_2
    move-object v10, v1

    move-wide v11, v2

    invoke-direct {v10, v11, v12}, Lcom/sun/scenario/animation/shared/TimelineClipCore;->setTime(J)V

    .line 209
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->clipInterpolator:Lcom/sun/scenario/animation/shared/ClipInterpolator;

    move-wide v11, v2

    invoke-virtual {v10, v11, v12}, Lcom/sun/scenario/animation/shared/ClipInterpolator;->interpolate(J)V

    .line 211
    :cond_3
    goto :goto_0

    .line 166
    .end local v4    # "forward":Z
    .end local v5    # "fromKF":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 169
    .restart local v4    # "forward":Z
    :cond_5
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->keyFrameTicks:[J

    move-object v11, v1

    iget v11, v11, Lcom/sun/scenario/animation/shared/TimelineClipCore;->lastKF:I

    aget-wide v10, v10, v11

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/scenario/animation/shared/TimelineClipCore;->curTicks:J

    cmp-long v10, v10, v12

    if-gtz v10, :cond_6

    move-object v10, v1

    iget v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->lastKF:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    move-object v10, v1

    iget v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->lastKF:I

    goto :goto_2

    .line 179
    .restart local v5    # "fromKF":I
    .restart local v6    # "toKF":I
    .restart local v7    # "fi":I
    .restart local v8    # "kfTicks":J
    :cond_7
    move-wide v10, v8

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/scenario/animation/shared/TimelineClipCore;->curTicks:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_8

    .line 180
    move-object v10, v1

    move v11, v7

    move-wide v12, v8

    invoke-direct {v10, v11, v12, v13}, Lcom/sun/scenario/animation/shared/TimelineClipCore;->visitKeyFrame(IJ)V

    .line 181
    move-object v10, v1

    iget-boolean v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->aborted:Z

    if-eqz v10, :cond_8

    .line 182
    goto :goto_4

    .line 173
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 187
    .end local v5    # "fromKF":I
    .end local v6    # "toKF":I
    .end local v7    # "fi":I
    .end local v8    # "kfTicks":J
    :cond_9
    move-object v10, v1

    iget v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->lastKF:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_a

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->keyFrames:[Ljavafx/animation/KeyFrame;

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    :goto_5
    move v5, v10

    .line 190
    .restart local v5    # "fromKF":I
    move v10, v5

    move v6, v10

    .local v6, "fi":I
    :goto_6
    move v10, v6

    if-ltz v10, :cond_1

    .line 191
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->keyFrameTicks:[J

    move v11, v6

    aget-wide v10, v10, v11

    move-wide v7, v10

    .line 192
    .local v7, "kfTicks":J
    move-wide v10, v7

    move-wide v12, v2

    cmp-long v10, v10, v12

    if-gez v10, :cond_c

    .line 193
    move-object v10, v1

    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->lastKF:I

    .line 194
    goto/16 :goto_4

    .line 187
    .end local v5    # "fromKF":I
    .end local v6    # "fi":I
    .end local v7    # "kfTicks":J
    :cond_a
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->keyFrameTicks:[J

    move-object v11, v1

    iget v11, v11, Lcom/sun/scenario/animation/shared/TimelineClipCore;->lastKF:I

    aget-wide v10, v10, v11

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/scenario/animation/shared/TimelineClipCore;->curTicks:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_b

    move-object v10, v1

    iget v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->lastKF:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    :cond_b
    move-object v10, v1

    iget v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->lastKF:I

    goto :goto_5

    .line 196
    .restart local v5    # "fromKF":I
    .restart local v6    # "fi":I
    .restart local v7    # "kfTicks":J
    :cond_c
    move-wide v10, v7

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/scenario/animation/shared/TimelineClipCore;->curTicks:J

    cmp-long v10, v10, v12

    if-gtz v10, :cond_d

    .line 197
    move-object v10, v1

    move v11, v6

    move-wide v12, v7

    invoke-direct {v10, v11, v12, v13}, Lcom/sun/scenario/animation/shared/TimelineClipCore;->visitKeyFrame(IJ)V

    .line 198
    move-object v10, v1

    iget-boolean v10, v10, Lcom/sun/scenario/animation/shared/TimelineClipCore;->aborted:Z

    if-eqz v10, :cond_d

    .line 199
    goto/16 :goto_4

    .line 190
    :cond_d
    add-int/lit8 v6, v6, -0x1

    goto :goto_6
.end method

.method public setKeyFrames(Ljava/util/Collection;)Ljavafx/util/Duration;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljavafx/animation/KeyFrame;",
            ">;)",
            "Ljavafx/util/Duration;"
        }
    .end annotation

    .prologue
    .line 88
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/TimelineClipCore;
    move-object v2, p1

    .local v2, "keyFrames":Ljava/util/Collection;, "Ljava/util/Collection<Ljavafx/animation/KeyFrame;>;"
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    move v3, v6

    .line 89
    .local v3, "n":I
    move v6, v3

    new-array v6, v6, [Ljavafx/animation/KeyFrame;

    move-object v4, v6

    .line 90
    .local v4, "sortedKeyFrames":[Ljavafx/animation/KeyFrame;
    move-object v6, v2

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .line 91
    move-object v6, v4

    sget-object v7, Lcom/sun/scenario/animation/shared/TimelineClipCore;->KEY_FRAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 93
    move-object v6, v1

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/sun/scenario/animation/shared/TimelineClipCore;->canSkipFrames:Z

    .line 94
    move-object v6, v1

    move-object v7, v4

    iput-object v7, v6, Lcom/sun/scenario/animation/shared/TimelineClipCore;->keyFrames:[Ljavafx/animation/KeyFrame;

    .line 95
    move-object v6, v1

    move v7, v3

    new-array v7, v7, [J

    iput-object v7, v6, Lcom/sun/scenario/animation/shared/TimelineClipCore;->keyFrameTicks:[J

    .line 96
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 97
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/scenario/animation/shared/TimelineClipCore;->keyFrameTicks:[J

    move v7, v5

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/scenario/animation/shared/TimelineClipCore;->keyFrames:[Ljavafx/animation/KeyFrame;

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljavafx/animation/KeyFrame;->getTime()Ljavafx/util/Duration;

    move-result-object v8

    invoke-static {v8}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 98
    move-object v6, v1

    iget-boolean v6, v6, Lcom/sun/scenario/animation/shared/TimelineClipCore;->canSkipFrames:Z

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/scenario/animation/shared/TimelineClipCore;->keyFrames:[Ljavafx/animation/KeyFrame;

    move v7, v5

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljavafx/animation/KeyFrame;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 99
    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/scenario/animation/shared/TimelineClipCore;->canSkipFrames:Z

    .line 96
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 102
    :cond_1
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/scenario/animation/shared/TimelineClipCore;->clipInterpolator:Lcom/sun/scenario/animation/shared/ClipInterpolator;

    move-object v8, v4

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/scenario/animation/shared/TimelineClipCore;->keyFrameTicks:[J

    invoke-virtual {v7, v8, v9}, Lcom/sun/scenario/animation/shared/ClipInterpolator;->setKeyFrames([Ljavafx/animation/KeyFrame;[J)Lcom/sun/scenario/animation/shared/ClipInterpolator;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/scenario/animation/shared/TimelineClipCore;->clipInterpolator:Lcom/sun/scenario/animation/shared/ClipInterpolator;

    .line 103
    move v6, v3

    if-nez v6, :cond_2

    sget-object v6, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    .line 104
    :goto_1
    move-object v1, v6

    .end local v1    # "this":Lcom/sun/scenario/animation/shared/TimelineClipCore;
    return-object v1

    .line 103
    .restart local v1    # "this":Lcom/sun/scenario/animation/shared/TimelineClipCore;
    :cond_2
    move-object v6, v4

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    .line 104
    invoke-virtual {v6}, Ljavafx/animation/KeyFrame;->getTime()Ljavafx/util/Duration;

    move-result-object v6

    goto :goto_1
.end method

.method public start(Z)V
    .locals 6

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/TimelineClipCore;
    move v1, p1

    .local v1, "forceSync":Z
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/scenario/animation/shared/TimelineClipCore;->clearLastKeyFrame()V

    .line 149
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/animation/shared/TimelineClipCore;->clipInterpolator:Lcom/sun/scenario/animation/shared/ClipInterpolator;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/animation/shared/ClipInterpolator;->validate(Z)V

    .line 150
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/scenario/animation/shared/TimelineClipCore;->curTicks:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 151
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/animation/shared/TimelineClipCore;->clipInterpolator:Lcom/sun/scenario/animation/shared/ClipInterpolator;

    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/scenario/animation/shared/TimelineClipCore;->curTicks:J

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/animation/shared/ClipInterpolator;->interpolate(J)V

    .line 153
    :cond_0
    return-void
.end method

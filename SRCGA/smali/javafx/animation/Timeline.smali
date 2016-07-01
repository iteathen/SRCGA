.class public final Ljavafx/animation/Timeline;
.super Ljavafx/animation/Animation;
.source "Timeline.java"


# instance fields
.field final clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

.field private final keyFrames:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/animation/KeyFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Timeline;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/animation/Animation;-><init>()V

    .line 95
    move-object v1, v0

    new-instance v2, Ljavafx/animation/Timeline$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/animation/Timeline$1;-><init>(Ljavafx/animation/Timeline;)V

    iput-object v2, v1, Ljavafx/animation/Timeline;->keyFrames:Ljavafx/collections/ObservableList;

    .line 165
    move-object v1, v0

    new-instance v2, Lcom/sun/scenario/animation/shared/TimelineClipCore;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/scenario/animation/shared/TimelineClipCore;-><init>(Ljavafx/animation/Timeline;)V

    iput-object v2, v1, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    .line 166
    return-void
.end method

.method public constructor <init>(D)V
    .locals 9

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Timeline;
    move-wide v1, p1

    .local v1, "targetFramerate":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/animation/Animation;-><init>(D)V

    .line 95
    move-object v3, v0

    new-instance v4, Ljavafx/animation/Timeline$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/animation/Timeline$1;-><init>(Ljavafx/animation/Timeline;)V

    iput-object v4, v3, Ljavafx/animation/Timeline;->keyFrames:Ljavafx/collections/ObservableList;

    .line 157
    move-object v3, v0

    new-instance v4, Lcom/sun/scenario/animation/shared/TimelineClipCore;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/scenario/animation/shared/TimelineClipCore;-><init>(Ljavafx/animation/Timeline;)V

    iput-object v4, v3, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    .line 158
    return-void
.end method

.method public varargs constructor <init>(D[Ljavafx/animation/KeyFrame;)V
    .locals 11

    .prologue
    .line 130
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Timeline;
    move-wide v2, p1

    .local v2, "targetFramerate":D
    move-object v4, p3

    .local v4, "keyFrames":[Ljavafx/animation/KeyFrame;
    move-object v5, v1

    move-wide v6, v2

    invoke-direct {v5, v6, v7}, Ljavafx/animation/Animation;-><init>(D)V

    .line 95
    move-object v5, v1

    new-instance v6, Ljavafx/animation/Timeline$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Ljavafx/animation/Timeline$1;-><init>(Ljavafx/animation/Timeline;)V

    iput-object v6, v5, Ljavafx/animation/Timeline;->keyFrames:Ljavafx/collections/ObservableList;

    .line 131
    move-object v5, v1

    new-instance v6, Lcom/sun/scenario/animation/shared/TimelineClipCore;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/scenario/animation/shared/TimelineClipCore;-><init>(Ljavafx/animation/Timeline;)V

    iput-object v6, v5, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    .line 132
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 133
    return-void
.end method

.method constructor <init>(Lcom/sun/scenario/animation/AbstractMasterTimer;)V
    .locals 7

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Timeline;
    move-object v1, p1

    .local v1, "timer":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/animation/Animation;-><init>(Lcom/sun/scenario/animation/AbstractMasterTimer;)V

    .line 95
    move-object v2, v0

    new-instance v3, Ljavafx/animation/Timeline$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/animation/Timeline$1;-><init>(Ljavafx/animation/Timeline;)V

    iput-object v3, v2, Ljavafx/animation/Timeline;->keyFrames:Ljavafx/collections/ObservableList;

    .line 171
    move-object v2, v0

    new-instance v3, Lcom/sun/scenario/animation/shared/TimelineClipCore;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/scenario/animation/shared/TimelineClipCore;-><init>(Ljavafx/animation/Timeline;)V

    iput-object v3, v2, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    .line 172
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/animation/KeyFrame;)V
    .locals 7

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Timeline;
    move-object v1, p1

    .local v1, "keyFrames":[Ljavafx/animation/KeyFrame;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/animation/Animation;-><init>()V

    .line 95
    move-object v2, v0

    new-instance v3, Ljavafx/animation/Timeline$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/animation/Timeline$1;-><init>(Ljavafx/animation/Timeline;)V

    iput-object v3, v2, Ljavafx/animation/Timeline;->keyFrames:Ljavafx/collections/ObservableList;

    .line 143
    move-object v2, v0

    new-instance v3, Lcom/sun/scenario/animation/shared/TimelineClipCore;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/scenario/animation/shared/TimelineClipCore;-><init>(Ljavafx/animation/Timeline;)V

    iput-object v3, v2, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    .line 144
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 145
    return-void
.end method


# virtual methods
.method public final getKeyFrames()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/animation/KeyFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Timeline;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Timeline;->keyFrames:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Timeline;
    return-object v0
.end method

.method impl_jumpTo(JJZ)V
    .locals 11

    .prologue
    .line 181
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Timeline;
    move-wide v2, p1

    .local v2, "currentTicks":J
    move-wide v4, p3

    .local v4, "cycleTicks":J
    move/from16 v6, p5

    .local v6, "forceJump":Z
    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/animation/Timeline;->impl_sync(Z)V

    .line 182
    move-object v7, v1

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/animation/Timeline;->impl_setCurrentTicks(J)V

    .line 183
    move-object v7, v1

    iget-object v7, v7, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    move-wide v8, v2

    move v10, v6

    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/scenario/animation/shared/TimelineClipCore;->jumpTo(JZ)V

    .line 184
    return-void
.end method

.method impl_playTo(JJ)V
    .locals 9

    .prologue
    .line 176
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Timeline;
    move-wide v2, p1

    .local v2, "currentTicks":J
    move-wide v4, p3

    .local v4, "cycleTicks":J
    move-object v6, v1

    iget-object v6, v6, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Lcom/sun/scenario/animation/shared/TimelineClipCore;->playTo(J)V

    .line 177
    return-void
.end method

.method impl_setCurrentRate(D)V
    .locals 7

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Timeline;
    move-wide v1, p1

    .local v1, "currentRate":D
    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Ljavafx/animation/Animation;->impl_setCurrentRate(D)V

    .line 189
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    invoke-virtual {v3}, Lcom/sun/scenario/animation/shared/TimelineClipCore;->notifyCurrentRateChanged()V

    .line 190
    return-void
.end method

.method impl_start(Z)V
    .locals 4

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Timeline;
    move v1, p1

    .local v1, "forceSync":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/animation/Animation;->impl_start(Z)V

    .line 195
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/animation/shared/TimelineClipCore;->start(Z)V

    .line 196
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Timeline;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Timeline;->parent:Ljavafx/animation/Animation;

    if-eqz v1, :cond_0

    .line 204
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Cannot stop when embedded in another animation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/animation/Timeline;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v1

    sget-object v2, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v1, v2, :cond_1

    .line 207
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    invoke-virtual {v1}, Lcom/sun/scenario/animation/shared/TimelineClipCore;->abort()V

    .line 209
    :cond_1
    move-object v1, v0

    invoke-super {v1}, Ljavafx/animation/Animation;->stop()V

    .line 210
    return-void
.end method

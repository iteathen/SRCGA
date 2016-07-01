.class final Ljavafx/animation/AnimationAccessorImpl;
.super Lcom/sun/scenario/animation/shared/AnimationAccessor;
.source "AnimationAccessorImpl.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationAccessorImpl;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/animation/shared/AnimationAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public finished(Ljavafx/animation/Animation;)V
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationAccessorImpl;
    move-object v1, p1

    .local v1, "animation":Ljavafx/animation/Animation;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/animation/Animation;->impl_finished()V

    .line 50
    return-void
.end method

.method public jumpTo(Ljavafx/animation/Animation;JJZ)V
    .locals 14

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationAccessorImpl;
    move-object v1, p1

    .local v1, "animation":Ljavafx/animation/Animation;
    move-wide/from16 v2, p2

    .local v2, "pos":J
    move-wide/from16 v4, p4

    .local v4, "cycleTicks":J
    move/from16 v6, p6

    .local v6, "forceJump":Z
    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Ljavafx/animation/Animation;->impl_jumpTo(JJZ)V

    .line 45
    return-void
.end method

.method public playTo(Ljavafx/animation/Animation;JJ)V
    .locals 12

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationAccessorImpl;
    move-object v1, p1

    .local v1, "animation":Ljavafx/animation/Animation;
    move-wide v2, p2

    .local v2, "pos":J
    move-wide/from16 v4, p4

    .local v4, "cycleTicks":J
    move-object v6, v1

    move-wide v7, v2

    move-wide v9, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Ljavafx/animation/Animation;->impl_playTo(JJ)V

    .line 40
    return-void
.end method

.method public setCurrentRate(Ljavafx/animation/Animation;D)V
    .locals 8

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationAccessorImpl;
    move-object v1, p1

    .local v1, "animation":Ljavafx/animation/Animation;
    move-wide v2, p2

    .local v2, "currentRate":D
    move-object v4, v1

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/animation/Animation;->impl_setCurrentRate(D)V

    .line 35
    return-void
.end method

.method public setCurrentTicks(Ljavafx/animation/Animation;J)V
    .locals 8

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationAccessorImpl;
    move-object v1, p1

    .local v1, "animation":Ljavafx/animation/Animation;
    move-wide v2, p2

    .local v2, "ticks":J
    move-object v4, v1

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/animation/Animation;->impl_setCurrentTicks(J)V

    .line 55
    return-void
.end method

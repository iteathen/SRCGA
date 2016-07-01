.class public abstract Ljavafx/animation/Transition;
.super Ljavafx/animation/Animation;
.source "Transition.java"


# static fields
.field private static final DEFAULT_INTERPOLATOR:Ljavafx/animation/Interpolator;


# instance fields
.field private cachedInterpolator:Ljavafx/animation/Interpolator;

.field private interpolator:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/animation/Interpolator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    sget-object v0, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    sput-object v0, Ljavafx/animation/Transition;->DEFAULT_INTERPOLATOR:Ljavafx/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Transition;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/animation/Animation;-><init>()V

    .line 152
    return-void
.end method

.method public constructor <init>(D)V
    .locals 7

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Transition;
    move-wide v1, p1

    .local v1, "targetFramerate":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/animation/Animation;-><init>(D)V

    .line 146
    return-void
.end method

.method constructor <init>(Lcom/sun/scenario/animation/AbstractMasterTimer;)V
    .locals 4

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Transition;
    move-object v1, p1

    .local v1, "timer":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/animation/Animation;-><init>(Lcom/sun/scenario/animation/AbstractMasterTimer;)V

    .line 157
    return-void
.end method

.method private calculateFraction(JJ)D
    .locals 15

    .prologue
    .line 189
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Transition;
    move-wide/from16 v2, p1

    .local v2, "currentTicks":J
    move-wide/from16 v4, p3

    .local v4, "cycleTicks":J
    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v6, v8

    .line 190
    .local v6, "frac":D
    move-object v8, v1

    iget-object v8, v8, Ljavafx/animation/Transition;->cachedInterpolator:Ljavafx/animation/Interpolator;

    const-wide/16 v9, 0x0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    move-wide v13, v6

    invoke-virtual/range {v8 .. v14}, Ljavafx/animation/Interpolator;->interpolate(DDD)D

    move-result-wide v8

    move-wide v1, v8

    .end local v1    # "this":Ljavafx/animation/Transition;
    return-wide v1

    .line 189
    .end local v6    # "frac":D
    .restart local v1    # "this":Ljavafx/animation/Transition;
    :cond_0
    move-wide v8, v2

    long-to-double v8, v8

    move-wide v10, v4

    long-to-double v10, v10

    div-double/2addr v8, v10

    goto :goto_0
.end method


# virtual methods
.method protected getCachedInterpolator()Ljavafx/animation/Interpolator;
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Transition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Transition;->cachedInterpolator:Ljavafx/animation/Interpolator;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Transition;
    return-object v0
.end method

.method public final getInterpolator()Ljavafx/animation/Interpolator;
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Transition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Transition;->interpolator:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/Transition;->DEFAULT_INTERPOLATOR:Ljavafx/animation/Interpolator;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Transition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/Transition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Transition;->interpolator:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/animation/Interpolator;

    goto :goto_0
.end method

.method protected getParentTargetNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Transition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Transition;->parent:Ljavafx/animation/Animation;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Transition;->parent:Ljavafx/animation/Animation;

    instance-of v1, v1, Ljavafx/animation/Transition;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Transition;->parent:Ljavafx/animation/Animation;

    check-cast v1, Ljavafx/animation/Transition;

    .line 166
    invoke-virtual {v1}, Ljavafx/animation/Transition;->getParentTargetNode()Ljavafx/scene/Node;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Transition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/Transition;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method impl_jumpTo(JJZ)V
    .locals 13

    .prologue
    .line 215
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Transition;
    move-wide v2, p1

    .local v2, "currentTicks":J
    move-wide/from16 v4, p3

    .local v4, "cycleTicks":J
    move/from16 v6, p5

    .local v6, "forceJump":Z
    move-object v7, v1

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/animation/Transition;->impl_setCurrentTicks(J)V

    .line 216
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/animation/Transition;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v7

    sget-object v8, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v7, v8, :cond_0

    move v7, v6

    if-eqz v7, :cond_1

    .line 217
    :cond_0
    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/animation/Transition;->impl_sync(Z)V

    .line 218
    move-object v7, v1

    move-object v8, v1

    move-wide v9, v2

    move-wide v11, v4

    invoke-direct {v8, v9, v10, v11, v12}, Ljavafx/animation/Transition;->calculateFraction(JJ)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljavafx/animation/Transition;->interpolate(D)V

    .line 220
    :cond_1
    return-void
.end method

.method impl_playTo(JJ)V
    .locals 13

    .prologue
    .line 209
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Transition;
    move-wide v2, p1

    .local v2, "currentTicks":J
    move-wide/from16 v4, p3

    .local v4, "cycleTicks":J
    move-object v6, v1

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/animation/Transition;->impl_setCurrentTicks(J)V

    .line 210
    move-object v6, v1

    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/animation/Transition;->calculateFraction(JJ)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljavafx/animation/Transition;->interpolate(D)V

    .line 211
    return-void
.end method

.method impl_startable(Z)Z
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Transition;
    move v1, p1

    .local v1, "forceSync":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/animation/Animation;->impl_startable(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 196
    invoke-virtual {v2}, Ljavafx/animation/Transition;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/Transition;->cachedInterpolator:Ljavafx/animation/Interpolator;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/animation/Transition;
    return v0

    .restart local v0    # "this":Ljavafx/animation/Transition;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method impl_sync(Z)V
    .locals 4

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Transition;
    move v1, p1

    .local v1, "forceSync":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/animation/Animation;->impl_sync(Z)V

    .line 202
    move v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/Transition;->cachedInterpolator:Ljavafx/animation/Interpolator;

    if-nez v2, :cond_1

    .line 203
    :cond_0
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/animation/Transition;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v3

    iput-object v3, v2, Ljavafx/animation/Transition;->cachedInterpolator:Ljavafx/animation/Interpolator;

    .line 205
    :cond_1
    return-void
.end method

.method protected abstract interpolate(D)V
.end method

.method public final interpolatorProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/animation/Interpolator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Transition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Transition;->interpolator:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 111
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "interpolator"

    sget-object v6, Ljavafx/animation/Transition;->DEFAULT_INTERPOLATOR:Ljavafx/animation/Interpolator;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/animation/Transition;->interpolator:Ljavafx/beans/property/ObjectProperty;

    .line 115
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Transition;->interpolator:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Transition;
    return-object v0
.end method

.method public final setInterpolator(Ljavafx/animation/Interpolator;)V
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Transition;
    move-object v1, p1

    .local v1, "value":Ljavafx/animation/Interpolator;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/Transition;->interpolator:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/animation/Transition;->DEFAULT_INTERPOLATOR:Ljavafx/animation/Interpolator;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/Transition;->interpolatorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 103
    :cond_1
    return-void
.end method

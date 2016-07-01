.class public abstract Ljavafx/animation/TransitionBuilder;
.super Ljavafx/animation/AnimationBuilder;
.source "TransitionBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/animation/TransitionBuilder",
        "<TB;>;>",
        "Ljavafx/animation/AnimationBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:Z

.field private interpolator:Ljavafx/animation/Interpolator;

.field private targetFramerate:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TransitionBuilder;, "Ljavafx/animation/TransitionBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/animation/AnimationBuilder;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public applyTo(Ljavafx/animation/Transition;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TransitionBuilder;, "Ljavafx/animation/TransitionBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/animation/Transition;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/animation/AnimationBuilder;->applyTo(Ljavafx/animation/Animation;)V

    .line 44
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/animation/TransitionBuilder;->__set:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/TransitionBuilder;->interpolator:Ljavafx/animation/Interpolator;

    invoke-virtual {v2, v3}, Ljavafx/animation/Transition;->setInterpolator(Ljavafx/animation/Interpolator;)V

    .line 45
    :cond_0
    return-void
.end method

.method public interpolator(Ljavafx/animation/Interpolator;)Ljavafx/animation/TransitionBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/animation/Interpolator;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TransitionBuilder;, "Ljavafx/animation/TransitionBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/animation/Interpolator;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/TransitionBuilder;->interpolator:Ljavafx/animation/Interpolator;

    .line 54
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/animation/TransitionBuilder;->__set:Z

    .line 55
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/TransitionBuilder;, "Ljavafx/animation/TransitionBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic targetFramerate(D)Ljavafx/animation/AnimationBuilder;
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TransitionBuilder;, "Ljavafx/animation/TransitionBuilder<TB;>;"
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/animation/TransitionBuilder;->targetFramerate(D)Ljavafx/animation/TransitionBuilder;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/animation/TransitionBuilder;, "Ljavafx/animation/TransitionBuilder<TB;>;"
    return-object v0
.end method

.method public targetFramerate(D)Ljavafx/animation/TransitionBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TransitionBuilder;, "Ljavafx/animation/TransitionBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/animation/TransitionBuilder;->targetFramerate:D

    .line 65
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/animation/TransitionBuilder;, "Ljavafx/animation/TransitionBuilder<TB;>;"
    return-object v0
.end method

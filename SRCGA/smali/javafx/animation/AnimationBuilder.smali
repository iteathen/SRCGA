.class public abstract Ljavafx/animation/AnimationBuilder;
.super Ljava/lang/Object;
.source "AnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/animation/AnimationBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private autoReverse:Z

.field private cycleCount:I

.field private delay:Ljavafx/util/Duration;

.field private onFinished:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private rate:D

.field private targetFramerate:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationBuilder;, "Ljavafx/animation/AnimationBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public applyTo(Ljavafx/animation/Animation;)V
    .locals 6

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationBuilder;, "Ljavafx/animation/AnimationBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/animation/Animation;
    move-object v3, v0

    iget v3, v3, Ljavafx/animation/AnimationBuilder;->__set:I

    move v2, v3

    .line 44
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/animation/AnimationBuilder;->autoReverse:Z

    invoke-virtual {v3, v4}, Ljavafx/animation/Animation;->setAutoReverse(Z)V

    .line 45
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Ljavafx/animation/AnimationBuilder;->cycleCount:I

    invoke-virtual {v3, v4}, Ljavafx/animation/Animation;->setCycleCount(I)V

    .line 46
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/AnimationBuilder;->delay:Ljavafx/util/Duration;

    invoke-virtual {v3, v4}, Ljavafx/animation/Animation;->setDelay(Ljavafx/util/Duration;)V

    .line 47
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/AnimationBuilder;->onFinished:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4}, Ljavafx/animation/Animation;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 48
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/animation/AnimationBuilder;->rate:D

    invoke-virtual {v3, v4, v5}, Ljavafx/animation/Animation;->setRate(D)V

    .line 49
    :cond_4
    return-void
.end method

.method public autoReverse(Z)Ljavafx/animation/AnimationBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationBuilder;, "Ljavafx/animation/AnimationBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/animation/AnimationBuilder;->autoReverse:Z

    .line 58
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/animation/AnimationBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/animation/AnimationBuilder;->__set:I

    .line 59
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/AnimationBuilder;, "Ljavafx/animation/AnimationBuilder<TB;>;"
    return-object v0
.end method

.method public cycleCount(I)Ljavafx/animation/AnimationBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationBuilder;, "Ljavafx/animation/AnimationBuilder<TB;>;"
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/animation/AnimationBuilder;->cycleCount:I

    .line 69
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/animation/AnimationBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/animation/AnimationBuilder;->__set:I

    .line 70
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/AnimationBuilder;, "Ljavafx/animation/AnimationBuilder<TB;>;"
    return-object v0
.end method

.method public delay(Ljavafx/util/Duration;)Ljavafx/animation/AnimationBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Duration;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationBuilder;, "Ljavafx/animation/AnimationBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/util/Duration;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/AnimationBuilder;->delay:Ljavafx/util/Duration;

    .line 80
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/animation/AnimationBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/animation/AnimationBuilder;->__set:I

    .line 81
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/AnimationBuilder;, "Ljavafx/animation/AnimationBuilder<TB;>;"
    return-object v0
.end method

.method public onFinished(Ljavafx/event/EventHandler;)Ljavafx/animation/AnimationBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationBuilder;, "Ljavafx/animation/AnimationBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/AnimationBuilder;->onFinished:Ljavafx/event/EventHandler;

    .line 91
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/animation/AnimationBuilder;->__set:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ljavafx/animation/AnimationBuilder;->__set:I

    .line 92
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/AnimationBuilder;, "Ljavafx/animation/AnimationBuilder<TB;>;"
    return-object v0
.end method

.method public rate(D)Ljavafx/animation/AnimationBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationBuilder;, "Ljavafx/animation/AnimationBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/animation/AnimationBuilder;->rate:D

    .line 102
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/animation/AnimationBuilder;->__set:I

    const/16 v5, 0x10

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Ljavafx/animation/AnimationBuilder;->__set:I

    .line 103
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/animation/AnimationBuilder;, "Ljavafx/animation/AnimationBuilder<TB;>;"
    return-object v0
.end method

.method public targetFramerate(D)Ljavafx/animation/AnimationBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationBuilder;, "Ljavafx/animation/AnimationBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/animation/AnimationBuilder;->targetFramerate:D

    .line 113
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/animation/AnimationBuilder;, "Ljavafx/animation/AnimationBuilder<TB;>;"
    return-object v0
.end method

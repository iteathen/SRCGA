.class public final Ljavafx/animation/FillTransitionBuilder;
.super Ljavafx/animation/TransitionBuilder;
.source "FillTransitionBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/animation/TransitionBuilder",
        "<",
        "Ljavafx/animation/FillTransitionBuilder;",
        ">;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/animation/FillTransition;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private duration:Ljavafx/util/Duration;

.field private fromValue:Ljavafx/scene/paint/Color;

.field private shape:Ljavafx/scene/shape/Shape;

.field private toValue:Ljavafx/scene/paint/Color;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransitionBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/animation/TransitionBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/animation/FillTransitionBuilder;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljavafx/animation/FillTransitionBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/animation/FillTransitionBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/animation/FillTransition;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransitionBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/animation/FillTransition;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/animation/TransitionBuilder;->applyTo(Ljavafx/animation/Transition;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/animation/FillTransitionBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/FillTransitionBuilder;->duration:Ljavafx/util/Duration;

    invoke-virtual {v3, v4}, Ljavafx/animation/FillTransition;->setDuration(Ljavafx/util/Duration;)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/FillTransitionBuilder;->fromValue:Ljavafx/scene/paint/Color;

    invoke-virtual {v3, v4}, Ljavafx/animation/FillTransition;->setFromValue(Ljavafx/scene/paint/Color;)V

    .line 52
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/FillTransitionBuilder;->shape:Ljavafx/scene/shape/Shape;

    invoke-virtual {v3, v4}, Ljavafx/animation/FillTransition;->setShape(Ljavafx/scene/shape/Shape;)V

    .line 53
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/FillTransitionBuilder;->toValue:Ljavafx/scene/paint/Color;

    invoke-virtual {v3, v4}, Ljavafx/animation/FillTransition;->setToValue(Ljavafx/scene/paint/Color;)V

    .line 54
    :cond_3
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransitionBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/animation/FillTransitionBuilder;->build()Ljavafx/animation/FillTransition;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/FillTransitionBuilder;
    return-object v0
.end method

.method public build()Ljavafx/animation/FillTransition;
    .locals 5

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransitionBuilder;
    new-instance v2, Ljavafx/animation/FillTransition;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/animation/FillTransition;-><init>()V

    move-object v1, v2

    .line 101
    .local v1, "x":Ljavafx/animation/FillTransition;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/animation/FillTransitionBuilder;->applyTo(Ljavafx/animation/FillTransition;)V

    .line 102
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/FillTransitionBuilder;
    return-object v0
.end method

.method public duration(Ljavafx/util/Duration;)Ljavafx/animation/FillTransitionBuilder;
    .locals 6

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransitionBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/util/Duration;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/FillTransitionBuilder;->duration:Ljavafx/util/Duration;

    .line 62
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/animation/FillTransitionBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/animation/FillTransitionBuilder;->__set:I

    .line 63
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/FillTransitionBuilder;
    return-object v0
.end method

.method public fromValue(Ljavafx/scene/paint/Color;)Ljavafx/animation/FillTransitionBuilder;
    .locals 6

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransitionBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/paint/Color;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/FillTransitionBuilder;->fromValue:Ljavafx/scene/paint/Color;

    .line 72
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/animation/FillTransitionBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/animation/FillTransitionBuilder;->__set:I

    .line 73
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/FillTransitionBuilder;
    return-object v0
.end method

.method public shape(Ljavafx/scene/shape/Shape;)Ljavafx/animation/FillTransitionBuilder;
    .locals 6

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransitionBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/shape/Shape;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/FillTransitionBuilder;->shape:Ljavafx/scene/shape/Shape;

    .line 82
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/animation/FillTransitionBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/animation/FillTransitionBuilder;->__set:I

    .line 83
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/FillTransitionBuilder;
    return-object v0
.end method

.method public toValue(Ljavafx/scene/paint/Color;)Ljavafx/animation/FillTransitionBuilder;
    .locals 6

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransitionBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/paint/Color;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/FillTransitionBuilder;->toValue:Ljavafx/scene/paint/Color;

    .line 92
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/animation/FillTransitionBuilder;->__set:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ljavafx/animation/FillTransitionBuilder;->__set:I

    .line 93
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/FillTransitionBuilder;
    return-object v0
.end method

.class public final Ljavafx/animation/RotateTransitionBuilder;
.super Ljavafx/animation/TransitionBuilder;
.source "RotateTransitionBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/animation/TransitionBuilder",
        "<",
        "Ljavafx/animation/RotateTransitionBuilder;",
        ">;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/animation/RotateTransition;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private axis:Ljavafx/geometry/Point3D;

.field private byAngle:D

.field private duration:Ljavafx/util/Duration;

.field private fromAngle:D

.field private node:Ljavafx/scene/Node;

.field private toAngle:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransitionBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/animation/TransitionBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/animation/RotateTransitionBuilder;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljavafx/animation/RotateTransitionBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/animation/RotateTransitionBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/animation/RotateTransition;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransitionBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/animation/RotateTransition;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/animation/TransitionBuilder;->applyTo(Ljavafx/animation/Transition;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/animation/RotateTransitionBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/RotateTransitionBuilder;->axis:Ljavafx/geometry/Point3D;

    invoke-virtual {v3, v4}, Ljavafx/animation/RotateTransition;->setAxis(Ljavafx/geometry/Point3D;)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/animation/RotateTransitionBuilder;->byAngle:D

    invoke-virtual {v3, v4, v5}, Ljavafx/animation/RotateTransition;->setByAngle(D)V

    .line 52
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/RotateTransitionBuilder;->duration:Ljavafx/util/Duration;

    invoke-virtual {v3, v4}, Ljavafx/animation/RotateTransition;->setDuration(Ljavafx/util/Duration;)V

    .line 53
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/animation/RotateTransitionBuilder;->fromAngle:D

    invoke-virtual {v3, v4, v5}, Ljavafx/animation/RotateTransition;->setFromAngle(D)V

    .line 54
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/RotateTransitionBuilder;->node:Ljavafx/scene/Node;

    invoke-virtual {v3, v4}, Ljavafx/animation/RotateTransition;->setNode(Ljavafx/scene/Node;)V

    .line 55
    :cond_4
    move v3, v2

    const/16 v4, 0x20

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/animation/RotateTransitionBuilder;->toAngle:D

    invoke-virtual {v3, v4, v5}, Ljavafx/animation/RotateTransition;->setToAngle(D)V

    .line 56
    :cond_5
    return-void
.end method

.method public axis(Ljavafx/geometry/Point3D;)Ljavafx/animation/RotateTransitionBuilder;
    .locals 6

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransitionBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Point3D;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/RotateTransitionBuilder;->axis:Ljavafx/geometry/Point3D;

    .line 64
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/animation/RotateTransitionBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/animation/RotateTransitionBuilder;->__set:I

    .line 65
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/RotateTransitionBuilder;
    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransitionBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/animation/RotateTransitionBuilder;->build()Ljavafx/animation/RotateTransition;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/RotateTransitionBuilder;
    return-object v0
.end method

.method public build()Ljavafx/animation/RotateTransition;
    .locals 5

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransitionBuilder;
    new-instance v2, Ljavafx/animation/RotateTransition;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/animation/RotateTransition;-><init>()V

    move-object v1, v2

    .line 123
    .local v1, "x":Ljavafx/animation/RotateTransition;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/animation/RotateTransitionBuilder;->applyTo(Ljavafx/animation/RotateTransition;)V

    .line 124
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/RotateTransitionBuilder;
    return-object v0
.end method

.method public byAngle(D)Ljavafx/animation/RotateTransitionBuilder;
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransitionBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/animation/RotateTransitionBuilder;->byAngle:D

    .line 74
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/animation/RotateTransitionBuilder;->__set:I

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Ljavafx/animation/RotateTransitionBuilder;->__set:I

    .line 75
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/animation/RotateTransitionBuilder;
    return-object v0
.end method

.method public duration(Ljavafx/util/Duration;)Ljavafx/animation/RotateTransitionBuilder;
    .locals 6

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransitionBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/util/Duration;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/RotateTransitionBuilder;->duration:Ljavafx/util/Duration;

    .line 84
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/animation/RotateTransitionBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/animation/RotateTransitionBuilder;->__set:I

    .line 85
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/RotateTransitionBuilder;
    return-object v0
.end method

.method public fromAngle(D)Ljavafx/animation/RotateTransitionBuilder;
    .locals 7

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransitionBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/animation/RotateTransitionBuilder;->fromAngle:D

    .line 94
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/animation/RotateTransitionBuilder;->__set:I

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Ljavafx/animation/RotateTransitionBuilder;->__set:I

    .line 95
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/animation/RotateTransitionBuilder;
    return-object v0
.end method

.method public node(Ljavafx/scene/Node;)Ljavafx/animation/RotateTransitionBuilder;
    .locals 6

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransitionBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/RotateTransitionBuilder;->node:Ljavafx/scene/Node;

    .line 104
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/animation/RotateTransitionBuilder;->__set:I

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Ljavafx/animation/RotateTransitionBuilder;->__set:I

    .line 105
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/RotateTransitionBuilder;
    return-object v0
.end method

.method public toAngle(D)Ljavafx/animation/RotateTransitionBuilder;
    .locals 7

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransitionBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/animation/RotateTransitionBuilder;->toAngle:D

    .line 114
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/animation/RotateTransitionBuilder;->__set:I

    const/16 v5, 0x20

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Ljavafx/animation/RotateTransitionBuilder;->__set:I

    .line 115
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/animation/RotateTransitionBuilder;
    return-object v0
.end method

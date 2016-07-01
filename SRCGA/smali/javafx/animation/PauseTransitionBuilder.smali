.class public final Ljavafx/animation/PauseTransitionBuilder;
.super Ljavafx/animation/TransitionBuilder;
.source "PauseTransitionBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/animation/TransitionBuilder",
        "<",
        "Ljavafx/animation/PauseTransitionBuilder;",
        ">;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/animation/PauseTransition;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:Z

.field private duration:Ljavafx/util/Duration;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PauseTransitionBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/animation/TransitionBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/animation/PauseTransitionBuilder;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljavafx/animation/PauseTransitionBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/animation/PauseTransitionBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/animation/PauseTransition;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PauseTransitionBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/animation/PauseTransition;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/animation/TransitionBuilder;->applyTo(Ljavafx/animation/Transition;)V

    .line 49
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/animation/PauseTransitionBuilder;->__set:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/PauseTransitionBuilder;->duration:Ljavafx/util/Duration;

    invoke-virtual {v2, v3}, Ljavafx/animation/PauseTransition;->setDuration(Ljavafx/util/Duration;)V

    .line 50
    :cond_0
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PauseTransitionBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/animation/PauseTransitionBuilder;->build()Ljavafx/animation/PauseTransition;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/PauseTransitionBuilder;
    return-object v0
.end method

.method public build()Ljavafx/animation/PauseTransition;
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PauseTransitionBuilder;
    new-instance v2, Ljavafx/animation/PauseTransition;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/animation/PauseTransition;-><init>()V

    move-object v1, v2

    .line 67
    .local v1, "x":Ljavafx/animation/PauseTransition;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/animation/PauseTransitionBuilder;->applyTo(Ljavafx/animation/PauseTransition;)V

    .line 68
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/PauseTransitionBuilder;
    return-object v0
.end method

.method public duration(Ljavafx/util/Duration;)Ljavafx/animation/PauseTransitionBuilder;
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PauseTransitionBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/util/Duration;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/PauseTransitionBuilder;->duration:Ljavafx/util/Duration;

    .line 58
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/animation/PauseTransitionBuilder;->__set:Z

    .line 59
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/PauseTransitionBuilder;
    return-object v0
.end method

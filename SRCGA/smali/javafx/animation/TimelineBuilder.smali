.class public final Ljavafx/animation/TimelineBuilder;
.super Ljavafx/animation/AnimationBuilder;
.source "TimelineBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/animation/AnimationBuilder",
        "<",
        "Ljavafx/animation/TimelineBuilder;",
        ">;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/animation/Timeline;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:Z

.field private keyFrames:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/animation/KeyFrame;",
            ">;"
        }
    .end annotation
.end field

.field private targetFramerate:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TimelineBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/animation/AnimationBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/animation/TimelineBuilder;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljavafx/animation/TimelineBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/animation/TimelineBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/animation/Timeline;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TimelineBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/animation/Timeline;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/animation/AnimationBuilder;->applyTo(Ljavafx/animation/Animation;)V

    .line 49
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/animation/TimelineBuilder;->__set:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/TimelineBuilder;->keyFrames:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 50
    :cond_0
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TimelineBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/animation/TimelineBuilder;->build()Ljavafx/animation/Timeline;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/TimelineBuilder;
    return-object v0
.end method

.method public build()Ljavafx/animation/Timeline;
    .locals 7

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TimelineBuilder;
    new-instance v2, Ljavafx/animation/Timeline;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/animation/TimelineBuilder;->targetFramerate:D

    invoke-direct {v3, v4, v5}, Ljavafx/animation/Timeline;-><init>(D)V

    move-object v1, v2

    .line 83
    .local v1, "x":Ljavafx/animation/Timeline;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/animation/TimelineBuilder;->applyTo(Ljavafx/animation/Timeline;)V

    .line 84
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/TimelineBuilder;
    return-object v0
.end method

.method public keyFrames(Ljava/util/Collection;)Ljavafx/animation/TimelineBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/animation/KeyFrame;",
            ">;)",
            "Ljavafx/animation/TimelineBuilder;"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TimelineBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavafx/animation/KeyFrame;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/TimelineBuilder;->keyFrames:Ljava/util/Collection;

    .line 58
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/animation/TimelineBuilder;->__set:Z

    .line 59
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/TimelineBuilder;
    return-object v0
.end method

.method public varargs keyFrames([Ljavafx/animation/KeyFrame;)Ljavafx/animation/TimelineBuilder;
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TimelineBuilder;
    move-object v1, p1

    .local v1, "x":[Ljavafx/animation/KeyFrame;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/animation/TimelineBuilder;->keyFrames(Ljava/util/Collection;)Ljavafx/animation/TimelineBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/TimelineBuilder;
    return-object v0
.end method

.method public bridge synthetic targetFramerate(D)Ljavafx/animation/AnimationBuilder;
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TimelineBuilder;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/animation/TimelineBuilder;->targetFramerate(D)Ljavafx/animation/TimelineBuilder;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/animation/TimelineBuilder;
    return-object v0
.end method

.method public targetFramerate(D)Ljavafx/animation/TimelineBuilder;
    .locals 7

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TimelineBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/animation/TimelineBuilder;->targetFramerate:D

    .line 75
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/animation/TimelineBuilder;
    return-object v0
.end method

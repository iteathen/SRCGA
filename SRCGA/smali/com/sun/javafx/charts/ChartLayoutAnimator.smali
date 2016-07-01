.class public final Lcom/sun/javafx/charts/ChartLayoutAnimator;
.super Ljavafx/animation/AnimationTimer;
.source "ChartLayoutAnimator.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/animation/AnimationTimer;",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/event/ActionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final activeTimeLines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljavafx/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final isAxis:Z

.field private nodeToLayout:Ljavafx/scene/Parent;


# direct methods
.method public constructor <init>(Ljavafx/scene/Parent;)V
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/ChartLayoutAnimator;
    move-object v1, p1

    .local v1, "nodeToLayout":Ljavafx/scene/Parent;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/animation/AnimationTimer;-><init>()V

    .line 47
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/charts/ChartLayoutAnimator;->activeTimeLines:Ljava/util/Map;

    .line 51
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/charts/ChartLayoutAnimator;->nodeToLayout:Ljavafx/scene/Parent;

    .line 52
    move-object v2, v0

    move-object v3, v1

    instance-of v3, v3, Ljavafx/scene/chart/Axis;

    iput-boolean v3, v2, Lcom/sun/javafx/charts/ChartLayoutAnimator;->isAxis:Z

    .line 53
    return-void
.end method


# virtual methods
.method public animate(Ljavafx/animation/Animation;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/ChartLayoutAnimator;
    move-object v1, p1

    .local v1, "animation":Ljavafx/animation/Animation;
    new-instance v3, Ljavafx/animation/SequentialTransition;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljavafx/animation/SequentialTransition;-><init>()V

    move-object v2, v3

    .line 110
    .local v2, "t":Ljavafx/animation/SequentialTransition;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/animation/SequentialTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 111
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljavafx/animation/SequentialTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 113
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/charts/ChartLayoutAnimator;->activeTimeLines:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/charts/ChartLayoutAnimator;->start()V

    .line 115
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/charts/ChartLayoutAnimator;->activeTimeLines:Ljava/util/Map;

    move-object v4, v2

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 117
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/animation/SequentialTransition;->play()V

    .line 118
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/charts/ChartLayoutAnimator;
    return-object v0
.end method

.method public varargs animate([Ljavafx/animation/KeyFrame;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/ChartLayoutAnimator;
    move-object v1, p1

    .local v1, "keyFrames":[Ljavafx/animation/KeyFrame;
    new-instance v3, Ljavafx/animation/Timeline;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljavafx/animation/Timeline;-><init>()V

    move-object v2, v3

    .line 89
    .local v2, "t":Ljavafx/animation/Timeline;
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/animation/Timeline;->setAutoReverse(Z)V

    .line 90
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/animation/Timeline;->setCycleCount(I)V

    .line 91
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    .line 92
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljavafx/animation/Timeline;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 94
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/charts/ChartLayoutAnimator;->activeTimeLines:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/charts/ChartLayoutAnimator;->start()V

    .line 96
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/charts/ChartLayoutAnimator;->activeTimeLines:Ljava/util/Map;

    move-object v4, v2

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 98
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/animation/Timeline;->play()V

    .line 99
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/charts/ChartLayoutAnimator;
    return-object v0
.end method

.method public handle(J)V
    .locals 5

    .prologue
    .line 56
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/charts/ChartLayoutAnimator;
    move-wide v2, p1

    .local v2, "l":J
    move-object v4, v1

    iget-boolean v4, v4, Lcom/sun/javafx/charts/ChartLayoutAnimator;->isAxis:Z

    if-eqz v4, :cond_0

    .line 57
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/charts/ChartLayoutAnimator;->nodeToLayout:Ljavafx/scene/Parent;

    check-cast v4, Ljavafx/scene/chart/Axis;

    invoke-virtual {v4}, Ljavafx/scene/chart/Axis;->requestAxisLayout()V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/charts/ChartLayoutAnimator;->nodeToLayout:Ljavafx/scene/Parent;

    invoke-virtual {v4}, Ljavafx/scene/Parent;->requestLayout()V

    goto :goto_0
.end method

.method public handle(Ljavafx/event/ActionEvent;)V
    .locals 6

    .prologue
    .line 64
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/charts/ChartLayoutAnimator;
    move-object v2, p1

    .local v2, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/charts/ChartLayoutAnimator;->activeTimeLines:Ljava/util/Map;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 65
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/charts/ChartLayoutAnimator;->activeTimeLines:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/charts/ChartLayoutAnimator;->stop()V

    .line 67
    :cond_0
    move-object v3, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/charts/ChartLayoutAnimator;->handle(J)V

    .line 68
    return-void
.end method

.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/ChartLayoutAnimator;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/event/ActionEvent;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/charts/ChartLayoutAnimator;->handle(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method public stop(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/ChartLayoutAnimator;
    move-object v1, p1

    .local v1, "animationID":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/charts/ChartLayoutAnimator;->activeTimeLines:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/animation/Animation;

    move-object v2, v3

    .line 77
    .local v2, "t":Ljavafx/animation/Animation;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/animation/Animation;->stop()V

    .line 78
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/charts/ChartLayoutAnimator;->activeTimeLines:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/charts/ChartLayoutAnimator;->stop()V

    .line 79
    :cond_1
    return-void
.end method

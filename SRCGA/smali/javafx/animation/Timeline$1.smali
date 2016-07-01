.class Ljavafx/animation/Timeline$1;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Ljavafx/animation/KeyFrame;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/Timeline;


# direct methods
.method constructor <init>(Ljavafx/animation/Timeline;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Timeline$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/animation/Timeline;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/Timeline$1;->this$0:Ljavafx/animation/Timeline;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/TrackableObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<",
            "Ljavafx/animation/KeyFrame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Timeline$1;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/animation/KeyFrame;>;"
    :cond_0
    :goto_0
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 99
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 100
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/animation/KeyFrame;

    move-object v3, v5

    .line 101
    .local v3, "keyFrame":Ljavafx/animation/KeyFrame;
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/animation/KeyFrame;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 102
    .local v4, "cuePoint":Ljava/lang/String;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 103
    move-object v5, v0

    iget-object v5, v5, Ljavafx/animation/Timeline$1;->this$0:Ljavafx/animation/Timeline;

    invoke-virtual {v5}, Ljavafx/animation/Timeline;->getCuePoints()Ljavafx/collections/ObservableMap;

    move-result-object v5

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 105
    :cond_1
    goto :goto_1

    .line 106
    .end local v3    # "keyFrame":Ljavafx/animation/KeyFrame;
    .end local v4    # "cuePoint":Ljava/lang/String;
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_2
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/animation/KeyFrame;

    move-object v3, v5

    .line 107
    .restart local v3    # "keyFrame":Ljavafx/animation/KeyFrame;
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/animation/KeyFrame;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 108
    .restart local v4    # "cuePoint":Ljava/lang/String;
    move-object v5, v4

    if-eqz v5, :cond_3

    .line 109
    move-object v5, v0

    iget-object v5, v5, Ljavafx/animation/Timeline$1;->this$0:Ljavafx/animation/Timeline;

    invoke-virtual {v5}, Ljavafx/animation/Timeline;->getCuePoints()Ljavafx/collections/ObservableMap;

    move-result-object v5

    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/animation/KeyFrame;->getTime()Ljavafx/util/Duration;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 111
    :cond_3
    goto :goto_2

    .line 112
    .end local v3    # "keyFrame":Ljavafx/animation/KeyFrame;
    .end local v4    # "cuePoint":Ljava/lang/String;
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Ljavafx/animation/Timeline$1;->this$0:Ljavafx/animation/Timeline;

    iget-object v5, v5, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    move-object v6, v0

    iget-object v6, v6, Ljavafx/animation/Timeline$1;->this$0:Ljavafx/animation/Timeline;

    invoke-virtual {v6}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/scenario/animation/shared/TimelineClipCore;->setKeyFrames(Ljava/util/Collection;)Ljavafx/util/Duration;

    move-result-object v5

    move-object v2, v5

    .line 113
    .local v2, "duration":Ljavafx/util/Duration;
    move-object v5, v0

    iget-object v5, v5, Ljavafx/animation/Timeline$1;->this$0:Ljavafx/animation/Timeline;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljavafx/animation/Timeline;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 114
    goto/16 :goto_0

    .line 116
    .end local v2    # "duration":Ljavafx/util/Duration;
    :cond_5
    return-void
.end method

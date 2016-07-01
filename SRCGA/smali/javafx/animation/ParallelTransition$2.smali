.class Ljavafx/animation/ParallelTransition$2;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "ParallelTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/ParallelTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Ljavafx/animation/Animation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/ParallelTransition;


# direct methods
.method constructor <init>(Ljavafx/animation/ParallelTransition;)V
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/animation/ParallelTransition;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/ParallelTransition$2;->this$0:Ljavafx/animation/ParallelTransition;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/TrackableObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<",
            "Ljavafx/animation/Animation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition$2;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/animation/Animation;>;"
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/animation/Animation;

    move-object v3, v4

    .line 176
    .local v3, "animation":Ljavafx/animation/Animation;
    move-object v4, v3

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    .line 177
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/animation/Animation;->rateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/animation/ParallelTransition$2;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-static {v5}, Ljavafx/animation/ParallelTransition;->access$300(Ljavafx/animation/ParallelTransition;)Ljavafx/beans/InvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/DoubleProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 178
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/animation/Animation;->totalDurationProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/animation/ParallelTransition$2;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-static {v5}, Ljavafx/animation/ParallelTransition;->access$300(Ljavafx/animation/ParallelTransition;)Ljavafx/beans/InvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 179
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/animation/Animation;->delayProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/animation/ParallelTransition$2;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-static {v5}, Ljavafx/animation/ParallelTransition;->access$300(Ljavafx/animation/ParallelTransition;)Ljavafx/beans/InvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 180
    goto :goto_1

    .line 181
    .end local v3    # "animation":Ljavafx/animation/Animation;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_2
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/animation/Animation;

    move-object v3, v4

    .line 182
    .restart local v3    # "animation":Ljavafx/animation/Animation;
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/animation/ParallelTransition$2;->this$0:Ljavafx/animation/ParallelTransition;

    iput-object v5, v4, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    .line 183
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/animation/Animation;->rateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/animation/ParallelTransition$2;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-static {v5}, Ljavafx/animation/ParallelTransition;->access$300(Ljavafx/animation/ParallelTransition;)Ljavafx/beans/InvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 184
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/animation/Animation;->totalDurationProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/animation/ParallelTransition$2;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-static {v5}, Ljavafx/animation/ParallelTransition;->access$300(Ljavafx/animation/ParallelTransition;)Ljavafx/beans/InvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 185
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/animation/Animation;->delayProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/animation/ParallelTransition$2;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-static {v5}, Ljavafx/animation/ParallelTransition;->access$300(Ljavafx/animation/ParallelTransition;)Ljavafx/beans/InvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 186
    goto :goto_2

    .end local v3    # "animation":Ljavafx/animation/Animation;
    :cond_1
    goto/16 :goto_0

    .line 188
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/ParallelTransition$2;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-static {v4}, Ljavafx/animation/ParallelTransition;->access$300(Ljavafx/animation/ParallelTransition;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/animation/ParallelTransition$2;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-static {v5}, Ljavafx/animation/ParallelTransition;->access$400(Ljavafx/animation/ParallelTransition;)Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 189
    return-void
.end method

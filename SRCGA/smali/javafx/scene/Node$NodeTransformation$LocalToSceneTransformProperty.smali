.class Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
.super Ljavafx/scene/Node$LazyTransformProperty;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Node$NodeTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalToSceneTransformProperty"
.end annotation


# instance fields
.field private localToSceneListeners:Ljava/util/List;

.field private parentStamp:J

.field private stamp:J

.field final synthetic this$1:Ljavafx/scene/Node$NodeTransformation;


# direct methods
.method constructor <init>(Ljavafx/scene/Node$NodeTransformation;)V
    .locals 4

    .prologue
    .line 5630
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/Node$NodeTransformation;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->this$1:Ljavafx/scene/Node$NodeTransformation;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/Node$LazyTransformProperty;-><init>(Ljavafx/scene/Node$1;)V

    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 5705
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->this$1:Ljavafx/scene/Node$NodeTransformation;

    invoke-virtual {v2}, Ljavafx/scene/Node$NodeTransformation;->incListenerReasons()V

    .line 5706
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->localToSceneListeners:Ljava/util/List;

    if-nez v2, :cond_0

    .line 5707
    move-object v2, v0

    new-instance v3, Ljava/util/LinkedList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->localToSceneListeners:Ljava/util/List;

    .line 5709
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->localToSceneListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 5710
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/Node$LazyTransformProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 5711
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/scene/transform/Transform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5715
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/scene/transform/Transform;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->this$1:Ljavafx/scene/Node$NodeTransformation;

    invoke-virtual {v2}, Ljavafx/scene/Node$NodeTransformation;->incListenerReasons()V

    .line 5716
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->localToSceneListeners:Ljava/util/List;

    if-nez v2, :cond_0

    .line 5717
    move-object v2, v0

    new-instance v3, Ljava/util/LinkedList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->localToSceneListeners:Ljava/util/List;

    .line 5719
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->localToSceneListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 5720
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/Node$LazyTransformProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 5721
    return-void
.end method

.method protected computeTransform(Ljavafx/scene/transform/Transform;)Ljavafx/scene/transform/Transform;
    .locals 11

    .prologue
    .line 5639
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    move-object v1, p1

    .local v1, "reuse":Ljavafx/scene/transform/Transform;
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->stamp:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->stamp:J

    .line 5640
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->this$1:Ljavafx/scene/Node$NodeTransformation;

    iget-object v5, v5, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v5}, Ljavafx/scene/Node;->updateLocalToParentTransform()V

    .line 5642
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->this$1:Ljavafx/scene/Node$NodeTransformation;

    iget-object v5, v5, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v5}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v5

    move-object v2, v5

    .line 5643
    .local v2, "parentNode":Ljavafx/scene/Node;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 5644
    move-object v5, v2

    .line 5645
    invoke-virtual {v5}, Ljavafx/scene/Node;->localToSceneTransformProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;

    move-object v3, v5

    .line 5646
    .local v3, "parentProperty":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->getInternalValue()Ljavafx/scene/transform/Transform;

    move-result-object v5

    move-object v4, v5

    .line 5648
    .local v4, "parentTransform":Ljavafx/scene/transform/Transform;
    move-object v5, v0

    move-object v6, v3

    iget-wide v6, v6, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->stamp:J

    iput-wide v6, v5, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->parentStamp:J

    .line 5650
    move-object v5, v1

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->this$1:Ljavafx/scene/Node$NodeTransformation;

    .line 5652
    invoke-virtual {v7}, Ljavafx/scene/Node$NodeTransformation;->localToParentTransformProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Node$LazyTransformProperty;

    invoke-virtual {v7}, Ljavafx/scene/Node$LazyTransformProperty;->getInternalValue()Ljavafx/scene/transform/Transform;

    move-result-object v7

    .line 5650
    invoke-static {v5, v6, v7}, Lcom/sun/javafx/scene/transform/TransformUtils;->immutableTransform(Ljavafx/scene/transform/Transform;Ljavafx/scene/transform/Transform;Ljavafx/scene/transform/Transform;)Ljavafx/scene/transform/Transform;

    move-result-object v5

    move-object v0, v5

    .line 5654
    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    .end local v3    # "parentProperty":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    .end local v4    # "parentTransform":Ljavafx/scene/transform/Transform;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    :cond_0
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->this$1:Ljavafx/scene/Node$NodeTransformation;

    .line 5655
    invoke-virtual {v6}, Ljavafx/scene/Node$NodeTransformation;->localToParentTransformProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node$LazyTransformProperty;

    invoke-virtual {v6}, Ljavafx/scene/Node$LazyTransformProperty;->getInternalValue()Ljavafx/scene/transform/Transform;

    move-result-object v6

    .line 5654
    invoke-static {v5, v6}, Lcom/sun/javafx/scene/transform/TransformUtils;->immutableTransform(Ljavafx/scene/transform/Transform;Ljavafx/scene/transform/Transform;)Ljavafx/scene/transform/Transform;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method protected computeValidity()I
    .locals 10

    .prologue
    .line 5676
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    move-object v6, v1

    iget v6, v6, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->valid:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 5677
    move-object v6, v1

    iget v6, v6, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->valid:I

    move v1, v6

    .line 5700
    .end local v1    # "this":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    .local v2, "n":Ljavafx/scene/Node;
    .local v3, "parent":Ljavafx/scene/Node;
    :goto_0
    return v1

    .line 5680
    .end local v2    # "n":Ljavafx/scene/Node;
    .end local v3    # "parent":Ljavafx/scene/Node;
    .restart local v1    # "this":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->getBean()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    move-object v2, v6

    .line 5681
    .restart local v2    # "n":Ljavafx/scene/Node;
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v6

    move-object v3, v6

    .line 5683
    .restart local v3    # "parent":Ljavafx/scene/Node;
    move-object v6, v3

    if-eqz v6, :cond_3

    .line 5684
    move-object v6, v3

    .line 5685
    invoke-virtual {v6}, Ljavafx/scene/Node;->localToSceneTransformProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;

    move-object v4, v6

    .line 5687
    .local v4, "parentProperty":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->parentStamp:J

    move-object v8, v4

    iget-wide v8, v8, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->stamp:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 5688
    move-object v6, v1

    const/4 v7, 0x1

    iput v7, v6, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->valid:I

    .line 5689
    const/4 v6, 0x1

    move v1, v6

    goto :goto_0

    .line 5692
    :cond_1
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->computeValidity()I

    move-result v6

    move v5, v6

    .line 5693
    .local v5, "parentValid":I
    move v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 5694
    move-object v6, v1

    const/4 v7, 0x1

    iput v7, v6, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->valid:I

    .line 5696
    :cond_2
    move v6, v5

    move v1, v6

    goto :goto_0

    .line 5700
    .end local v4    # "parentProperty":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    .end local v5    # "parentValid":I
    :cond_3
    const/4 v6, 0x0

    move v1, v6

    goto :goto_0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 5661
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->this$1:Ljavafx/scene/Node$NodeTransformation;

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5666
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    const-string v1, "localToSceneTransform"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    return-object v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 4

    .prologue
    .line 5725
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->localToSceneListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->localToSceneListeners:Ljava/util/List;

    move-object v3, v1

    .line 5726
    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5727
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->this$1:Ljavafx/scene/Node$NodeTransformation;

    invoke-virtual {v2}, Ljavafx/scene/Node$NodeTransformation;->decListenerReasons()V

    .line 5729
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/Node$LazyTransformProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 5730
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/scene/transform/Transform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5734
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/scene/transform/Transform;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->localToSceneListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->localToSceneListeners:Ljava/util/List;

    move-object v3, v1

    .line 5735
    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5736
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->this$1:Ljavafx/scene/Node$NodeTransformation;

    invoke-virtual {v2}, Ljavafx/scene/Node$NodeTransformation;->decListenerReasons()V

    .line 5738
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/Node$LazyTransformProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 5739
    return-void
.end method

.method protected validityKnown()Z
    .locals 2

    .prologue
    .line 5671
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;->this$1:Ljavafx/scene/Node$NodeTransformation;

    invoke-static {v1}, Ljavafx/scene/Node$NodeTransformation;->access$300(Ljavafx/scene/Node$NodeTransformation;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

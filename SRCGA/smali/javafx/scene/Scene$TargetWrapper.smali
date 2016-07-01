.class Ljavafx/scene/Scene$TargetWrapper;
.super Ljava/lang/Object;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TargetWrapper"
.end annotation


# instance fields
.field private node:Ljavafx/scene/Node;

.field private result:Ljavafx/scene/input/PickResult;

.field private scene:Ljavafx/scene/Scene;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 5981
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$TargetWrapper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/Scene$1;)V
    .locals 3

    .prologue
    .line 5981
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$TargetWrapper;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/Scene$1;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Scene$TargetWrapper;-><init>()V

    return-void
.end method

.method private set(Ljavafx/scene/Node;Ljavafx/scene/Scene;)V
    .locals 5

    .prologue
    .line 6054
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$TargetWrapper;
    move-object v1, p1

    .local v1, "n":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "s":Ljavafx/scene/Scene;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Scene$TargetWrapper;->node:Ljavafx/scene/Node;

    .line 6055
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/Scene$TargetWrapper;->scene:Ljavafx/scene/Scene;

    .line 6056
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 6023
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$TargetWrapper;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Scene$TargetWrapper;->set(Ljavafx/scene/Node;Ljavafx/scene/Scene;)V

    .line 6024
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/Scene$TargetWrapper;->result:Ljavafx/scene/input/PickResult;

    .line 6025
    return-void
.end method

.method public copy(Ljavafx/scene/Scene$TargetWrapper;)V
    .locals 4

    .prologue
    .line 6048
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$TargetWrapper;
    move-object v1, p1

    .local v1, "tw":Ljavafx/scene/Scene$TargetWrapper;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/Scene$TargetWrapper;->node:Ljavafx/scene/Node;

    iput-object v3, v2, Ljavafx/scene/Scene$TargetWrapper;->node:Ljavafx/scene/Node;

    .line 6049
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/Scene$TargetWrapper;->scene:Ljavafx/scene/Scene;

    iput-object v3, v2, Ljavafx/scene/Scene$TargetWrapper;->scene:Ljavafx/scene/Scene;

    .line 6050
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/Scene$TargetWrapper;->result:Ljavafx/scene/input/PickResult;

    iput-object v3, v2, Ljavafx/scene/Scene$TargetWrapper;->result:Ljavafx/scene/input/PickResult;

    .line 6051
    return-void
.end method

.method public fillHierarchy(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/event/EventTarget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5990
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$TargetWrapper;
    move-object v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljavafx/event/EventTarget;>;"
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 5991
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$TargetWrapper;->node:Ljavafx/scene/Node;

    move-object v2, v4

    .line 5992
    .local v2, "n":Ljavafx/scene/Node;
    :goto_0
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 5993
    move-object v4, v1

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 5994
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    move-object v3, v4

    .line 5995
    .local v3, "p":Ljavafx/scene/Parent;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    :goto_1
    move-object v2, v4

    .line 5996
    goto :goto_0

    .line 5995
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v4

    goto :goto_1

    .line 5998
    .end local v3    # "p":Ljavafx/scene/Parent;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$TargetWrapper;->scene:Ljavafx/scene/Scene;

    if-eqz v4, :cond_2

    .line 5999
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$TargetWrapper;->scene:Ljavafx/scene/Scene;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 6001
    :cond_2
    return-void
.end method

.method public getCursor()Ljavafx/scene/Cursor;
    .locals 5

    .prologue
    .line 6008
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$TargetWrapper;
    const/4 v4, 0x0

    move-object v1, v4

    .line 6009
    .local v1, "cursor":Ljavafx/scene/Cursor;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$TargetWrapper;->node:Ljavafx/scene/Node;

    if-eqz v4, :cond_1

    .line 6010
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$TargetWrapper;->node:Ljavafx/scene/Node;

    invoke-virtual {v4}, Ljavafx/scene/Node;->getCursor()Ljavafx/scene/Cursor;

    move-result-object v4

    move-object v1, v4

    .line 6011
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$TargetWrapper;->node:Ljavafx/scene/Node;

    invoke-virtual {v4}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    move-object v2, v4

    .line 6012
    .local v2, "n":Ljavafx/scene/Node;
    :goto_0
    move-object v4, v1

    if-nez v4, :cond_1

    move-object v4, v2

    if-eqz v4, :cond_1

    .line 6013
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Node;->getCursor()Ljavafx/scene/Cursor;

    move-result-object v4

    move-object v1, v4

    .line 6015
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    move-object v3, v4

    .line 6016
    .local v3, "p":Ljavafx/scene/Parent;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    :goto_1
    move-object v2, v4

    .line 6017
    goto :goto_0

    .line 6016
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v4

    goto :goto_1

    .line 6019
    .end local v2    # "n":Ljavafx/scene/Node;
    .end local v3    # "p":Ljavafx/scene/Parent;
    :cond_1
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/Scene$TargetWrapper;
    return-object v0
.end method

.method public getEventTarget()Ljavafx/event/EventTarget;
    .locals 2

    .prologue
    .line 6004
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$TargetWrapper;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$TargetWrapper;->node:Ljavafx/scene/Node;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$TargetWrapper;->node:Ljavafx/scene/Node;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$TargetWrapper;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene$TargetWrapper;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$TargetWrapper;->scene:Ljavafx/scene/Scene;

    goto :goto_0
.end method

.method public getResult()Ljavafx/scene/input/PickResult;
    .locals 2

    .prologue
    .line 6044
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$TargetWrapper;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$TargetWrapper;->result:Ljavafx/scene/input/PickResult;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$TargetWrapper;
    return-object v0
.end method

.method public setNodeResult(Ljavafx/scene/input/PickResult;)V
    .locals 6

    .prologue
    .line 6028
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$TargetWrapper;
    move-object v1, p1

    .local v1, "result":Ljavafx/scene/input/PickResult;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 6029
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Scene$TargetWrapper;->result:Ljavafx/scene/input/PickResult;

    .line 6030
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/PickResult;->getIntersectedNode()Ljavafx/scene/Node;

    move-result-object v3

    move-object v2, v3

    .line 6031
    .local v2, "n":Ljavafx/scene/Node;
    move-object v3, v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Scene$TargetWrapper;->set(Ljavafx/scene/Node;Ljavafx/scene/Scene;)V

    .line 6033
    .end local v2    # "n":Ljavafx/scene/Node;
    :cond_0
    return-void
.end method

.method public setSceneResult(Ljavafx/scene/input/PickResult;Ljavafx/scene/Scene;)V
    .locals 6

    .prologue
    .line 6037
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$TargetWrapper;
    move-object v1, p1

    .local v1, "result":Ljavafx/scene/input/PickResult;
    move-object v2, p2

    .local v2, "scene":Ljavafx/scene/Scene;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 6038
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Scene$TargetWrapper;->result:Ljavafx/scene/input/PickResult;

    .line 6039
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Scene$TargetWrapper;->set(Ljavafx/scene/Node;Ljavafx/scene/Scene;)V

    .line 6041
    :cond_0
    return-void
.end method

.class abstract Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;
.super Ljava/lang/Object;
.source "TraversalEngine.java"

# interfaces
.implements Lcom/sun/javafx/scene/traversal/TraversalContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/traversal/TraversalEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseEngineContext"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/traversal/TraversalEngine;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/traversal/TraversalEngine;)V
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;->this$0:Lcom/sun/javafx/scene/traversal/TraversalEngine;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/scene/traversal/TraversalEngine;Lcom/sun/javafx/scene/traversal/TraversalEngine$1;)V
    .locals 5

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/scene/traversal/TraversalEngine$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;-><init>(Lcom/sun/javafx/scene/traversal/TraversalEngine;)V

    return-void
.end method

.method private addFocusableChildrenToList(Ljava/util/List;Ljavafx/scene/Parent;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Ljavafx/scene/Parent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;
    move-object v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v2, p2

    .local v2, "parent":Ljavafx/scene/Parent;
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/Parent;->getChildrenUnmodifiable()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v3, v6

    .line 206
    .local v3, "parentsNodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    move-object v5, v6

    .line 207
    .local v5, "n":Ljavafx/scene/Node;
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/Node;->isFocusTraversable()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/Node;->isFocused()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/Node;->impl_isTreeVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/Node;->isDisabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 208
    move-object v6, v1

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 210
    :cond_0
    move-object v6, v5

    instance-of v6, v6, Ljavafx/scene/Parent;

    if-eqz v6, :cond_1

    .line 211
    move-object v6, v0

    move-object v7, v1

    move-object v8, v5

    check-cast v8, Ljavafx/scene/Parent;

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;->addFocusableChildrenToList(Ljava/util/List;Ljavafx/scene/Parent;)V

    .line 213
    :cond_1
    goto :goto_0

    .line 214
    .end local v5    # "n":Ljavafx/scene/Node;
    :cond_2
    return-void
.end method


# virtual methods
.method public getAllTargetNodes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;
    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 195
    .local v1, "targetNodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;->getRoot()Ljavafx/scene/Parent;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;->addFocusableChildrenToList(Ljava/util/List;Ljavafx/scene/Parent;)V

    .line 196
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;
    return-object v0
.end method

.method public getSceneLayoutBounds(Ljavafx/scene/Node;)Ljavafx/geometry/Bounds;
    .locals 5

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;
    move-object v1, p1

    .local v1, "n":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;->this$0:Lcom/sun/javafx/scene/traversal/TraversalEngine;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sun/javafx/scene/traversal/TraversalEngine;->access$300(Lcom/sun/javafx/scene/traversal/TraversalEngine;Ljavafx/scene/Node;Ljavafx/scene/Parent;)Ljavafx/geometry/Bounds;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;
    return-object v0
.end method

.method public selectFirstInParent(Ljavafx/scene/Parent;)Ljavafx/scene/Node;
    .locals 4

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;
    move-object v1, p1

    .local v1, "parent":Ljavafx/scene/Parent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;->this$0:Lcom/sun/javafx/scene/traversal/TraversalEngine;

    invoke-static {v2}, Lcom/sun/javafx/scene/traversal/TraversalEngine;->access$400(Lcom/sun/javafx/scene/traversal/TraversalEngine;)Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;->setRoot(Ljavafx/scene/Parent;)V

    .line 223
    sget-object v2, Lcom/sun/javafx/scene/traversal/TraversalEngine;->DEFAULT_ALGORITHM:Lcom/sun/javafx/scene/traversal/Algorithm;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;->this$0:Lcom/sun/javafx/scene/traversal/TraversalEngine;

    invoke-static {v3}, Lcom/sun/javafx/scene/traversal/TraversalEngine;->access$400(Lcom/sun/javafx/scene/traversal/TraversalEngine;)Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sun/javafx/scene/traversal/Algorithm;->selectFirst(Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;
    return-object v0
.end method

.method public selectInSubtree(Ljavafx/scene/Parent;Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)Ljavafx/scene/Node;
    .locals 8

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;
    move-object v1, p1

    .local v1, "subTreeRoot":Ljavafx/scene/Parent;
    move-object v2, p2

    .local v2, "from":Ljavafx/scene/Node;
    move-object v3, p3

    .local v3, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;->this$0:Lcom/sun/javafx/scene/traversal/TraversalEngine;

    invoke-static {v4}, Lcom/sun/javafx/scene/traversal/TraversalEngine;->access$400(Lcom/sun/javafx/scene/traversal/TraversalEngine;)Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;->setRoot(Ljavafx/scene/Parent;)V

    .line 235
    sget-object v4, Lcom/sun/javafx/scene/traversal/TraversalEngine;->DEFAULT_ALGORITHM:Lcom/sun/javafx/scene/traversal/Algorithm;

    move-object v5, v2

    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;->this$0:Lcom/sun/javafx/scene/traversal/TraversalEngine;

    invoke-static {v7}, Lcom/sun/javafx/scene/traversal/TraversalEngine;->access$400(Lcom/sun/javafx/scene/traversal/TraversalEngine;)Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/sun/javafx/scene/traversal/Algorithm;->select(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;
    return-object v0
.end method

.method public selectLastInParent(Ljavafx/scene/Parent;)Ljavafx/scene/Node;
    .locals 4

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;
    move-object v1, p1

    .local v1, "parent":Ljavafx/scene/Parent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;->this$0:Lcom/sun/javafx/scene/traversal/TraversalEngine;

    invoke-static {v2}, Lcom/sun/javafx/scene/traversal/TraversalEngine;->access$400(Lcom/sun/javafx/scene/traversal/TraversalEngine;)Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;->setRoot(Ljavafx/scene/Parent;)V

    .line 229
    sget-object v2, Lcom/sun/javafx/scene/traversal/TraversalEngine;->DEFAULT_ALGORITHM:Lcom/sun/javafx/scene/traversal/Algorithm;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;->this$0:Lcom/sun/javafx/scene/traversal/TraversalEngine;

    invoke-static {v3}, Lcom/sun/javafx/scene/traversal/TraversalEngine;->access$400(Lcom/sun/javafx/scene/traversal/TraversalEngine;)Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sun/javafx/scene/traversal/Algorithm;->selectLast(Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;
    return-object v0
.end method

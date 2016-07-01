.class final Lcom/sun/javafx/scene/traversal/TabOrderHelper;
.super Ljava/lang/Object;
.source "TabOrderHelper.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TabOrderHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findNextFocusableInList(Ljava/util/List;I)Ljavafx/scene/Node;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;I)",
            "Ljavafx/scene/Node;"
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "nodeList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move v1, p1

    .local v1, "startIndex":I
    move v7, v1

    move v2, v7

    .local v2, "i":I
    :goto_0
    move v7, v2

    move-object v8, v0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 127
    move-object v7, v0

    move v8, v2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Node;

    move-object v3, v7

    .line 128
    .local v3, "nextNode":Ljavafx/scene/Node;
    move-object v7, v3

    invoke-static {v7}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->isDisabledOrInvisible(Ljavafx/scene/Node;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 126
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_1
    move-object v7, v3

    instance-of v7, v7, Ljavafx/scene/Parent;

    if-eqz v7, :cond_3

    move-object v7, v3

    check-cast v7, Ljavafx/scene/Parent;

    invoke-virtual {v7}, Ljavafx/scene/Parent;->getImpl_traversalEngine()Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    move-result-object v7

    :goto_1
    move-object v4, v7

    .line 131
    .local v4, "impl_traversalEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    move-object v7, v4

    if-eqz v7, :cond_4

    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->isParentTraversable()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 132
    :cond_2
    move-object v7, v3

    move-object v0, v7

    .line 153
    .end local v0    # "nodeList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .end local v3    # "nextNode":Ljavafx/scene/Node;
    .end local v4    # "impl_traversalEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :goto_2
    return-object v0

    .line 129
    .restart local v0    # "nodeList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .restart local v3    # "nextNode":Ljavafx/scene/Node;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 131
    .restart local v4    # "impl_traversalEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :cond_4
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/Node;->isFocusTraversable()Z

    move-result v7

    if-nez v7, :cond_2

    .line 134
    :cond_5
    move-object v7, v3

    instance-of v7, v7, Ljavafx/scene/Parent;

    if-eqz v7, :cond_0

    .line 135
    move-object v7, v4

    if-eqz v7, :cond_6

    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->canTraverse()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 136
    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->selectFirst()Ljavafx/scene/Node;

    move-result-object v7

    move-object v5, v7

    .line 137
    .local v5, "selected":Ljavafx/scene/Node;
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 138
    move-object v7, v5

    move-object v0, v7

    goto :goto_2

    .line 144
    .end local v5    # "selected":Ljavafx/scene/Node;
    :cond_6
    move-object v7, v3

    check-cast v7, Ljavafx/scene/Parent;

    invoke-virtual {v7}, Ljavafx/scene/Parent;->getChildrenUnmodifiable()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v5, v7

    .line 145
    .local v5, "nextNodesList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 146
    move-object v7, v5

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->findNextFocusableInList(Ljava/util/List;I)Ljavafx/scene/Node;

    move-result-object v7

    move-object v6, v7

    .line 147
    .local v6, "newNode":Ljavafx/scene/Node;
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 148
    move-object v7, v6

    move-object v0, v7

    goto :goto_2

    .line 153
    .end local v3    # "nextNode":Ljavafx/scene/Node;
    .end local v4    # "impl_traversalEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    .end local v5    # "nextNodesList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .end local v6    # "newNode":Ljavafx/scene/Node;
    :cond_7
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_2
.end method

.method public static findNextFocusablePeer(Ljavafx/scene/Node;Ljavafx/scene/Parent;Z)Ljavafx/scene/Node;
    .locals 11

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "root":Ljavafx/scene/Parent;
    move v2, p2

    .local v2, "traverseIntoCurrent":Z
    move-object v8, v0

    move-object v3, v8

    .line 158
    .local v3, "startNode":Ljavafx/scene/Node;
    const/4 v8, 0x0

    move-object v4, v8

    .line 161
    .local v4, "newNode":Ljavafx/scene/Node;
    move v8, v2

    if-eqz v8, :cond_0

    move-object v8, v0

    instance-of v8, v8, Ljavafx/scene/Parent;

    if-eqz v8, :cond_0

    .line 162
    move-object v8, v0

    check-cast v8, Ljavafx/scene/Parent;

    invoke-virtual {v8}, Ljavafx/scene/Parent;->getChildrenUnmodifiable()Ljavafx/collections/ObservableList;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->findNextFocusableInList(Ljava/util/List;I)Ljavafx/scene/Node;

    move-result-object v8

    move-object v4, v8

    .line 166
    :cond_0
    move-object v8, v4

    if-nez v8, :cond_2

    .line 167
    move-object v8, v3

    invoke-static {v8}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->findPeers(Ljavafx/scene/Node;)Ljava/util/List;

    move-result-object v8

    move-object v5, v8

    .line 168
    .local v5, "parentNodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v8, v5

    if-nez v8, :cond_1

    .line 171
    const/4 v8, 0x0

    move-object v0, v8

    .line 196
    .end local v0    # "node":Ljavafx/scene/Node;
    .end local v5    # "parentNodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    :goto_0
    return-object v0

    .line 173
    .restart local v0    # "node":Ljavafx/scene/Node;
    .restart local v5    # "parentNodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    :cond_1
    move-object v8, v5

    move-object v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    move v6, v8

    .line 174
    .local v6, "ourIndex":I
    move-object v8, v5

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->findNextFocusableInList(Ljava/util/List;I)Ljavafx/scene/Node;

    move-result-object v8

    move-object v4, v8

    .line 181
    .end local v5    # "parentNodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .end local v6    # "ourIndex":I
    :cond_2
    :goto_1
    move-object v8, v4

    if-nez v8, :cond_4

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v8

    move-object v9, v1

    if-eq v8, v9, :cond_4

    .line 185
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v8

    move-object v7, v8

    .line 186
    .local v7, "parent":Ljavafx/scene/Parent;
    move-object v8, v7

    if-eqz v8, :cond_3

    .line 187
    move-object v8, v7

    invoke-static {v8}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->findPeers(Ljavafx/scene/Node;)Ljava/util/List;

    move-result-object v8

    move-object v5, v8

    .line 188
    .local v5, "peerNodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v8, v5

    if-eqz v8, :cond_3

    .line 189
    move-object v8, v5

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    move v6, v8

    .line 190
    .local v6, "parentIndex":I
    move-object v8, v5

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->findNextFocusableInList(Ljava/util/List;I)Ljavafx/scene/Node;

    move-result-object v8

    move-object v4, v8

    .line 193
    .end local v5    # "peerNodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .end local v6    # "parentIndex":I
    :cond_3
    move-object v8, v7

    move-object v3, v8

    .line 194
    goto :goto_1

    .line 196
    .end local v7    # "parent":Ljavafx/scene/Parent;
    :cond_4
    move-object v8, v4

    move-object v0, v8

    goto :goto_0
.end method

.method private static findPeers(Ljavafx/scene/Node;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    const/4 v3, 0x0

    move-object v1, v3

    .line 115
    .local v1, "parentNodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v3

    move-object v2, v3

    .line 119
    .local v2, "parent":Ljavafx/scene/Parent;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 120
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Parent;->getChildrenUnmodifiable()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v1, v3

    .line 122
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "node":Ljavafx/scene/Node;
    return-object v0
.end method

.method private static findPreviousFocusableInList(Ljava/util/List;I)Ljavafx/scene/Node;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;I)",
            "Ljavafx/scene/Node;"
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "nodeList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move v1, p1

    .local v1, "startIndex":I
    move v7, v1

    move v2, v7

    .local v2, "i":I
    :goto_0
    move v7, v2

    if-ltz v7, :cond_6

    .line 38
    move-object v7, v0

    move v8, v2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Node;

    move-object v3, v7

    .line 40
    .local v3, "prevNode":Ljavafx/scene/Node;
    move-object v7, v3

    invoke-static {v7}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->isDisabledOrInvisible(Ljavafx/scene/Node;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 37
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 41
    :cond_1
    move-object v7, v3

    instance-of v7, v7, Ljavafx/scene/Parent;

    if-eqz v7, :cond_2

    move-object v7, v3

    check-cast v7, Ljavafx/scene/Parent;

    invoke-virtual {v7}, Ljavafx/scene/Parent;->getImpl_traversalEngine()Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    move-result-object v7

    :goto_1
    move-object v4, v7

    .line 42
    .local v4, "impl_traversalEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    move-object v7, v3

    instance-of v7, v7, Ljavafx/scene/Parent;

    if-eqz v7, :cond_3

    .line 43
    move-object v7, v4

    if-eqz v7, :cond_4

    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->canTraverse()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 44
    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->selectLast()Ljavafx/scene/Node;

    move-result-object v7

    move-object v5, v7

    .line 45
    .local v5, "selected":Ljavafx/scene/Node;
    move-object v7, v5

    if-eqz v7, :cond_3

    .line 46
    move-object v7, v5

    move-object v0, v7

    .line 62
    .end local v0    # "nodeList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .end local v3    # "prevNode":Ljavafx/scene/Node;
    .end local v4    # "impl_traversalEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    .end local v5    # "selected":Ljavafx/scene/Node;
    :goto_2
    return-object v0

    .line 41
    .restart local v0    # "nodeList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .restart local v3    # "prevNode":Ljavafx/scene/Node;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 48
    .line 58
    .restart local v4    # "impl_traversalEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :cond_3
    move-object v7, v4

    if-eqz v7, :cond_5

    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->isParentTraversable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 59
    :goto_3
    move-object v7, v3

    move-object v0, v7

    goto :goto_2

    .line 49
    :cond_4
    move-object v7, v3

    check-cast v7, Ljavafx/scene/Parent;

    invoke-virtual {v7}, Ljavafx/scene/Parent;->getChildrenUnmodifiable()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v5, v7

    .line 50
    .local v5, "prevNodesList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 51
    move-object v7, v5

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->findPreviousFocusableInList(Ljava/util/List;I)Ljavafx/scene/Node;

    move-result-object v7

    move-object v6, v7

    .line 52
    .local v6, "newNode":Ljavafx/scene/Node;
    move-object v7, v6

    if-eqz v7, :cond_3

    .line 53
    move-object v7, v6

    move-object v0, v7

    goto :goto_2

    .line 58
    .end local v5    # "prevNodesList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .end local v6    # "newNode":Ljavafx/scene/Node;
    :cond_5
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/Node;->isFocusTraversable()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_3

    .line 62
    .end local v3    # "prevNode":Ljavafx/scene/Node;
    .end local v4    # "impl_traversalEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :cond_6
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_2
.end method

.method public static findPreviousFocusablePeer(Ljavafx/scene/Node;Ljavafx/scene/Parent;)Ljavafx/scene/Node;
    .locals 13

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "root":Ljavafx/scene/Parent;
    move-object v10, v0

    move-object v2, v10

    .line 71
    .local v2, "startNode":Ljavafx/scene/Node;
    const/4 v10, 0x0

    move-object v3, v10

    .line 72
    .local v3, "newNode":Ljavafx/scene/Node;
    move-object v10, v2

    invoke-static {v10}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->findPeers(Ljavafx/scene/Node;)Ljava/util/List;

    move-result-object v10

    move-object v4, v10

    .line 74
    .local v4, "parentNodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v10, v4

    if-nez v10, :cond_0

    .line 76
    move-object v10, v0

    check-cast v10, Ljavafx/scene/Parent;

    invoke-virtual {v10}, Ljavafx/scene/Parent;->getChildrenUnmodifiable()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v5, v10

    .line 77
    .local v5, "rootChildren":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    move-object v10, v5

    move-object v11, v5

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->size()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->findPreviousFocusableInList(Ljava/util/List;I)Ljavafx/scene/Node;

    move-result-object v10

    move-object v0, v10

    .line 110
    .end local v0    # "node":Ljavafx/scene/Node;
    .end local v5    # "rootChildren":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    :goto_0
    return-object v0

    .line 80
    .restart local v0    # "node":Ljavafx/scene/Node;
    :cond_0
    move-object v10, v4

    move-object v11, v2

    invoke-interface {v10, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    move v5, v10

    .line 83
    .local v5, "ourIndex":I
    move-object v10, v4

    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->findPreviousFocusableInList(Ljava/util/List;I)Ljavafx/scene/Node;

    move-result-object v10

    move-object v3, v10

    .line 89
    :goto_1
    move-object v10, v3

    if-nez v10, :cond_5

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v10

    move-object v11, v1

    if-eq v10, v11, :cond_5

    .line 93
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v10

    move-object v8, v10

    .line 94
    .local v8, "parent":Ljavafx/scene/Parent;
    move-object v10, v8

    if-eqz v10, :cond_2

    .line 96
    move-object v10, v8

    invoke-virtual {v10}, Ljavafx/scene/Parent;->getImpl_traversalEngine()Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    move-result-object v10

    move-object v9, v10

    .line 97
    .local v9, "parentEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    move-object v10, v9

    if-eqz v10, :cond_3

    move-object v10, v9

    invoke-virtual {v10}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->isParentTraversable()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 98
    :cond_1
    move-object v10, v8

    move-object v3, v10

    .line 107
    .end local v9    # "parentEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :cond_2
    :goto_2
    move-object v10, v8

    move-object v2, v10

    .line 108
    goto :goto_1

    .line 97
    .restart local v9    # "parentEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :cond_3
    move-object v10, v8

    invoke-virtual {v10}, Ljavafx/scene/Parent;->isFocusTraversable()Z

    move-result v10

    if-nez v10, :cond_1

    .line 100
    :cond_4
    move-object v10, v8

    invoke-static {v10}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->findPeers(Ljavafx/scene/Node;)Ljava/util/List;

    move-result-object v10

    move-object v6, v10

    .line 101
    .local v6, "peerNodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v10, v6

    if-eqz v10, :cond_2

    .line 102
    move-object v10, v6

    move-object v11, v8

    invoke-interface {v10, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    move v7, v10

    .line 103
    .local v7, "parentIndex":I
    move-object v10, v6

    move v11, v7

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->findPreviousFocusableInList(Ljava/util/List;I)Ljavafx/scene/Node;

    move-result-object v10

    move-object v3, v10

    goto :goto_2

    .line 110
    .end local v6    # "peerNodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .end local v7    # "parentIndex":I
    .end local v8    # "parent":Ljavafx/scene/Parent;
    .end local v9    # "parentEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :cond_5
    move-object v10, v3

    move-object v0, v10

    goto :goto_0
.end method

.method public static getFirstTargetNode(Ljavafx/scene/Parent;)Ljavafx/scene/Node;
    .locals 8

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "p":Ljavafx/scene/Parent;
    move-object v7, v0

    if-eqz v7, :cond_0

    move-object v7, v0

    invoke-static {v7}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->isDisabledOrInvisible(Ljavafx/scene/Node;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const/4 v7, 0x0

    move-object v0, v7

    .line 220
    .end local v0    # "p":Ljavafx/scene/Parent;
    .local v1, "impl_traversalEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :goto_0
    return-object v0

    .line 201
    .end local v1    # "impl_traversalEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    .restart local v0    # "p":Ljavafx/scene/Parent;
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/Parent;->getImpl_traversalEngine()Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    move-result-object v7

    move-object v1, v7

    .line 202
    .restart local v1    # "impl_traversalEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    move-object v7, v1

    if-eqz v7, :cond_2

    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->canTraverse()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 203
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->selectFirst()Ljavafx/scene/Node;

    move-result-object v7

    move-object v2, v7

    .line 204
    .local v2, "selected":Ljavafx/scene/Node;
    move-object v7, v2

    if-eqz v7, :cond_2

    .line 205
    move-object v7, v2

    move-object v0, v7

    goto :goto_0

    .line 208
    .end local v2    # "selected":Ljavafx/scene/Node;
    :cond_2
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/Parent;->getChildrenUnmodifiable()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v2, v7

    .line 209
    .local v2, "parentsNodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    :goto_1
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Node;

    move-object v4, v7

    .line 210
    .local v4, "n":Ljavafx/scene/Node;
    move-object v7, v4

    invoke-static {v7}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->isDisabledOrInvisible(Ljavafx/scene/Node;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    .line 211
    :cond_3
    move-object v7, v4

    instance-of v7, v7, Ljavafx/scene/Parent;

    if-eqz v7, :cond_5

    move-object v7, v4

    check-cast v7, Ljavafx/scene/Parent;

    invoke-virtual {v7}, Ljavafx/scene/Parent;->getImpl_traversalEngine()Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    move-result-object v7

    :goto_2
    move-object v5, v7

    .line 212
    .local v5, "parentEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    move-object v7, v5

    if-eqz v7, :cond_6

    move-object v7, v5

    invoke-virtual {v7}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->isParentTraversable()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 213
    :cond_4
    move-object v7, v4

    move-object v0, v7

    goto :goto_0

    .line 211
    .end local v5    # "parentEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 212
    .restart local v5    # "parentEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :cond_6
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/Node;->isFocusTraversable()Z

    move-result v7

    if-nez v7, :cond_4

    .line 215
    :cond_7
    move-object v7, v4

    instance-of v7, v7, Ljavafx/scene/Parent;

    if-eqz v7, :cond_8

    .line 216
    move-object v7, v4

    check-cast v7, Ljavafx/scene/Parent;

    invoke-static {v7}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->getFirstTargetNode(Ljavafx/scene/Parent;)Ljavafx/scene/Node;

    move-result-object v7

    move-object v6, v7

    .line 217
    .local v6, "result":Ljavafx/scene/Node;
    move-object v7, v6

    if-eqz v7, :cond_8

    move-object v7, v6

    move-object v0, v7

    goto :goto_0

    .line 219
    .end local v6    # "result":Ljavafx/scene/Node;
    :cond_8
    goto :goto_1

    .line 220
    .end local v4    # "n":Ljavafx/scene/Node;
    .end local v5    # "parentEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :cond_9
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0
.end method

.method public static getLastTargetNode(Ljavafx/scene/Parent;)Ljavafx/scene/Node;
    .locals 8

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "p":Ljavafx/scene/Parent;
    move-object v6, v0

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-static {v6}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->isDisabledOrInvisible(Ljavafx/scene/Node;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    .line 246
    .end local v0    # "p":Ljavafx/scene/Parent;
    .local v1, "impl_traversalEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :goto_0
    return-object v0

    .line 225
    .end local v1    # "impl_traversalEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    .restart local v0    # "p":Ljavafx/scene/Parent;
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/Parent;->getImpl_traversalEngine()Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    move-result-object v6

    move-object v1, v6

    .line 226
    .restart local v1    # "impl_traversalEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    move-object v6, v1

    if-eqz v6, :cond_2

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->canTraverse()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 227
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->selectLast()Ljavafx/scene/Node;

    move-result-object v6

    move-object v2, v6

    .line 228
    .local v2, "selected":Ljavafx/scene/Node;
    move-object v6, v2

    if-eqz v6, :cond_2

    .line 229
    move-object v6, v2

    move-object v0, v6

    goto :goto_0

    .line 232
    .end local v2    # "selected":Ljavafx/scene/Node;
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/Parent;->getChildrenUnmodifiable()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v2, v6

    .line 233
    .local v2, "parentsNodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    .local v3, "i":I
    :goto_1
    move v6, v3

    if-ltz v6, :cond_8

    .line 234
    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    move-object v4, v6

    .line 235
    .local v4, "n":Ljavafx/scene/Node;
    move-object v6, v4

    invoke-static {v6}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->isDisabledOrInvisible(Ljavafx/scene/Node;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 233
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 237
    :cond_4
    move-object v6, v4

    instance-of v6, v6, Ljavafx/scene/Parent;

    if-eqz v6, :cond_5

    .line 238
    move-object v6, v4

    check-cast v6, Ljavafx/scene/Parent;

    invoke-static {v6}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->getLastTargetNode(Ljavafx/scene/Parent;)Ljavafx/scene/Node;

    move-result-object v6

    move-object v5, v6

    .line 239
    .local v5, "result":Ljavafx/scene/Node;
    move-object v6, v5

    if-eqz v6, :cond_5

    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 241
    .end local v5    # "result":Ljavafx/scene/Node;
    :cond_5
    move-object v6, v4

    instance-of v6, v6, Ljavafx/scene/Parent;

    if-eqz v6, :cond_6

    move-object v6, v4

    check-cast v6, Ljavafx/scene/Parent;

    invoke-virtual {v6}, Ljavafx/scene/Parent;->getImpl_traversalEngine()Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    move-result-object v6

    :goto_2
    move-object v5, v6

    .line 242
    .local v5, "parentEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    move-object v6, v5

    if-eqz v6, :cond_7

    move-object v6, v5

    invoke-virtual {v6}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->isParentTraversable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 243
    :goto_3
    move-object v6, v4

    move-object v0, v6

    goto :goto_0

    .line 241
    .end local v5    # "parentEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 242
    .restart local v5    # "parentEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :cond_7
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/Node;->isFocusTraversable()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    .line 246
    .end local v4    # "n":Ljavafx/scene/Node;
    .end local v5    # "parentEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :cond_8
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method private static isDisabledOrInvisible(Ljavafx/scene/Node;)Z
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "prevNode":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->impl_isTreeVisible()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "prevNode":Ljavafx/scene/Node;
    return v0

    .restart local v0    # "prevNode":Ljavafx/scene/Node;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

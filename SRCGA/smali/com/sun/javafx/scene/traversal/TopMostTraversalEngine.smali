.class public abstract Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;
.super Lcom/sun/javafx/scene/traversal/TraversalEngine;
.source "TopMostTraversalEngine.java"


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;->DEFAULT_ALGORITHM:Lcom/sun/javafx/scene/traversal/Algorithm;

    invoke-direct {v1, v2}, Lcom/sun/javafx/scene/traversal/TraversalEngine;-><init>(Lcom/sun/javafx/scene/traversal/Algorithm;)V

    .line 53
    return-void
.end method

.method constructor <init>(Lcom/sun/javafx/scene/traversal/Algorithm;)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;
    move-object v1, p1

    .local v1, "algorithm":Lcom/sun/javafx/scene/traversal/Algorithm;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/traversal/TraversalEngine;-><init>(Lcom/sun/javafx/scene/traversal/Algorithm;)V

    .line 60
    return-void
.end method

.method private focusAndNotify(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;
    move-object v1, p1

    .local v1, "newNode":Ljavafx/scene/Node;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->requestFocus()V

    .line 111
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;->notifyTreeTraversedTo(Ljavafx/scene/Node;)V

    .line 112
    return-void
.end method

.method private notifyTreeTraversedTo(Ljavafx/scene/Node;)V
    .locals 6

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;
    move-object v1, p1

    .local v1, "newNode":Ljavafx/scene/Node;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    move-object v2, v4

    .line 116
    .local v2, "p":Ljavafx/scene/Parent;
    :goto_0
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 117
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Parent;->getImpl_traversalEngine()Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    move-result-object v4

    move-object v3, v4

    .line 118
    .local v3, "impl_traversalEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 119
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->notifyTraversedTo(Ljavafx/scene/Node;)V

    .line 121
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Parent;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    move-object v2, v4

    .line 122
    goto :goto_0

    .line 123
    .end local v3    # "impl_traversalEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;->notifyTraversedTo(Ljavafx/scene/Node;)V

    .line 124
    return-void
.end method


# virtual methods
.method public final trav(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)Ljavafx/scene/Node;
    .locals 10

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    const/4 v7, 0x0

    move-object v3, v7

    .line 71
    .local v3, "newNode":Ljavafx/scene/Node;
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v7

    move-object v4, v7

    .line 72
    .local v4, "p":Ljavafx/scene/Parent;
    move-object v7, v1

    move-object v5, v7

    .line 73
    .local v5, "traverseNode":Ljavafx/scene/Node;
    :goto_0
    move-object v7, v4

    if-eqz v7, :cond_0

    .line 75
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/Parent;->getImpl_traversalEngine()Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    move-result-object v7

    move-object v6, v7

    .line 76
    .local v6, "engine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    move-object v7, v6

    if-eqz v7, :cond_6

    move-object v7, v6

    invoke-virtual {v7}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->canTraverse()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 77
    move-object v7, v6

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->select(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)Ljavafx/scene/Node;

    move-result-object v7

    move-object v3, v7

    .line 78
    move-object v7, v3

    if-eqz v7, :cond_5

    .line 79
    .line 93
    .end local v6    # "engine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :cond_0
    move-object v7, v3

    if-nez v7, :cond_1

    .line 94
    move-object v7, v0

    move-object v8, v5

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;->select(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)Ljavafx/scene/Node;

    move-result-object v7

    move-object v3, v7

    .line 96
    :cond_1
    move-object v7, v3

    if-nez v7, :cond_3

    .line 97
    move-object v7, v2

    sget-object v8, Lcom/sun/javafx/scene/traversal/Direction;->NEXT:Lcom/sun/javafx/scene/traversal/Direction;

    if-eq v7, v8, :cond_2

    move-object v7, v2

    sget-object v8, Lcom/sun/javafx/scene/traversal/Direction;->NEXT_IN_LINE:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v7, v8, :cond_7

    .line 98
    :cond_2
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;->selectFirst()Ljavafx/scene/Node;

    move-result-object v7

    move-object v3, v7

    .line 103
    :cond_3
    :goto_1
    move-object v7, v3

    if-eqz v7, :cond_4

    .line 104
    move-object v7, v0

    move-object v8, v3

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;->focusAndNotify(Ljavafx/scene/Node;)V

    .line 106
    :cond_4
    move-object v7, v3

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;
    return-object v0

    .line 84
    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;
    .restart local v6    # "engine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :cond_5
    move-object v7, v4

    move-object v5, v7

    .line 85
    move-object v7, v2

    sget-object v8, Lcom/sun/javafx/scene/traversal/Direction;->NEXT:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v7, v8, :cond_6

    .line 86
    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->NEXT_IN_LINE:Lcom/sun/javafx/scene/traversal/Direction;

    move-object v2, v7

    .line 90
    :cond_6
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/Parent;->getParent()Ljavafx/scene/Parent;

    move-result-object v7

    move-object v4, v7

    .line 91
    goto :goto_0

    .line 99
    .end local v6    # "engine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :cond_7
    move-object v7, v2

    sget-object v8, Lcom/sun/javafx/scene/traversal/Direction;->PREVIOUS:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v7, v8, :cond_3

    .line 100
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;->selectLast()Ljavafx/scene/Node;

    move-result-object v7

    move-object v3, v7

    goto :goto_1
.end method

.method public final traverseToFirst()Ljavafx/scene/Node;
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;->selectFirst()Ljavafx/scene/Node;

    move-result-object v2

    move-object v1, v2

    .line 132
    .local v1, "n":Ljavafx/scene/Node;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;->focusAndNotify(Ljavafx/scene/Node;)V

    .line 133
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;
    return-object v0
.end method

.method public final traverseToLast()Ljavafx/scene/Node;
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;->selectLast()Ljavafx/scene/Node;

    move-result-object v2

    move-object v1, v2

    .line 142
    .local v1, "n":Ljavafx/scene/Node;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;->focusAndNotify(Ljavafx/scene/Node;)V

    .line 143
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;
    return-object v0
.end method

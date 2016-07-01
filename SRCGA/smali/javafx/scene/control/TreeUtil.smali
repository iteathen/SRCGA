.class Ljavafx/scene/control/TreeUtil;
.super Ljava/lang/Object;
.source "TreeUtil.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getExpandedDescendantCount(Ljavafx/scene/control/TreeItem;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;Z)I"
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move v1, p1

    .local v1, "treeItemCountDirty":Z
    move-object v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 40
    .end local v0    # "node":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :goto_0
    return v0

    .line 38
    .restart local v0    # "node":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeItem;->isLeaf()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 40
    :cond_1
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeItem;->getExpandedDescendentCount(Z)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method static getItem(Ljavafx/scene/control/TreeItem;IZ)Ljavafx/scene/control/TreeItem;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;IZ)",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "parent":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move v1, p1

    .local v1, "itemIndex":I
    move v2, p2

    .local v2, "treeItemCountDirty":Z
    move-object v10, v0

    if-nez v10, :cond_0

    const/4 v10, 0x0

    move-object v0, v10

    .line 93
    .end local v0    # "parent":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :goto_0
    return-object v0

    .line 60
    .restart local v0    # "parent":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_0
    move v10, v1

    if-nez v10, :cond_1

    move-object v10, v0

    move-object v0, v10

    goto :goto_0

    .line 63
    :cond_1
    move v10, v1

    move-object v11, v0

    move v12, v2

    invoke-static {v11, v12}, Ljavafx/scene/control/TreeUtil;->getExpandedDescendantCount(Ljavafx/scene/control/TreeItem;Z)I

    move-result v11

    if-lt v10, v11, :cond_2

    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 66
    :cond_2
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TreeItem;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v3, v10

    .line 67
    .local v3, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v10, v3

    if-nez v10, :cond_3

    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 69
    :cond_3
    move v10, v1

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v4, v10

    .line 72
    .local v4, "idx":I
    const/4 v10, 0x0

    move v6, v10

    .local v6, "i":I
    move-object v10, v3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v7, v10

    .local v7, "max":I
    :goto_1
    move v10, v6

    move v11, v7

    if-ge v10, v11, :cond_9

    .line 73
    move-object v10, v3

    move v11, v6

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/TreeItem;

    move-object v5, v10

    .line 74
    .local v5, "child":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move v10, v4

    if-nez v10, :cond_4

    move-object v10, v5

    move-object v0, v10

    goto :goto_0

    .line 76
    :cond_4
    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/control/TreeItem;->isLeaf()Z

    move-result v10

    if-nez v10, :cond_5

    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v10

    if-nez v10, :cond_6

    .line 77
    :cond_5
    add-int/lit8 v4, v4, -0x1

    .line 72
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 81
    :cond_6
    move-object v10, v5

    move v11, v2

    invoke-static {v10, v11}, Ljavafx/scene/control/TreeUtil;->getExpandedDescendantCount(Ljavafx/scene/control/TreeItem;Z)I

    move-result v10

    move v8, v10

    .line 82
    .local v8, "expandedChildCount":I
    move v10, v4

    move v11, v8

    if-lt v10, v11, :cond_7

    .line 83
    move v10, v4

    move v11, v8

    sub-int/2addr v10, v11

    move v4, v10

    .line 84
    goto :goto_2

    .line 87
    :cond_7
    move-object v10, v5

    move v11, v4

    move v12, v2

    invoke-static {v10, v11, v12}, Ljavafx/scene/control/TreeUtil;->getItem(Ljavafx/scene/control/TreeItem;IZ)Ljavafx/scene/control/TreeItem;

    move-result-object v10

    move-object v9, v10

    .line 88
    .local v9, "result":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v10, v9

    if-eqz v10, :cond_8

    move-object v10, v9

    move-object v0, v10

    goto :goto_0

    .line 89
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 93
    .end local v5    # "child":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    .end local v8    # "expandedChildCount":I
    .end local v9    # "result":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_9
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0
.end method

.method static getRow(Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;ZZ)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;ZZ)I"
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "item":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object/from16 v1, p1

    .local v1, "root":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move/from16 v2, p2

    .local v2, "treeItemCountDirty":Z
    move/from16 v3, p3

    .local v3, "isShowRoot":Z
    move-object v12, v0

    if-nez v12, :cond_0

    .line 98
    const/4 v12, -0x1

    move v0, v12

    .line 143
    .end local v0    # "item":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :goto_0
    return v0

    .line 99
    .restart local v0    # "item":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_0
    move v12, v3

    if-eqz v12, :cond_1

    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 100
    const/4 v12, 0x0

    move v0, v12

    goto :goto_0

    .line 103
    :cond_1
    const/4 v12, 0x0

    move v4, v12

    .line 104
    .local v4, "row":I
    move-object v12, v0

    move-object v5, v12

    .line 105
    .local v5, "i":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v12

    move-object v6, v12

    .line 109
    .local v6, "p":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    const/4 v12, 0x0

    move v9, v12

    .line 111
    .local v9, "parentIsCollapsed":Z
    :goto_1
    move-object v12, v5

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    move-object v12, v6

    if-eqz v12, :cond_2

    .line 112
    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v12

    if-nez v12, :cond_5

    .line 113
    const/4 v12, 0x1

    move v9, v12

    .line 143
    :cond_2
    move-object v12, v6

    if-nez v12, :cond_3

    move v12, v4

    if-eqz v12, :cond_4

    :cond_3
    move v12, v9

    if-eqz v12, :cond_a

    :cond_4
    const/4 v12, -0x1

    :goto_2
    move v0, v12

    goto :goto_0

    .line 117
    :cond_5
    move-object v12, v6

    iget-object v12, v12, Ljavafx/scene/control/TreeItem;->children:Ljavafx/collections/ObservableList;

    move-object v8, v12

    .line 120
    .local v8, "siblings":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v12, v8

    move-object v13, v5

    invoke-interface {v12, v13}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    move v10, v12

    .line 121
    .local v10, "itemIndex":I
    move v12, v10

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v11, v12

    .local v11, "pos":I
    :goto_3
    move v12, v11

    const/4 v13, -0x1

    if-le v12, v13, :cond_9

    .line 122
    move-object v12, v8

    move v13, v11

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/TreeItem;

    move-object v7, v12

    .line 123
    .local v7, "sibling":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v12, v7

    if-nez v12, :cond_7

    .line 121
    :cond_6
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 125
    :cond_7
    move v12, v4

    move-object v13, v7

    move v14, v2

    invoke-static {v13, v14}, Ljavafx/scene/control/TreeUtil;->getExpandedDescendantCount(Ljavafx/scene/control/TreeItem;Z)I

    move-result v13

    add-int/2addr v12, v13

    move v4, v12

    .line 127
    move-object v12, v7

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 128
    move v12, v3

    if-nez v12, :cond_8

    .line 132
    const/4 v12, -0x1

    move v0, v12

    goto :goto_0

    .line 134
    :cond_8
    move v12, v4

    move v0, v12

    goto :goto_0

    .line 138
    .end local v7    # "sibling":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_9
    move-object v12, v6

    move-object v5, v12

    .line 139
    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v12

    move-object v6, v12

    .line 140
    add-int/lit8 v4, v4, 0x1

    .line 141
    goto :goto_1

    .line 143
    .end local v8    # "siblings":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeItem<TT;>;>;"
    .end local v10    # "itemIndex":I
    .end local v11    # "pos":I
    :cond_a
    move v12, v3

    if-eqz v12, :cond_b

    move v12, v4

    goto :goto_2

    :cond_b
    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    goto :goto_2
.end method

.method static updateExpandedItemCount(Ljavafx/scene/control/TreeItem;ZZ)I
    .locals 6

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "treeItem":Ljavafx/scene/control/TreeItem;
    move v1, p1

    .local v1, "treeItemCountDirty":Z
    move v2, p2

    .local v2, "isShowRoot":Z
    move-object v4, v0

    if-nez v4, :cond_0

    .line 45
    const/4 v4, 0x0

    move v0, v4

    .line 52
    .end local v0    # "treeItem":Ljavafx/scene/control/TreeItem;
    :goto_0
    return v0

    .line 46
    .restart local v0    # "treeItem":Ljavafx/scene/control/TreeItem;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 47
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 49
    :cond_1
    move-object v4, v0

    move v5, v1

    invoke-static {v4, v5}, Ljavafx/scene/control/TreeUtil;->getExpandedDescendantCount(Ljavafx/scene/control/TreeItem;Z)I

    move-result v4

    move v3, v4

    .line 50
    .local v3, "count":I
    move v4, v2

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, -0x1

    .line 52
    :cond_2
    move v4, v3

    move v0, v4

    goto :goto_0
.end method

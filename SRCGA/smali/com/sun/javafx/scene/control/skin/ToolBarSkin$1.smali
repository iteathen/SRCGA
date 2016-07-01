.class Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;
.super Ljava/lang/Object;
.source "ToolBarSkin.java"

# interfaces
.implements Lcom/sun/javafx/scene/traversal/Algorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/ToolBarSkin;-><init>(Ljavafx/scene/control/ToolBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private selectNext(ILcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 9

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;
    move v1, p1

    .local v1, "from":I
    move-object v2, p2

    .local v2, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    move v7, v1

    move v3, v7

    .local v3, "i":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Ljavafx/scene/layout/Pane;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    move v4, v7

    .local v4, "max":I
    :goto_0
    move v7, v3

    move v8, v4

    if-ge v7, v8, :cond_3

    .line 116
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Ljavafx/scene/layout/Pane;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move v8, v3

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Node;

    move-object v5, v7

    .line 117
    .local v5, "n":Ljavafx/scene/Node;
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/Node;->isDisabled()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/Node;->impl_isTreeVisible()Z

    move-result v7

    if-nez v7, :cond_1

    .line 115
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    :cond_1
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/Node;->isFocusTraversable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 119
    move-object v7, v5

    move-object v0, v7

    .line 126
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;
    .end local v5    # "n":Ljavafx/scene/Node;
    :goto_1
    return-object v0

    .line 121
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;
    .restart local v5    # "n":Ljavafx/scene/Node;
    :cond_2
    move-object v7, v5

    instance-of v7, v7, Ljavafx/scene/Parent;

    if-eqz v7, :cond_0

    .line 122
    move-object v7, v2

    move-object v8, v5

    check-cast v8, Ljavafx/scene/Parent;

    invoke-interface {v7, v8}, Lcom/sun/javafx/scene/traversal/TraversalContext;->selectFirstInParent(Ljavafx/scene/Parent;)Ljavafx/scene/Node;

    move-result-object v7

    move-object v6, v7

    .line 123
    .local v6, "selected":Ljavafx/scene/Node;
    move-object v7, v6

    if-eqz v7, :cond_0

    move-object v7, v6

    move-object v0, v7

    goto :goto_1

    .line 126
    .end local v5    # "n":Ljavafx/scene/Node;
    .end local v6    # "selected":Ljavafx/scene/Node;
    :cond_3
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_1
.end method

.method private selectPrev(ILcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 8

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;
    move v1, p1

    .local v1, "from":I
    move-object v2, p2

    .local v2, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    move v6, v1

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    if-ltz v6, :cond_3

    .line 101
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Ljavafx/scene/layout/Pane;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    move v7, v3

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    move-object v4, v6

    .line 102
    .local v4, "n":Ljavafx/scene/Node;
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/Node;->isDisabled()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/Node;->impl_isTreeVisible()Z

    move-result v6

    if-nez v6, :cond_1

    .line 100
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 103
    :cond_1
    move-object v6, v4

    instance-of v6, v6, Ljavafx/scene/Parent;

    if-eqz v6, :cond_2

    .line 104
    move-object v6, v2

    move-object v7, v4

    check-cast v7, Ljavafx/scene/Parent;

    invoke-interface {v6, v7}, Lcom/sun/javafx/scene/traversal/TraversalContext;->selectLastInParent(Ljavafx/scene/Parent;)Ljavafx/scene/Node;

    move-result-object v6

    move-object v5, v6

    .line 105
    .local v5, "selected":Ljavafx/scene/Node;
    move-object v6, v5

    if-eqz v6, :cond_2

    move-object v6, v5

    move-object v0, v6

    .line 111
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;
    .end local v4    # "n":Ljavafx/scene/Node;
    .end local v5    # "selected":Ljavafx/scene/Node;
    :goto_1
    return-object v0

    .line 107
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;
    .restart local v4    # "n":Ljavafx/scene/Node;
    :cond_2
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/Node;->isFocusTraversable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 108
    move-object v6, v4

    move-object v0, v6

    goto :goto_1

    .line 111
    .end local v4    # "n":Ljavafx/scene/Node;
    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method


# virtual methods
.method public select(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 12

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;
    move-object v1, p1

    .local v1, "owner":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v3, p3

    .local v3, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Ljavafx/scene/layout/Pane;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v4, v8

    .line 132
    .local v4, "boxChildren":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->access$100(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    move-result-object v9

    if-ne v8, v9, :cond_1

    .line 133
    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/scene/traversal/Direction;->isForward()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 134
    const/4 v8, 0x0

    move-object v0, v8

    .line 168
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;
    :goto_0
    return-object v0

    .line 136
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;
    :cond_0
    move-object v8, v0

    move-object v9, v4

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;->selectPrev(ILcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;

    move-result-object v8

    move-object v5, v8

    .line 137
    .local v5, "selected":Ljavafx/scene/Node;
    move-object v8, v5

    if-eqz v8, :cond_1

    move-object v8, v5

    move-object v0, v8

    goto :goto_0

    .line 141
    .end local v5    # "selected":Ljavafx/scene/Node;
    :cond_1
    move-object v8, v4

    move-object v9, v1

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    move v5, v8

    .line 143
    .local v5, "idx":I
    move v8, v5

    if-gez v8, :cond_4

    .line 145
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v8

    move-object v6, v8

    .line 146
    .local v6, "item":Ljavafx/scene/Parent;
    :goto_1
    move-object v8, v4

    move-object v9, v6

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 147
    move-object v8, v6

    invoke-virtual {v8}, Ljavafx/scene/Parent;->getParent()Ljavafx/scene/Parent;

    move-result-object v8

    move-object v6, v8

    goto :goto_1

    .line 149
    :cond_2
    move-object v8, v3

    move-object v9, v6

    move-object v10, v1

    move-object v11, v2

    invoke-interface {v8, v9, v10, v11}, Lcom/sun/javafx/scene/traversal/TraversalContext;->selectInSubtree(Ljavafx/scene/Parent;Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)Ljavafx/scene/Node;

    move-result-object v8

    move-object v7, v8

    .line 150
    .local v7, "selected":Ljavafx/scene/Node;
    move-object v8, v7

    if-eqz v8, :cond_3

    move-object v8, v7

    move-object v0, v8

    goto :goto_0

    .line 151
    :cond_3
    move-object v8, v4

    move-object v9, v1

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    move v5, v8

    .line 152
    move-object v8, v2

    sget-object v9, Lcom/sun/javafx/scene/traversal/Direction;->NEXT:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v8, v9, :cond_4

    sget-object v8, Lcom/sun/javafx/scene/traversal/Direction;->NEXT_IN_LINE:Lcom/sun/javafx/scene/traversal/Direction;

    move-object v2, v8

    .line 155
    .end local v6    # "item":Ljavafx/scene/Parent;
    .end local v7    # "selected":Ljavafx/scene/Node;
    :cond_4
    move v8, v5

    if-ltz v8, :cond_6

    .line 156
    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/scene/traversal/Direction;->isForward()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 157
    move-object v8, v0

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;->selectNext(ILcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;

    move-result-object v8

    move-object v6, v8

    .line 158
    .local v6, "selected":Ljavafx/scene/Node;
    move-object v8, v6

    if-eqz v8, :cond_5

    move-object v8, v6

    move-object v0, v8

    goto :goto_0

    .line 159
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->access$200(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 160
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->access$100(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->requestFocus()V

    .line 161
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->access$100(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    .line 163
    .line 168
    .end local v6    # "selected":Ljavafx/scene/Node;
    :cond_6
    const/4 v8, 0x0

    move-object v0, v8

    goto/16 :goto_0

    .line 164
    :cond_7
    move-object v8, v0

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;->selectPrev(ILcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;

    move-result-object v8

    move-object v6, v8

    .line 165
    .restart local v6    # "selected":Ljavafx/scene/Node;
    move-object v8, v6

    if-eqz v8, :cond_6

    move-object v8, v6

    move-object v0, v8

    goto/16 :goto_0
.end method

.method public selectFirst(Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 6

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;
    move-object v1, p1

    .local v1, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;->selectNext(ILcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;

    move-result-object v3

    move-object v2, v3

    .line 174
    .local v2, "selected":Ljavafx/scene/Node;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v0, v3

    .line 178
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;
    :goto_0
    return-object v0

    .line 175
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->access$200(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->access$100(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 178
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public selectLast(Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 5

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;
    move-object v1, p1

    .local v1, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->access$200(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->access$100(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    move-result-object v2

    move-object v0, v2

    .line 186
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Ljavafx/scene/layout/Pane;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;->selectPrev(ILcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

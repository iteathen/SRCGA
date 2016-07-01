.class Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;
.super Ljava/lang/Object;
.source "TreeView.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeView$TreeViewFocusModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeView$TreeViewFocusModel;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeView$TreeViewFocusModel;)V
    .locals 4

    .prologue
    .line 1578
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;, "Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeView$TreeViewFocusModel;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeView$TreeViewFocusModel;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;->lambda$handle$263(I)V

    return-void
.end method

.method private synthetic lambda$handle$263(I)V
    .locals 4

    .prologue
    .line 1639
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;, "Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;"
    move v1, p1

    .local v1, "newFocus":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeView$TreeViewFocusModel;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->focus(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 1578
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;, "Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeItem$TreeModificationEvent;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;->handle(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V

    return-void
.end method

.method public handle(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1582
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;, "Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeView$TreeViewFocusModel;

    invoke-virtual {v7}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->getFocusedIndex()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 1642
    :goto_0
    return-void

    .line 1584
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeView$TreeViewFocusModel;

    invoke-static {v7}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->access$1300(Ljavafx/scene/control/TreeView$TreeViewFocusModel;)Ljavafx/scene/control/TreeView;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TreeView;->getRow(Ljavafx/scene/control/TreeItem;)I

    move-result v7

    move v2, v7

    .line 1586
    .local v2, "row":I
    const/4 v7, 0x0

    move v3, v7

    .line 1587
    .local v3, "shift":I
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getChange()Ljavafx/collections/ListChangeListener$Change;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1588
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getChange()Ljavafx/collections/ListChangeListener$Change;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v7

    .line 1592
    :cond_1
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasExpanded()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1593
    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeView$TreeViewFocusModel;

    invoke-virtual {v8}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->getFocusedIndex()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 1595
    move v7, v3

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljavafx/scene/control/TreeItem;->getExpandedDescendentCount(Z)I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v7, v8

    move v3, v7

    .line 1634
    :cond_2
    :goto_1
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getChange()Ljavafx/collections/ListChangeListener$Change;

    move-result-object v7

    if-eqz v7, :cond_3

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getChange()Ljavafx/collections/ListChangeListener$Change;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1636
    :cond_3
    move v7, v3

    if-eqz v7, :cond_4

    .line 1637
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeView$TreeViewFocusModel;

    invoke-virtual {v7}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->getFocusedIndex()I

    move-result v7

    move v8, v3

    add-int/2addr v7, v8

    move v4, v7

    .line 1638
    .local v4, "newFocus":I
    move v7, v4

    if-ltz v7, :cond_4

    .line 1639
    move-object v7, v0

    move v8, v4

    invoke-static {v7, v8}, Ljavafx/scene/control/TreeView$TreeViewFocusModel$1$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;I)Ljava/lang/Runnable;

    move-result-object v7

    invoke-static {v7}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 1642
    .end local v4    # "newFocus":I
    :cond_4
    goto :goto_0

    .line 1597
    :cond_5
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasCollapsed()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1598
    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeView$TreeViewFocusModel;

    invoke-virtual {v8}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->getFocusedIndex()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 1601
    move v7, v3

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v8

    iget v8, v8, Ljavafx/scene/control/TreeItem;->previousExpandedDescendentCount:I

    neg-int v8, v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v8

    move v3, v7

    goto :goto_1

    .line 1603
    :cond_6
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasAdded()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1606
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v7

    move-object v4, v7

    .line 1607
    .local v4, "eventTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1608
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_2
    move v7, v5

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getAddedChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 1610
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getAddedChildren()Ljava/util/List;

    move-result-object v7

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TreeItem;

    move-object v6, v7

    .line 1611
    .local v6, "item":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeView$TreeViewFocusModel;

    invoke-static {v7}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->access$1300(Ljavafx/scene/control/TreeView$TreeViewFocusModel;)Ljavafx/scene/control/TreeView;

    move-result-object v7

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TreeView;->getRow(Ljavafx/scene/control/TreeItem;)I

    move-result v7

    move v2, v7

    .line 1613
    move-object v7, v6

    if-eqz v7, :cond_7

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeView$TreeViewFocusModel;

    invoke-virtual {v8}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->getFocusedIndex()I

    move-result v8

    if-gt v7, v8, :cond_7

    .line 1614
    move v7, v3

    move-object v8, v6

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljavafx/scene/control/TreeItem;->getExpandedDescendentCount(Z)I

    move-result v8

    add-int/2addr v7, v8

    move v3, v7

    .line 1608
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1618
    .end local v5    # "i":I
    .end local v6    # "item":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_8
    goto/16 :goto_1

    .end local v4    # "eventTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_9
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasRemoved()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1619
    move v7, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getFrom()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v8

    move v2, v7

    .line 1621
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_3
    move v7, v4

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getRemovedChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 1622
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getRemovedChildren()Ljava/util/List;

    move-result-object v7

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TreeItem;

    move-object v5, v7

    .line 1623
    .local v5, "item":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v7, v5

    if-eqz v7, :cond_a

    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeView$TreeViewFocusModel;

    invoke-virtual {v8}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->getFocusedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1624
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeView$TreeViewFocusModel;

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeView$TreeViewFocusModel;

    invoke-virtual {v9}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->getFocusedIndex()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->focus(I)V

    .line 1625
    goto/16 :goto_0

    .line 1621
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1629
    .end local v5    # "item":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_b
    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeView$TreeViewFocusModel;

    invoke-virtual {v8}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->getFocusedIndex()I

    move-result v8

    if-gt v7, v8, :cond_2

    .line 1631
    move v7, v3

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v8

    if-eqz v8, :cond_c

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getRemovedSize()I

    move-result v8

    neg-int v8, v8

    :goto_4
    add-int/2addr v7, v8

    move v3, v7

    goto/16 :goto_1

    :cond_c
    const/4 v8, 0x0

    goto :goto_4
.end method
